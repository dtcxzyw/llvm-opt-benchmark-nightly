Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN4rhai5types7dynamic7Dynamic4cast17hc3eda37cf4dea2d7E:bb.a

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.q, align 8, !noalias !34924, !nonnull !3, !align !249, !noundef !3
  %i.z = load ptr, ptr %i.s, align 8, !noalias !34924, !nonnull !3, !align !4, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !3, !noalias !34924, !nonnull !3
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.y)
          to label %bb.g unwind label %bb.f, !noalias !34924 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.ae = extractvalue { ptr, ptr } %i.ac, 0      ; 5 uses
  %i.af = extractvalue { ptr, ptr } %i.ac, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34924
  store ptr %i.ae, ptr %i.b, align 8, !noalias !34928
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !34928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34928
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !alias.scope !34925, !noalias !34930, !nonnull !3
  invoke void %i.ai(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ae)
          to label %bb.j unwind label %bb.h, !noalias !34930

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.p unwind label %bb.i, !noalias !34930

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34930
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.al = load i128, ptr %i.a, align 16, !noalias !34928, !noundef !3
  %i.am = icmp eq i128 %i.al, -44246526541674541555283359401430652242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34924
  br i1 %i.am, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.an = load i16, ptr %i.ae, align 2, !noalias !34924, !noundef !3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 2, i64 noundef 2) #71, !noalias !34924
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 16, i64 noundef 8) #71, !noalias !34924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34931
  store ptr %i.ae, ptr %i.c, align 8, !noalias !34931
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.af, ptr %i.ao, align 8, !noalias !34931
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1040) #70
          to label %bb.m unwind label %bb.l, !noalias !34931

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.p unwind label %bb.n, !noalias !34931

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34931
  unreachable

bb.o:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34924
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ad, %bb.f ], [ %i.ap, %bb.l ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 16, i64 noundef 8) #71, !noalias !34924
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

bb.q:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.q) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.o, !noalias !34924

bb.r:                                             ; preds = %bb.b
  %i.at = extractvalue { ptr, i64 } %i.l, 0
  %i.au = extractvalue { ptr, i64 } %i.l, 1
  br label %.noexc

bb.s:                                             ; preds = %.noexc, %bb.d
  %.sroa.0.0.copyload = load i8, ptr %i.h, align 8, !alias.scope !34924
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.528.0.copyload = load i16, ptr %.sroa.528.0..sroa_idx, align 2, !alias.scope !34924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i8 %.sroa.0.0.copyload, 12
  br i1 %.not, label %._crit_edge, label %"_ZN4core3ptr84drop_in_place$LT$core..result..Result$LT$i16$C$rhai..types..dynamic..Dynamic$GT$$GT$17h198f840718688746E.exit"

._crit_edge:                                      ; preds = %bb.s, %.thread
  %i.av = phi i16 [ %i.an, %.thread ], [ %.sroa.528.0.copyload, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i16 %i.av

"_ZN4core3ptr84drop_in_place$LT$core..result..Result$LT$i16$C$rhai..types..dynamic..Dynamic$GT$$GT$17h198f840718688746E.exit": ; preds = %bb.s
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @1086, ptr %i.f, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 3, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.49.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.ax, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @1054, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bb, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1055) #70
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.p, %bb.q, %bb.t
  %eh.lpad-body20 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.t ], [ %i.as, %bb.q ], [ %eh.lpad-body.i, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body20

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.u, !inline_history !1419

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN4rhai5types7dynamic7Dynamic4cast17hc52d448aa52cd143E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i8, ptr %0, align 8, !range !645, !noundef !3
  %i.g = icmp eq i8 %i.f, 11
  %.sink23.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %i.g, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.c unwind label %bb.e       ; 2 uses

.noexc:                                           ; preds = %bb.a, %bb.c
  %.sink22 = phi ptr [ %i.l, %bb.c ], [ @1051, %bb.a ]
  %.sink = phi i64 [ %i.m, %bb.c ], [ 8, %bb.a ]
  store ptr %.sink22, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34934)
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0)
  %i.j = load i8, ptr %i.d, align 8, !range !645, !alias.scope !34937, !noalias !34934, !noundef !3
  %i.k = icmp eq i8 %i.j, 2
  %.sink23.sroa.phi.sroa.speculate.load..noexc = load ptr, ptr %.sink23.sroa.gep, align 8
  br i1 %i.k, label %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit.thread, label %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.h, 0
  %i.m = extractvalue { ptr, i64 } %i.h, 1
  br label %.noexc

