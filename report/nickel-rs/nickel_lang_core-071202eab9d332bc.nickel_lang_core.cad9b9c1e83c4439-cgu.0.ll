Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h35201031f27cbbc1E":bb.a
  %.sroa.1019.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.54.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.67.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.710.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.813.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.916.0..sroa_idx17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.1019.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.12.0..sroa_idx23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf592a50631f44658E.exit", %bb.a
  %i.ap = phi ptr [ %i.aq, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf592a50631f44658E.exit" ], [ %.promoted, %bb.a ] ; 4 uses
  %.not = icmp eq ptr %i.ap, %.pre
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.l, ptr noundef nonnull align 8 dereferenceable(200) %i.ap, i64 200, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 200 ; 2 uses
  store ptr %i.aq, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3753
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.k, ptr noundef nonnull align 8 dereferenceable(192) %i.ar, i64 192, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3757
  %i.as = load i64, ptr %i.p, align 8, !range !158, !noalias !3757, !noundef !145
  %i.at = tail call i64 @llvm.usub.sat.i64(i64 %i.as, i64 17)
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

.loopexit.i.i.i:                                  ; preds = %bb.l
  unreachable

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3757
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6fff9f3e77e521c1E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.p)
          to label %bb.g unwind label %bb.au, !noalias !3757

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !3757
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !3757
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !3757
  %i.au = load <2 x i16>, ptr %i.q, align 8, !noalias !3757
  store <2 x i16> %i.au, ptr %i.r, align 8, !noalias !3757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3757
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.av = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(192) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %bb.i unwind label %.thread.i.i.i, !noalias !3758 ; 4 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3757
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17hb24470649e72074dE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.w)
          to label %bb.al unwind label %bb.ak, !noalias !3759

bb.k:                                             ; preds = %bb.i
  %.sroa.030.0.copyload.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !3760, !noalias !3759
  %.sroa.431.0.copyload.i.i.i = load ptr, ptr %.sroa.431.0..sroa_idx.i.i.i, align 8, !alias.scope !3760, !noalias !3759, !nonnull !145, !noundef !145 ; 4 uses
  %.sroa.532.0.copyload.i.i.i = load i64, ptr %.sroa.532.0..sroa_idx.i.i.i, align 8, !alias.scope !3760, !noalias !3759 ; 3 uses
  %i.aw = icmp ult i64 %.sroa.532.0.copyload.i.i.i, 76861433640456466
  tail call void @llvm.assume(i1 %i.aw)
  %.idx145.i.i.i = mul nuw nsw i64 %.sroa.532.0.copyload.i.i.i, 120
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.431.0.copyload.i.i.i, i64 %.idx145.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3757
  store ptr %.sroa.431.0.copyload.i.i.i, ptr %i.i, align 8, !noalias !3757
  store i64 %.sroa.030.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3757
  store ptr %i.ax, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !3757
  %i.ay = icmp eq i64 %.sroa.532.0.copyload.i.i.i, 0
  br i1 %i.ay, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.thread.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.i.i.i": ; preds = %bb.ai, %bb.ah, %bb.ac
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm75.i.i.i, %bb.ah ], [ %lpad.thr_comm.split-lp76.i.i.i, %bb.ac ], [ %lpad.thr_comm75.i.i.i, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17h15f4117586d716f9E"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #86
          to label %.thread103.i.i.i unwind label %bb.aj, !noalias !3757

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.i.i.i": ; preds = %bb.k, %bb.ag
  %i.az = phi ptr [ %i.ba, %bb.ag ], [ %.sroa.431.0.copyload.i.i.i, %bb.k ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120 ; 5 uses
  %.sroa.033.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.033.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.033.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3761
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.534.0.copyload.i.i.i = load i64, ptr %.sroa.534.0..sroa_idx.i.i.i, align 8, !noalias !3761 ; 4 uses
  %.not10.i.i.i = icmp eq i64 %.sroa.534.0.copyload.i.i.i, 20
  br i1 %.not10.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.thread.i.i.i", label %bb.l

bb.l:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.i.i.i"
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.534.0.copyload.i.i.i, ptr %i.g, align 8, !noalias !3757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx.i.i.i, i64 88, i1 false), !noalias !3757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3757
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.534.0.copyload.i.i.i, i64 17)
  switch i64 %i.bb, label %.loopexit.i.i.i [
    i64 0, label %bb.z
    i64 1, label %bb.aa
    i64 2, label %bb.ab
  ]

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.thread.i.i.i": ; preds = %bb.ag, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.i.i.i", %bb.k
  %i.bc = phi ptr [ %.sroa.431.0.copyload.i.i.i, %bb.k ], [ %i.ax, %bb.ag ], [ %i.ba, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.i.i.i" ]
  store ptr %i.bc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !3757
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17h15f4117586d716f9E"(ptr noalias noundef align 8 dereferenceable(32) %i.i)
          to label %bb.m unwind label %.thread111.i.i.i, !noalias !3757

.thread111.i.i.i:                                 ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.thread.i.i.i"
  %lpad.thr_comm97113.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread103.i.i.i

bb.m:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h587302db1c34867aE.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3757
  %.sroa.036.0.copyload.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !3760, !noalias !3759
  %.sroa.437.0.copyload.i.i.i = load ptr, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !alias.scope !3760, !noalias !3759, !nonnull !145, !noundef !145 ; 5 uses
  %.sroa.538.0.copyload.i.i.i = load i64, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !alias.scope !3760, !noalias !3759 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3757
  %i.bd = icmp ult i64 %.sroa.538.0.copyload.i.i.i, 128102389400760776
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %.sroa.437.0.copyload.i.i.i, i64 %.sroa.538.0.copyload.i.i.i
  store ptr %.sroa.437.0.copyload.i.i.i, ptr %i.d, align 8, !alias.scope !3762, !noalias !3763
  store i64 %.sroa.036.0.copyload.i.i.i, ptr %i.af, align 8, !alias.scope !3762, !noalias !3763
  store ptr %.sroa.437.0.copyload.i.i.i, ptr %i.ag, align 8, !alias.scope !3762, !noalias !3763
  store ptr %i.be, ptr %i.ah, align 8, !alias.scope !3762, !noalias !3763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3765)
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.538.0.copyload.i.i.i, 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  %i.bf = load i64, ptr %i.ai, align 8, !alias.scope !3767, !noalias !3768, !noundef !145 ; 3 uses
  %i.bg = load i64, ptr %i.ae, align 8, !range !146, !alias.scope !3767, !noalias !3768, !noundef !145
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = icmp ugt i64 %.sroa.538.0.copyload.i.i.i, %i.bh
  br i1 %i.bi, label %bb.o, label %bb.p, !prof !147

