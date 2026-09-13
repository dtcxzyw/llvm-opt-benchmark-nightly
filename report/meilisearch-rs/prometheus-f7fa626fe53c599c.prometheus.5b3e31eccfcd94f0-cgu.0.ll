Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN10prometheus9histogram24check_and_adjust_buckets17h02c6f1f088505c76E:bb.a
  store ptr %.sroa.036.053, ptr %i.d, align 8
  %i.x = icmp ult i64 %.sroa.8.052, %i.u
  br i1 %i.x, label %bb.m, label %bb.n

._crit_edge:                                      ; preds = %bb.n
  %i.y = getelementptr i8, ptr %i.t, i64 -8       ; 2 uses
  %.not20 = icmp eq ptr %i.y, null
  br i1 %.not20, label %.thread, label %bb.i, !prof !20

bb.i:                                             ; preds = %._crit_edge
  %i.z = load double, ptr %i.y, align 8, !noundef !6 ; 2 uses
  %i.aa = bitcast double %i.z to i64
  %.not21 = icmp sgt i64 %i.aa, -1
  %i.ab = fcmp oeq double %i.z, +inf
  %or.cond = and i1 %i.ab, %.not21
  br i1 %or.cond, label %bb.l, label %bb.k

.thread:                                          ; preds = %._crit_edge
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #45
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.p, %.thread
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h34c0032d66e9c615E.exit30"

bb.l:                                             ; preds = %bb.i
  %i.ad = add nsw i64 %i.s, -1                    ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8
  %i.ae = load i64, ptr %1, align 8, !range !10, !noundef !6
  %i.af = icmp samesign ult i64 %i.ad, %i.ae
  tail call void @llvm.assume(i1 %i.af)
  br label %bb.k

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h34c0032d66e9c615E.exit30": ; preds = %bb.s, %bb.r, %bb.k
  ret void

bb.m:                                             ; preds = %bb.h
  %i.ag = icmp samesign ult i64 %i.w, %i.s
  br i1 %i.ag, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.o, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ah = icmp eq ptr %i.v, %i.t
  br i1 %i.ah, label %._crit_edge, label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.ai = load double, ptr %.sroa.036.053, align 8, !noundef !6
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  %i.ak = load double, ptr %i.aj, align 8, !noundef !6
  %i.al = fcmp ult double %i.ai, %i.ak
  br i1 %i.al, label %bb.n, label %bb.q

bb.p:                                             ; preds = %bb.m
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.w, i64 noundef %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #45
          to label %bb.j unwind label %bb.e

bb.q:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb78023f7cffef9dbE", ptr %.sroa.48.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.am, ptr %i.an, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3218
  store ptr @153, ptr %i.a, align 8, !noalias !3219
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3219
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.539.0..sroa_idx, align 8, !noalias !3219
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.640.0..sroa_idx, align 8, !noalias !3219
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3219
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.r unwind label %bb.e

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.ap = icmp eq i64 %.val, 0
  br i1 %i.ap, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h34c0032d66e9c615E.exit30", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = shl nuw i64 %.val, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h34c0032d66e9c615E.exit30"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h34c0032d66e9c615E.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram5Shard3new17he8ee867337382109E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.e = phi ptr [ %i.l, %bb.e ], [ inttoptr (i64 8 to ptr), %bb.a ]
  %i.f = phi i64 [ %i.n, %bb.e ], [ 0, %bb.a ]    ; 3 uses
  %.sroa.09.014 = phi i64 [ %i.o, %bb.e ], [ 0, %bb.a ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3222)
  %i.g = load i64, ptr %i.a, align 8, !range !10, !alias.scope !3222, !noundef !6
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0696c862456125e8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154)
          to label %._crit_edge15 unwind label %bb.c

._crit_edge15:                                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !3222
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.j = icmp eq i64 %.val, 0
  br i1 %i.j, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$prometheus..atomic64..AtomicU64$GT$$GT$17he87cb505b4999236E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val13 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.k = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$prometheus..atomic64..AtomicU64$GT$$GT$17he87cb505b4999236E.exit"

