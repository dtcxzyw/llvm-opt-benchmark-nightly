Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.14?download=true
inline.NumInlined: 624
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14regex_automata4meta5regex7Builder14build_from_hir17h569a68945746b78eE:bb.a
          to label %.noexc41.i unwind label %bb.w, !noalias !185

.noexc41.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr368drop_in_place$LT$regex_automata..util..pool..inner..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..marker..Send$u2b$core..marker..Sync$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h38f2a3d9f35592ccE"(ptr noalias noundef nonnull align 8 dereferenceable(1448) %i.c) #29
          to label %.thread74.i unwind label %bb.x, !noalias !185

bb.x:                                             ; preds = %bb.w
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !185
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.dd, ptr noundef nonnull align 8 dereferenceable(1448) %i.c, i64 1448, i1 false), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !184
  store i64 1, ptr %i.b, align 8, !noalias !184
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.dh, align 8, !noalias !184
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.cm, ptr %i.di, align 8, !noalias !184
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.co, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !184
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.cf, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !184
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !208
  %i.dj = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #27, !noalias !208 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.z, label %bb.ac, !prof !29

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #28
          to label %.noexc43.i unwind label %bb.aa, !noalias !185

.noexc43.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h068b7fa4f940594bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #29
          to label %.body35.i unwind label %bb.ab, !noalias !185

bb.ab:                                            ; preds = %bb.aa
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !185
  unreachable

.body35.i:                                        ; preds = %bb.aa
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..marker..Send$u2b$core..marker..Sync$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17had705f7933acb47bE"(ptr %i.dd) #29
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i" unwind label %bb.af, !noalias !185

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !184
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dj, ptr %i.dn, align 8, !alias.scope !160, !noalias !187
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dd, ptr %i.do, align 8, !alias.scope !160, !noalias !187
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !160, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !184
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3f2e235cd125f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN14regex_automata4meta5regex7Builder19build_many_from_hir17h7be9abb2609095d8E.exit unwind label %bb.ad, !noalias !185

bb.ad:                                            ; preds = %bb.ac
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha95ebb21c1ba7f68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread.i unwind label %bb.ae, !noalias !185

bb.ae:                                            ; preds = %bb.ad
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !185
  unreachable

bb.af:                                            ; preds = %bb.al, %bb.ak, %bb.ag, %.body35.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i"
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !185
  unreachable

.thread74.i:                                      ; preds = %bb.w, %bb.s, %bb.p, %bb.o
  %.pn77.i = phi { ptr, i32 } [ %i.cx, %bb.p ], [ %i.db, %bb.s ], [ %i.cx, %bb.o ], [ %i.df, %bb.w ] ; 2 uses
  %i.ds = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !211
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.thread74.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdea2291d76a19660E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.e)
          to label %bb.aj unwind label %bb.af, !noalias !185

"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i": ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !184
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3f2e235cd125f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN14regex_automata4meta5regex7Builder19build_many_from_hir17h7be9abb2609095d8E.exit unwind label %bb.ah, !noalias !185

bb.ah:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i"
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha95ebb21c1ba7f68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread.i unwind label %bb.ai, !noalias !185

bb.ai:                                            ; preds = %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !185
  unreachable

bb.aj:                                            ; preds = %bb.ag, %.thread74.i, %bb.h
  %.pn.pn.ph.i = phi { ptr, i32 } [ %i.cj, %bb.h ], [ %.pn77.i, %bb.ag ], [ %.pn77.i, %.thread74.i ] ; 2 uses
  %i.dw = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !216
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.ak, label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i"

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h69b4b9c5af7bddf2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i" unwind label %bb.af, !noalias !185

.thread.i:                                        ; preds = %bb.al, %bb.ah, %bb.ad, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i"
  %.pn3359.i = phi { ptr, i32 } [ %i.dp, %bb.ad ], [ %lpad.thr_comm.split-lp.i, %bb.al ], [ %i.du, %bb.ah ], [ %.pn31.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i" ]
  resume { ptr, i32 } %.pn3359.i

bb.al:                                            ; preds = %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i"
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..meta..regex..Config$GT$17h14ba32e64cdc47dcE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f) #29
          to label %.thread.i unwind label %bb.af, !noalias !185

