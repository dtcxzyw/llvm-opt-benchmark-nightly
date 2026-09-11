Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN12clap_builder4util9any_value8AnyValue13downcast_into17h9a7498ca29cfe748E:bb.a
  %.sroa.6.0.copyload12 = load ptr, ptr %.sroa.6.0..sroa_idx11, align 8 ; 2 uses
  %.sroa.813.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.813.0.copyload15 = load i64, ptr %.sroa.813.0..sroa_idx14, align 8
  %i.z = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  br i1 %i.z, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !7614
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit"

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 40, i64 noundef 8) #45, !noalias !7614
  br label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit"

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit": ; preds = %bb.g, %bb.h, %bb.i
  %i.ad = icmp eq i64 %.sroa.09.0.copyload10, -9223372036854775808
  br i1 %i.ad, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit.thread", label %bb.o

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit.thread": ; preds = %bb.f, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit"
  %.sroa.6.021 = phi ptr [ %.sroa.6.0.copyload12, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit" ], [ %i.f, %bb.f ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.021) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.6.021, ptr %i.a, align 8, !noalias !7615
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.6.021, i64 16
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit.thread"
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %.sroa.6.021, i64 1 release, align 8, !noalias !7616
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h991cbb5b964b874fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.n, !noalias !7615

bb.l:                                             ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit.thread"
  %i.ai = atomicrmw sub ptr %.sroa.6.021, i64 1 release, align 8, !noalias !7617
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.m, label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17h003b1847c3e30066E.exit"

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h991cbb5b964b874fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !7615
  br label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17h003b1847c3e30066E.exit"

bb.n:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !7615
  unreachable

"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17h003b1847c3e30066E.exit": ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.o:                                             ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17h623dac70b07cb8cbE.exit"
  store i64 %.sroa.09.0.copyload10, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.6.0.copyload12, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.813.0.copyload15, ptr %.sroa.517.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17h003b1847c3e30066E.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$13invalid_value17h67831d269de0974bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [256 x i8], align 8               ; 46 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.410 = alloca [31 x i8], align 1          ; 2 uses
  %.sroa.46 = alloca [31 x i8], align 1           ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [120 x i8], align 8               ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !23
  %.idx = mul nuw nsw i64 %3, 24                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7737
  store i64 0, ptr %i.e, align 8, !noalias !7737
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !7737
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %i.r, align 8, !noalias !7737
  %i.s = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.s, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7738
  %.sroa.433.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.534.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.635.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i:                                    ; preds = %bb.t
  %.sroa.036.0.copyload.pre.i = load i64, ptr %i.e, align 8, !noalias !7737 ; 4 uses
  %.sroa.437.0.copyload.pre.i = load ptr, ptr %i.q, align 8, !noalias !7737 ; 10 uses
  %.sroa.538.0.copyload.pre.i = load i64, ptr %i.r, align 8, !noalias !7737 ; 3 uses
  %i.t = icmp ult i64 %.sroa.538.0.copyload.pre.i, 288230376151711744
  call void @llvm.assume(i1 %i.t)
  %.idx.i = shl nuw nsw i64 %.sroa.538.0.copyload.pre.i, 5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.437.0.copyload.pre.i, i64 %.idx.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7739
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7740)
  call void @llvm.experimental.noalias.scope.decl(metadata !7741)
  call void @llvm.experimental.noalias.scope.decl(metadata !7742)
  %i.v = shl i64 %.sroa.036.0.copyload.pre.i, 5   ; 4 uses
  %i.w = udiv i64 %i.v, 24                        ; 3 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.538.0.copyload.pre.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i
  %i.x = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.y = lshr exact i64 %i.x, 5
  %i.z = add nuw nsw i64 %i.y, 1
  %xtraiter = and i64 %i.z, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.4.013.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.437.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aa = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.437.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !7743
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !7644

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.4.013.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.437.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.sroa.437.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.x, 224
  br i1 %i.ae, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.013.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.af = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !7743
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !7743
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !7743
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !7743
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !7743
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !7743
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !7743
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 168
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 256 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !7743
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.au, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %._crit_edge.i.thread, %._crit_edge.i
  %i.ax = phi i64 [ %i.w, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ay = phi i64 [ %i.v, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.635.0..sroa_idx.i126 = phi ptr [ %.sroa.635.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.635.0..sroa_idx.i120, %._crit_edge.i.thread ], [ %.sroa.635.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.635.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.534.0..sroa_idx.i125 = phi ptr [ %.sroa.534.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.534.0..sroa_idx.i119, %._crit_edge.i.thread ], [ %.sroa.534.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.534.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.433.0..sroa_idx.i124 = phi ptr [ %.sroa.433.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.433.0..sroa_idx.i118, %._crit_edge.i.thread ], [ %.sroa.433.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.433.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.az = phi ptr [ %i.u, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.036.0.copyload.i123 = phi i64 [ %.sroa.036.0.copyload.pre.i, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %.sroa.036.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.036.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.437.0.copyload.i122 = phi ptr [ %.sroa.437.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %.sroa.437.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.437.0.copyload.pre.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ba = phi ptr [ %.sroa.437.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.437.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i to i64
  %i.bc = ptrtoint ptr %.sroa.437.0.copyload.i122 to i64
  %i.bd = sub nuw i64 %i.bb, %i.bc                ; 2 uses
  %i.be = udiv exact i64 %i.bd, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7744
  store ptr %.sroa.437.0.copyload.i122, ptr %i.c, align 8, !noalias !7744
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !7744
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.036.0.copyload.i123, ptr %i.bg, align 8, !noalias !7744
  call void @llvm.experimental.noalias.scope.decl(metadata !7745)
  %i.bh = ptrtoint ptr %i.az to i64
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub nuw i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 5
  store i64 0, ptr %.sroa.534.0..sroa_idx.i125, align 8, !alias.scope !7746, !noalias !7747
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !7746, !noalias !7747
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.433.0..sroa_idx.i124, align 8, !alias.scope !7746, !noalias !7747
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.635.0..sroa_idx.i126, align 8, !alias.scope !7746, !noalias !7747
  call void @llvm.experimental.noalias.scope.decl(metadata !7748)
  %i.bl = icmp eq ptr %i.az, %i.ba
  br i1 %i.bl, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hfd4bd62cdae2deffE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i.i.i.i.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.bn = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !7749, !noalias !7750 ; 2 uses
  %i.bp = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.bp, label %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bq = getelementptr i8, ptr %i.bm, i64 16
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !7748, !noalias !7750, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7751
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %i.br = icmp eq i64 %i.bn, %i.bk
  br i1 %i.br, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hfd4bd62cdae2deffE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr139drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$f64$C$alloc..string..String$RP$$C$alloc..string..String$GT$$GT$17h7b7af15d5f646e1cE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #44, !noalias !7752
  call fastcc void @"_ZN4core3ptr310drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$f64$C$alloc..string..String$RP$$GT$$C$clap_builder..parser..features..suggestions..did_you_mean$LT$$RF$alloc..string..String$C$core..slice..iter..Iter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1f6868bb466c36b9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #44, !noalias !7753
  br label %.thread

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hfd4bd62cdae2deffE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.036.0.copyload.i123, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hfd4bd62cdae2deffE.exit.i.i.i.i.i.i"
  %i.bt = mul nuw i64 %i.ax, 24                   ; 4 uses
  %.not49.i.i.i.i.i.i = icmp eq i64 %i.ay, %i.bt
  br i1 %.not49.i.i.i.i.i.i, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = icmp ule i64 %i.bt, %i.ay
  call void @llvm.assume(i1 %i.bu)
  %i.bv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.437.0.copyload.i122, i64 noundef %i.ay, i64 noundef 8, i64 noundef range(i64 0, -15) %i.bt) #45, !noalias !7752 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.f, label %bb.w, !prof !43

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.bt) #46
          to label %bb.g unwind label %bb.c, !noalias !7752

bb.g:                                             ; preds = %bb.f
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.t
  %.sroa.0.053.i = phi ptr [ %i.bx, %bb.t ], [ %2, %bb.a ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.053.i, i64 24 ; 2 uses
  %i.by = getelementptr i8, ptr %.sroa.0.053.i, i64 8
  %.val.i.i = load ptr, ptr %i.by, align 8, !noalias !7737, !nonnull !23, !noundef !23 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.0.053.i, i64 16
  %.val1.i.i = load i64, ptr %i.bz, align 8, !noalias !7737, !noundef !23 ; 9 uses
  %i.ca = invoke noundef double @_ZN6strsim4jaro17h82ef3f33d392ccc5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.h unwind label %.loopexit.i, !noalias !7754 ; 4 uses

bb.h:                                             ; preds = %.lr.ph.i
  %i.cb = fcmp ogt double %i.ca, f0x3FE6666666666666
  br i1 %i.cb, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.cc = icmp slt i64 %.val1.i.i, 0
  br i1 %i.cc, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.i
  %i.cd = icmp eq i64 %.val1.i.i, 0               ; 2 uses
  br i1 %i.cd, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !7755
  %i.ce = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !7755 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2598) #46
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !7754

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ce, %bb.j ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !7756
  %i.cg = load ptr, ptr %i.q, align 8, !noalias !7737, !nonnull !23, !noundef !23 ; 3 uses
  %i.ch = load i64, ptr %i.r, align 8, !noalias !7737, !noundef !23 ; 11 uses
  switch i64 %i.ch, label %.lr.ph.i.i [
    i64 0, label %bb.m
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ %i.ch, %bb.l ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.ci = lshr i64 %.sroa.01.025.i.i, 1           ; 2 uses
  %i.cj = add i64 %i.ci, %.sroa.05.024.i.i        ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.ch
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.cj
  %.val22.i.i = load double, ptr %i.cl, align 8, !alias.scope !7757, !noalias !7758, !noundef !23
  %i.cm = fcmp ogt double %.val22.i.i, %i.ca
  %i.cn = select i1 %i.cm, i64 %.sroa.05.024.i.i, i64 %i.cj, !unpredictable !23 ; 2 uses
  %i.co = sub nuw i64 %.sroa.01.025.i.i, %i.ci    ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 1
  br i1 %i.cp, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.l
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.l ], [ %i.cn, %.lr.ph.i.i ] ; 3 uses
  %i.cq = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.ch
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %.sroa.05.0.lcssa.i.i
  %.val20.i.i = load double, ptr %i.cr, align 8, !alias.scope !7757, !noalias !7758, !noundef !23
  %i.cs = fcmp ule double %.val20.i.i, %i.ca
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.ct ; 2 uses
  %i.cv = icmp ule i64 %i.cu, %i.ch
  call void @llvm.assume(i1 %i.cv)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %bb.l
  %.sroa.4.0.i.i = phi i64 [ %i.ch, %bb.l ], [ %i.cu, %._crit_edge.i.i ] ; 3 uses
  %i.cw = icmp ult i64 %i.ch, 288230376151711744
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.e, align 8, !range !22, !alias.scope !7759, !noalias !7760, !noundef !23
  %i.cy = icmp eq i64 %i.ch, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h12b51e051e54dc48E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180)
          to label %._crit_edge58.i unwind label %bb.p, !noalias !7761

._crit_edge58.i:                                  ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.q, align 8, !alias.scope !7759, !noalias !7760
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge58.i, %bb.m
  %i.cz = phi ptr [ %.pre.i, %._crit_edge58.i ], [ %i.cg, %bb.m ]
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %.sroa.4.0.i.i ; 6 uses
  %i.db = icmp samesign ult i64 %.sroa.4.0.i.i, %i.ch
  br i1 %i.db, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cd, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %.val1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7762
  br label %.thread.i

bb.r:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.de = sub nuw nsw i64 %i.ch, %.sroa.4.0.i.i
  %i.df = shl nuw nsw i64 %i.de, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.da, i64 %i.df, i1 false), !noalias !7761
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  store double %i.ca, ptr %i.da, align 8, !noalias !7754
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.val1.i.i, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !7754
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.627.0..sroa_idx.i, align 8, !noalias !7754
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 %.val1.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !7754
  %i.dg = add nuw nsw i64 %i.ch, 1
  store i64 %i.dg, ptr %i.r, align 8, !alias.scope !7759, !noalias !7760
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.h
  %i.dh = icmp eq ptr %i.bx, %i.p
  br i1 %i.dh, label %._crit_edge.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.q, %bb.p, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.dc, %bb.p ], [ %i.dc, %bb.q ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7763)
  %.val4.i = load ptr, ptr %i.q, align 8, !alias.scope !7763, !noalias !7754, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i = load i64, ptr %i.r, align 8, !alias.scope !7763, !noalias !7754, !noundef !23 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7764), !noalias !7754
  %i.di = icmp eq i64 %.val5.i, 0
  br i1 %i.di, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2ab74c3edb607edE.exit.i", label %.lr.ph.i.i.i93

.lr.ph.i.i.i93:                                   ; preds = %.thread.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.dk, %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i" ], [ 0, %.thread.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.dk = add nuw i64 %.sroa.0.011.i.i.i, 1       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  %.val8.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !7765, !noalias !7766 ; 2 uses
  %i.dm = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.dm, label %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i", label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i93
  %i.dn = getelementptr i8, ptr %i.dj, i64 16
  %.val9.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !7764, !noalias !7766, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7767
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i": ; preds = %bb.u, %.lr.ph.i.i.i93
  %i.do = icmp eq i64 %i.dk, %.val5.i
  br i1 %i.do, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2ab74c3edb607edE.exit.i", label %.lr.ph.i.i.i93

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2ab74c3edb607edE.exit.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$f64$C$alloc..string..String$RP$$GT$17hee2de53264a8d211E.exit.i.i.i", %.thread.i
  %.val.i94 = load i64, ptr %i.e, align 8, !alias.scope !7763, !noalias !7754 ; 2 uses
  %i.dp = icmp eq i64 %.val.i94, 0
  br i1 %i.dp, label %.thread, label %bb.v

bb.v:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2ab74c3edb607edE.exit.i"
  %i.dq = shl nuw i64 %.val.i94, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !7766
  br label %.thread

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit": ; preds = %bb.aq, %bb.z
  br i1 %.sroa.013.1, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit92", label %.thread

bb.w:                                             ; preds = %bb.e, %bb.d, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hfd4bd62cdae2deffE.exit.i.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ %.sroa.437.0.copyload.i122, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hfd4bd62cdae2deffE.exit.i.i.i.i.i.i" ], [ %.sroa.437.0.copyload.i122, %bb.d ], [ %i.bv, %bb.e ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7737
  %i.dr = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i, %.sroa.437.0.copyload.i122
  br i1 %i.dr, label %.thread133, label %bb.x

.thread133:                                       ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i) ]
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i"

bb.x:                                             ; preds = %bb.w
  %i.ds = add nsw i64 %i.be, -1                   ; 4 uses
  %i.dt = icmp samesign ult i64 %i.ds, %i.ax
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp ult i64 %i.bd, -9223372036854775768
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i.i.i.i.i, i64 %i.ds ; 3 uses
  %.sroa.0110.0.copyload = load i64, ptr %i.dv, align 8 ; 2 uses
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.4111.0.copyload = load ptr, ptr %.sroa.4111.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.5112.0.copyload = load i64, ptr %.sroa.5112.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7768)
  %i.dw = icmp eq i64 %i.ds, 0
  br i1 %i.dw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.thread", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i" ], [ 0, %bb.x ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.dy = add nuw i64 %.sroa.0.010.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7769)
  call void @llvm.experimental.noalias.scope.decl(metadata !7770)
  %.val.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !7771, !noalias !7772 ; 2 uses
  %i.dz = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.dz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !7771, !noalias !7772, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !7773
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i": ; preds = %bb.y, %.lr.ph.i.i.i
  %i.eb = icmp eq i64 %i.dy, %i.ds
  br i1 %i.eb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i", %.thread133
  %.sroa.0.0113140 = phi i64 [ -9223372036854775808, %.thread133 ], [ %.sroa.0110.0.copyload, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i" ] ; 2 uses
  %.sroa.8.0139 = phi ptr [ undef, %.thread133 ], [ %.sroa.4111.0.copyload, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i" ] ; 2 uses
  %.sroa.9.0138 = phi i64 [ undef, %.thread133 ], [ %.sroa.5112.0.copyload, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i" ] ; 2 uses
  %i.ec = icmp eq i64 %i.ax, 0
  br i1 %i.ec, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E.exit", label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.thread"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.thread": ; preds = %bb.x, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i"
  %.sroa.9.0138187 = phi i64 [ %.sroa.9.0138, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i" ], [ %.sroa.5112.0.copyload, %bb.x ]
  %.sroa.8.0139183 = phi ptr [ %.sroa.8.0139, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i" ], [ %.sroa.4111.0.copyload, %bb.x ]
  %.sroa.0.0113140181 = phi i64 [ %.sroa.0.0113140, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i" ], [ %.sroa.0110.0.copyload, %bb.x ]
  %i.ed = mul nuw i64 %i.ax, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i.i.i, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !7772
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E.exit"

bb.z:                                             ; preds = %bb.aj, %bb.ap, %.body
  %.sroa.013.1 = phi i1 [ %i.ei, %.body ], [ true, %bb.ap ], [ true, %bb.aj ]
  %.sroa.012.0 = phi i1 [ %i.eh, %.body ], [ true, %bb.ap ], [ true, %bb.aj ]
  %.pn77 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body84, %bb.ap ], [ %i.fl, %bb.aj ] ; 2 uses
  %i.ee = and i64 %.sroa.0.0113140182, 9223372036854775807
  %i.ef = icmp ne i64 %i.ee, 0
  %or.cond145.not = select i1 %i.ef, i1 %.sroa.012.0, i1 false
  br i1 %or.cond145.not, label %bb.aq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit"

bb.aa:                                            ; preds = %bb.al, %bb.ae
  %.sroa.012.1 = phi i8 [ 0, %bb.al ], [ 1, %bb.ae ]
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.012.1.lpad-body = phi i8 [ %.sroa.012.1, %bb.aa ], [ 1, %bb.ac ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.eg, %bb.aa ], [ %i.eq, %bb.ac ]
  %i.eh = trunc nuw i8 %.sroa.012.1.lpad-body to i1
  %i.ei = icmp eq i8 %.sroa.012.1.lpad-body, 0
  br label %bb.z

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.thread", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i"
  %.sroa.9.0138188 = phi i64 [ %.sroa.9.0138187, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.thread" ], [ %.sroa.9.0138, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i" ]
  %.sroa.8.0139184 = phi ptr [ %.sroa.8.0139183, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.thread" ], [ %.sroa.8.0139, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i" ] ; 3 uses
  %.sroa.0.0113140182 = phi i64 [ %.sroa.0.0113140181, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i.thread" ], [ %.sroa.0.0113140, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h229fcec457a7c0deE.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %i.ej, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.f, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr null, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 -9223372036854775807, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 3, ptr %i.em, align 8
  %.sroa.042.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  store i8 3, ptr %.sroa.042.sroa.5.0..sroa_idx, align 4
  %.sroa.042.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i8 3, ptr %.sroa.042.sroa.7.0..sroa_idx, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  store i16 0, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 134
  store i8 3, ptr %.sroa.544.0..sroa_idx, align 2
  %.sroa.544.sroa.5.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 138
  store i8 3, ptr %.sroa.544.sroa.5.0..sroa.544.0..sroa_idx.sroa_idx, align 2
  %.sroa.544.sroa.7.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 142
  store i8 3, ptr %.sroa.544.sroa.7.0..sroa.544.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.f, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx45, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i8 3, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  store i8 3, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 162
  store i8 3, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 166
  store i8 3, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 170
  store i8 3, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  store i8 3, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 180
  store i8 3, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store i8 3, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 190
  store i8 3, ptr %.sroa.1346.0..sroa_idx, align 2
  %.sroa.1346.sroa.5.0..sroa.1346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 194
  store i8 3, ptr %.sroa.1346.sroa.5.0..sroa.1346.0..sroa_idx.sroa_idx, align 2
  %.sroa.1346.sroa.7.0..sroa.1346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 198
  store i8 3, ptr %.sroa.1346.sroa.7.0..sroa.1346.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  store i8 3, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i8 3, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  store i8 3, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 218
  store i8 3, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 222
  store i8 3, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 226
  store i8 3, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  store i8 4, ptr %.sroa.19.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 0>, ptr %i.en, align 2
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !7774
  %i.eo = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !7774 ; 5 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ab, label %bb.ae, !prof !43

bb.ab:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 256) #46
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..error..ErrorInner$GT$17h937ee84b37cc81adE"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.f) #44
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

bb.ae:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h208a7b5612bf3846E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.eo, ptr noundef nonnull align 8 dereferenceable(256) %i.f, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.es = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17h31b016fa76daeeb7E"(ptr noalias noundef nonnull align 8 %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0)
end_hunk_0
begin_hunk_1_@"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h39d2c71a8468f11cE":bb.a

bb.aa:                                            ; preds = %bb.z
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h60ae8b1bcdca71aeE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #44
          to label %common.resume79 unwind label %bb.ab, !noalias !49729, !inline_history !49642

bb.ab:                                            ; preds = %bb.aa
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !49729, !inline_history !49642
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h827a77d09499d8e5E.exit.i": ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !49721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49727
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.fc = load <2 x i64>, ptr %i.fb, align 8, !alias.scope !49730, !noalias !49731
  store <2 x i64> %i.fc, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !49718, !noalias !49721
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit": ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h827a77d09499d8e5E.exit.i"
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hff3dd965bf2c7c95E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.eo)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h2105ab94779f1532E.exit" unwind label %bb.ac, !noalias !49716, !inline_history !49643

bb.ac:                                            ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eo, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !49732
  br label %common.resume79

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h2105ab94779f1532E.exit": ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit"
  %i.fe = add nuw nsw i64 %.sroa.0.0.i3.i37, 1    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eo, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !49732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !49717
  %exitcond.not = icmp eq i64 %i.fe, %i.ee
  br i1 %exitcond.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1c061fe22523fe68E.exit.i", label %.lr.ph

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1c061fe22523fe68E.exit.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h2105ab94779f1532E.exit", %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17hff825be0139a9e27E.exit.i.thread"
  %.idx29 = sub nuw nsw i64 %i.da, %i.ee          ; 3 uses
  %i.ff = load i64, ptr %0, align 8, !range !22, !alias.scope !49733, !noalias !49701, !noundef !23
  %i.fg = sub nsw i64 %i.ff, %i.ee
  %i.fh = icmp ugt i64 %.idx29, %i.fg
  br i1 %i.fh, label %bb.ad, label %bb.ae, !prof !26

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1c061fe22523fe68E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ee, i64 noundef %.idx29, i64 noundef 8, i64 noundef 104), !noalias !49701, !inline_history !49648
  %.pre = load ptr, ptr %i.eg, align 8, !alias.scope !49734, !noalias !49701
  br label %bb.ae

.body:                                            ; preds = %.body77, %bb.ar, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fn, %bb.af ], [ %eh.lpad-body, %bb.ar ], [ %eh.lpad-body, %.body77 ]
  store i64 %.sroa.616.0, ptr %i.dj, align 8, !noalias !49735
  br label %common.resume79

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1c061fe22523fe68E.exit.i", %bb.ad
  %i.fi = phi ptr [ %i.ed, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h1c061fe22523fe68E.exit.i" ], [ %.pre, %bb.ad ]
  %i.fj = icmp eq i64 %i.ee, %i.da
  br i1 %i.fj, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h63d8292410a6d586E.exit", label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.fk = load i64, ptr %i.dj, align 8, !alias.scope !49734, !noalias !49701, !noundef !23
  %.sroa.020.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i.i69 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i70 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.preheader, %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i
  %.sroa.616.0 = phi i64 [ %i.gj, %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i ], [ %i.fk, %.preheader ] ; 3 uses
  %.sroa.06.0.i = phi i64 [ %i.gk, %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i ], [ 0, %.preheader ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [104 x i8], ptr %i.ef, i64 %.sroa.06.0.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49736), !noalias !49737
  call void @llvm.experimental.noalias.scope.decl(metadata !49738), !noalias !49737
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !49739, !noalias !49740, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !49741
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1888)
          to label %.noexc.i2 unwind label %bb.af, !noalias !49735, !inline_history !49663

.noexc.i2:                                        ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !49741
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49742)
  call void @llvm.experimental.noalias.scope.decl(metadata !49743)
  %i.fs = load i64, ptr %i.fr, align 8, !range !48, !alias.scope !49743, !noalias !49744, !noundef !23 ; 2 uses
  %i.ft = xor i64 %i.fs, -9223372036854775808
  %i.fu = icmp slt i64 %i.fs, 0
  %i.fv = select i1 %i.fu, i64 %i.ft, i64 5
  switch i64 %i.fv, label %bb.ah [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 4, label %bb.am
    i64 5, label %bb.an
  ]

bb.ah:                                            ; preds = %.noexc.i2
  unreachable

bb.ai:                                            ; preds = %.noexc.i2
  store i64 -9223372036854775808, ptr %i.c, align 8, !alias.scope !49742, !noalias !49745
  br label %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i

bb.aj:                                            ; preds = %.noexc.i2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fr, i64 72, i1 false), !alias.scope !49746, !noalias !49740
  br label %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i