bb.e:                                             ; preds = %._crit_edge15, %.lr.ph
  %i.l = phi ptr [ %.pre, %._crit_edge15 ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.f
  store i64 0, ptr %i.m, align 8, !noalias !3222
  %i.n = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !3222
  %i.o = add nuw i64 %.sroa.09.014, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$prometheus..atomic64..AtomicU64$GT$$GT$17he87cb505b4999236E.exit": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN10prometheus9histogram7Instant3now17h58488702dd990340E() unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
  ret { i64, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN10prometheus9histogram7Instant7elapsed17hec7dd57573316194E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %i.e, align 8
  %i.f = load i64, ptr %0, align 8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !21, !noundef !6
  %i.i = call { i64, i32 } @_ZN3std4time7Instant25saturating_duration_since17hc1f195375bc6ef14E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.f, i32 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN10prometheus9histogram94_$LT$impl$u20$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$3new17h9065deb719cd6585E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(192) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 14 uses
  %i.b = alloca [112 x i8], align 8               ; 9 uses
  %i.c = alloca [192 x i8], align 8               ; 11 uses
  %i.d = mul i64 %3, 24                           ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %3, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af8fcf721d4a426E.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3287
  %i.f = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #42, !noalias !3287 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af8fcf721d4a426E.exit.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #45
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af8fcf721d4a426E.exit.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %3, %bb.b ] ; 3 uses
  %4 = icmp samesign ule i64 %3, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9ad9e0ef48a84cd2E.exit, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af8fcf721d4a426E.exit.i.i.i.i.i.i", %bb.f
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.f ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af8fcf721d4a426E.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.val20.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val21.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !3288, !nonnull !6, !align !24, !noundef !6
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val22.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !3288, !noundef !6 ; 7 uses
  %i.j = icmp slt i64 %.val22.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %i.k = icmp eq i64 %.val22.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3289
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val22.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !3289 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.preheader.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val22.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #45
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !3288

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val21.i.i.i.i.i.i.i.i.i, i64 %.val22.i.i.i.i.i.i.i.i.i, i1 false), !noalias !3290
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.val20.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %.val22.i.i.i.i.i.i.i.i.i, ptr %i.n, align 8, !noalias !3291
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3291
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val22.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3291
  %i.o = add nuw nsw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.p = icmp eq i64 %i.o, %3
  br i1 %i.p, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9ad9e0ef48a84cd2E.exit, label %.preheader.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3292), !noalias !3293
  %i.r = icmp eq i64 %.val20.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.body.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i" ], [ 0, %.body.i.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3294), !noalias !3293
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !3295, !noalias !3296 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !3295, !noalias !3296, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3297
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i": ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.w = icmp eq i64 %i.t, %.val20.i.i.i.i.i.i.i.i.i
  br i1 %i.w, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i.i", %.body.i.i.i.i
  %6 = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %6, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3296
  br label %bb.t

bb.h:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN4core4iter6traits8iterator8Iterator7collect17h9ad9e0ef48a84cd2E.exit: ; preds = %bb.f, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7af8fcf721d4a426E.exit.i.i.i.i.i.i"
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.423.0.copyload = load i64, ptr %.sroa.423.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  %i.y = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.y, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h9ad9e0ef48a84cd2E.exit, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.aa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i" ], [ 0, %_ZN4core4iter6traits8iterator8Iterator7collect17h9ad9e0ef48a84cd2E.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.aa = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  %.val.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !3302, !noalias !3303 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !3302, !noalias !3303, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !3304
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq i64 %i.aa, %.sroa.8.0.copyload
  br i1 %i.ad, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator7collect17h9ad9e0ef48a84cd2E.exit
  %i.ae = icmp eq i64 %.sroa.423.0.copyload, 0
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i"
  %i.af = mul nuw i64 %.sroa.423.0.copyload, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3303
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !alias.scope !3305, !noalias !3306
  %.sroa.423.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %.sroa.423.0..sroa_idx24, align 8, !alias.scope !3305, !noalias !3306
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx26, align 8, !alias.scope !3305, !noalias !3306
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %3, ptr %.sroa.8.0..sroa_idx28, align 8, !alias.scope !3305, !noalias !3306
  %.sroa.10.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3308
  invoke void @"_ZN73_$LT$prometheus..metrics..Opts$u20$as$u20$prometheus..desc..Describer$GT$8describe17haee1c8848682a1d2E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.c)
          to label %"_ZN84_$LT$prometheus..histogram..HistogramOpts$u20$as$u20$prometheus..desc..Describer$GT$8describe17h68c8207c611897d1E.exit.i" unwind label %bb.p, !noalias !3309

.body.i:                                          ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$prometheus..vec..MetricVecCore$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$17h50c16cc08dcb9896E"(ptr noalias noundef readonly align 8 dereferenceable(352) %i.ap), !noalias !3309
  br label %.body

"_ZN84_$LT$prometheus..histogram..HistogramOpts$u20$as$u20$prometheus..desc..Describer$GT$8describe17h68c8207c611897d1E.exit.i": ; preds = %bb.k
  %i.ah = load i64, ptr %i.b, align 8, !range !8, !noalias !3308, !noundef !6 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.i.sroa.0.0.copyload34 = load i64, ptr %i.aj, align 8, !noalias !3308 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.i.sroa.7.0.copyload37 = load ptr, ptr %.sroa.6.i.sroa.7.0..sroa_idx36, align 8, !noalias !3308 ; 3 uses
  %.sroa.6.i.sroa.8.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.i.sroa.8.0.copyload40 = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx39, align 8, !noalias !3308 ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.n