_ZN14regex_automata4meta5regex7Builder19build_many_from_hir17h7be9abb2609095d8E.exit: ; preds = %bb.ac, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha95ebb21c1ba7f68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN14regex_automata4meta5regex7Builder19build_many_from_hir28_$u7b$$u7b$closure$u7d$$u7d$17h3695cf8fa645000cE"(ptr dead_on_unwind noalias noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !137, !invariant.load !3
  %i.f = add i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef align 1 %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN14regex_automata4meta5regex7Builder19build_many_from_hir28_$u7b$$u7b$closure$u7d$$u7d$17hab88aa612f848b3bE"(ptr dead_on_unwind noalias noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !137, !invariant.load !3
  %i.f = add i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef align 1 %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4meta5regex7Builder5build17hdafbcd9e139d68d5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [1448 x i8], align 8              ; 5 uses
  %i.e = alloca [136 x i8], align 8               ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [128 x i8], align 8               ; 26 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 12 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.736.i = alloca [48 x i8], align 8        ; 7 uses
  %.sroa.630.i = alloca [48 x i8], align 8        ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6154.i = alloca ptr, align 8             ; 8 uses
  %.sroa.10.i = alloca ptr, align 8               ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [200 x i8], align 8               ; 24 uses
  %i.q = alloca [128 x i8], align 8               ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 15 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %3, ptr %i.x, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !228
  store i64 0, ptr %i.v, align 8, !noalias !228
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !228
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !228
  store i64 0, ptr %i.u, align 8, !noalias !228
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !228
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.33.0..sroa_idx.i, align 8, !noalias !228
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  invoke void @"_ZN14regex_automata4util10primitives26WithPatternIDIter$LT$I$GT$3new17hb49b32a0aafc167aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 %i.w, ptr noundef nonnull readonly %i.y)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !230