_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit: ; preds = %.noexc
  %.sroa.0.0.copyload = load i8, ptr %i.d, align 8, !alias.scope !34939
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.525.0.copyload = load ptr, ptr %.sroa.525.0..sroa_idx, align 8, !alias.scope !34939
  %.not = icmp eq i8 %.sroa.0.0.copyload, 12
  br i1 %.not, label %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit.thread, label %bb.d

_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit.thread: ; preds = %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit, %.noexc
  %.sink23.sroa.phi.sroa.speculated = phi ptr [ %.sink23.sroa.phi.sroa.speculate.load..noexc, %.noexc ], [ %.sroa.525.0.copyload, %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sink23.sroa.phi.sroa.speculated

bb.d:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic15try_cast_result17h30d4cd334e8145e8E.exit
  call fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..result..Result$LT$rhai..types..immutable_string..ImmutableString$C$rhai..types..dynamic..Dynamic$GT$$GT$17h7093f4e888153923E"(ptr noalias noundef align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @464, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 46, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.49.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @1054, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.s, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1055) #70
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.e:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.f, !inline_history !1419

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_ZN4rhai5types7dynamic7Dynamic4cast17hd7d5ce38e471ca7eE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = load i8, ptr %0, align 8, !range !645, !noundef !3
  %i.l = icmp eq i8 %i.k, 11
  br i1 %i.l, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.r unwind label %bb.t       ; 2 uses

.noexc:                                           ; preds = %bb.a, %bb.r
  %.sink25 = phi ptr [ %i.at, %bb.r ], [ @1051, %bb.a ]
  %.sink = phi i64 [ %i.au, %bb.r ], [ 8, %bb.a ]
  store ptr %.sink25, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0)
  %i.o = load i8, ptr %i.i, align 8, !range !645, !alias.scope !34943, !noalias !34940, !noundef !3
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %"_ZN4core3ptr115drop_in_place$LT$core..result..Result$LT$core..ops..range..Range$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h78a6a9824c3f34dfE.exit"

bb.c:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !34943, !noalias !34940, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !34945, !nonnull !3, !align !249, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !34945, !nonnull !3, !align !4, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !3, !noalias !34945, !nonnull !3
  invoke void %i.w(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.s)
          to label %bb.d unwind label %bb.q, !noalias !34945

bb.d:                                             ; preds = %bb.c
  %i.x = load i128, ptr %i.d, align 16, !noalias !34945, !noundef !3
  %i.y = icmp eq i128 %i.x, -96403227933188994494058036078122007030
  br i1 %i.y, label %bb.e, label %"_ZN4core3ptr115drop_in_place$LT$core..result..Result$LT$core..ops..range..Range$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h78a6a9824c3f34dfE.exit"

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.r, align 8, !noalias !34945, !nonnull !3, !align !249, !noundef !3
  %i.aa = load ptr, ptr %i.t, align 8, !noalias !34945, !nonnull !3, !align !4, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !3, !noalias !34945, !nonnull !3
  %i.ad = invoke { ptr, ptr } %i.ac(ptr noundef nonnull %i.z)
          to label %bb.g unwind label %bb.f, !noalias !34945 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 6 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34945
  store ptr %i.af, ptr %i.b, align 8, !noalias !34949
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !34949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34949
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !3, !alias.scope !34946, !noalias !34951, !nonnull !3
  invoke void %i.aj(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.af)
          to label %bb.j unwind label %bb.h, !noalias !34951

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.p unwind label %bb.i, !noalias !34951

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34951
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.am = load i128, ptr %i.a, align 16, !noalias !34949, !noundef !3
  %i.an = icmp eq i128 %i.am, -96403227933188994494058036078122007030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34945
  br i1 %i.an, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34952
  store ptr %i.af, ptr %i.c, align 8, !noalias !34952
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ag, ptr %i.ao, align 8, !noalias !34952
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1040) #70
          to label %bb.m unwind label %bb.l, !noalias !34952

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.p unwind label %bb.n, !noalias !34952

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34952
  unreachable

bb.o:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !34945
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.ae, %bb.f ], [ %i.ap, %bb.l ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 16, i64 noundef 8) #71, !noalias !34945
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

bb.q:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.r) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.o, !noalias !34945

bb.r:                                             ; preds = %bb.b
  %i.at = extractvalue { ptr, i64 } %i.m, 0
  %i.au = extractvalue { ptr, i64 } %i.m, 1
  br label %.noexc

bb.s:                                             ; preds = %bb.j
  %i.av = load i64, ptr %i.af, align 8, !noalias !34945, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !34945, !noundef !3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 16, i64 noundef 8) #71, !noalias !34945
end_hunk_0
