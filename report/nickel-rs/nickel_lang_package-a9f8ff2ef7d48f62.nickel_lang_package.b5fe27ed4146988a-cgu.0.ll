Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25764
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN116_$LT$pubgrub..report..DefaultStringReportFormatter$u20$as$u20$pubgrub..report..ReportFormatter$LT$P$C$VS$C$M$GT$$GT$12format_terms17h2a6eb165ef478c2aE":bb.a
  %i.cg = icmp eq i64 %.sroa.0.032, 0
  br i1 %i.cg, label %common.resume, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ch = shl nuw i64 %.sroa.0.032, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.027) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.027, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #67
  br label %common.resume

bb.h:                                             ; preds = %bb.r, %bb.m, %bb.l, %bb.f, %bb.ac, %bb.w
  %.sroa.0.034 = phi i64 [ %.sroa.0.0.copyload, %bb.r ], [ %.sroa.0.0.copyload41, %bb.m ], [ %.sroa.0.0.copyload41, %bb.l ], [ 0, %bb.f ], [ %.sroa.0.0.copyload, %bb.w ], [ %.sroa.0.0.copyload, %bb.ac ]
  %.sroa.6.029 = phi ptr [ %.sroa.6.0.copyload, %bb.r ], [ %.sroa.6.0.copyload42, %bb.m ], [ %.sroa.6.0.copyload42, %bb.l ], [ inttoptr (i64 8 to ptr), %bb.f ], [ %.sroa.6.0.copyload, %bb.w ], [ %.sroa.6.0.copyload, %bb.ac ]
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ae, ptr noundef nonnull align 1 dereferenceable(22) @130, i64 22, i1 false), !noalias !8553
  store i64 22, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %.sroa.523.0..sroa_idx, align 8
  br label %"_ZN4core3ptr193drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$nickel_lang_package..resolve..Package$C$$RF$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$RP$$GT$$GT$17h27fdf0f0379ecb51E.exit22"

bb.i:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit", %bb.ah, %bb.ab, %bb.o, %bb.n
  %.sroa.0.036 = phi i64 [ %.sroa.0.0.copyload, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit" ], [ %.sroa.0.0.copyload, %bb.ah ], [ %.sroa.0.0.copyload, %bb.ab ], [ %.sroa.0.0.copyload41, %bb.o ], [ %.sroa.0.0.copyload41, %bb.n ] ; 2 uses
  %.sroa.6.031 = phi ptr [ %.sroa.6.0.copyload, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE.exit" ], [ %.sroa.6.0.copyload, %bb.ah ], [ %.sroa.6.0.copyload, %bb.ab ], [ %.sroa.6.0.copyload42, %bb.o ], [ %.sroa.6.0.copyload42, %bb.n ] ; 2 uses
  %i.cj = icmp eq i64 %.sroa.0.036, 0
  br i1 %i.cj, label %"_ZN4core3ptr193drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$nickel_lang_package..resolve..Package$C$$RF$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$RP$$GT$$GT$17h27fdf0f0379ecb51E.exit22", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = shl nuw i64 %.sroa.0.036, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.031) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.031, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #67
  br label %"_ZN4core3ptr193drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$nickel_lang_package..resolve..Package$C$$RF$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$RP$$GT$$GT$17h27fdf0f0379ecb51E.exit22"

"_ZN4core3ptr193drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$nickel_lang_package..resolve..Package$C$$RF$pubgrub..term..Term$LT$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$GT$$RP$$GT$$GT$17h27fdf0f0379ecb51E.exit22": ; preds = %.thread, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit._crit_edge, %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit.thread37
  %i.cl = phi ptr [ %i.aw, %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit.thread37 ], [ %.pre, %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit._crit_edge ] ; 2 uses
  %.sroa.6.0.copyload42 = phi ptr [ %i.ba, %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit.thread37 ], [ %.sroa.6.0.copyload, %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit._crit_edge ] ; 6 uses
  %.sroa.0.0.copyload41 = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit.thread37 ], [ %.sroa.0.0.copyload, %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit._crit_edge ] ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !58, !noundef !41
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sroa.6.0.copyload42, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.co, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.v, ptr %i.s, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1cdd26d62f278b64E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.cp, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he777b2e8467804a9E", ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8554
  store ptr @135, ptr %i.h, align 8, !noalias !8555
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 3, ptr %.sroa.411.0..sroa_idx, align 8, !noalias !8555
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %.sroa.512.0..sroa_idx, align 8, !noalias !8555
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 2, ptr %.sroa.613.0..sroa_idx, align 8, !noalias !8555
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.714.0..sroa_idx, align 8, !noalias !8555
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.o unwind label %bb.h

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.6.0.copyload42, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.co, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.z, ptr %i.w, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1cdd26d62f278b64E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.cq, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he777b2e8467804a9E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8556
  store ptr @133, ptr %i.g, align 8, !noalias !8557
  %.sroa.46.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 3, ptr %.sroa.46.0..sroa_idx7, align 8, !noalias !8557
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.w, ptr %.sroa.58.0..sroa_idx, align 8, !noalias !8557
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %.sroa.69.0..sroa_idx, align 8, !noalias !8557
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !8557
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.i

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.i

bb.p:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !41, !align !42, !noundef !41 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !range !58, !noundef !41
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !41, !align !42, !noundef !41 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !range !58, !noundef !41
  %i.cz = trunc nuw i64 %i.cy to i1               ; 2 uses
  br i1 %i.cu, label %bb.u, label %bb.v