.body.i:                                          ; preds = %bb.ch, %bb.ce, %bb.bx, %bb.br, %bb.bo, %bb.bh, %bb.bd, %bb.av, %bb.ar, %bb.an, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i", %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.gd, %bb.bd ], [ %i.hm, %bb.ch ], [ %i.gp, %bb.bo ], [ %i.gx, %bb.bx ], [ %eh.lpad-body133.ph.i, %bb.br ], [ %i.gh, %bb.bh ], [ %.pn31.i.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i" ], [ %i.hg, %bb.ce ], [ %i.fp, %bb.an ], [ %lpad.thr_comm.split-lp.i.i, %bb.av ], [ %i.fu, %bb.ar ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit162.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp163.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE"(ptr noalias noundef align 8 dereferenceable(24) %i.u) #29
          to label %.body125.i unwind label %bb.bs, !noalias !230

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.c
  %lpad.loopexit162.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ca, %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i.i", %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE.exit54.i.i", %bb.e, %bb.a
  %lpad.loopexit.split-lp163.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !228
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !alias.scope !226, !noalias !231
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ac = load <3 x i8>, ptr %i.ab, align 4, !alias.scope !226, !noalias !231
  %i.ad = shufflevector <3 x i8> %i.ac, <3 x i8> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 188
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %.sroa.422.sroa.5.0..sroa.422.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.cg, %bb.b
  %i.am = invoke { i32, ptr } @"_ZN119_$LT$regex_automata..util..primitives..WithPatternIDIter$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2519b3cb878970E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.i, !noalias !230 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.an = extractvalue { i32, ptr } %i.am, 1      ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.e, label %bb.by

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !228
  invoke void @"_ZN14regex_automata4util10primitives26WithPatternIDIter$LT$I$GT$3new17hb49b32a0aafc167aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull readonly align 8 %i.w, ptr noundef nonnull readonly %i.y)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !230

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !228, !nonnull !3, !noundef !3 ; 2 uses
  %i.ap = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !228, !noundef !3
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !228
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4150.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !228
  %.sroa.2.0..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store ptr %i.ao, ptr %.sroa.2.0..sroa_idx148.i, align 8, !noalias !228
  %.sroa.3.0..sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store ptr %i.aq, ptr %.sroa.3.0..sroa_idx149.i, align 8, !noalias !228
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.at = load i8, ptr %i.ar, align 8, !range !13, !alias.scope !226, !noalias !231
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !226, !noalias !231
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  %.sroa.481.sroa.4.0..sroa.481.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.481.sroa.5.0..sroa.481.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 38
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.bq, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6154.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ba = invoke { i32, ptr } @"_ZN119_$LT$regex_automata..util..primitives..WithPatternIDIter$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce2519b3cb878970E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !230 ; 2 uses

.noexc.i:                                         ; preds = %bb.g
  %i.bb = extractvalue { i32, ptr } %i.ba, 0
  %i.bc = extractvalue { i32, ptr } %i.ba, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc.i
  %i.bd = load ptr, ptr %.sroa.2.0..sroa_idx148.i, align 8, !alias.scope !237, !noalias !240, !nonnull !3, !noundef !3 ; 3 uses
  %i.be = load ptr, ptr %.sroa.3.0..sroa_idx149.i, align 8, !alias.scope !237, !noalias !240, !nonnull !3, !noundef !3
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bg, ptr %.sroa.2.0..sroa_idx148.i, align 8, !alias.scope !237, !noalias !240
  store ptr %i.bc, ptr %.sroa.6154.i, align 8, !alias.scope !232, !noalias !241
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc.i
  %.sroa.0153.0.i = phi i32 [ undef, %.noexc.i ], [ undef, %bb.h ], [ %i.bb, %bb.i ]
  %.sink20.i.sroa.phi.i = phi ptr [ %.sroa.6154.i, %.noexc.i ], [ %.sroa.6154.i, %bb.h ], [ %.sroa.10.i, %bb.i ]
  %.sink.i.i = phi ptr [ null, %.noexc.i ], [ null, %bb.h ], [ %i.bd, %bb.i ]
  store ptr %.sink.i.i, ptr %.sink20.i.sroa.phi.i, align 8, !alias.scope !232, !noalias !241
  %.sroa.6154.i.0..sroa.6154.i.0..sroa.6154.i.0..sroa.6154.0..sroa.6154.0..sroa.6154.8..i = load ptr, ptr %.sroa.6154.i, align 8, !noalias !228, !noundef !3 ; 3 uses
  %.not113.i = icmp eq ptr %.sroa.6154.i.0..sroa.6154.i.0..sroa.6154.i.0..sroa.6154.0..sroa.6154.0..sroa.6154.8..i, null
  br i1 %.not113.i, label %bb.k, label %bb.be

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6154.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !228
  %i.bh = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !228, !nonnull !3, !noundef !3 ; 2 uses
  %i.bi = load i64, ptr %.sroa.33.0..sroa_idx.i, align 8, !noalias !228, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !228
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bk = load i8, ptr %i.bj, align 2, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 115
  %i.bm = load i8, ptr %i.bl, align 1, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bo = load i8, ptr %i.bn, align 4, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bq = load i8, ptr %i.bp, align 8, !range !139, !alias.scope !250, !noalias !251, !noundef !3 ; 3 uses
  %.not23.i.i.i = icmp eq i8 %i.bq, 3
  br i1 %.not23.i.i.i, label %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %.not.i.i.i.i = icmp eq i8 %i.bq, 2
  br i1 %.not.i.i.i.i, label %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !260, !noalias !261, !nonnull !3, !noundef !3 ; 2 uses
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !264
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.n, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i"

bb.n:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i": ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !260, !noalias !261, !nonnull !3, !align !4, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !260, !noalias !261, !noundef !3
  br label %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i"

"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i", %bb.l, %bb.k
  %.sroa.5.052.i.i.i = phi i64 [ %i.by, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.l ], [ undef, %bb.k ]
  %.sroa.4.051.i.i.i = phi ptr [ %i.bw, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.l ], [ undef, %bb.k ]
  %.sroa.0.050.i.i.i = phi ptr [ %i.bs, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.l ], [ undef, %bb.k ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.ca = load i8, ptr %i.bz, align 2, !range !139, !alias.scope !250, !noalias !251, !noundef !3
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val42.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !250, !noalias !251
  %i.ce = and i64 %i.cc, 1
  %i.cf = icmp eq i64 %i.ce, 0
  %.sroa.5.0.i.i.i = select i1 %i.cf, i64 undef, i64 %.val42.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val40.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !250, !noalias !251
  %i.cj = and i64 %i.ch, 1
  %i.ck = icmp eq i64 %i.cj, 0
  %.sroa.56.0.i.i.i = select i1 %i.ck, i64 undef, i64 %.val40.i.i.i
  %i.cl = load i64, ptr %1, align 8, !range !31, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !250, !noalias !251
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 117
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val38.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !250, !noalias !251
  %i.cs = and i64 %i.cq, 1
  %i.ct = icmp eq i64 %i.cs, 0
  %.sroa.512.0.i.i.i = select i1 %i.ct, i64 undef, i64 %.val38.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !range !183, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val36.i.i.i = load i64, ptr %i.cw, align 8, !alias.scope !250, !noalias !251
  %i.cx = and i64 %i.cv, 1
  %i.cy = icmp eq i64 %i.cx, 0
  %.sroa.514.0.i.i.i = select i1 %i.cy, i64 undef, i64 %.val36.i.i.i
  %i.cz = trunc nuw i64 %i.cl to i1
  %.sroa.58.0.i.i.i = select i1 %i.cz, i64 %i.cn, i64 undef
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.db = load i8, ptr %i.da, align 1, !range !12, !alias.scope !250, !noalias !251, !noundef !3
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dd = load i8, ptr %i.dc, align 8, !range !13, !alias.scope !250, !noalias !251, !noundef !3 ; 2 uses
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !250, !noalias !251
  %.sroa.519.0.i.i.i = select i1 %i.de, i8 %i.dg, i8 undef
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 114
  store i8 %i.bk, ptr %i.dh, align 2, !noalias !265
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 115
  store i8 %i.bm, ptr %i.di, align 1, !noalias !265
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i8 %i.bo, ptr %i.dj, align 4, !noalias !265
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %.sroa.0.050.i.i.i, ptr %i.dk, align 8, !noalias !265
  %.sroa.4.0..sroa_idx47.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %.sroa.4.051.i.i.i, ptr %.sroa.4.0..sroa_idx47.i.i.i, align 8, !noalias !265
  %.sroa.5.0..sroa_idx48.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %.sroa.5.052.i.i.i, ptr %.sroa.5.0..sroa_idx48.i.i.i, align 8, !noalias !265
  %.sroa.6.0..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i8 %i.bq, ptr %.sroa.6.0..sroa_idx49.i.i.i, align 8, !noalias !265
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 122
  store i8 %i.ca, ptr %i.dl, align 2, !noalias !265
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.cc, ptr %i.dm, align 8, !noalias !265
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.5.0.i.i.i, ptr %i.dn, align 8, !noalias !265
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.ch, ptr %i.do, align 8, !noalias !265
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.56.0.i.i.i, ptr %i.dp, align 8, !noalias !265
  store i64 %i.cl, ptr %i.g, align 8, !noalias !265
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.58.0.i.i.i, ptr %i.dq, align 8, !noalias !265
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 117
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.cq, ptr %i.ds, align 8, !noalias !265
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.512.0.i.i.i, ptr %i.dt, align 8, !noalias !265
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %i.cv, ptr %i.du, align 8, !noalias !265
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %.sroa.514.0.i.i.i, ptr %i.dv, align 8, !noalias !265
  %i.dw = load <4 x i8>, ptr %i.co, align 1, !alias.scope !250, !noalias !251
  store <4 x i8> %i.dw, ptr %i.dr, align 1, !noalias !265
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 121
  store i8 %i.db, ptr %i.dx, align 1, !noalias !265
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i8 %i.dd, ptr %i.dy, align 8, !noalias !265
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 113
  store i8 %.sroa.519.0.i.i.i, ptr %i.dz, align 1, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !265
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.bi
  invoke void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h0c9dd876da09c639E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 %i.bh, ptr noundef nonnull readonly %i.ea)
          to label %bb.o unwind label %bb.av, !noalias !266

bb.o:                                             ; preds = %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !265
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !265, !nonnull !3, !noundef !3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !265, !noundef !3
  %i.ef = invoke noundef nonnull ptr @_ZN14regex_automata4meta5regex9RegexInfo3new17h4c9680cfe2dfebe7E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ee)
          to label %bb.q unwind label %bb.p, !noalias !266 ; 4 uses

