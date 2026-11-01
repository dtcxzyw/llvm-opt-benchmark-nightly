Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref17hce9f1c3deb57a42cE":bb.a
"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hf6dd7824094718f8E.exit.i": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7840
  br i1 %i.br, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hfda4d7bb7611a11bE.exit", label %bb.ag

bb.ag:                                            ; preds = %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hf6dd7824094718f8E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7847
  %i.bt = icmp slt i64 %i.bh, 0
  br i1 %i.bt, label %bb.ai, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i14, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i14: ; preds = %bb.ag
  %i.bu = icmp eq i64 %i.bh, 0                    ; 2 uses
  br i1 %i.bu, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha1df8857ca8b0904E.exit.i15", label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i14
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !7848
  %i.bv = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bh, i64 noundef range(i64 1, 9) 1) #45, !noalias !7848 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.ai, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha1df8857ca8b0904E.exit.i15"

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.4.0.ph.i.i.i39 = phi i64 [ 1, %bb.ah ], [ 0, %bb.ag ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i39, i64 %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2598) #46, !noalias !7849
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha1df8857ca8b0904E.exit.i15": ; preds = %bb.ah, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i14
  %.sroa.10.0.i.i.i16 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i14 ], [ %i.bv, %bb.ah ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i16, ptr nonnull readonly align 1 %i.bf, i64 %i.bh, i1 false), !noalias !7850
  store i64 %i.bh, ptr %i.f, align 8, !noalias !7847
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.10.0.i.i.i16, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !7847
  %.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx.i18, align 8, !noalias !7847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7847
  invoke fastcc void @"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hf5c0e168f0b2d628E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.aj unwind label %.thread.i19, !noalias !7847

.thread.i19:                                      ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha1df8857ca8b0904E.exit.i15"
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aj:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17ha1df8857ca8b0904E.exit.i15"
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !7847, !nonnull !23, !noundef !23 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !7847, !noundef !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7847
  br i1 %.not, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7851
  store i64 0, ptr %i.c, align 8, !noalias !7851
  %.sroa.42.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i23, align 8, !noalias !7851
  %.sroa.53.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i24, align 8, !noalias !7851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7851
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.cc, align 8, !noalias !7851
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i5.i, align 4, !noalias !7851
  %.sroa.5.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i25, align 2, !noalias !7851
  store ptr %i.c, ptr %i.b, align 8, !noalias !7851
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @982, ptr %i.cd, align 8, !noalias !7851
  %i.ce = invoke noundef zeroext i1 @"_ZN70_$LT$clap_builder..builder..arg..Arg$u20$as$u20$core..fmt..Display$GT$3fmt17h5b364e0ae339076bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.an unwind label %bb.al, !noalias !7852

bb.al:                                            ; preds = %bb.ao, %bb.ak
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7853)
  call void @llvm.experimental.noalias.scope.decl(metadata !7854)
  %.val.i.i.i.i26 = load i64, ptr %i.c, align 8, !alias.scope !7855, !noalias !7851 ; 2 uses
  %i.cg = icmp eq i64 %.val.i.i.i.i26, 0
  br i1 %i.cg, label %.body.thread.i28, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val1.i.i.i.i27 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i23, align 8, !alias.scope !7855, !noalias !7851, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i27, i64 noundef %.val.i.i.i.i26, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7856
  br label %.body.thread.i28

bb.an:                                            ; preds = %bb.ak
  br i1 %i.ce, label %bb.ao, label %bb.at, !prof !26

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @983, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1083, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @985) #46
          to label %.noexc.i.i37 unwind label %bb.al, !noalias !7852

.noexc.i.i37:                                     ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !7857
  %i.ch = call noundef dereferenceable_or_null(3) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, 9) 1) #45, !noalias !7857 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2598) #46
          to label %.noexc.i38 unwind label %.body.thread26.i, !noalias !7847

.body.thread26.i:                                 ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #44, !noalias !7847
  br label %bb.ax

.noexc.i38:                                       ; preds = %bb.aq
  unreachable

.body.thread.i28:                                 ; preds = %bb.am, %bb.al
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #44, !noalias !7847
  br label %bb.ax

.body.i29:                                        ; preds = %bb.as
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #44, !noalias !7847
  br label %common.resume

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ch, i8 46, i64 3, i1 false), !noalias !7847
  store i64 3, ptr %i.d, align 8, !noalias !7847
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ch, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !7847
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 3, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !7847
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.cl = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$13invalid_value17h67831d269de0974bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bz, i64 noundef %i.cb, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.au unwind label %.body.i29, !noalias !7847