bb.n:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$nickel_lang_core..typecheck..UnifEnumRows$RP$$GT$$GT$17h8b15bcba7daf5b12E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #86
          to label %.thread.thread.thread.i.i.i unwind label %bb.q, !noalias !3769

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.bf, i64 noundef %.sroa.538.0.copyload.i.i.i, i64 noundef 8, i64 noundef 72)
          to label %.noexc.i.i.i.i unwind label %bb.n, !noalias !3768

.noexc.i.i.i.i:                                   ; preds = %bb.o
  %.pre.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !3770, !noalias !3768
  br label %bb.p

bb.p:                                             ; preds = %.noexc.i.i.i.i, %bb.m
  %i.bk = phi i64 [ %i.bf, %bb.m ], [ %.pre.i.i.i.i.i, %.noexc.i.i.i.i ] ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 128102389400760776
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load ptr, ptr %i.aj, align 8, !alias.scope !3770, !noalias !3768, !nonnull !145, !noundef !145
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr nonnull readonly align 8 %.sroa.437.0.copyload.i.i.i, i64 %.idx.i.i.i, i1 false), !noalias !3771
  %i.bo = add nuw nsw i64 %i.bk, %.sroa.538.0.copyload.i.i.i
  store i64 %i.bo, ptr %i.ai, align 8, !alias.scope !3770, !noalias !3768
  store ptr %.sroa.437.0.copyload.i.i.i, ptr %i.ah, align 8, !alias.scope !3765, !noalias !3769
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$nickel_lang_core..typecheck..UnifEnumRows$RP$$GT$$GT$17h8b15bcba7daf5b12E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hc6da0f21500364bcE.exit.i.i.i" unwind label %.thread114.i.i.i, !noalias !3757

bb.q:                                             ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !3772
  unreachable

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hc6da0f21500364bcE.exit.i.i.i": ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3757
  %.sroa.039.0.copyload.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !3760, !noalias !3759, !nonnull !145, !noundef !145 ; 7 uses
  %.sroa.440.0.copyload.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !3760, !noalias !3759 ; 4 uses
  %.sroa.542.0.copyload.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !3760, !noalias !3759 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  %.val3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.039.0.copyload.i.i.i, align 16, !noalias !3774
  %i.bq = icmp eq i64 %.sroa.440.0.copyload.i.i.i, 0 ; 2 uses
  br i1 %i.bq, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hafcfbd5954d64e41E.exit.i.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hc6da0f21500364bcE.exit.i.i.i"
  %i.br = mul i64 %.sroa.440.0.copyload.i.i.i, 24 ; 2 uses
  %2 = add i64 %i.br, 24
  %3 = icmp ult i64 %2, -15
  tail call void @llvm.assume(i1 %3)
  %i.bs = and i64 %i.br, -16                      ; 2 uses
  %4 = add i64 %i.bs, 32                          ; 2 uses
  %i.bt = add i64 %.sroa.440.0.copyload.i.i.i, 17
  %i.bu = add i64 %i.bt, %4                       ; 3 uses
  %5 = icmp uge i64 %i.bu, %4
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.bu, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %i.bv = sub i64 -32, %i.bs
  %i.bw = getelementptr inbounds i8, ptr %.sroa.039.0.copyload.i.i.i, i64 %i.bv
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hafcfbd5954d64e41E.exit.i.i.i.i"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hafcfbd5954d64e41E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hc6da0f21500364bcE.exit.i.i.i"
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ], [ undef, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hc6da0f21500364bcE.exit.i.i.i" ] ; 4 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ], [ undef, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hc6da0f21500364bcE.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ], [ 0, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hc6da0f21500364bcE.exit.i.i.i" ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload.i.i.i, i64 16 ; 3 uses
  %i.by = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i, splat (i8 -1) ; 3 uses
  %i.bz = getelementptr i8, ptr %.sroa.039.0.copyload.i.i.i, i64 %.sroa.440.0.copyload.i.i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3776
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !3777, !noalias !3778
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3777, !noalias !3778
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.67.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3777, !noalias !3778
  store ptr %.sroa.039.0.copyload.i.i.i, ptr %.sroa.710.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3777, !noalias !3778
  store ptr %i.bx, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3777, !noalias !3778
  store ptr %i.ca, ptr %.sroa.916.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3777, !noalias !3778
  store <16 x i1> %i.by, ptr %.sroa.1019.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3777, !noalias !3778
  store i64 %.sroa.542.0.copyload.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3777, !noalias !3778
  %i.cb = load i64, ptr %i.am, align 8, !alias.scope !3779, !noalias !3780, !noundef !145
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = add i64 %.sroa.542.0.copyload.i.i.i, 1
  %i.ce = lshr i64 %i.cd, 1
  %.sroa.0.0.i.i.i.i.i = select i1 %i.cc, i64 %.sroa.542.0.copyload.i.i.i, i64 %i.ce ; 2 uses
  %i.cf = load i64, ptr %i.an, align 8, !alias.scope !3781, !noalias !3782, !noundef !145
  %i.cg = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, %i.cf
  br i1 %i.cg, label %bb.r, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb6d7070ff142c41aE.exit.i.i.i.i.i", !prof !147

.body.i.i.i.i.i:                                  ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  store i16 %i.cv, ptr %.sroa.1019.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !3783, !noalias !3784
  store i64 %i.cy, ptr %.sroa.12.0..sroa_idx23.i.i.i.i, align 8, !alias.scope !3785, !noalias !3784
  call fastcc void @"_ZN4core3ptr151drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$$GT$17h2d483335ebb70fe4E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #86, !noalias !3786
  br label %.thread.thread.thread.thread.i.i.i

bb.r:                                             ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hafcfbd5954d64e41E.exit.i.i.i.i"
  %i.ci = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h4cdc8321a9e0205dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %.sroa.0.0.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb6d7070ff142c41aE.exit.i.i.i.i.i" unwind label %bb.x, !noalias !3780 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb6d7070ff142c41aE.exit.i.i.i.i.i": ; preds = %bb.r, %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hafcfbd5954d64e41E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3787
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !3778
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx5.i.i.i.i, align 8, !noalias !3778
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.67.0..sroa_idx8.i.i.i.i, align 8, !noalias !3778
  store ptr %.sroa.039.0.copyload.i.i.i, ptr %.sroa.710.0..sroa_idx11.i.i.i.i, align 8, !noalias !3778
  store ptr %i.bx, ptr %.sroa.813.0..sroa_idx14.i.i.i.i, align 8, !noalias !3778
  store ptr %i.ca, ptr %.sroa.916.0..sroa_idx17.i.i.i.i, align 8, !noalias !3778
  store <16 x i1> %i.by, ptr %.sroa.1019.0..sroa_idx20.i.i.i.i, align 8, !noalias !3778
  store i64 %.sroa.542.0.copyload.i.i.i, ptr %.sroa.12.0..sroa_idx23.i.i.i.i, align 8, !noalias !3778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3788)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  %i.cj = icmp eq i64 %.sroa.542.0.copyload.i.i.i, 0
  br i1 %i.cj, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h243c08e3f7de978fE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb6d7070ff142c41aE.exit.i.i.i.i.i"
  %i.ck = bitcast <16 x i1> %i.by to i16
  br label %bb.s