"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i": ; preds = %bb.au, %bb.at, %.body35.i.i, %bb.p
  %.pn31.i.i = phi { ptr, i32 } [ %i.eg, %bb.p ], [ %i.fl, %.body35.i.i ], [ %.pn.pn.ph.i.i, %bb.au ], [ %.pn.pn.ph.i.i, %bb.at ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #29
          to label %.body.i unwind label %bb.ap, !noalias !266

bb.p:                                             ; preds = %bb.u, %bb.o
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i"

bb.q:                                             ; preds = %bb.o
  store ptr %i.ef, ptr %i.h, align 8, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !265
  %i.eh = load ptr, ptr %i.eb, align 8, !noalias !265, !nonnull !3, !noundef !3
  %i.ei = load i64, ptr %i.ed, align 8, !noalias !265, !noundef !3
  invoke void @_ZN14regex_automata4meta8strategy3new17hd7ebe011bfad8af0E(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.eh, i64 noundef %i.ei)
          to label %bb.s unwind label %bb.r, !noalias !266

bb.r:                                             ; preds = %bb.q
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.s:                                             ; preds = %bb.q
  %i.ek = load i64, ptr %i.e, align 8, !range !186, !noalias !265, !noundef !3 ; 2 uses
  %.not.i122.i = icmp eq i64 %i.ek, -9223372036854775806
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !265 ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !265 ; 5 uses
  br i1 %.not.i122.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.424.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx.i.i, i64 112, i1 false), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !265
  store i64 %i.ek, ptr %0, align 8, !alias.scope !268, !noalias !267
  %.sroa.222.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %.sroa.222.0..sroa_idx.i.i, align 8, !alias.scope !268, !noalias !267
  %.sroa.323.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.eo, ptr %.sroa.323.0..sroa_idx.i.i, align 8, !alias.scope !268, !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !265
  %i.ep = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !269
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.u, label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i.i"
end_hunk_0
begin_hunk_1_@_ZN14regex_automata4meta5regex7Builder5build17hdafbcd9e139d68d5E:bb.a
bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 1448) #28
          to label %.noexc41.i.i unwind label %bb.ag, !noalias !266