bb.at:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !7847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7851
  br label %bb.as

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7847
  call void @llvm.experimental.noalias.scope.decl(metadata !7858)
  call void @llvm.experimental.noalias.scope.decl(metadata !7859)
  %i.cm = icmp eq i64 %i.cb, 0
  br i1 %i.cm, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i35", label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %bb.au, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i34"
  %.sroa.0.010.i.i.i.i31 = phi i64 [ %i.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i34" ], [ 0, %bb.au ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %.sroa.0.010.i.i.i.i31 ; 2 uses
  %i.co = add nuw i64 %.sroa.0.010.i.i.i.i31, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7860)
  call void @llvm.experimental.noalias.scope.decl(metadata !7861)
  %.val.i.i.i.i.i.i32 = load i64, ptr %i.cn, align 8, !alias.scope !7862, !noalias !7863 ; 2 uses
  %i.cp = icmp eq i64 %.val.i.i.i.i.i.i32, 0
  br i1 %i.cp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i34", label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i30
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val1.i.i.i.i.i.i33 = load ptr, ptr %i.cq, align 8, !alias.scope !7862, !noalias !7863, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i33, i64 noundef %.val.i.i.i.i.i.i32, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7864
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i34"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i34": ; preds = %bb.av, %.lr.ph.i.i.i.i30
  %i.cr = icmp eq i64 %i.co, %i.cb
  br i1 %i.cr, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i35", label %.lr.ph.i.i.i.i30

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i35": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i34", %bb.au
  %.val2.i.i36 = load i64, ptr %i.e, align 8, !alias.scope !7858, !noalias !7847 ; 2 uses
  %i.cs = icmp eq i64 %.val2.i.i36, 0
  br i1 %i.cs, label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17head07f29807074dbE.exit", label %bb.aw

bb.aw:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i35"
  %i.ct = mul nuw i64 %.val2.i.i36, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !7863
  br label %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17head07f29807074dbE.exit"

bb.ax:                                            ; preds = %.body.thread.i28, %.body.thread26.i, %.thread.i19
  %.pn18.i20 = phi { ptr, i32 } [ %i.bx, %.thread.i19 ], [ %i.cj, %.body.thread26.i ], [ %i.cf, %.body.thread.i28 ] ; 2 uses
  br i1 %i.bu, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i16, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7865
  br label %common.resume

"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17head07f29807074dbE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.i35", %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7847
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hfda4d7bb7611a11bE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hfda4d7bb7611a11bE.exit": ; preds = %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hf6dd7824094718f8E.exit.i", %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h8f9518bb1873b579E.exit", %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17head07f29807074dbE.exit"
  %.sroa.0.1 = phi ptr [ %i.cl, %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17head07f29807074dbE.exit" ], [ %i.at, %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h8f9518bb1873b579E.exit" ], [ null, %"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hf6dd7824094718f8E.exit.i" ]
  ret ptr %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN135_$LT$clap_builder..builder..value_parser..EnumValueParser$LT$E$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17hf5c0e168f0b2d628E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7894
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !noalias !7895
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !noalias !7895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7895
  call fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c8d926d3c98decbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(16) %i.e), !noalias !7895
  %i.g = load i64, ptr %i.c, align 8, !range !29, !noalias !7895, !noundef !23 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7895
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !7895
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !alias.scope !7895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7895
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hbf4efca684dc1a2dE.exit

bb.c:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7896
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i"

bb.e:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !7895 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !noalias !7895
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !7895, !noundef !23
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !7897
  %i.l = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #45, !noalias !7897 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1016) #46
          to label %.noexc.i.i.i.i unwind label %bb.c, !noalias !7895

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  store i64 %i.g, ptr %i.l, align 8, !noalias !7895
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !7895
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !7895
  store i64 4, ptr %i.d, align 8, !noalias !7895
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !7895
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !7895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7895
  %1 = load ptr, ptr %i.e, align 8, !noalias !7895, !nonnull !23, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7900
  store ptr %1, ptr %i.b, align 8, !noalias !7901
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val.i.i.i.i, ptr %2, align 8, !noalias !7901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7901
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c8d926d3c98decbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(16) %i.b)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7895