bb.s:                                             ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.lcssa1021.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.lcssa1118.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.039.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.cl = phi i16 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cv, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.cm = phi i64 [ %.sroa.542.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cy, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2978fe18f5fb66d5E.exit.i.i.i.i.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.cr, ptr %.sroa.813.0..sroa_idx14.i.i.i.i, align 8, !alias.scope !3783, !noalias !3784
  store ptr %i.cq, ptr %.sroa.710.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !3783, !noalias !3784
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2978fe18f5fb66d5E.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1021.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 2 uses
  %i.co = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1118.i.i.i.i.i.i.i.i.i.i, %bb.s ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cn, align 16, !noalias !3791
  %i.cp = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -384 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cp to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2978fe18f5fb66d5E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1021.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 2 uses
  %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1118.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.s ] ; 3 uses
  %i.cs = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cu = zext nneg i16 %i.ct to i64
  %i.cv = and i16 %i.cs, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cw = sub nsw i64 0, %i.cu
  %i.cx = getelementptr inbounds [24 x i8], ptr %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cw ; 2 uses
  %i.cy = add i64 %i.cm, -1                       ; 5 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -24
  %.sroa.03.0.copyload4.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !3792 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.03.0.copyload4.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2978fe18f5fb66d5E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cx, i64 -16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !3793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3794
  store i64 %.sroa.03.0.copyload4.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !3794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !3794
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h9326ef2dc4c70133E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %.body.i.i.i.i.i

bb.u:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2978fe18f5fb66d5E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h243c08e3f7de978fE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.u, %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.db = phi i64 [ %i.do, %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cy, %bb.u ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.dc = phi i16 [ %i.dl, %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cv, %bb.u ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h69cae7233a27e163E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.de = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dd, align 16, !noalias !3795
  %i.df = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -384 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.df to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h69cae7233a27e163E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h69cae7233a27e163E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.dc, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.di = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = and i16 %i.di, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dm = sub nsw i64 0, %i.dk
  %i.dn = getelementptr inbounds [24 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dm ; 2 uses
  %i.do = add i64 %i.db, -1                       ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dp, align 8, !noalias !3796 ; 2 uses
  %i.dq = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dq, label %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h69cae7233a27e163E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dr = getelementptr i8, ptr %i.dn, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !noalias !3796, !nonnull !145, !noundef !145
  %i.ds = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3796
  br label %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.v, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h69cae7233a27e163E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h243c08e3f7de978fE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h243c08e3f7de978fE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr116drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$$LP$$RP$$RP$$GT$17h076bb36f63cb89a7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.u, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb6d7070ff142c41aE.exit.i.i.i.i.i"
  %i.dt = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.bq, %i.dt
  br i1 %or.cond.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h243c08e3f7de978fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i.i.i.i.i) #83, !noalias !3797
  br label %bb.y

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h4e9dd6d4871bdf35E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3794
  %i.du = icmp eq i64 %i.cy, 0
  br i1 %i.du, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h243c08e3f7de978fE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.s

bb.x:                                             ; preds = %bb.r
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr627drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..set..IntoIter$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$GT$$C$$LT$hashbrown..set..HashSet$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$C$std..hash..random..RandomState$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$GT$$GT$..extend$LT$std..collections..hash..set..HashSet$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..pattern..PatternPathElem$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5ab795c1ec754b3bE"(ptr noalias noundef align 8 dereferenceable(64) %i.c) #86, !noalias !3780
  br label %.thread.thread.thread.thread.i.i.i

bb.y:                                             ; preds = %bb.w, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h243c08e3f7de978fE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3776
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf592a50631f44658E.exit"

bb.z:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3757
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6fff9f3e77e521c1E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.g)
          to label %bb.ad unwind label %bb.ah, !noalias !3757

bb.aa:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !3757
  br label %bb.ae

bb.ab:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !3757
end_hunk_0
begin_hunk_1_@"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h687022806cedc577E":bb.a

bb.i:                                             ; preds = %.lr.ph44
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #82
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4317)
  %i.ax = load i64, ptr %0, align 8, !range !146, !alias.scope !4317, !noalias !4318, !noundef !145
  %i.ay = icmp eq i64 %i.w, %i.ax
  br i1 %i.ay, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hae53846c62c1dc49E.exit"