bb.q:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h26f83b4263b0ad0eE.exit, %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8558
  %i.da = mul nuw i64 %i.ac, 24                   ; 2 uses
  %or.cond.i.i.i.i.i.i.i26 = icmp samesign ugt i64 %i.bf, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i26, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i27, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i27: ; preds = %bb.q
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !8559
  %i.db = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.da, i64 noundef range(i64 1, 9) 8) #67, !noalias !8559 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6b1987abb5050546E.exit.i.i.i.i.i.i"

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i27, %bb.q
  %.sroa.4.0.ph.i.i.i.i.i28 = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i27 ], [ 0, %bb.q ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i28, i64 %i.da, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %bb.r
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6b1987abb5050546E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i27
  store i64 %i.ac, ptr %i.f, align 8, !noalias !8558
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.db, ptr %i.dd, align 8, !noalias !8558
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8561)
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6b1987abb5050546E.exit.i.i.i.i.i.i"
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dj, %bb.t ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6b1987abb5050546E.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload, i64 %.val20.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8563
  store ptr %i.dg, ptr %i.d, align 8, !noalias !8563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8563
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dh, ptr %i.c, align 8, !noalias !8563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8563
  store ptr %i.d, ptr %i.b, align 8, !noalias !8563
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1cdd26d62f278b64E", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8563
  store ptr %i.c, ptr %i.df, align 8, !noalias !8563
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbc98d54e556ecc69E", ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8564
  store ptr @138, ptr %i.a, align 8, !noalias !8565
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8565
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8565
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8565
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8565
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.t unwind label %.body.i.i.i.i, !noalias !8566

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8563
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8567
  %i.dj = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8562
  %i.dk = icmp eq i64 %.val20.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %i.dk, label %bb.ai, label %bb.s

.body.i.i.i.i:                                    ; preds = %bb.s
  %i.dl = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.de, align 8, !alias.scope !8568, !noalias !8569
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #75, !noalias !8558
  br label %.body

bb.u:                                             ; preds = %bb.p
  br i1 %i.cz, label %bb.q, label %bb.ac

bb.v:                                             ; preds = %bb.p
  br i1 %i.cz, label %bb.w, label %bb.q

bb.w:                                             ; preds = %bb.v
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h396df09798576ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dm)
          to label %bb.x unwind label %bb.h

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h396df09798576ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dn)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.q)
  br label %.body

bb.z:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 248
  store ptr %.sroa.6.0.copyload, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dq, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  store ptr %i.cv, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ds, ptr noundef nonnull align 8 dereferenceable(120) %i.p, i64 120, i1 false)
  store i64 2, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h972ce607f48b1718E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.r)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr192drop_in_place$LT$pubgrub..report..External$LT$$RF$$RF$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h1497dc8ef73ec94cE"(ptr noalias noundef align 8 dereferenceable(264) %i.r) #75
  br label %.body

bb.ab:                                            ; preds = %bb.z
  call fastcc void @"_ZN4core3ptr192drop_in_place$LT$pubgrub..report..External$LT$$RF$$RF$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h1497dc8ef73ec94cE"(ptr noalias noundef align 8 dereferenceable(264) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.i

bb.ac:                                            ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h396df09798576ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.du)
          to label %bb.ad unwind label %bb.h

bb.ad:                                            ; preds = %bb.ac
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @"_ZN70_$LT$version_ranges..Ranges$LT$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h396df09798576ea5E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dv)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr213drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$C$core..ops..range..Bound$LT$nickel_lang_package..version..SemVer$GT$$RP$$u3b$$u20$1$u5d$$GT$$GT$17h1e1f216f72e0e698E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.n)
  br label %.body

bb.af:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  store ptr %i.cv, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dy, ptr noundef nonnull align 8 dereferenceable(120) %i.n, i64 120, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  store ptr %.sroa.6.0.copyload, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ea, ptr noundef nonnull align 8 dereferenceable(120) %i.m, i64 120, i1 false)
  store i64 2, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h972ce607f48b1718E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.o)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr192drop_in_place$LT$pubgrub..report..External$LT$$RF$$RF$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h1497dc8ef73ec94cE"(ptr noalias noundef align 8 dereferenceable(264) %i.o) #75
  br label %.body

bb.ah:                                            ; preds = %bb.af
  call fastcc void @"_ZN4core3ptr192drop_in_place$LT$pubgrub..report..External$LT$$RF$$RF$nickel_lang_package..resolve..Package$C$version_ranges..Ranges$LT$nickel_lang_package..version..SemVer$GT$$C$alloc..string..String$GT$$GT$17h1497dc8ef73ec94cE"(ptr noalias noundef align 8 dereferenceable(264) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.i

bb.ai:                                            ; preds = %bb.t
  store i64 %i.ac, ptr %i.de, align 8, !alias.scope !8568, !noalias !8569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17h216805100b73feb0E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ed, i64 noundef %i.ef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 2)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %bb.am, %bb.an, %bb.aj
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.eg, %bb.aj ], [ %i.em, %bb.an ], [ %i.em, %bb.am ]
  call void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h7bf270466b7ce7fdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #75
  br label %.body

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !8570)
  call void @llvm.experimental.noalias.scope.decl(metadata !8571)
  call void @llvm.experimental.noalias.scope.decl(metadata !8572)
  call void @llvm.experimental.noalias.scope.decl(metadata !8573)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !8574, !noalias !8570, !noundef !41 ; 3 uses
  %i.ej = load i64, ptr %i.k, align 8, !range !43, !alias.scope !8574, !noalias !8570, !noundef !41
  %i.ek = sub i64 %i.ej, %i.ei
  %i.el = icmp ult i64 %i.ek, 17
  br i1 %i.el, label %bb.al, label %bb.ao, !prof !44

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ei, i64 noundef 17, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.am, !noalias !8570

.noexc.i:                                         ; preds = %bb.al
  %.pre.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !8575, !noalias !8570
  br label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8576)
  call void @llvm.experimental.noalias.scope.decl(metadata !8577)
  %.val.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !8578, !noalias !8570 ; 2 uses
  %i.en = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.en, label %.body30, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !8578, !noalias !8570, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !8579
  br label %.body30