bb.ak:                                            ; preds = %.noexc.i2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.fr, i64 72, i1 false), !alias.scope !49746, !noalias !49740
  br label %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i

bb.al:                                            ; preds = %.noexc.i2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1665)
          to label %.noexc unwind label %bb.aq, !inline_history !49667

.noexc:                                           ; preds = %bb.al
  store i64 -9223372036854775805, ptr %i.c, align 8, !alias.scope !49742, !noalias !49745
  br label %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i

bb.am:                                            ; preds = %.noexc.i2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !49747, !noalias !49748, !nonnull !23, !noundef !23
  %i.ga = load i64, ptr %i.fx, align 8, !alias.scope !49747, !noalias !49748, !noundef !23
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h969b56e3be081ffeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fz, i64 noundef %i.ga)
          to label %.noexc76 unwind label %bb.aq, !inline_history !49667

.noexc76:                                         ; preds = %bb.am
  store i64 -9223372036854775804, ptr %i.c, align 8, !alias.scope !49742, !noalias !49745
  br label %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i

bb.an:                                            ; preds = %.noexc.i2
  call void @llvm.experimental.noalias.scope.decl(metadata !49749), !noalias !49740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) @2313, i64 32, i1 false), !noalias !49750
  store i64 0, ptr %i.a, align 8, !noalias !49750
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i69, align 8, !noalias !49750
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i70, align 8, !noalias !49750
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h39d2c71a8468f11cE"(ptr noalias noundef align 8 dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.fr)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h827a77d09499d8e5E.exit.i71" unwind label %bb.ao, !noalias !49751, !inline_history !49679