.noexc41.i.i:                                     ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr368drop_in_place$LT$regex_automata..util..pool..inner..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..marker..Send$u2b$core..marker..Sync$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h38f2a3d9f35592ccE"(ptr noalias noundef nonnull align 8 dereferenceable(1448) %i.d) #29
          to label %.thread74.i.i unwind label %bb.ah, !noalias !266

bb.ah:                                            ; preds = %bb.ag
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !266
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.fd, ptr noundef nonnull align 8 dereferenceable(1448) %i.d, i64 1448, i1 false), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !265
  store i64 1, ptr %i.c, align 8, !noalias !265
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fh, align 8, !noalias !265
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.em, ptr %i.fi, align 8, !noalias !265
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.eo, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !265
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.ef, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !265
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !289
  %i.fj = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #27, !noalias !289 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.aj, label %bb.am, !prof !29

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #28
          to label %.noexc43.i.i unwind label %bb.ak, !noalias !266

.noexc43.i.i:                                     ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h068b7fa4f940594bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #29
          to label %.body35.i.i unwind label %bb.al, !noalias !266

bb.al:                                            ; preds = %bb.ak
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !266
  unreachable

.body35.i.i:                                      ; preds = %bb.ak
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..marker..Send$u2b$core..marker..Sync$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17had705f7933acb47bE"(ptr %i.fd) #29
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i" unwind label %bb.ap, !noalias !266