bb.ao:                                            ; preds = %.noexc.i, %bb.ak
  %i.ep = phi i64 [ %i.ei, %bb.ak ], [ %.pre.i.i.i, %.noexc.i ] ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !8575, !noalias !8570, !nonnull !41, !noundef !41
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.et, ptr noundef nonnull readonly align 1 dereferenceable(17) @137, i64 17, i1 false), !noalias !8580
  %i.eu = add nuw i64 %i.ep, 17
  store i64 %i.eu, ptr %i.eh, align 8, !alias.scope !8575, !noalias !8570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !8581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !8582)
  call void @llvm.experimental.noalias.scope.decl(metadata !8583)
  %i.ev = icmp eq i64 %i.ef, 0
  br i1 %i.ev, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h90fe18ff37b84bb8E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.ex, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i" ], [ 0, %bb.ao ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.ex = add nuw i64 %.sroa.0.010.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8584)
  call void @llvm.experimental.noalias.scope.decl(metadata !8585)
  %.val.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !8586, !noalias !8582 ; 2 uses
  %i.ey = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ey, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ez, align 8, !alias.scope !8586, !noalias !8582, !nonnull !41, !noundef !41
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !8587
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit.i.i.i"

end_hunk_0
begin_hunk_1_@_ZN19nickel_lang_package8manifest12ManifestFile13from_contents17h8eeeb07a36eb7c85E:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.66.sroa.10, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.536.sroa.8.0..sroa.536.0..sroa_idx.sroa_idx, i64 280, i1 false)
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 328
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(464) %.sroa.637.0..sroa_idx, i64 464, i1 false)
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = load <2 x i64>, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.ar, ptr %i.n, align 8
  store <2 x i64> %i.bh, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %.sroa.536.sroa.7.0.copyload, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.66.sroa.10, i64 280, i1 false)
  call void @_ZN19nickel_lang_package8manifest12ManifestFile9from_prog17hd8f5c931380be5dfE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @856, i64 noundef 11, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(792) %i.n)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %"_ZN19nickel_lang_package8manifest12ManifestFile13from_contents28_$u7b$$u7b$closure$u7d$$u7d$17h21f04db74edd19b9E.exit"
  ret void

bb.ae:                                            ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..program..ProgramBuilder$GT$17h0db9343166ca4499E"(ptr noalias noundef align 8 dereferenceable(264) %i.o) #75
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile15regenerate_lock17h7f02acf67864d349E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1528 x i8]) align 8 captures(none) dereferenceable(1528) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(400) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [400 x i8], align 8               ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 2 uses
  %i.d = alloca [320 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [144 x i8], align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !36979, !noalias !36980, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !36979, !noalias !36980, !noundef !41
  invoke void @_ZN19nickel_lang_package8snapshot8Snapshot3new17hf75c31090d39eaacE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit unwind label %bb.e

_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !range !65, !noundef !41 ; 2 uses
  %.not = icmp eq i64 %i.i, -9223372036854775788
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.318.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.69.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.217.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, i64 144, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -9223372036854775808, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..config..Config$GT$17h8aad23ed11dd624aE"(ptr noalias noundef align 8 dereferenceable(400) %2)
  br label %bb.d

bb.c:                                             ; preds = %_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(400) %2, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  call fastcc void @_ZN19nickel_lang_package8manifest12ManifestFile9make_lock17h3c37ae22f338bbc4E(ptr noalias noundef align 8 captures(address) dereferenceable(1528) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef align 8 captures(address) dereferenceable(400) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_package..config..Config$GT$17h8aad23ed11dd624aE"(ptr noalias noundef align 8 dereferenceable(400) %2) #75
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile19sorted_dependencies17h763180af43aa0a25E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37033)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !37033, !noalias !37034, !nonnull !41, !noundef !41 ; 4 uses
  %.val13.i.i = load <16 x i8>, ptr %i.d, align 16, !noalias !37035
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !37033, !noalias !37034, !noundef !41 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37036
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.i = bitcast <16 x i1> %i.h to i16            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %bb.b ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !37037
  %i.m = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -3072 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.09.0.copyload.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.i, %bb.b ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [192 x i8], ptr %.sroa.09.0.copyload.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %i.f, -1                         ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -192
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -184
  %i.y = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w), !noalias !37038 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, label %bb.c

