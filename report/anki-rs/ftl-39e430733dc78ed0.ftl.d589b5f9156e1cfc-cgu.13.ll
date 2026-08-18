inline.NumInlined: 325
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd82bbc3db63c4facE":bb.a
  %i.s = load i64, ptr %i.d, align 8, !range !96, !noalias !134, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.s, -9223372036854775808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !134
  br i1 %.not.i.i.i, label %bb.c, label %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.thread.i.i"

"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.thread.i.i": ; preds = %bb.b
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.612.0.copyload.i.i.i = load i64, ptr %.sroa.612.0..sroa_idx.i.i.i, align 8, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i.i, i64 40, i1 false), !noalias !144
  %.sroa.315.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %.sroa.612.0.copyload.i.i.i, ptr %.sroa.315.0..sroa_idx.i.i.i, align 8, !alias.scope !142, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.sroa.4.0.copyload3.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i, i64 24, i1 false), !noalias !141
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i.i, i64 40, i1 false), !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  invoke void @_ZN3std2fs8DirEntry4path17hc12b1cbeede5a3e1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.e unwind label %bb.d, !noalias !143

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h03b8013dfc4fba2bE"(ptr noalias noundef align 8 dereferenceable(40) %i.e) #20
          to label %common.resume.i.i unwind label %bb.k, !noalias !143

bb.e:                                             ; preds = %bb.c
  invoke void @"_ZN61_$LT$std..path..PathBuf$u20$as$u20$anki_io..ToUtf8PathBuf$GT$4utf817hb70a1b4592a9fa89E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.d, !noalias !145

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.u = load ptr, ptr %i.e, align 8, !alias.scope !158, !noalias !134, !nonnull !5, !noundef !5
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !159
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.g, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i"

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i" unwind label %bb.h, !noalias !143

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !160, !noalias !134, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !160, !noalias !134 ; 2 uses
  store i8 0, ptr %.val2.i.i.i.i.i, align 1, !noalias !143
  %i.y = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.y, label %common.resume.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i, i64 noundef 1) #21, !noalias !143
  br label %common.resume.i.i

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i": ; preds = %bb.g, %bb.f
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !160, !noalias !134, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !160, !noalias !134 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i, align 1, !noalias !143
  %i.z = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.z, label %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #21, !noalias !143
  br label %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.i.i"

common.resume.i.i:                                ; preds = %bb.m, %bb.i, %bb.h, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ %i.t, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.k:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !143
  unreachable

"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.i.i": ; preds = %bb.j, %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i"
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.f, align 8, !noalias !141 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !141 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i, i64 24, i1 false), !noalias !141
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.l, label %.loopexit.i

.loopexit.i:                                      ; preds = %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.i.i", %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.thread.i.i"
  %.sroa.4.0.copyload8.i.i = phi i64 [ %.sroa.4.0.copyload3.i.i, %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.thread.i.i" ], [ %.sroa.4.0.copyload.i.i, %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.i.i" ] ; 2 uses
  %.sroa.0.0.copyload7.i.i = phi i64 [ %i.s, %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.thread.i.i" ], [ %.sroa.0.0.copyload.pr.i.i, %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.i.i" ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$$GT$17hd98756b3ea910618E"(ptr noalias noundef align 8 dereferenceable(56) %3)
          to label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread8.i" unwind label %bb.m, !noalias !161

bb.l:                                             ; preds = %"_ZN7anki_io12paths_in_dir28_$u7b$$u7b$closure$u7d$$u7d$17h9aaaa502d5685443E.exit.i.i"
  %.not.i4.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -9223372036854775808
  br i1 %.not.i4.i.i.i, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread.i", label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread.i": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %bb.n

bb.m:                                             ; preds = %.loopexit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload7.i.i, ptr %3, align 8, !noalias !165
  %.sroa.516.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.copyload8.i.i, ptr %.sroa.516.0..8.val.sroa_idx.i.i.i, align 8, !noalias !165
  %.sroa.6.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !166
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, i64 24, i1 false), !noalias !166
  br label %common.resume.i.i

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread8.i": ; preds = %.loopexit.i
  store i64 %.sroa.0.0.copyload7.i.i, ptr %3, align 8, !noalias !165
  %.sroa.516.0..8.val.sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.copyload8.i.i, ptr %.sroa.516.0..8.val.sroa_idx17.i.i.i, align 8, !noalias !165
  %.sroa.6.0..8.val.sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..8.val.sroa_idx19.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !166
  %.sroa.7.0..8.val.sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..8.val.sroa_idx20.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, i64 24, i1 false), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %.loopexit14.i

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.i": ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -9223372036854775807
  br i1 %.not.i.i, label %bb.n, label %.loopexit14.i