bb.am:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !265
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fj, ptr %i.fn, align 8, !alias.scope !268, !noalias !267
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fd, ptr %i.fo, align 8, !alias.scope !268, !noalias !267
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !268, !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !265
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3f2e235cd125f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE.exit54.i.i" unwind label %bb.an, !noalias !266

bb.an:                                            ; preds = %bb.am
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha95ebb21c1ba7f68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.ao, !noalias !266

bb.ao:                                            ; preds = %bb.an
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !266
  unreachable

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE.exit54.i.i": ; preds = %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i.i", %bb.am
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha95ebb21c1ba7f68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !230

bb.ap:                                            ; preds = %bb.av, %bb.au, %bb.aq, %.body35.i.i, %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i"
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !266
  unreachable

.thread74.i.i:                                    ; preds = %bb.ag, %bb.ac, %bb.z, %bb.y
  %.pn77.i.i = phi { ptr, i32 } [ %i.ex, %bb.z ], [ %i.fb, %bb.ac ], [ %i.ex, %bb.y ], [ %i.ff, %bb.ag ] ; 2 uses
  %i.fs = atomicrmw sub ptr %i.em, i64 1 release, align 8, !noalias !292
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.thread74.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdea2291d76a19660E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f)
          to label %bb.at unwind label %bb.ap, !noalias !266

"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i.i": ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !265
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f3f2e235cd125f7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE.exit54.i.i" unwind label %bb.ar, !noalias !266

bb.ar:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit.i.i"
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha95ebb21c1ba7f68E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.as, !noalias !266

bb.as:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !266
  unreachable

bb.at:                                            ; preds = %bb.aq, %.thread74.i.i, %bb.r
  %.pn.pn.ph.i.i = phi { ptr, i32 } [ %i.ej, %bb.r ], [ %.pn77.i.i, %bb.aq ], [ %.pn77.i.i, %.thread74.i.i ] ; 2 uses
  %i.fw = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !297
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.au, label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i"

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h69b4b9c5af7bddf2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr59drop_in_place$LT$regex_automata..meta..regex..RegexInfo$GT$17hf92d34f57571db47E.exit56.i.i" unwind label %bb.ap, !noalias !266

bb.av:                                            ; preds = %"_ZN74_$LT$regex_automata..meta..regex..Config$u20$as$u20$core..clone..Clone$GT$5clone17he9c8963f0704cc04E.exit.i.i"
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..meta..regex..Config$GT$17h14ba32e64cdc47dcE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g) #29
          to label %.body.i unwind label %bb.ap, !noalias !266

bb.aw:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$$RF$regex_syntax..hir..Hir$GT$$GT$17h950de63759beb6fcE.exit54.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !228
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95788fefaefa0912E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ay unwind label %bb.ax, !noalias !230

bb.ax:                                            ; preds = %bb.aw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body125.i unwind label %bb.az, !noalias !230

bb.ay:                                            ; preds = %bb.aw
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit.i" unwind label %bb.ba, !noalias !230

bb.az:                                            ; preds = %bb.ax
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !230
  unreachable