bb.k:                                             ; preds = %bb.j
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6e188d19505927e5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @82)
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !4317, !noalias !4318
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hae53846c62c1dc49E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hae53846c62c1dc49E.exit": ; preds = %bb.j, %bb.k
  %i.az = phi ptr [ %i.v, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.w ; 2 uses
  store ptr %i.aw, ptr %i.ba, align 8, !noalias !4317
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.au, ptr %i.bb, align 8, !noalias !4317
  %i.bc = add i64 %i.w, 1                         ; 2 uses
  store i64 %i.bc, ptr %i.f, align 8, !alias.scope !4317, !noalias !4318
  %exitcond.not = icmp eq i64 %i.x, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph44

bb.l:                                             ; preds = %bb.h
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #82
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.bd = add nsw i64 %i.m, -1                    ; 4 uses
  store i64 %i.bd, ptr %i.f, align 8
  %i.be = icmp samesign ult i64 %i.bd, %i.k
  tail call void @llvm.assume(i1 %i.be)
  %.not24 = icmp eq i64 %i.bd, 0
  br i1 %.not24, label %.thread30, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha56621c27cd2fb5bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !145, !noundef !145
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.thread30.sink.split

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !145 ; 5 uses
  %i.h = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.h)
  %.not2441 = icmp eq i64 %i.g, 0
  br i1 %.not2441, label %.thread30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !146
  br label %bb.c