.noexc5.i.i.i.i:                                  ; preds = %bb.g
  %i.n = load i64, ptr %i.a, align 8, !range !29, !noalias !7901, !noundef !23 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not12.i.i.i.i.i.i, label %.loopexit12.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc5.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.noexc6.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.o = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.noexc6.i.i.i.i ]
  %i.p = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.noexc6.i.i.i.i ] ; 5 uses
  %i.q = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %.noexc6.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7901 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7901
  %i.r = icmp samesign ult i64 %i.p, 384307168202282326
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i64, ptr %i.d, align 8, !range !22, !alias.scope !7902, !noalias !7895, !noundef !23
  %i.t = icmp eq i64 %i.p, %i.s
  br i1 %i.t, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i", %bb.h
  %i.u = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.o, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.p ; 3 uses
  store i64 %i.q, ptr %i.v, align 8, !noalias !7901
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7901
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !7901
  %i.w = add nuw nsw i64 %i.p, 1                  ; 2 uses
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !7902, !noalias !7895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7901
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c8d926d3c98decbE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(16) %i.b)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7895

.noexc6.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i"
  %i.x = load i64, ptr %i.a, align 8, !range !29, !noalias !7901, !noundef !23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %.loopexit12.i.i.i.i, label %bb.h

bb.i:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = icmp eq i64 %i.q, 0
  br i1 %i.z, label %.body.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7903
  br label %.body.i.i.i.i

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.p, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.i, !noalias !7895

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.k
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !7902, !noalias !7895
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4dc1359f3f9043dfE.exit.i.i.i.i.i.i", %bb.g
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.y, %bb.j ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #44, !noalias !7895
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i"

.loopexit12.i.i.i.i:                              ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hbf4efca684dc1a2dE.exit

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i": ; preds = %.body.i.i.i.i, %bb.d, %bb.c
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %.pn.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hbf4efca684dc1a2dE.exit: ; preds = %bb.b, %.loopexit12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7894
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN157_$LT$$LT$meilisearch_types..settings..RankingRuleView$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str28_$u7b$$u7b$closure$u7d$$u7d$17h58c2e4f821550982E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.c, align 8
  store i8 5, ptr %i.a, align 8
  %i.d = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 1 @214, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$milli..criterion..CriterionError$GT$17h41ae9cf74e710489E"(ptr noalias noundef align 8 dereferenceable(32) %2) #44
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !7906)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i1.i = load i64, ptr %i.f, align 8, !alias.scope !7906 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i1.i, 0
  br i1 %i.g, label %"_ZN4core3ptr53drop_in_place$LT$milli..criterion..CriterionError$GT$17h41ae9cf74e710489E.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i": ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i8.i = load ptr, ptr %i.h, align 8, !alias.scope !7906, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i8.i, i64 noundef %.val.i.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7906
  br label %"_ZN4core3ptr53drop_in_place$LT$milli..criterion..CriterionError$GT$17h41ae9cf74e710489E.exit"

"_ZN4core3ptr53drop_in_place$LT$milli..criterion..CriterionError$GT$17h41ae9cf74e710489E.exit": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i"
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN172_$LT$milli..index.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..index..MatchingStrategy$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hda0fc8bbc0ce3abdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 28 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7966
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !7967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7974)
  %i.h = load i8, ptr %1, align 8, !range !30, !alias.scope !7975, !noundef !23
  switch i8 %i.h, label %bb.b [
    i8 1, label %bb.c
    i8 4, label %bb.h
    i8 12, label %bb.m
    i8 13, label %bb.y
    i8 14, label %bb.ag
    i8 15, label %bb.al
  ], !prof !39

bb.b:                                             ; preds = %bb.a
  %i.i = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17h40366a40410784d1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
          to label %.noexc.i.i unwind label %.body.thread12.i.i, !noalias !7967

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !7976, !noalias !7968
  store i8 1, ptr %i.e, align 8, !alias.scope !7976, !noalias !7968
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hac59bfe2592cc09aE.exit.i.i"

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !7975, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7978)
  switch i8 %i.l, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ], !prof !81

bb.d:                                             ; preds = %bb.c
  %i.m = zext i8 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7979
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !7979
  store i8 1, ptr %i.c, align 8, !noalias !7979
  %i.o = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @228, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc.i.i.i.i.i unwind label %bb.an, !noalias !7980

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7979
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !7981, !noalias !7968
  br label %.sink.split.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.q, align 1, !alias.scope !7981, !noalias !7968
  br label %.sink.split.i.i.i.i.i

end_hunk_0