.body125.i:                                       ; preds = %bb.bu, %bb.ba, %bb.ax, %.body.i
  %.pn117.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.fy, %bb.ax ], [ %i.ga, %bb.ba ], [ %i.gv, %bb.bu ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..ast..Ast$GT$$GT$17h9d752534099d75a6E"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #29
          to label %common.resume.i unwind label %bb.bs, !noalias !230

bb.ba:                                            ; preds = %bb.bv, %bb.ay
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body125.i

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit.i": ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !228
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6062affc0de4b8c6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN14regex_automata4meta5regex7Builder10build_many17he59710eac9b92273E.exit unwind label %bb.bb, !noalias !230

bb.bb:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit.i"
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8bca8caa5ed6f6b1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i unwind label %bb.bc, !noalias !230

bb.bc:                                            ; preds = %bb.bb
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !230
  unreachable

common.resume.i:                                  ; preds = %bb.cj, %bb.bb, %.body125.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.hn, %bb.cj ], [ %i.gb, %bb.bb ], [ %.pn117.i, %.body125.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.bd:                                            ; preds = %bb.be
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE"(ptr noalias noundef align 8 dereferenceable(40) %i.k) #29
          to label %.body.i unwind label %bb.bs, !noalias !230

bb.be:                                            ; preds = %bb.j
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i = load ptr, ptr %.sroa.10.i, align 8, !noalias !228, !nonnull !3, !align !4, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.736.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.as, i64 6, i1 false), !noalias !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !228
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.481.sroa.4.0..sroa.481.0..sroa_idx.sroa_idx.i, align 8, !noalias !228
  store i64 0, ptr %.sroa.481.sroa.5.0..sroa.481.0..sroa_idx.sroa_idx.i, align 8, !noalias !228
  store i8 %i.at, ptr %i.ax, align 1, !noalias !228
  store i8 %i.av, ptr %i.ay, align 2, !noalias !228
  %.val120.i = load ptr, ptr %.sroa.6154.i.0..sroa.6154.i.0..sroa.6154.i.0..sroa.6154.0..sroa.6154.0..sroa.6154.8..i, align 8, !noalias !230, !nonnull !3, !align !304, !noundef !3
  %i.ge = getelementptr i8, ptr %.sroa.6154.i.0..sroa.6154.i.0..sroa.6154.i.0..sroa.6154.0..sroa.6154.0..sroa.6154.8..i, i64 8
  %.val121.i = load i64, ptr %i.ge, align 8, !noalias !230, !noundef !3
  invoke void @_ZN12regex_syntax3hir9translate10Translator9translate17h3c2849864e624556E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val120.i, i64 noundef %.val121.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..i)
          to label %bb.bf unwind label %bb.bd, !noalias !230

bb.bf:                                            ; preds = %bb.be
  %i.gf = load i64, ptr %i.l, align 8, !range !32, !noalias !228, !noundef !3
  %.not114.not.i = icmp eq i64 %i.gf, -9223372036854775808
  br i1 %.not114.not.i, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.736.i, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !228
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.3109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3109.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.gg, i64 32, i1 false), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.736.i, i64 48, i1 false), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.736.i)
  %.sroa.2108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2108.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.i, i64 48, i1 false), !noalias !305
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !223, !noalias !305
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sroa.0153.0.i, ptr %.sroa.4110.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !305
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54e3dfa4499a0663E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.481.0..sroa_idx.i)
          to label %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i.i" unwind label %bb.bh, !noalias !230

bb.bh:                                            ; preds = %bb.bg
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.481.0..sroa_idx.i)
          to label %.body.i unwind label %bb.bi, !noalias !230

bb.bi:                                            ; preds = %bb.bh
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !230
  unreachable

"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i.i": ; preds = %bb.bg
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.481.0..sroa_idx.i)
          to label %"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !230

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.736.i, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.736.i, i64 48, i1 false), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.736.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.i, i64 48, i1 false), !noalias !228
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54e3dfa4499a0663E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.481.0..sroa_idx.i)
          to label %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i131.i" unwind label %bb.bk, !noalias !230

bb.bk:                                            ; preds = %bb.bj
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.481.0..sroa_idx.i)
          to label %bb.br unwind label %bb.bl, !noalias !230

bb.bl:                                            ; preds = %bb.bk
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !230
  unreachable

"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i131.i": ; preds = %bb.bj
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.481.0..sroa_idx.i)
          to label %"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit135.i" unwind label %bb.bm, !noalias !230

bb.bm:                                            ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i131.i"
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit135.i": ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i131.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !228
  %i.gm = load i64, ptr %.sroa.33.0..sroa_idx.i, align 8, !alias.scope !306, !noalias !309, !noundef !3 ; 3 uses
  %i.gn = load i64, ptr %i.u, align 8, !range !311, !alias.scope !306, !noalias !309, !noundef !3
  %i.go = icmp eq i64 %i.gm, %i.gn
  br i1 %i.go, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit135.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h59b46e0f5b26a4e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bq unwind label %bb.bo, !noalias !312

bb.bo:                                            ; preds = %bb.bn
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j) #29
          to label %.body.i unwind label %bb.bp, !noalias !230