.thread30.sink.split:                             ; preds = %bb.a, %bb.g
  %.sink61 = phi ptr [ %i.aj, %bb.g ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  store ptr %i.l, ptr %i.a, align 8
  br label %.thread30

.thread30:                                        ; preds = %bb.c, %bb.m, %.thread30.sink.split, %bb.b, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %.sink61, %.thread30.sink.split ], [ null, %bb.m ], [ null, %bb.c ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %i.m = phi i64 [ %i.g, %.lr.ph ], [ %i.bd, %bb.m ] ; 5 uses
  %i.n = getelementptr [16 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -16      ; 3 uses
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %.thread30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !145, !noundef !145
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8
  %i.u = icmp samesign ult i64 %i.m, %i.g
  br i1 %i.u, label %.lr.ph44, label %._crit_edge

.lr.ph44:                                         ; preds = %bb.e, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit"
  %i.v = phi ptr [ %i.az, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit" ], [ %i.j, %bb.e ]
  %i.w = phi i64 [ %i.bc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit" ], [ %i.m, %bb.e ] ; 3 uses
  %.in = phi i64 [ %i.x, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit" ], [ %i.m, %bb.e ]
  %.sroa.03.043 = phi ptr [ %i.ar, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit" ], [ %i.p, %bb.e ]
  %i.x = add nsw i64 %.in, 1                      ; 2 uses
  %i.y = load ptr, ptr %.sroa.03.043, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !164, !noundef !145
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !154

._crit_edge:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit", %bb.e
  %.sroa.03.0.lcssa = phi ptr [ %i.p, %bb.e ], [ %i.ar, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit" ]
  %i.ac = load ptr, ptr %.sroa.03.0.lcssa, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !164, !noundef !145
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.g, !prof !147

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #82
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !145 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 288
  %i.al = load i64, ptr %i.ak, align 8, !noundef !145 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.al
  store ptr %i.aj, ptr %i.a, align 8
  store ptr %i.am, ptr %i.c, align 8
  %i.an = icmp samesign eq i64 %i.ai, %i.al
  br i1 %i.an, label %.thread30, label %.thread30.sink.split

bb.h:                                             ; preds = %.lr.ph44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !145 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 288
  %i.at = load i64, ptr %i.as, align 8, !noundef !145 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.at
  %i.av = icmp samesign eq i64 %i.aq, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  br i1 %i.av, label %bb.l, label %bb.j, !prof !147

bb.i:                                             ; preds = %.lr.ph44
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #82
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4322)
  %i.ax = load i64, ptr %0, align 8, !range !146, !alias.scope !4322, !noalias !4323, !noundef !145
  %i.ay = icmp eq i64 %i.w, %i.ax
  br i1 %i.ay, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit"

bb.k:                                             ; preds = %bb.j
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd2a6f3dcf467e413E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @82)
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !4322, !noalias !4323
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h4cb9a34a5635e73dE.exit": ; preds = %bb.j, %bb.k
  %i.az = phi ptr [ %i.v, %bb.j ], [ %.pre, %bb.k ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.w ; 2 uses
  store ptr %i.aw, ptr %i.ba, align 8, !noalias !4322
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.au, ptr %i.bb, align 8, !noalias !4322
  %i.bc = add i64 %i.w, 1                         ; 2 uses
  store i64 %i.bc, ptr %i.f, align 8, !alias.scope !4322, !noalias !4323
  %exitcond.not = icmp eq i64 %i.x, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph44

bb.l:                                             ; preds = %bb.h
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #82
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.bd = add nsw i64 %i.m, -1                    ; 4 uses
  store i64 %i.bd, ptr %i.f, align 8
  %i.be = icmp samesign ult i64 %i.bd, %i.k
  tail call void @llvm.assume(i1 %i.be)
  %.not24 = icmp eq i64 %i.bd, 0
  br i1 %.not24, label %.thread30, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h0e3d1e123a95a780E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  %.sroa.010.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !4360, !noalias !4361, !nonnull !145, !noundef !145 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !4360, !noalias !4361 ; 4 uses
  %.sroa.311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.311.0.copyload.i = load i64, ptr %.sroa.311.0..sroa_idx.i, align 8, !alias.scope !4360, !noalias !4361 ; 4 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.010.0.copyload.i, align 16, !noalias !4362
  %i.a = icmp eq i64 %.sroa.2.0.copyload.i, 0     ; 4 uses
  br i1 %i.a, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he1bc22b748fb43d8E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = icmp slt i64 %.sroa.2.0.copyload.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.b)
  %i.c = shl i64 %.sroa.2.0.copyload.i, 2
  %i.d = and i64 %i.c, -16                        ; 2 uses
  %2 = add i64 %i.d, 16                           ; 2 uses
  %i.e = add nsw i64 %.sroa.2.0.copyload.i, 17
  %i.f = add i64 %i.e, %2                         ; 3 uses
  %3 = icmp uge i64 %i.f, %2
  tail call void @llvm.assume(i1 %3)
  %4 = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %4)
  %i.g = sub nuw nsw i64 -16, %i.d
  %i.h = getelementptr inbounds i8, ptr %.sroa.010.0.copyload.i, i64 %i.g
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he1bc22b748fb43d8E.exit"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he1bc22b748fb43d8E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.f, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 5 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.h, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i, i64 16
  %i.j = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.k = bitcast <16 x i1> %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !4363, !noalias !4364, !noundef !145
  %i.n = icmp eq i64 %i.m, 0
  %i.o = add i64 %.sroa.311.0.copyload.i, 1
  %i.p = lshr i64 %i.o, 1
  %.sroa.0.0.i = select i1 %i.n, i64 %.sroa.311.0.copyload.i, i64 %i.p ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4365, !noalias !4366, !noundef !145
  %i.s = icmp ugt i64 %.sroa.0.0.i, %i.r
  br i1 %i.s, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i", !prof !147

bb.b:                                             ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he1bc22b748fb43d8E.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7f4e452eaa6315bbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i" unwind label %bb.e, !noalias !4364 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i": ; preds = %bb.b, %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he1bc22b748fb43d8E.exit"
  %i.v = icmp eq i64 %.sroa.311.0.copyload.i, 0
  br i1 %i.v, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i._crit_edge", label %.lr.ph

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.w = add i64 %i.aa, -1                        ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i.i.i.i.i.i
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i", %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i"
  %i.aa = phi i64 [ %i.w, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i" ], [ %.sroa.311.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i" ]
  %i.ab = phi i16 [ %i.y, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i" ], [ %i.k, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i" ] ; 2 uses
  %.lcssa812.i.i.i.i.i.i13 = phi ptr [ %.lcssa811.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i" ], [ %.sroa.010.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i" ] ; 2 uses
  %.lcssa15.i.i.i.i.i.i12 = phi ptr [ %.lcssa14.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i" ], [ %i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa15.i.i.i.i.i.i12, %.lr.ph ] ; 2 uses
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa812.i.i.i.i.i.i13, %.lr.ph ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !4367
  %i.ae = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ae to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.a, %i.ai
  br i1 %or.cond.i.i.i.i.i, label %.body.i, label %.body.sink.split.i

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i12, %.lr.ph ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa811.i.i.i.i.i.i = phi ptr [ %.lcssa812.i.i.i.i.i.i13, %.lr.ph ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.ab, %.lr.ph ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr %.lcssa811.i.i.i.i.i.i, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !noalias !4368, !noundef !145
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h6bcd11753ca413e1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ao)
          to label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i" unwind label %bb.c

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i._crit_edge": ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcd6537b7d52169a2E.exit.i"
  %i.ap = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i, 0
  %or.cond7.i.i.i.i.i = or i1 %i.a, %i.ap
  br i1 %or.cond7.i.i.i.i.i, label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h0c4e3a8e00996867E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i._crit_edge"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i) #83, !noalias !4369
  br label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h0c4e3a8e00996867E.exit"

.body.sink.split.i:                               ; preds = %bb.e, %bb.c
  %eh.lpad-body27.ph.i = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.ah, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i) #83, !noalias !4364
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %.body.sink.split.i, %bb.c
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.ah, %bb.c ], [ %eh.lpad-body27.ph.i, %.body.sink.split.i ]
  resume { ptr, i32 } %eh.lpad-body27.i

bb.e:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i = or i1 %i.a, %i.ar
  br i1 %or.cond.i, label %.body.i, label %.body.sink.split.i

"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17h0c4e3a8e00996867E.exit": ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0c99652eb0754fdeE.exit.i.i.i.i.i.i._crit_edge", %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN105_$LT$nickel_lang_core..repl..wasm_frontend..ReplState$u20$as$u20$wasm_bindgen..describe..WasmDescribe$GT$8describe17hadc99b134299503cE"() unnamed_addr #4 {
bb.a:
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 26) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 9) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 82) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 101) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 112) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 108) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 83) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 116) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 97) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 116) #83
  tail call void @_ZN12wasm_bindgen19__wbindgen_describe17h8a6c5e31c98dac52E(i32 noundef 101) #83
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN105_$LT$nickel_lang_core..serialize..yaml..Loader$u20$as$u20$saphyr_parser..parser..SpannedEventReceiver$GT$8on_event17h9251ded80fcdadb2E"(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 3 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %i.k = alloca [20 x i8], align 4                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [64 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i32, ptr %i.p, align 8, !range !196, !noundef !145
  %.not = icmp eq i32 %i.q, 25
  %.sink.i100.sroa.gep = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink.i100.sroa.gep118 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr49drop_in_place$LT$saphyr_parser..parser..Event$GT$17hcb84e0749ca9b7ffE"(ptr noalias noundef align 8 dereferenceable(88) %1)
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit85"

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8, !range !197, !noundef !145
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.u = load i32, ptr %i.t, align 4
  %i.v = load i64, ptr %2, align 8, !noundef !145 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !145 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !145 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4482)
  %i.ac = icmp ult i64 %i.v, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !4482, !noalias !4481, !noundef !145
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.02.0.i = phi i64 [ %i.ae, %bb.d ], [ %i.v, %bb.c ]
  %i.af = icmp ult i64 %i.x, %i.ab
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !4482, !noalias !4481, !noundef !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.05.0.i = phi i64 [ %i.ah, %bb.f ], [ %i.x, %bb.e ]
  %i.ai = trunc nuw i32 %i.s to i1
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = trunc i64 %.sroa.02.0.i to i32
  %i.ak = trunc i64 %.sroa.05.0.i to i32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !4481, !noalias !4482
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.aj, ptr %.sroa.515.0..sroa_idx.i, align 4, !alias.scope !4481, !noalias !4482
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.ak, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !4481, !noalias !4482
  br label %bb.k

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit85": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit.i.i.i95", %bb.bv, %bb.bt, %bb.bt, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit.i.i.i87", %bb.bp, %bb.bn, %bb.bn, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$saphyr_parser..parser..Tag$GT$$GT$$GT$17h2ca897692d6d0533E.exit", %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$saphyr_parser..parser..Tag$GT$$GT$$GT$17h2ca897692d6d0533E.exit", %bb.bj, %bb.ca, %bb.az, %bb.at, %bb.k, %bb.k, %bb.k, %bb.k, %bb.b
  ret void