bb.ao:                                            ; preds = %bb.an
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h60ae8b1bcdca71aeE"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #44
          to label %.body77 unwind label %bb.ap, !noalias !49752, !inline_history !49679

bb.ap:                                            ; preds = %bb.ao
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !49752, !inline_history !49679
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h827a77d09499d8e5E.exit.i71": ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !49745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49750
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 80
  %i.ge = load <2 x i64>, ptr %i.gd, align 8, !alias.scope !49753, !noalias !49754
  store <2 x i64> %i.ge, ptr %.sroa.42.0..sroa_idx.i74, align 8, !alias.scope !49742, !noalias !49745
  br label %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %bb.ao, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.gf, %bb.aq ], [ %i.gb, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49755), !noalias !49737
  call void @llvm.experimental.noalias.scope.decl(metadata !49756), !noalias !49757
  %.val.i.i.i3 = load i64, ptr %i.d, align 8, !alias.scope !49758, !noalias !49740 ; 2 uses
  %i.gg = icmp eq i64 %.val.i.i.i3, 0
  br i1 %i.gg, label %.body, label %bb.ar

bb.ar:                                            ; preds = %.body77
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i = load ptr, ptr %i.gh, align 8, !alias.scope !49758, !noalias !49740, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i3, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !49759, !inline_history !49684
  br label %.body