._crit_edge.i:                                    ; preds = %bb.n, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !132
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !168, !noalias !171
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h578afc5396909ca4E.exit

.loopexit14.i:                                    ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.i", %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread8.i"
  %storemerge.i.i11.i = phi i64 [ -9223372036854775808, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread8.i" ], [ %.sroa.4.0.copyload.i.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.i" ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 %storemerge.i.i11.i, ptr %0, align 8, !alias.scope !172, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !132
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h578afc5396909ca4E.exit

bb.n:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.i", %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb1f81d3129a90f9eE.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !132
  call void @"_ZN80_$LT$anki_io..ReadDirFiles$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc276ac1ce1db7116E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !129
  %i.ac = load i64, ptr %i.g, align 8, !range !84, !noalias !132, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %._crit_edge.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h578afc5396909ca4E.exit: ; preds = %._crit_edge.i, %.loopexit14.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he1f83ac46c327121E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 12 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !182
  call void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha276d4588f5dede9E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !185
  %i.f = load i64, ptr %i.e, align 8, !range !84, !noalias !186, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.i.sroa.8.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %.lr.ph.i.i
  %.sroa.75.071.i.i = phi ptr [ undef, %.lr.ph.i.i ], [ %.sroa.75.217.ph.i.i, %bb.u ] ; 2 uses
  %.sroa.9.070.i.i = phi i64 [ undef, %.lr.ph.i.i ], [ %.sroa.9.215.ph.i.i, %bb.u ] ; 2 uses
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !186 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !186 ; 3 uses
  %i.j = icmp eq ptr %.sroa.07.0.copyload.i.i, null
  br i1 %i.j, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, i64 24, i1 false), !noalias !186
  store ptr %.sroa.07.0.copyload.i.i, ptr %i.d, align 8, !noalias !195
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !195
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !199
  invoke void @_ZN3std2fs8DirEntry4path17hc12b1cbeede5a3e1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.e unwind label %.loopexit.i.i, !noalias !201

.loopexit.i.i:                                    ; preds = %bb.e, %bb.c
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i.i:                           ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17h03b8013dfc4fba2bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d) #20
          to label %common.resume.i.i.i.i unwind label %bb.r, !noalias !201