bb.i:                                             ; preds = %.body, %.body91, %bb.j
  %.sroa.035.0 = phi i1 [ true, %bb.j ], [ true, %.body91 ], [ false, %.body ]
  %.sroa.036.0 = phi i1 [ true, %bb.j ], [ false, %.body91 ], [ true, %.body ]
  %.pn56 = phi { ptr, i32 } [ %i.al, %bb.j ], [ %eh.lpad-body92, %.body91 ], [ %eh.lpad-body, %.body ] ; 6 uses
  switch i64 %i.aq, label %.critedge [
    i64 6, label %.thread
    i64 7, label %bb.cb
    i64 9, label %bb.cc
  ]

bb.j:                                             ; preds = %.thread128.invoke, %.loopexit.i, %bb.ap, %bb.ca, %bb.ay, %bb.ar, %bb.am
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi i32 [ 0, %bb.h ], [ 2, %bb.g ]
  store i32 %.sink.i, ptr %i.o, align 4, !alias.scope !4481, !noalias !4482
  %i.am = load i64, ptr %1, align 8, !range !198, !noundef !145 ; 10 uses
  %i.an = icmp ne i64 %i.am, -9223372036854775801
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %i.am, 9223372036854775807
  %i.ap = icmp ugt i64 %i.am, -9223372036854775808
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 6       ; 2 uses
  switch i64 %i.aq, label %bb.l [
    i64 0, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit85"
    i64 1, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit85"
    i64 2, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit85"
    i64 3, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17hd68658137a2092fdE.exit85"
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.r
    i64 8, label %bb.ab
    i64 9, label %bb.ac
    i64 10, label %bb.ab
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !145 ; 2 uses
  %i.at = icmp ult i64 %i.as, 128102389400760776
  tail call void @llvm.assume(i1 %i.at)
  switch i64 %i.as, label %bb.am [
    i64 0, label %bb.an
    i64 1, label %bb.aq
  ], !prof !199

bb.n:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !145 ; 2 uses
  %.not54 = icmp eq i64 %i.av, 0
  br i1 %.not54, label %.thread128.invoke, label %bb.au, !prof !147

bb.o:                                             ; preds = %bb.k
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7111.0.copyload = load ptr, ptr %.sroa.7111.0..sroa_idx, align 8 ; 6 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ax = load i8, ptr %i.aw, align 8, !range !167, !noundef !145
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val58 = load i64, ptr %i.bb, align 8, !noundef !145 ; 2 uses
  %.not.i = icmp eq i64 %.val58, 0
  br i1 %.not.i, label %_ZN16nickel_lang_core9serialize4yaml6Loader8key_slot17h4f8acfdf93a2e416E.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bc, align 8, !nonnull !145, !noundef !145
  %i.bd = getelementptr [72 x i8], ptr %.val, i64 %.val58 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -72
  %i.bf = load i64, ptr %i.be, align 8, !range !169, !noundef !145 ; 2 uses
  %i.bg = icmp ne i64 %i.bf, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp sgt i64 %i.bf, -1
  br i1 %i.bh, label %bb.q, label %_ZN16nickel_lang_core9serialize4yaml6Loader8key_slot17h4f8acfdf93a2e416E.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %i.bd, i64 -32    ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !range !193, !noundef !145
  %.not5.i.not = icmp eq i32 %i.bj, 3
  br i1 %.not5.i.not, label %bb.bb, label %_ZN16nickel_lang_core9serialize4yaml6Loader8key_slot17h4f8acfdf93a2e416E.exit.thread

bb.r:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !145 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bm, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
begin_hunk_2_@"_ZN76_$LT$nickel_lang_core..package..PackageMap$u20$as$u20$core..fmt..Display$GT$3fmt17h3344f7e786294277E":bb.a
          cleanup
  br label %.thread406

.thread409.loopexit.split-lp.loopexit:            ; preds = %bb.h, %bb.bz
  %lpad.loopexit502 = landingpad { ptr, i32 }
          cleanup
  br label %.thread406

.thread409.loopexit.split-lp.loopexit.split-lp:   ; preds = %bb.i, %bb.j, %bb.l
  %lpad.loopexit.split-lp503 = landingpad { ptr, i32 }
          cleanup
  br label %.thread406

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i", %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i
  %.pre-phi629 = phi i64 [ %i.ab, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i" ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.aa, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hde27455dd15c4fabE.exit.i.i" ], [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h3ee7bcb50ddd8192E.exit_crit_edge.i.i ] ; 2 uses
  %i.ad = add i64 %.pre-phi, 1
  store i64 %i.ad, ptr %i.v, align 8, !noalias !114537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  store i64 %.pre-phi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  store i64 %.pre-phi629, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114539)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !114539, !noalias !114540, !noundef !145 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !114539, !noalias !114540, !nonnull !145, !noundef !145 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !114541
  %i.aj = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ca
  %.sroa.0.0556 = phi ptr [ %i.ai, %.lr.ph ], [ %.sroa.0.1397, %bb.ca ] ; 2 uses
  %.sroa.6.0555 = phi ptr [ %i.al, %.lr.ph ], [ %.sroa.6.1, %bb.ca ] ; 2 uses
  %.sroa.8242.0554 = phi i16 [ %i.ak, %.lr.ph ], [ %i.ax, %bb.ca ] ; 2 uses
  %.sroa.10243.0553 = phi i64 [ %i.af, %.lr.ph ], [ %i.ba, %bb.ca ]
  %.not13.i.i = icmp eq i16 %.sroa.8242.0554, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit501

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.ap = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.sroa.6.0555, %bb.c ] ; 2 uses
  %i.aq = phi ptr [ %i.as, %.lr.ph.i.i ], [ %.sroa.0.0556, %bb.c ]
  %.val11.i.i = load <16 x i8>, ptr %i.ap, align 16, !noalias !114542
  %i.ar = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -896 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ar to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit501