_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i: ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h827a77d09499d8e5E.exit.i71", %.noexc76, %.noexc, %bb.ak, %bb.aj, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.020.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !49741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !49741
  %i.gi = getelementptr inbounds nuw [104 x i8], ptr %i.fi, i64 %.sroa.616.0 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gi, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.020, i64 96, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 96
  store i64 %i.fq, ptr %.sroa.423.0..sroa_idx, align 8, !noalias !49760
  %i.gj = add i64 %.sroa.616.0, 1                 ; 2 uses
  %i.gk = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %.idx29
  br i1 %i.gl, label %bb.as, label %bb.ag

bb.as:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h64f86012820353cbE.exit.i
  store i64 %i.gj, ptr %i.dj, align 8, !noalias !49735
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h63d8292410a6d586E.exit"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h63d8292410a6d586E.exit": ; preds = %bb.ae, %bb.as
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN73_$LT$milli..vector..error..EmbedErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h96257bbbcfddbeb0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = load i64, ptr %0, align 8, !range !53, !noundef !23 ; 3 uses
  %i.u = icmp ne i64 %i.t, -9223372036854775788
  tail call void @llvm.assume(i1 %i.u)
  %i.v = xor i64 %i.t, -9223372036854775808
  %i.w = icmp slt i64 %i.t, 0
  %i.x = select i1 %i.w, i64 %i.v, i64 20
  switch i64 %i.x, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.s, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2320, i64 noundef 8, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @978)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.r, align 8
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2322, i64 noundef 11, ptr noundef nonnull align 1 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.q, align 8
  %i.ad = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2323, i64 noundef 11, ptr noundef nonnull align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.y

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.p, align 8
  %i.af = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2324, i64 noundef 12, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.o, align 8
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2325, i64 noundef 11, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @996)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.n, align 8
  %i.aj = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2327, i64 noundef 24, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2326)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.y

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.m, align 8
  %i.al = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2329, i64 noundef 27, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2328)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.y

bb.j:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.l, align 8
  %i.ao = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2330, i64 noundef 26, ptr noundef nonnull align 1 %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1209, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1010)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.y

bb.k:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.k, align 8
  %i.ar = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2333, i64 noundef 16, ptr noundef nonnull align 1 %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2331, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2332)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.y

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.j, align 8
  %i.at = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2334, i64 noundef 19, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2326)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.m:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.av, ptr %i.i, align 8
  %i.aw = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2335, i64 noundef 14, ptr noundef nonnull align 1 %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2331, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2332)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.y

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.h, align 8
  %i.az = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2336, i64 noundef 23, ptr noundef nonnull align 1 %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1231, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2326)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.o:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.g, align 8
  %i.bc = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2337, i64 noundef 19, ptr noundef nonnull align 1 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1231, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2326)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.f, align 8
  %i.be = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2338, i64 noundef 11, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2328)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.e, align 8
  %i.bg = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2339, i64 noundef 19, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @996)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.r:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.d, align 8
  %i.bj = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2340, i64 noundef 19, ptr noundef nonnull align 1 %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1209, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1010)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.y
end_hunk_1