bb.c:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 4) ; 3 uses
  %i.ab = mul i64 %.sroa.0.0.i.i.i.i.i, 24        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.f, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !37039
  %i.ad = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ab, i64 noundef range(i64 1, 9) 8) #67, !noalias !37039 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73, !noalias !37036
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i": ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.6.0.copyload529 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ad, %bb.d ] ; 6 uses
  %.sroa.0.0.copyload328 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.af = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.copyload328
  tail call void @llvm.assume(i1 %i.af)
  store ptr %i.z, ptr %.sroa.6.0.copyload529, align 8, !noalias !37036
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload529, i64 8
  store i64 %i.aa, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !37036
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload529, i64 16
  store ptr %i.x, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !37036
  store i64 %.sroa.0.0.copyload328, ptr %i.b, align 8, !noalias !37036
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %.sroa.6.0.copyload529, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !37036
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !37036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37041)
  %i.ag = icmp eq i64 %i.v, 0
  br i1 %i.ag, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26, label %.lr.ph.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37042
  br label %bb.n

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i", %.noexc7.i.i.i.i
  %i.ah = phi ptr [ %i.bc, %.noexc7.i.i.i.i ], [ %.sroa.6.0.copyload529, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ]
  %.sroa.9.0.copyload7.pr = phi i64 [ %i.be, %.noexc7.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 6 uses
  %.lcssa22.i.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %i.ai = phi i16 [ %i.ar, %.noexc7.i.i.i.i ], [ %i.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.val1318.i.i.i.i.i.i = phi i64 [ %i.au, %.noexc7.i.i.i.i ], [ %i.v, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i.i1617.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i15.i.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.09.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h646ae71b84e0cae6E.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa22.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i1617.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aj, align 16, !noalias !37043
  %i.al = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -3072 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa21.i.i.i.i.i.i = phi ptr [ %.lcssa22.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i15.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i1617.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [192 x i8], ptr %.pre.i.i.i.i15.i.i.i.i.i.i, i64 %i.as ; 2 uses
  %i.au = add i64 %.val1318.i.i.i.i.i.i, -1       ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -192
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -184
  %i.ax = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.av)
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !37036 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i.i
  %2 = icmp samesign ult i64 %.sroa.9.0.copyload7.pr, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.ba = load i64, ptr %i.b, align 8, !range !43, !alias.scope !37044, !noalias !37045, !noundef !41
  %i.bb = icmp eq i64 %.sroa.9.0.copyload7.pr, %i.ba
  br i1 %i.bb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i", label %.noexc7.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i": ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.9.0.copyload7.pr, i64 noundef range(i64 1, 0) %.val1318.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i" unwind label %bb.g, !noalias !37036

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !37044, !noalias !37045
  br label %.noexc7.i.i.i.i

.noexc7.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i", %bb.f
  %i.bc = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i..noexc7_crit_edge.i.i.i.i" ], [ %i.ah, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.sroa.9.0.copyload7.pr ; 3 uses
  store ptr %i.ay, ptr %i.bd, align 8, !noalias !37046
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.az, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !37046
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.aw, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !37046
  %i.be = add nuw nsw i64 %.sroa.9.0.copyload7.pr, 1 ; 2 uses
  store i64 %i.be, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !37044, !noalias !37045
  %i.bf = icmp eq i64 %i.au, 0
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he155e442296bbfc4E.exit.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i.i.i"
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val5.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !37036 ; 2 uses
  %i.bh = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %i.bh, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val6.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !37036, !nonnull !41, !noundef !41
  %i.bi = mul nuw i64 %.val5.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !37036
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.bg, %bb.h ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9bcf6caf99d0b580E.exit.i.i.i.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37047
  br label %bb.n

_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit: ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %.sroa.9.0.copyload7 = phi i64 [ %.sroa.9.0.copyload7.pr, %.noexc.i.i.i.i ], [ %i.f, %.noexc7.i.i.i.i ] ; 7 uses
  %.sroa.0.0.copyload3 = load i64, ptr %i.b, align 8, !noalias !37048 ; 5 uses
  %.sroa.6.0.copyload5 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !37048 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37049
  %i.bj = icmp ult i64 %.sroa.9.0.copyload7, 2
  br i1 %i.bj, label %bb.n, label %bb.i, !prof !37050

bb.i:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit
  %i.bk = icmp ult i64 %.sroa.9.0.copyload7, 21
  br i1 %i.bk, label %bb.k, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h7070273b90ef25eeE(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload5, i64 noundef %.sroa.9.0.copyload7, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h3a6a551767bf2549E(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload5, i64 noundef %.sroa.9.0.copyload7)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.copyload3, 0
  br i1 %i.bm, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = mul nuw i64 %.sroa.0.0.copyload3, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload5) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload5, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #67
  br label %common.resume

bb.n:                                             ; preds = %bb.k, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26, %bb.j
  %.sroa.0.025 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.0.0.copyload3, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ %.sroa.0.0.copyload328, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.0.0.copyload3, %bb.k ], [ %.sroa.0.0.copyload3, %bb.j ]
  %.sroa.6.024 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.6.0.copyload5, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ %.sroa.6.0.copyload529, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.6.0.copyload5, %bb.k ], [ %.sroa.6.0.copyload5, %bb.j ]
  %.sroa.9.023 = phi i64 [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread ], [ %.sroa.9.0.copyload7, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit ], [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h73770f6ab8eb1cc4E.exit.thread26 ], [ %.sroa.9.0.copyload7, %bb.k ], [ %.sroa.9.0.copyload7, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37049
  store i64 %.sroa.0.025, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.024, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.023, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile21default_lockfile_path17h88d719ea39017049E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @857, i64 noundef 15)
  store i64 -9223372036854775788, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN19nickel_lang_package8manifest12ManifestFile21snapshot_dependencies17hfbeffdf9580837b1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(400) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !41
  tail call void @_ZN19nickel_lang_package8snapshot8Snapshot3new17hf75c31090d39eaacE(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN19nickel_lang_package8manifest12ManifestFile23is_lock_file_up_to_date14up_to_date_rec17hef1aed4889e199a4E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(272) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(200) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37130)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37130, !noalias !37131, !noundef !41 ; 2 uses
  %.sink1.i.sroa.gep39 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !37130, !noalias !37131, !nonnull !41, !noundef !41 ; 5 uses
  %.val13.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !37132
  %i.i = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.j = bitcast <16 x i1> %i.i to i16            ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val15 = load ptr, ptr %i.l, align 8
  %.val15.fr = freeze ptr %.val15                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16 = load i64, ptr %i.m, align 8
  %.not.i = icmp eq ptr %.val15.fr, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not13.i.i.us = icmp eq i16 %i.j, 0
  br i1 %.not13.i.i.us, label %.lr.ph.i.i.us, label %.loopexit.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us, %.lr.ph.i.i.us
  %i.t = phi ptr [ %i.x, %.lr.ph.i.i.us ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i.us ], [ %i.h, %.lr.ph.split.us ]
  %.val911.i.i.us = load <16 x i8>, ptr %i.t, align 16, !noalias !37133
  %i.v = icmp sgt <16 x i8> %.val911.i.i.us, splat (i8 -1)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -3072 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.cast.i.i.us = bitcast <16 x i1> %i.v to i16   ; 2 uses
  %.not.i.i.us = icmp eq i16 %.cast.i.i.us, 0
  br i1 %.not.i.i.us, label %.lr.ph.i.i.us, label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.i.i.us, %.lr.ph.split.us
  %.sroa.0.1.us = phi ptr [ %i.h, %.lr.ph.split.us ], [ %i.w, %.lr.ph.i.i.us ]
  %.lcssa.i.i.us = phi i16 [ %i.j, %.lr.ph.split.us ], [ %.cast.i.i.us, %.lr.ph.i.i.us ]
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.us, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [192 x i8], ptr %.sroa.0.1.us, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -192
  %i.ad = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = tail call noundef align 8 dereferenceable_or_null(216) ptr @_ZN19nickel_lang_package4lock8LockFile10dependency17h97393f12400a1c49E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(200) %5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ae, i64 noundef %i.af)
  %.not10.us = icmp eq ptr %i.ag, null
  br i1 %.not10.us, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread", label %"._ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread.loopexit67_crit_edge109.split.us"