.loopexit501:                                     ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1 = phi ptr [ %.sroa.6.0555, %bb.c ], [ %i.at, %.lr.ph.i.i ]
  %.sroa.0.1397 = phi ptr [ %.sroa.0.0556, %bb.c ], [ %i.as, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.8242.0554, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.au = add i16 %.lcssa.i.i, -1
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.lcssa.i.i
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [56 x i8], ptr %.sroa.0.1397, i64 %i.ay ; 5 uses
  %i.ba = add i64 %.sroa.10243.0553, -1           ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -48
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !145, !noundef !145 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -40
  %i.be = load i64, ptr %i.bd, align 8, !noundef !145 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.bc, ptr %i.j, align 8, !noalias !114544
  store i64 %i.be, ptr %i.am, align 8, !noalias !114544
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !114543, !noalias !114545, !noundef !145
  %.val6.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !114543, !noalias !114545, !noundef !145
  %i.bf = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h7f617eca1b66291cE(i64 %.val.i, i64 %.val6.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !noalias !114546 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114547)
  call void @llvm.experimental.noalias.scope.decl(metadata !114548)
  %i.bg = lshr i64 %i.bf, 57
  %i.bh = trunc nuw nsw i64 %i.bg to i8           ; 3 uses
  %i.bi = load i64, ptr %i.an, align 8, !alias.scope !114549, !noalias !114550, !noundef !145 ; 2 uses
  %i.bj = load ptr, ptr %i.u, align 8, !alias.scope !114549, !noalias !114550, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.loopexit501
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit501 ], [ %i.cb, %bb.f ]
  %.pn.i.i = phi i64 [ %i.bf, %.loopexit501 ], [ %i.cc, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.bi     ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !114551 ; 2 uses
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i92, label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ca, %bb.e ], [ %i.bm, %bb.d ] ; 3 uses
  %i.bn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.01.0.i.i.i, %i.bo
  %i.bq = and i64 %i.bp, %i.bi
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [40 x i8], ptr %i.bj, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -40
  %.val3.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !114552, !nonnull !145, !align !163, !noundef !145
  %i.bu = getelementptr i8, ptr %i.bs, i64 -32
  %.val4.i.i.i = load i64, ptr %i.bu, align 8, !noalias !114552, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !114553
  invoke void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val3.i.i.i, i64 noundef %.val4.i.i.i)
          to label %.noexc unwind label %.thread409.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !114553
  invoke void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %i.be)
          to label %.noexc94 unwind label %.thread409.loopexit

.noexc94:                                         ; preds = %.noexc
  %i.bv = invoke fastcc noundef zeroext i1 @"_ZN62_$LT$std..path..Components$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd73b6a885411943fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h)
          to label %.noexc95 unwind label %.thread409.loopexit

.noexc95:                                         ; preds = %.noexc94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !114553
  br i1 %i.bv, label %bb.bx, label %bb.e, !prof !154

._crit_edge.i.i92:                                ; preds = %bb.e, %bb.d
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = icmp eq i16 %i.bx, 0
  br i1 %i.by, label %bb.f, label %bb.g, !prof !147

bb.e:                                             ; preds = %.noexc95
  %i.bz = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ca = and i16 %i.bz, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i92, label %.lr.ph.i.i91

bb.f:                                             ; preds = %._crit_edge.i.i92
  %i.cb = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.cc = add i64 %.sroa.01.0.i.i.i, %i.cb
  br label %bb.d

bb.g:                                             ; preds = %._crit_edge.i.i92
  %i.cd = load i64, ptr %i.ao, align 8, !alias.scope !114554, !noalias !114555, !noundef !145
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %.noexc96, !prof !147

bb.h:                                             ; preds = %bb.g
  %i.cf = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h853138571138eff3E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true)
          to label %.noexc96 unwind label %.thread409.loopexit.split-lp.loopexit ; 0 uses

._crit_edge:                                      ; preds = %bb.ca, %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !145 ; 8 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val71 = load ptr, ptr %i.cj, align 8          ; 2 uses
  %.val70 = load ptr, ptr %1, align 8             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val71, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !145, !noalias !114556, !nonnull !145
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 1 %.val70, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2618, i64 noundef 26)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit unwind label %.thread409.loopexit.split-lp.loopexit.split-lp, !inline_history !363

bb.j:                                             ; preds = %._crit_edge
  %.val68 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.cn, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val69, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !145, !noalias !114557, !nonnull !145
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2619, i64 noundef 24)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105 unwind label %.thread409.loopexit.split-lp.loopexit.split-lp, !inline_history !363

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  br i1 %i.cm, label %.critedge58, label %"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134"

"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134": ; preds = %._crit_edge560, %bb.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.val65 = phi ptr [ %.val69, %._crit_edge560 ], [ %.val69, %bb.u ], [ %.val71, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ] ; 4 uses
  %.val64 = phi ptr [ %.val68, %._crit_edge560 ], [ %.val68, %bb.u ], [ %.val70, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.0394.0.copyload = load ptr, ptr %i.u, align 8, !nonnull !145, !noundef !145 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.3395.0.copyload = load i64, ptr %.sroa.3395.0..sroa_idx, align 8 ; 4 uses
  %.val3.i.i.i106 = load <16 x i8>, ptr %.sroa.0394.0.copyload, align 16, !noalias !114558
  %i.cr = icmp eq i64 %.sroa.2.0.copyload, 0      ; 4 uses
  br i1 %i.cr, label %bb.v, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134"
  %i.cs = mul i64 %.sroa.2.0.copyload, 40         ; 2 uses
  %2 = add i64 %i.cs, 40
  %3 = icmp ult i64 %2, -15
  call void @llvm.assume(i1 %3)
  %i.ct = and i64 %i.cs, -16                      ; 2 uses
  %4 = add i64 %i.ct, 48                          ; 2 uses
  %i.cu = add i64 %.sroa.2.0.copyload, 17
  %i.cv = add i64 %i.cu, %4                       ; 3 uses
  %5 = icmp uge i64 %i.cv, %4
  call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.cv, 9223372036854775793
  call void @llvm.assume(i1 %6)
  %i.cw = sub i64 -48, %i.ct
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0394.0.copyload, i64 %i.cw
  br label %bb.v

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105: ; preds = %bb.j
  br i1 %i.cq, label %.critedge58, label %bb.k

bb.k:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105
  call void @llvm.experimental.noalias.scope.decl(metadata !114559)
  %i.cy = load ptr, ptr %0, align 8, !alias.scope !114559, !noalias !114560, !nonnull !145, !noundef !145 ; 4 uses
  %.val3.i.i110 = load <16 x i8>, ptr %i.cy, align 16, !noalias !114561
  %i.cz = icmp sgt <16 x i8> %.val3.i.i110, splat (i8 -1)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !114562
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.dc = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %bb.k ] ; 2 uses
  %i.dd = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cy, %bb.k ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dc, align 16, !noalias !114563
  %i.de = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -512 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.de to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.sroa.5.0.i.i = phi ptr [ %i.da, %bb.k ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = phi ptr [ %i.cy, %bb.k ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.db, %bb.k ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.dh = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.di = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.dj = zext nneg i16 %i.di to i64
  %i.dk = and i16 %i.dh, %.lcssa.i.i.i.i.i.i.i
  %i.dl = sub nsw i64 0, %i.dj
  %i.dm = getelementptr inbounds [32 x i8], ptr %.sroa.01.0.copyload.i.i.i.i, i64 %i.dl ; 2 uses
  %i.dn = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -32
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 -24
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ch, i64 4) ; 3 uses
  %i.dq = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.dr = icmp ugt i64 %i.ch, 1152921504606846975
  %i.ds = icmp ugt i64 %i.dq, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !114564
  %i.dt = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dq, i64 noundef range(i64 1, 9) 8) #83, !noalias !114564 ; 6 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc116 unwind label %.thread409.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.l
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store ptr %i.do, ptr %i.dt, align 8, !noalias !114562
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dp, ptr %i.dv, align 8, !noalias !114562
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !114562
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.dt, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114562
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !114562
  call void @llvm.experimental.noalias.scope.decl(metadata !114565)
  call void @llvm.experimental.noalias.scope.decl(metadata !114566)
  %i.dw = icmp eq i64 %i.dn, 0
  br i1 %i.dw, label %.thread420, label %.lr.ph.i.i.i.i.i.i