bb.e:                                             ; preds = %bb.c
  invoke void @"_ZN61_$LT$std..path..PathBuf$u20$as$u20$anki_io..ToUtf8PathBuf$GT$4utf817hb70a1b4592a9fa89E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.f unwind label %.loopexit.i.i, !noalias !201

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !199
  %i.k = load i64, ptr %i.c, align 8, !range !96, !noalias !199, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.k, -9223372036854775808
  %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !199 ; 3 uses
  %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx6.i.i.i.i, align 8, !noalias !199 ; 4 uses
  %.sroa.6.i.sroa.8.0.copyload10.i.i.i.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx9.i.i.i.i, align 8, !noalias !199 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.68.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !199
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !199
  %.sroa.6.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i, ptr %.sroa.6.i.sroa.7.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !199
  %.sroa.6.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.i.sroa.8.0.copyload10.i.i.i.i, ptr %.sroa.6.i.sroa.8.0..sroa.2.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !199
  store i64 %i.k, ptr %i.a, align 8, !noalias !199
  %i.l = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h00d52fdb8467d652E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.m unwind label %.loopexit.split-lp.i.i, !noalias !201

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !199
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !214, !noalias !215, !nonnull !5, !noundef !5
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !216
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i" unwind label %bb.j, !noalias !201

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !217, !noalias !215, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !217, !noalias !215 ; 2 uses
  store i8 0, ptr %.val2.i.i.i.i.i.i.i, align 1, !noalias !201
  %i.q = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %common.resume.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i.i.i, i64 noundef 1) #21, !noalias !201
  br label %common.resume.i.i.i.i

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i": ; preds = %bb.i, %bb.h
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !217, !noalias !215, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !217, !noalias !215 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i.i.i, align 1, !noalias !201
  %i.r = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i, i64 noundef 1) #21, !noalias !201
  br label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i"

common.resume.i.i.i.i:                            ; preds = %bb.t, %bb.p, %bb.o, %bb.k, %bb.j, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.t ], [ %i.v, %bb.o ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.v, %bb.p ], [ %lpad.phi.i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !199
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.s = load ptr, ptr %i.d, align 8, !alias.scope !230, !noalias !215, !nonnull !5, !noundef !5
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !231
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.n, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i"

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6ab179a67c305cd7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i" unwind label %bb.o, !noalias !201

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i15.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !232, !noalias !215, !nonnull !5, !noundef !5 ; 2 uses
  %.val3.i.i16.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !232, !noalias !215 ; 2 uses
  store i8 0, ptr %.val2.i.i15.i.i.i.i.i, align 1, !noalias !201
  %i.w = icmp eq i64 %.val3.i.i16.i.i.i.i.i, 0
  br i1 %i.w, label %common.resume.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i15.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i16.i.i.i.i.i, i64 noundef 1) #21, !noalias !201
  br label %common.resume.i.i.i.i

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i": ; preds = %bb.n, %bb.m
  %.val.i.i13.i.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !232, !noalias !215, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i.i14.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !232, !noalias !215 ; 2 uses
  store i8 0, ptr %.val.i.i13.i.i.i.i.i, align 1, !noalias !201
  %i.x = icmp eq i64 %.val1.i.i14.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i14.i.i.i.i.i, i64 noundef 1) #21, !noalias !201
  br label %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i"

bb.r:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !201
  unreachable

"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i": ; preds = %bb.q, %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i12.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !188
  br label %.loopexit37.i.i

"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i": ; preds = %bb.l, %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17h539af00771991d81E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !188
  switch i64 %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i, label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i.a" [
    i64 -9223372036854775808, label %.loopexit37.i.i
    i64 -9223372036854775807, label %bb.u
  ]