"._ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread.loopexit67_crit_edge109.split.us": ; preds = %.loopexit.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37134)
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$3get17h6790d58a8d24a4e2E.exit.thread"

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.sroa.0.0108 = phi ptr [ %.sroa.0.1, %bb.k ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.7.0107 = phi ptr [ %.sroa.7.1, %bb.k ], [ %i.k, %.lr.ph ] ; 2 uses
  %.sroa.936.0106 = phi i16 [ %i.ap, %bb.k ], [ %i.j, %.lr.ph ] ; 2 uses
  %.sroa.1137.0105 = phi i64 [ %i.as, %bb.k ], [ %i.e, %.lr.ph ]
  %.not13.i.i = icmp eq i16 %.sroa.936.0106, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %.lr.ph.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.sroa.7.0107, %.lr.ph.split ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.sroa.0.0108, %.lr.ph.split ]
  %.val911.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !37133
  %i.aj = icmp sgt <16 x i8> %.val911.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -3072 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3std6thread6scoped5scope17h4f3245114f91edc8E:bb.a
  store i8 0, ptr %i.eb, align 16, !noalias !46060
  store i64 0, ptr %i.bl, align 128, !noalias !46060
  %.sroa.437.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store i64 0, ptr %.sroa.437.0..sroa_idx.i.i.i.i.i, align 128, !noalias !46060
  %.sroa.538.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 256
  store i32 0, ptr %.sroa.538.0..sroa_idx.i.i.i.i.i, align 128, !noalias !46060
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 260
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4, !noalias !46060
  %.sroa.739.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 264
  store i64 0, ptr %.sroa.739.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 16, !noalias !46060
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 296
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 304
  store i64 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 16, !noalias !46060
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 312
  store i8 1, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.1340.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 320
  store i32 0, ptr %.sroa.1340.0..sroa_idx.i.i.i.i.i, align 64, !noalias !46060
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 324
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 4, !noalias !46060
  %.sroa.1541.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 328
  store i64 0, ptr %.sroa.1541.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx.i.i.i.i.i, align 16, !noalias !46060
  %.sroa.18.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 360
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.19.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 368
  store i64 0, ptr %.sroa.19.0..sroa_idx.i.i.i.i.i, align 16, !noalias !46060
  %.sroa.20.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 376
  store i8 1, ptr %.sroa.20.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.2142.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 384
  store i64 %i.cv, ptr %.sroa.2142.0..sroa_idx.i.i.i.i.i, align 128, !noalias !46060
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 392
  store i64 %i.dx, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 400
  store i64 %i.dw, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i, align 16, !noalias !46060
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 408
  store ptr %i.dh, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 8, !noalias !46060
  %.sroa.25.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 416
  store i64 %i.cv, ptr %.sroa.25.0..sroa_idx.i.i.i.i.i, align 32, !noalias !46060
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !46065
  %i.ec = tail call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #67, !noalias !46065 ; 15 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.n, label %bb.v, !prof !49

bb.n:                                             ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17had11c3f47af356e8E.exit.i.i.i.i.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 640) #73
          to label %.noexc35.i.i.i.i.i unwind label %bb.o, !noalias !46062

.noexc35.i.i.i.i.i:                               ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr196drop_in_place$LT$crossbeam_channel..counter..Counter$LT$crossbeam_channel..flavors..array..Channel$LT$alloc..vec..Vec$LT$$LP$$RF$mut$u20$gix_index..Entry$C$$RF$bstr..bstr..BStr$RP$$GT$$GT$$GT$$GT$17h5fd4ee7d1ad05de5E"(ptr noalias noundef nonnull align 128 dereferenceable(640) %i.bl) #75
          to label %.body.i.i.i.i unwind label %bb.p, !noalias !46062