.thread420:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114562
  br label %.lr.ph559

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.dx = phi ptr [ %i.er, %.noexc.i.i.i.i ], [ %i.dt, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ]
  %i.dy = phi i64 [ %i.eu, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 6 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %i.dz = phi i16 [ %i.ei, %.noexc.i.i.i.i ], [ %i.dk, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i = phi i64 [ %i.el, %.noexc.i.i.i.i ], [ %i.dn, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i89.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i7.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.dz, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ea = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.eb = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ea, align 16, !noalias !114567
  %i.ec = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -512 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ec to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i7.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.dz, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ef = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.eg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64
  %i.ei = and i16 %i.ef, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ej = sub nsw i64 0, %i.eh
  %i.ek = getelementptr inbounds [32 x i8], ptr %.pre.i.i.i7.i.i.i.i.i.i, i64 %i.ej ; 2 uses
  %i.el = add i64 %.val510.i.i.i.i.i.i, -1        ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -32
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 -24
  %i.eo = icmp samesign ult i64 %i.dy, 576460752303423488
  call void @llvm.assume(i1 %i.eo)
  %i.ep = load i64, ptr %i.g, align 8, !range !146, !alias.scope !114568, !noalias !114569, !noundef !145
  %i.eq = icmp eq i64 %i.dy, %i.ep
  br i1 %i.eq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.dy, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.m, !noalias !114562

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !114568, !noalias !114569
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.er = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.dx, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.dy ; 2 uses
  store ptr %i.em, ptr %i.es, align 8, !noalias !114570
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.en, ptr %i.et, align 8, !noalias !114570
  %i.eu = add nuw nsw i64 %i.dy, 1                ; 2 uses
  store i64 %i.eu, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !114568, !noalias !114569
  %i.ev = icmp eq i64 %i.el, 0
  br i1 %i.ev, label %bb.o, label %.lr.ph.i.i.i.i.i.i

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i"
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !114562 ; 2 uses
  %i.ex = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ex, label %.thread406, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114562, !nonnull !145, !noundef !145
  %i.ey = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114562
  br label %.thread406

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %.sroa.0268.0.copyload269 = load i64, ptr %i.g, align 8, !noalias !114571 ; 4 uses
  %.sroa.7270.0.copyload272 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114571 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114562
  %i.ez = icmp samesign ult i64 %i.dy, 20
  br i1 %i.ez, label %bb.q, label %bb.p, !prof !154

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h96dfd23d35507578E(ptr noalias noundef nonnull align 8 %.sroa.7270.0.copyload272, i64 noundef %i.ch, ptr noalias noundef nonnull align 1 %i.a)
          to label %.lr.ph559 unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %.idx.i.i = shl nuw nsw i64 %i.ch, 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.7270.0.copyload272, i64 %.idx.i.i
  %.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7270.0.copyload272, i64 16
  br label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %.noexc120, %bb.q
  %.sroa.0.03.i.i = phi ptr [ %.sroa.0.0.i.i, %.noexc120 ], [ %.sroa.0.01.i.i, %bb.q ] ; 2 uses
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h5992ab24c06ea3dcE(ptr noundef nonnull align 8 %.sroa.7270.0.copyload272, ptr noundef %.sroa.0.03.i.i)
          to label %.noexc120 unwind label %.loopexit

.noexc120:                                        ; preds = %.lr.ph.i.i117
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16 ; 2 uses
  %.not.i.i118 = icmp eq ptr %.sroa.0.0.i.i, %i.fa
  br i1 %.not.i.i118, label %.lr.ph559, label %.lr.ph.i.i117

.lr.ph559:                                        ; preds = %.noexc120, %.thread420, %bb.p
  %.sroa.7270.0.copyload272428 = phi ptr [ %i.dt, %.thread420 ], [ %.sroa.7270.0.copyload272, %bb.p ], [ %.sroa.7270.0.copyload272, %.noexc120 ] ; 6 uses
  %.sroa.0268.0.copyload269426 = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.thread420 ], [ %.sroa.0268.0.copyload269, %bb.p ], [ %.sroa.0268.0.copyload269, %.noexc120 ] ; 6 uses
  %i.fb = icmp ult i64 %i.ch, 576460752303423488
  call void @llvm.assume(i1 %i.fb)
  %.idx = shl nuw nsw i64 %i.ch, 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.7270.0.copyload272428, i64 %.idx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7270.0.copyload272428) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.8297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.10298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.t

bb.r:                                             ; preds = %bb.t
  %i.ff = landingpad { ptr, i32 }
end_hunk_2