bb.bp:                                            ; preds = %bb.bo
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !230
  unreachable

bb.bq:                                            ; preds = %bb.bn, %"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit135.i"
  %i.gr = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !alias.scope !306, !noalias !309, !nonnull !3, !noundef !3
  %i.gs = getelementptr inbounds nuw [48 x i8], ptr %i.gr, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !230
  %i.gt = add i64 %i.gm, 1
  store i64 %i.gt, ptr %.sroa.33.0..sroa_idx.i, align 8, !alias.scope !306, !noalias !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6154.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %bb.g

bb.br:                                            ; preds = %bb.bm, %bb.bk
  %eh.lpad-body133.ph.i = phi { ptr, i32 } [ %i.gl, %bb.bm ], [ %i.gj, %bb.bk ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"(ptr noalias noundef align 8 dereferenceable(48) %i.m) #29
          to label %.body.i unwind label %bb.bs, !noalias !230

bb.bs:                                            ; preds = %bb.ch, %bb.bx, %bb.br, %bb.bd, %.body125.i, %.body.i
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !230
  unreachable

"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit.i": ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6154.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !228
  br label %bb.bt

bb.bt:                                            ; preds = %bb.ci, %"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95788fefaefa0912E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bv unwind label %bb.bu, !noalias !230

bb.bu:                                            ; preds = %bb.bt
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body125.i unwind label %bb.bw, !noalias !230

bb.bv:                                            ; preds = %bb.bt
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit143.i" unwind label %bb.ba, !noalias !230

bb.bw:                                            ; preds = %bb.bu
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #26, !noalias !230
  unreachable

bb.bx:                                            ; preds = %bb.by
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$regex_syntax..ast..parse..Parser$GT$17h97372148216b0c19E"(ptr noalias noundef align 8 dereferenceable(200) %i.p) #29
          to label %.body.i unwind label %bb.bs, !noalias !230

bb.by:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !228
  store i64 0, ptr %i.ae, align 8, !alias.scope !313, !noalias !316
  store i64 1, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  store i64 1, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  store i32 0, ptr %i.af, align 8, !alias.scope !313, !noalias !316
  store i32 %i.aa, ptr %i.ag, align 4, !alias.scope !313, !noalias !316
  store <4 x i8> %i.ad, ptr %i.ah, align 8, !alias.scope !313, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.p, i8 0, i64 16, i1 false), !alias.scope !313, !noalias !316
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !313, !noalias !316
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !313, !noalias !316
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !313, !noalias !316
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !313, !noalias !316
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  store i64 0, ptr %.sroa.422.sroa.5.0..sroa.422.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !313, !noalias !316
  %.val.i = load ptr, ptr %i.an, align 8, !noalias !230, !nonnull !3, !align !304, !noundef !3
  %i.gy = getelementptr i8, ptr %i.an, i64 8
  %.val119.i = load i64, ptr %i.gy, align 8, !noalias !230, !noundef !3
  invoke void @_ZN12regex_syntax3ast5parse6Parser5parse17h29d270eb38556d64E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val119.i)
          to label %bb.bz unwind label %bb.bx, !noalias !230

bb.bz:                                            ; preds = %bb.by
  %i.gz = load i64, ptr %i.q, align 8, !range !32, !noalias !228, !noundef !3 ; 2 uses
  %.not115.i = icmp eq i64 %i.gz, -9223372036854775808
  br i1 %.not115.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ha = extractvalue { i32, ptr } %i.am, 0
  %.sroa.260.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !228
  %.sroa.361.0.copyload.i = load ptr, ptr %i.aj, align 8, !noalias !228
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.4.0..sroa_idx77.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx77.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.462.0..sroa_idx.i, i64 104, i1 false), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !228
  store i64 %i.gz, ptr %0, align 8, !alias.scope !223, !noalias !305
  %.sroa.275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.260.0.copyload.i, ptr %.sroa.275.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !305
  %.sroa.376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.361.0.copyload.i, ptr %.sroa.376.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !305
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.ha, ptr %.sroa.578.0..sroa_idx.i, align 8, !alias.scope !223, !noalias !305
end_hunk_1