bb.p:                                             ; preds = %bb.o
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !46062
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.my, %.body128.i.i.i.i, %.thread39.i.i.i.i, %bb.cs, %bb.q, %bb.o, %bb.j
  %.pn35.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn35.pn.i.i.i.i, %bb.my ], [ %.pn35.pn.i.i.i.i, %bb.cs ], [ %i.li, %.thread39.i.i.i.i ], [ %i.eg, %bb.q ], [ %i.dc, %bb.j ], [ %i.ee, %bb.o ], [ %eh.lpad-body129.i.i.i.i, %.body128.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr208drop_in_place$LT$gix_worktree_state..checkout..chunk..Context$LT$gix_odb..memory..Proxy$LT$gix_odb..Cache$LT$gix_odb..store_impls..dynamic..Handle$LT$alloc..sync..Arc$LT$gix_odb..Store$GT$$GT$$GT$$GT$$GT$$GT$17hc8e414881fa24383E"(ptr noalias noundef nonnull align 8 dereferenceable(2232) %i.cf)
          to label %"_ZN4core3ptr269drop_in_place$LT$gix_worktree_state..checkout..function..checkout_inner$LT$gix_odb..memory..Proxy$LT$gix_odb..Cache$LT$gix_odb..store_impls..dynamic..Handle$LT$alloc..sync..Arc$LT$gix_odb..Store$GT$$GT$$GT$$GT$$C$$RF$std..path..Path$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2d073fb2fb21aac4E.exit.i.i.i.i" unwind label %bb.jo, !noalias !46059

bb.q:                                             ; preds = %bb.jl, %.loopexit84.i.i.i.i, %bb.m
  %i.eg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i

bb.r:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.da, ptr noundef nonnull align 8 dereferenceable(136) %i.bm, i64 136, i1 false), !noalias !46062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !46060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !46066
  store i64 2, ptr %i.ce, align 8, !noalias !46066
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.da, ptr %i.eh, align 8, !noalias !46066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !46067
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store i64 1, ptr %i.ei, align 8, !noalias !46067
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store i64 1, ptr %i.ej, align 8, !noalias !46067
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  store i8 0, ptr %i.ek, align 8, !noalias !46067
  store i32 0, ptr %i.bk, align 8, !noalias !46067
  %.sroa.420.0..sroa_idx.i99.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 0, ptr %.sroa.420.0..sroa_idx.i99.i.i.i.i, align 4, !noalias !46067
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx.i100.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 0, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx.i100.i.i.i.i, align 8, !noalias !46067
  %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx.i101.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx.i101.i.i.i.i, align 8, !noalias !46067
  %.sroa.521.sroa.6.0..sroa.521.0..sroa_idx.sroa_idx.i102.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.521.sroa.8.0..sroa.521.0..sroa_idx.sroa_idx.i103.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.6.0..sroa.521.0..sroa_idx.sroa_idx.i102.i.i.i.i, i8 0, i64 16, i1 false), !noalias !46067
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.8.0..sroa.521.0..sroa_idx.sroa_idx.i103.i.i.i.i, align 8, !noalias !46067
  %.sroa.521.sroa.9.0..sroa.521.0..sroa_idx.sroa_idx.i104.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.521.sroa.11.0..sroa.521.0..sroa_idx.sroa_idx.i105.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.9.0..sroa.521.0..sroa_idx.sroa_idx.i104.i.i.i.i, i8 0, i64 16, i1 false), !noalias !46067
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.11.0..sroa.521.0..sroa_idx.sroa_idx.i105.i.i.i.i, align 8, !noalias !46067
  %.sroa.521.sroa.12.0..sroa.521.0..sroa_idx.sroa_idx.i106.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %.sroa.521.sroa.14.0..sroa.521.0..sroa_idx.sroa_idx.i107.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.12.0..sroa.521.0..sroa_idx.sroa_idx.i106.i.i.i.i, i8 0, i64 16, i1 false), !noalias !46067
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.14.0..sroa.521.0..sroa_idx.sroa_idx.i107.i.i.i.i, align 8, !noalias !46067
  %.sroa.521.sroa.15.0..sroa.521.0..sroa_idx.sroa_idx.i108.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  store i64 0, ptr %.sroa.521.sroa.15.0..sroa.521.0..sroa_idx.sroa_idx.i108.i.i.i.i, align 8, !noalias !46067
  %.sroa.521.sroa.16.0..sroa.521.0..sroa_idx.sroa_idx.i109.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  store i8 0, ptr %.sroa.521.sroa.16.0..sroa.521.0..sroa_idx.sroa_idx.i109.i.i.i.i, align 8, !noalias !46067
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !46068
  %i.el = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !46068 ; 4 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.s, label %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i, !prof !49

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 136) #73
          to label %.noexc.i110.i.i.i.i unwind label %bb.t, !noalias !46069

.noexc.i110.i.i.i.i:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$crossbeam_channel..flavors..zero..Inner$GT$$GT$17h9525e037ec666045E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.bk)
          to label %.body111.i.i.i.i unwind label %bb.u, !noalias !46069

bb.u:                                             ; preds = %bb.t
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !46069
  unreachable

_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.el, ptr noundef nonnull align 8 dereferenceable(136) %i.bk, i64 136, i1 false), !noalias !46069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !46067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !46066
  store i64 2, ptr %i.cd, align 8, !noalias !46066
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.el, ptr %i.ep, align 8, !noalias !46066
  br label %._crit_edge.i.i.i.i