bb.l:                                             ; preds = %"_ZN84_$LT$prometheus..histogram..HistogramOpts$u20$as$u20$prometheus..desc..Describer$GT$8describe17h68c8207c611897d1E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3308
  call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..metrics..Opts$GT$17hd99e9afc6d51d6cbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(192) %i.c), !noalias !3309
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %.val.i.i = load i64, ptr %i.ak, align 8, !alias.scope !3311, !noalias !3309 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i, 0
  br i1 %i.al, label %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %.val1.i.i = load ptr, ptr %i.am, align 8, !alias.scope !3311, !noalias !3309, !nonnull !6, !noundef !6
  %i.an = shl nuw i64 %.val.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3312
  br label %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit"

bb.n:                                             ; preds = %"_ZN84_$LT$prometheus..histogram..HistogramOpts$u20$as$u20$prometheus..desc..Describer$GT$8describe17h68c8207c611897d1E.exit.i"
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.37.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.613.0..sroa_idx.i, i64 80, i1 false), !noalias !3308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3308
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.i.sroa.0.0.copyload34, ptr %.sroa.26.0..sroa_idx.i, align 8, !noalias !3308
  %.sroa.6.i.sroa.7.0..sroa.26.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.6.i.sroa.7.0.copyload37, ptr %.sroa.6.i.sroa.7.0..sroa.26.0..sroa_idx.i.sroa_idx, align 8, !noalias !3308
  %.sroa.6.i.sroa.8.0..sroa.26.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.6.i.sroa.8.0.copyload40, ptr %.sroa.6.i.sroa.8.0..sroa.26.0..sroa_idx.i.sroa_idx, align 8, !noalias !3308
  store i64 1, ptr %i.a, align 8, !noalias !3308
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ao, align 8, !noalias !3308
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.ah, ptr %i.ap, align 8, !noalias !3308
  %.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.4.0..sroa_idx.i18, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !3309
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3308
  %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false), !noalias !3308
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i8 4, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !3308
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !3313
  %i.aq = call noundef align 8 dereferenceable_or_null(368) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef 8) #42, !noalias !3313 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit.thread", !prof !11

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 368) #45
          to label %.noexc.i unwind label %.body.i, !noalias !3309

.noexc.i:                                         ; preds = %bb.o
  unreachable

"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit.thread": ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.aq, ptr noundef nonnull align 8 dereferenceable(368) %i.a, i64 368, i1 false), !noalias !3309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3308
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(192) %i.c) #46, !noalias !3309
  br label %.body

"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit": ; preds = %bb.m, %bb.l
  %.not = icmp eq i64 %.sroa.6.i.sroa.0.0.copyload34, -9223372036854775804
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit"
  store i64 %.sroa.6.i.sroa.0.0.copyload34, ptr %0, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.i.sroa.7.0.copyload37, ptr %.sroa.213.0..sroa_idx, align 8
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.i.sroa.8.0.copyload40, ptr %.sroa.314.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit.thread", %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit"
  %.sroa.632.049 = phi ptr [ %i.aq, %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit.thread" ], [ %.sroa.6.i.sroa.7.0.copyload37, %"_ZN10prometheus3vec18MetricVec$LT$T$GT$6create17hee14c15362a8516fE.exit" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.632.049) ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.632.049, ptr %i.at, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void

.body:                                            ; preds = %bb.t, %bb.p, %.body.i
  %eh.lpad-body43 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.t ], [ %i.ag, %.body.i ], [ %i.as, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body43

bb.t:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i", %bb.h
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9e1d1b0731ac680E.exit.i.i.i.i" ]
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramOpts$GT$17h2a9c0db3cfb1926fE"(ptr noalias noundef align 8 dereferenceable(192) %1) #46
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN10prometheus9histogram94_$LT$impl$u20$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$5local17h4a94b36cafdcbd53E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN10prometheus9histogram17LocalHistogramVec3new17h4ba60462b93a880bE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram9Histogram11start_timer17h100fc22dffd00ddaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3322
  store ptr %i.b, ptr %i.a, align 8, !noalias !3322
  %i.e = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %_ZN10prometheus9histogram14HistogramTimer3new17h257cc32b49840523E.exit unwind label %bb.c, !noalias !3322 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !3323
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i"

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !3322
  br label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i"

"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.f

_ZN10prometheus9histogram14HistogramTimer3new17h257cc32b49840523E.exit: ; preds = %bb.b
  %i.i = extractvalue { i64, i32 } %i.e, 0
  %i.j = extractvalue { i64, i32 } %i.e, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.k, align 8, !alias.scope !3322
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.l, align 8, !alias.scope !3322
  store i64 %i.i, ptr %0, align 8, !alias.scope !3322
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.m, align 8, !alias.scope !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3322
  ret void

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef double @_ZN10prometheus9histogram9Histogram14get_sample_sum17h5f7d29551a74196fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.d = cmpxchg ptr %i.c, i32 0, i32 1 acquire monotonic, align 4, !noalias !3329
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
end_hunk_0