.loopexit37.i.i:                                  ; preds = %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i", %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i"
  %.sroa.52.014.i.i.i.i = phi ptr [ %i.l, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.thread.i.i.i.i" ], [ %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ] ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !alias.scope !233, !noalias !236, !noundef !5
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread19.i.i", label %bb.s

bb.s:                                             ; preds = %.loopexit37.i.i
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17h1d51c478f0628b67E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
          to label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread19.i.i" unwind label %bb.t, !noalias !240

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.52.014.i.i.i.i, ptr %3, align 8, !noalias !236
  br label %common.resume.i.i.i.i

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread19.i.i": ; preds = %bb.s, %.loopexit37.i.i
  store ptr %.sroa.52.014.i.i.i.i, ptr %3, align 8, !noalias !236
  br label %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i.a"

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i": ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i) ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h60a0752c92ac8520E"(ptr nonnull %.sroa.2.0.copyload.i.i), !noalias !241
  br label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.a
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !250, !noalias !253
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h97998976caffeecbE.exit"

"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i.a": ; preds = %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i", %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread19.i.i"
  %.sroa.75.217.i.i = phi ptr [ %.sroa.75.071.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread19.i.i" ], [ %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  %.sroa.9.215.i.i = phi i64 [ %.sroa.9.070.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread19.i.i" ], [ %.sroa.6.i.sroa.8.0.copyload10.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  %.sroa.0.0.i.i = phi i64 [ -9223372036854775808, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread19.i.i" ], [ %.sroa.6.i.sroa.0.0.copyload4.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !254, !noalias !253
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.75.217.i.i, ptr %.sroa.29.0..sroa_idx.i.i, align 8, !alias.scope !254, !noalias !253
  %.sroa.310.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.215.i.i, ptr %.sroa.310.0..sroa_idx.i.i, align 8, !alias.scope !254, !noalias !253
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h97998976caffeecbE.exit"

bb.u:                                             ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i", %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i"
  %.sroa.75.217.ph.i.i = phi ptr [ %.sroa.75.071.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i" ], [ %.sroa.6.i.sroa.7.0.copyload7.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  %.sroa.9.215.ph.i.i = phi i64 [ %.sroa.9.070.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1fa4b2370b0c0583E.exit.thread.i.i" ], [ %.sroa.6.i.sroa.8.0.copyload10.i.i.i.i, %"_ZN3ftl6string9all_langs28_$u7b$$u7b$closure$u7d$$u7d$17hc93dc5b57b724a6fE.exit.i.i.i.i" ]
  call void @"_ZN75_$LT$std..fs..ReadDir$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha276d4588f5dede9E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !185
  %i.ac = load i64, ptr %i.e, align 8, !range !84, !noalias !186, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %._crit_edge.i.i

"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h97998976caffeecbE.exit": ; preds = %._crit_edge.i.i, %"_ZN95_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h77c7802d4425437dE.exit.i.i.a"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !182
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN118_$LT$anki_io..error..FileIoSnafu$LT$__T0$C$__T1$GT$$u20$as$u20$snafu..IntoError$LT$anki_io..error..FileIoError$GT$$GT$10into_error17h08f11fc45b6d77bbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h885749719b94abe7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !84, !noalias !258, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !96, !noalias !258, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.d, !prof !268

bb.b:                                             ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8, !noalias !258
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.i, i64 %i.k) #23
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h60a0752c92ac8520E"(ptr nonnull %2) #20
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.j, align 8, !noalias !258, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !269
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.p, align 8
  ret void

bb.e:                                             ; preds = %bb.c, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki_io..error..FileOp$GT$17h5a82d2734a093bbeE"(ptr noalias noundef align 8 dereferenceable(24) %1) #20
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs14read_to_string17ha3982ad945829ed6E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_ZN3std2fs14read_to_string5inner17h084dff164cfd70a5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs14read_to_string17ha442beb239d38fa0E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_ZN3std2fs14read_to_string5inner17h084dff164cfd70a5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs14read_to_string17heaea1f682b3612f8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_ZN3std2fs14read_to_string5inner17h084dff164cfd70a5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs4File4open17h4ab240f60269a3beE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 4
  call void @_ZN3std2fs11OpenOptions5_open17h95d1fb01334d5ef6E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs4File6create17ha72fe1792d35edc5E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 4
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !5
  call void @_ZN3std2fs11OpenOptions5_open17h95d1fb01334d5ef6E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3std2fs4read17h298897f5f6bb9475E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_ZN3std2fs4read5inner17h1747fdee54479d58E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN3std2fs5write17h1ae7c5d9e715a5b4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = invoke noundef ptr @_ZN3std2fs5write5inner17hef6adfd32e013394E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val3, i64 noundef %.val4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #20
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h87d441711f2bc84aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7b8ca78c815788cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ee3a52d4d76c90eE.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7b8ca78c815788cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret ptr %i.c

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN3std2fs5write17h80b28c64dab09d28E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