bb.v:                                             ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17had11c3f47af356e8E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.ec, ptr noundef nonnull align 128 dereferenceable(640) %i.bl, i64 640, i1 false), !noalias !46062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !46060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !46066
  store i64 0, ptr %i.ce, align 8, !noalias !46066
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.eq, align 8, !noalias !46066
  %i.er = shl i64 %i.cv, 8                        ; 3 uses
  %i.es = icmp samesign ugt i64 %i.cv, 72057594037927935
  %i.et = icmp ugt i64 %i.er, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i67.i.i.i.i = or i1 %i.es, %i.et
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i67.i.i.i.i, label %bb.w, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i, !prof !53

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i: ; preds = %bb.v
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !46070
  %i.eu = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.er, i64 noundef range(i64 1, 9) 8) #67, !noalias !46070 ; 7 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i
  %xtraiter758 = and i64 %i.cv, 3                 ; 3 uses
  %i.ew = icmp samesign ult i64 %i.cv, 4
  br i1 %i.ew, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader"
  %unroll_iter762 = and i64 %i.cv, 72057594037927932
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i, %bb.v
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i98.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i68.i.i.i.i ], [ 0, %bb.v ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i98.i.i.i.i, i64 %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc113.i.i.i.i unwind label %bb.aa, !noalias !46059

.noexc113.i.i.i.i:                                ; preds = %bb.w
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %i.fd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %niter763 = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new" ], [ %niter763.next.3, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.ex = or disjoint i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw [256 x i8], ptr %i.eu, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i
  store i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, ptr %i.ey, align 8, !noalias !46071
  %i.ez = or disjoint i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [256 x i8], ptr %i.eu, i64 %i.ex
  store i64 %i.ex, ptr %i.fa, align 8, !noalias !46071
  %i.fb = or disjoint i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [256 x i8], ptr %i.eu, i64 %i.ez
  store i64 %i.ez, ptr %i.fc, align 8, !noalias !46071
  %i.fd = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i, 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw [256 x i8], ptr %i.eu, i64 %i.fb
  store i64 %i.fb, ptr %i.fe, align 8, !noalias !46071
  %niter763.next.3 = add i64 %niter763, 4         ; 2 uses
  %niter763.ncmp.3 = icmp eq i64 %niter763.next.3, %unroll_iter762
  br i1 %niter763.ncmp.3, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %lcmp.mod760.not = icmp eq i64 %xtraiter758, 0
  br i1 %lcmp.mod760.not, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader": ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil.init = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader" ], [ %i.fd, %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod761 = icmp ne i64 %xtraiter758, 0
  tail call void @llvm.assume(i1 %lcmp.mod761)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil = phi i64 [ %i.ff, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil" ], [ %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil.init, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader" ] ; 3 uses
  %epil.iter759 = phi i64 [ %epil.iter759.next, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader" ]
  %i.ff = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil, 1
  %i.fg = getelementptr inbounds nuw [256 x i8], ptr %i.eu, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil
  store i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i69.i.i.i.i.epil, ptr %i.fg, align 8, !noalias !46071
  %epil.iter759.next = add i64 %epil.iter759, 1   ; 2 uses
  %epil.iter759.cmp.not = icmp eq i64 %epil.iter759.next, %xtraiter758
  br i1 %epil.iter759.cmp.not, label %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil", !llvm.loop !45666

"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e9e181ec7043619E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil", %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i.unr-lcssa"
  %i.fh = icmp samesign ult i64 %i.cv, 36028797018963968
  tail call void @llvm.assume(i1 %i.fh)
  %.sroa.9.0..sroa_idx.i71.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !46067
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i71.i.i.i.i, i8 0, i64 16, i1 false), !noalias !46067
  %.sroa.17.0..sroa_idx.i72.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.0..sroa_idx.i72.i.i.i.i, i8 0, i64 16, i1 false), !noalias !46067
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  store i64 1, ptr %i.fi, align 128, !noalias !46067
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bj, i64 520
  store i64 1, ptr %i.fj, align 8, !noalias !46067
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bj, i64 528
  store i8 0, ptr %i.fk, align 16, !noalias !46067
  store i64 0, ptr %i.bj, align 128, !noalias !46067
  %.sroa.437.0..sroa_idx.i73.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  store i64 0, ptr %.sroa.437.0..sroa_idx.i73.i.i.i.i, align 128, !noalias !46067
  %.sroa.538.0..sroa_idx.i74.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  store i32 0, ptr %.sroa.538.0..sroa_idx.i74.i.i.i.i, align 128, !noalias !46067
  %.sroa.6.0..sroa_idx.i75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 260
  store i8 0, ptr %.sroa.6.0..sroa_idx.i75.i.i.i.i, align 4, !noalias !46067
  %.sroa.739.0..sroa_idx.i76.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  store i64 0, ptr %.sroa.739.0..sroa_idx.i76.i.i.i.i, align 8, !noalias !46067
  %.sroa.8.0..sroa_idx.i77.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i77.i.i.i.i, align 16, !noalias !46067
  %.sroa.10.0..sroa_idx.i78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 296
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i78.i.i.i.i, align 8, !noalias !46067
  %.sroa.11.0..sroa_idx.i79.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 304
  store i64 0, ptr %.sroa.11.0..sroa_idx.i79.i.i.i.i, align 16, !noalias !46067
  %.sroa.12.0..sroa_idx.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 312
  store i8 1, ptr %.sroa.12.0..sroa_idx.i80.i.i.i.i, align 8, !noalias !46067
  %.sroa.1340.0..sroa_idx.i81.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 320
  store i32 0, ptr %.sroa.1340.0..sroa_idx.i81.i.i.i.i, align 64, !noalias !46067
  %.sroa.14.0..sroa_idx.i82.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 324
  store i8 0, ptr %.sroa.14.0..sroa_idx.i82.i.i.i.i, align 4, !noalias !46067
  %.sroa.1541.0..sroa_idx.i83.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 328
  store i64 0, ptr %.sroa.1541.0..sroa_idx.i83.i.i.i.i, align 8, !noalias !46067
  %.sroa.16.0..sroa_idx.i84.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx.i84.i.i.i.i, align 16, !noalias !46067
  %.sroa.18.0..sroa_idx.i85.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 360
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18.0..sroa_idx.i85.i.i.i.i, align 8, !noalias !46067
  %.sroa.19.0..sroa_idx.i86.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 368
  store i64 0, ptr %.sroa.19.0..sroa_idx.i86.i.i.i.i, align 16, !noalias !46067
  %.sroa.20.0..sroa_idx.i87.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 376
  store i8 1, ptr %.sroa.20.0..sroa_idx.i87.i.i.i.i, align 8, !noalias !46067
  %.sroa.2142.0..sroa_idx.i88.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  store i64 %i.cv, ptr %.sroa.2142.0..sroa_idx.i88.i.i.i.i, align 128, !noalias !46067
  %.sroa.22.0..sroa_idx.i89.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 392
  store i64 %i.dx, ptr %.sroa.22.0..sroa_idx.i89.i.i.i.i, align 8, !noalias !46067
  %.sroa.23.0..sroa_idx.i90.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 400
  store i64 %i.dw, ptr %.sroa.23.0..sroa_idx.i90.i.i.i.i, align 16, !noalias !46067
  %.sroa.24.0..sroa_idx.i91.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 408
  store ptr %i.eu, ptr %.sroa.24.0..sroa_idx.i91.i.i.i.i, align 8, !noalias !46067
  %.sroa.25.0..sroa_idx.i92.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 416
  store i64 %i.cv, ptr %.sroa.25.0..sroa_idx.i92.i.i.i.i, align 32, !noalias !46067
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !46072
  %i.fl = tail call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #67, !noalias !46072 ; 16 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.x, label %.lr.ph.i.i.i.i, !prof !49

bb.x:                                             ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 640) #73
          to label %.noexc35.i97.i.i.i.i unwind label %bb.y, !noalias !46069

.noexc35.i97.i.i.i.i:                             ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.fn = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr224drop_in_place$LT$crossbeam_channel..counter..Counter$LT$crossbeam_channel..flavors..array..Channel$LT$core..result..Result$LT$gix_worktree_state..checkout..chunk..Outcome$C$gix_worktree_state..checkout..Error$GT$$GT$$GT$$GT$17h6a814fa0412715d7E"(ptr noalias noundef nonnull align 128 dereferenceable(640) %i.bj) #75
          to label %.body111.i.i.i.i unwind label %bb.z, !noalias !46069

bb.z:                                             ; preds = %bb.y
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !46069
  unreachable

.body111.i.i.i.i:                                 ; preds = %bb.mx, %bb.aa, %bb.y, %bb.t
  %.sink50.i.i352.i.i.i = phi ptr [ %.sink50.i.i354.i.i.i, %bb.mx ], [ %.sink50.i.i353.i.i.i, %bb.aa ], [ %i.da, %bb.t ], [ %i.ec, %bb.y ]
  %.sink52.i.i336.i.i.i = phi i64 [ %i.lc, %bb.mx ], [ %.sink52.i.i337.i.i.i, %bb.aa ], [ 2, %bb.t ], [ 0, %bb.y ]
  %.pn35.pn.i.i.i.i = phi { ptr, i32 } [ %.pn35.i.i.i.i, %bb.mx ], [ %i.fp, %bb.aa ], [ %i.en, %bb.t ], [ %i.fn, %bb.y ] ; 2 uses
  %.sroa.08.0.i.i.i.i = phi i1 [ %.sroa.08.2.i.i.i.i, %bb.mx ], [ %.sroa.08.1.i.i.i.i, %bb.aa ], [ true, %bb.t ], [ true, %bb.y ]
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$crossbeam_channel..channel..Receiver$LT$alloc..vec..Vec$LT$$LP$$RF$mut$u20$gix_index..Entry$C$$RF$bstr..bstr..BStr$RP$$GT$$GT$$GT$17hbd00761b78317468E"(ptr noalias noundef align 8 dereferenceable(16) %i.ce) #75
          to label %bb.cs unwind label %bb.jo, !noalias !46059

bb.aa:                                            ; preds = %bb.cq, %bb.w
  %.sink50.i.i353.i.i.i = phi ptr [ %.sink50.i.i346364.i.i.i, %bb.cq ], [ %i.ec, %bb.w ]
  %.sink52.i.i337.i.i.i = phi i64 [ %i.gq, %bb.cq ], [ 0, %bb.w ]
  %.sroa.08.1.i.i.i.i = phi i1 [ false, %bb.cq ], [ true, %bb.w ]
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body111.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN17crossbeam_channel7flavors5array16Channel$LT$T$GT$13with_capacity17he3465818ab032d47E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.fl, ptr noundef nonnull align 128 dereferenceable(640) %i.bj, i64 640, i1 false), !noalias !46069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !46067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !46066
  store i64 0, ptr %i.cd, align 8, !noalias !46066
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.fl, ptr %i.fq, align 8, !noalias !46066
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.517.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.618.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 512
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cf, i64 2144
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cf, i64 2160
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2072
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bw, i64 2024 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bw, i64 2032
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bw, i64 2008 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bw, i64 2016 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bw, i64 2040
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bw, i64 2056
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx53.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i180.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.sroa.56.0..sroa_idx.i.i.i204.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.67.0..sroa_idx.i.i.i206.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.6.0..sroa_idx54.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0..sroa_idx56.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4.0..sroa_idx22.i.i200.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.523.0..sroa_idx.i.i201.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i195.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.614.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  br label %bb.ac

._crit_edge.i.i.i.i:                              ; preds = %bb.mu, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i
  %i.gp = phi ptr [ %i.el, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i ], [ %i.fl, %bb.mu ] ; 9 uses
  %i.gq = phi i64 [ 2, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i ], [ 0, %bb.mu ] ; 12 uses
  %.sink50.i.i346364.i.i.i = phi ptr [ %i.da, %_ZN17crossbeam_channel7channel7bounded17h4fe6350061dd5559E.exit.i.thread.i.i.i ], [ %i.ec, %bb.mu ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !46066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !46066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !46066
  %i.gr = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 -9223372036854775808, ptr %i.gr, align 8, !noalias !46066
  store i64 0, ptr %i.br, align 8, !noalias !46066
  %i.gs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i8 0, ptr %i.gs, align 8, !noalias !46066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !46066
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !46073
  %i.gt = call noundef dereferenceable_or_null(25) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 25, i64 noundef range(i64 1, 9) 1) #67, !noalias !46073 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc115.i.i.i.i unwind label %bb.jp, !noalias !46059

.noexc115.i.i.i.i:                                ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.mu, %.lr.ph.i.i.i.i
  %.sroa.026.0315.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.gv, %bb.mu ] ; 2 uses
  %i.gv = add nuw nsw i64 %.sroa.026.0315.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !46066
  store i64 %.sroa.026.0315.i.i.i.i, ptr %i.cc, align 8, !noalias !46066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !46066
end_hunk_2
