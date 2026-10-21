Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-b763c3982f933b22.xtask.67f4837adcdb5ddd-cgu.0?download=true
inline.NumInlined: 1754
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17he7441719bd5b15b2E":bb.a

.lr.ph:                                           ; preds = %bb.a, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"
  %.sroa.8.024 = phi i64 [ %i.h, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ 0, %bb.a ] ; 4 uses
  %.sroa.012.023 = phi ptr [ %i.g, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 16 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.024, 1
  %i.i = getelementptr i8, ptr %.sroa.012.023, i64 8
  %.val9 = load i64, ptr %i.i, align 8, !noundef !9
  %.not.i.i = icmp eq i64 %.val9, %3
  br i1 %.not.i.i, label %.split, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

.split:                                           ; preds = %.lr.ph
  %.val = load ptr, ptr %.sroa.012.023, align 8, !nonnull !9, !noundef !9
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %2, i64 %3)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge": ; preds = %.split, %.lr.ph
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge": ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge", %bb.a
  %i.l = load i64, ptr %1, align 8, !range !17, !alias.scope !212, !noundef !9
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %._crit_edge unwind label %bb.g, !noalias !213

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !212
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge" ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %2, ptr %i.o, align 8, !noalias !214
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8, !noalias !215
  %i.q = add i64 %i.d, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !212
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !216, !noundef !9 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !17, !alias.scope !216, !noundef !9
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h227c91f2cdf747efE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.i unwind label %bb.e, !noalias !217

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #30
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !217
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #30
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !213
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !216, !nonnull !9, !noundef !9
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !216
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %.split
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !9 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.8.024, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.ai, i64 %.sroa.8.024 ; 8 uses
  %i.ak = load <2 x i64>, ptr %4, align 8
  %i.al = load <2 x i64>, ptr %i.aj, align 1
  store <2 x i64> %i.ak, ptr %i.aj, align 1
  store <2 x i64> %i.al, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8
  %i.ap = load <2 x i64>, ptr %i.am, align 1
  store <2 x i64> %i.ao, ptr %i.am, align 1
  store <2 x i64> %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8
  %i.at = load <2 x i64>, ptr %i.aq, align 1
  store <2 x i64> %i.as, ptr %i.aq, align 1
  store <2 x i64> %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8
  %i.ax = load <2 x i64>, ptr %i.au, align 1
  store <2 x i64> %i.aw, ptr %i.au, align 1
  store <2 x i64> %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 8
  %i.bb = load <2 x i64>, ptr %i.ay, align 1
  store <2 x i64> %i.ba, ptr %i.ay, align 1
  store <2 x i64> %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8
  %i.bf = load <2 x i64>, ptr %i.bc, align 1
  store <2 x i64> %i.be, ptr %i.bc, align 1
  store <2 x i64> %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %.sroa.0.0.copyload.i.12.i.i.i.i = load i64, ptr %i.bg, align 1, !alias.scope !218
  %.sroa.02.0.copyload.i.12.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !219
  store i64 %.sroa.02.0.copyload.i.12.i.i.i.i, ptr %i.bg, align 1, !alias.scope !218
  store i64 %.sroa.0.0.copyload.i.12.i.i.i.i, ptr %i.bh, align 8, !alias.scope !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.8.024, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef align 8 dereferenceable(104) %4) #30
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

.body:                                            ; preds = %bb.g, %bb.e, %bb.o
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN12clap_builder4util9any_value8AnyValue13downcast_into17h69f59c538d018e37E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !align !11, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8, !noalias !240
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !240
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !18, !invariant.load !9, !alias.scope !239
  %i.l = add i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !240
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !9, !alias.scope !239, !nonnull !9
  invoke void %i.q(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef align 1 %i.o)
          to label %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hafe289f7f70426a3E.exit" unwind label %bb.b, !noalias !241

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !242
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %common.resume unwind label %bb.d, !noalias !241

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !241
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.r, %bb.c ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hafe289f7f70426a3E.exit": ; preds = %bb.a
  %i.u = load i128, ptr %i.b, align 16, !noalias !240, !noundef !9
  %i.v = icmp eq i128 %i.u, -118783458028001939085095121587986885825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hafe289f7f70426a3E.exit"
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store ptr %i.f, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.q

bb.f:                                             ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hafe289f7f70426a3E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !noalias !243
  %i.x = extractvalue { i64, i1 } %i.w, 1
  br i1 %i.x, label %bb.g, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit.thread"

bb.g:                                             ; preds = %bb.f
  fence acquire
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.09.0.copyload10 = load i64, ptr %i.y, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0.copyload12 = load ptr, ptr %.sroa.6.0..sroa_idx11, align 8 ; 2 uses
  %.sroa.813.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.813.0.copyload15 = load i64, ptr %.sroa.813.0..sroa_idx14, align 8
  %i.z = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  br i1 %i.z, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %3 = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !243
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %bb.i, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit"

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 40, i64 noundef 8) #32, !noalias !243
  br label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit"

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit": ; preds = %bb.g, %bb.h, %bb.i
  %i.ac = icmp eq i64 %.sroa.09.0.copyload10, -9223372036854775808
  br i1 %i.ac, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit.thread", label %bb.o

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit.thread": ; preds = %bb.f, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit"
  %.sroa.6.021 = phi ptr [ %.sroa.6.0.copyload12, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit" ], [ %i.f, %bb.f ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.021) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.6.021, ptr %i.a, align 8, !noalias !244
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.6.021, i64 16
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit.thread"
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %4 = atomicrmw sub ptr %.sroa.6.021, i64 1 release, align 8, !noalias !245
  %i.af = icmp eq i64 %4, 1
  br i1 %i.af, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h56d1eb59f44eeb35E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.n, !noalias !244

bb.l:                                             ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit.thread"
  %5 = atomicrmw sub ptr %.sroa.6.021, i64 1 release, align 8, !noalias !246
  %i.ag = icmp eq i64 %5, 1
  br i1 %i.ag, label %bb.m, label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hf850ab5fb258ae34E.exit"

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h56d1eb59f44eeb35E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !244
  br label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hf850ab5fb258ae34E.exit"

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !244
  unreachable

"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hf850ab5fb258ae34E.exit": ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.o:                                             ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17he0c26b5b2000e543E.exit"
  store i64 %.sroa.09.0.copyload10, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.6.0.copyload12, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.813.0.copyload15, ptr %.sroa.517.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hf850ab5fb258ae34E.exit"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17hb42be5c1079dba53E"(i8 noundef range(i8 9, 11) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 49, 63) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  store i8 %0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -9223372036854775807, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 3, ptr %i.f, align 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 3, ptr %.sroa.027.sroa.5.0..sroa_idx, align 4
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 3, ptr %.sroa.027.sroa.7.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.428.0..sroa_idx, align 4
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 3, ptr %.sroa.529.0..sroa_idx, align 2
  %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 3, ptr %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 3, ptr %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx30, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 3, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 3, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 3, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 3, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 3, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 3, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 3, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 3, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 3, ptr %.sroa.1331.0..sroa_idx, align 2
  %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 3, ptr %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 3, ptr %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 3, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 3, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 3, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 3, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 3, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 3, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 4, ptr %.sroa.19.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 247
  store i8 2, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store i8 0, ptr %i.i, align 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !269
  %i.j = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !269 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 256) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..error..ErrorInner$GT$17h94f2950e30a16bb5E"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.a) #30
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.j, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !270
  %i.n = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #32, !noalias !270 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #29
          to label %.noexc64 unwind label %bb.i

.noexc64:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false), !noalias !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.p = load i64, ptr %i.j, align 8, !range !19, !alias.scope !275, !noundef !9
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i.i.i = load i64, ptr %i.r, align 8, !range !17, !alias.scope !277, !noundef !9 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.s, label %bb.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.sink.split.i.i.i": ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val3.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !278, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !279
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.sink.split.i.i.i", %bb.g, %bb.f
  store i64 0, ptr %i.j, align 8, !alias.scope !272
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i, align 8, !alias.scope !280
end_hunk_0
begin_hunk_1_@_ZN12clap_builder6derive12format_error17he104f74b4b7bf874E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !319
  invoke void @_ZN12clap_builder5error7Message6format17hb89fb9483f86dae2E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %.thread23.i

.thread23.i:                                      ; preds = %bb.e, %bb.c, %bb.b
  %lpad.thr_comm25.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17h151030a91490a933E"(ptr nonnull align 8 %0) #30
          to label %.body unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.e = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17h90936317bbd4fdc8E"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.c)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %.val11.i = load i64, ptr %i.b, align 8, !range !21, !noalias !319, !noundef !9 ; 2 uses
  %switch.i = icmp sgt i64 %.val11.i, 0
  br i1 %switch.i, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12.i = load ptr, ptr %i.f, align 8, !noalias !319, !nonnull !9, !noundef !9
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %.val11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !320
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  %i.g = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17h90936317bbd4fdc8E"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.c)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.f
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !range !21, !noalias !319, !noundef !9 ; 2 uses
  %switch26.i = icmp sgt i64 %.val.i, 0
  br i1 %switch26.i, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val10.i = load ptr, ptr %i.h, align 8, !noalias !319, !nonnull !9, !noundef !9
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !321
  br label %.body

bb.l:                                             ; preds = %.thread23.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.thread23.i, %bb.j, %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.m ], [ %lpad.thr_comm25.i, %.thread23.i ], [ %lpad.thr_comm.split-lp.i, %bb.j ], [ %lpad.thr_comm.split-lp.i, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h8c8f13890019703aE"(ptr noalias noundef align 8 dereferenceable(712) %i.c) #30
          to label %.thread unwind label %bb.o

bb.n:                                             ; preds = %bb.h, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !319
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h8c8f13890019703aE"(ptr noalias noundef align 8 dereferenceable(712) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0

bb.o:                                             ; preds = %bb.p, %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

.thread:                                          ; preds = %.body, %bb.p
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.p ]
  resume { ptr, i32 } %.pn5

bb.p:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17h151030a91490a933E"(ptr %0) #30
          to label %.thread unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h94807a2b48cfa1f5E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef range(i64 4, 16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 3 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$12remove_entry17h9567be95efd75bfeE"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.e, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !19, !noundef !9
  %.not = icmp eq i64 %i.h, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !9, !align !15, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 -118783458028001939085095121587986885825, ptr %i.a, align 16
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.copyload = load i128, ptr %i.d, align 16
  %i.l = icmp eq i128 %.sroa.04.0.copyload, -118783458028001939085095121587986885825
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  call fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17he7441719bd5b15b2E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.c, align 8, !range !19, !alias.scope !324, !noundef !9
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h58c5fab422e6a3daE.exit", label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.c)
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h58c5fab422e6a3daE.exit"

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h58c5fab422e6a3daE.exit": ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 -118783458028001939085095121587986885825, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h58c5fab422e6a3daE.exit", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef align 8 dereferenceable(104) %i.f) #30
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN12clap_builder6parser7matches11arg_matches50unwrap_downcast_into$u7b$$u7b$reify.shim$u7d$$u7d$17hf9aecc9cac790bb9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !338
  call fastcc void @_ZN12clap_builder4util9any_value8AnyValue13downcast_into17h69f59c538d018e37E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1), !noalias !339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !341, !noalias !338, !noundef !9
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN12clap_builder6parser7matches11arg_matches20unwrap_downcast_into17hb6c8ed7630803744E.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !343
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 99, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29
          to label %bb.e unwind label %bb.c, !noalias !344

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !348, !noalias !342, !nonnull !9, !noundef !9
  %2 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !349
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.d, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i" unwind label %bb.f, !noalias !344

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !344
  unreachable

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d

_ZN12clap_builder6parser7matches11arg_matches20unwrap_downcast_into17hb6c8ed7630803744E.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !350, !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !338
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN12clap_builder7builder3arg3Arg12value_parser17h3e62c984065f5db8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(640) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !alias.scope !361 ; 3 uses
  %i.a = icmp eq i64 %.sroa.0.0.copyload, 5
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.c = load i64, ptr %i.b, align 8, !range !25, !alias.scope !362, !noundef !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 5
  br i1 %i.d, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %switch.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %switch.i.i.i, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !365 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !365, !nonnull !9, !align !11, !noundef !9 ; 5 uses
  %i.g = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !9, !noalias !365 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !365

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !17, !invariant.load !9, !noalias !365 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !18, !invariant.load !9, !noalias !365 ; 2 uses
  %i.l = icmp ult i64 %i.k, -9223372036854775807
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.k) #32, !noalias !365
  br label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit"

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !17, !invariant.load !9, !noalias !365 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !18, !invariant.load !9, !noalias !365 ; 2 uses
  %i.s = icmp ult i64 %i.r, -9223372036854775807
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.r) #32, !noalias !365
  br label %.body

.body:                                            ; preds = %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17h2559d2c873d1dd19E"(ptr noalias noundef align 8 dereferenceable(640) %1) #30
          to label %bb.j unwind label %bb.i

"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.g, %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(640) %1, i64 640, i1 false)
  ret void

bb.i:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN3std2rt10lang_start17hb834a53903e99f50E(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_ZN3std2rt19lang_start_internal17h6ba36b077a531782E(ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @33, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 2) i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hafc699f963fbed7cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.e = tail call fastcc noundef ptr @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha0dd9a58c300ef81E(ptr noundef nonnull %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$std..process..Termination$GT$6report17h91cbfeb8344fe7a2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN6anyhow5error60_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..Error$GT$3fmt17h917d9e1f1af60d41E", ptr %.sroa.45.0..sroa_idx.i, align 8
  store ptr @216, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.i, align 8
  invoke void @_ZN3std2io5stdio23attempt_print_to_stderr17h8a28c0d4c444e62fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hf449d51980abb73cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr34drop_in_place$LT$anyhow..Error$GT$17h4576ddea73882fc7E.exit.i" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hf449d51980abb73cE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$std..process..Termination$GT$6report17h91cbfeb8344fe7a2E.exit"

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

"_ZN4core3ptr34drop_in_place$LT$anyhow..Error$GT$17h4576ddea73882fc7E.exit.i": ; preds = %bb.c
  resume { ptr, i32 } %i.j

"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$std..process..Termination$GT$6report17h91cbfeb8344fe7a2E.exit": ; preds = %bb.a, %bb.d
  %.sroa.02.0.i = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.sroa.02.0.i
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha0dd9a58c300ef81E(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef ptr %0(), !inline_history !366
  tail call void asm sideeffect "", "~{memory}"() #32, !srcloc !367
  ret ptr %i.a
}

end_hunk_1
begin_hunk_2_@"_ZN4core3ptr106drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17h777afe067c177b75E":bb.a
bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfadfe26511feb554E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17he9919d5fa094ad35E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17he9919d5fa094ad35E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.k) #30
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !411
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr113drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17he8b43f962d1e91abE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr113drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17he8b43f962d1e91abE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfadfe26511feb554E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr113drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17he8b43f962d1e91abE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfadfe26511feb554E.exit"
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr113drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17he8b43f962d1e91abE.exit6"

"_ZN4core3ptr113drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17he8b43f962d1e91abE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfadfe26511feb554E.exit", %bb.g
  ret void

"_ZN4core3ptr113drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17he8b43f962d1e91abE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h9d5f95cd237f3255E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17hf5f94c7c5f2f63a2E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %.val.i = load i64, ptr %i.c, align 8, !range !17, !alias.scope !425, !noundef !9 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !424, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !426
  br label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE.exit"

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %.val.i1 = load i64, ptr %i.f, align 8, !range !17, !alias.scope !428, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %.val.i1, 0
  br i1 %i.g, label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE.exit3", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i2 = load ptr, ptr %i.h, align 8, !alias.scope !427, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2, i64 noundef %.val.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !429
  br label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE.exit3"

"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE.exit3": ; preds = %bb.d, %bb.e
  ret void

"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17hd1057664cef1a14cE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr118drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$semver..parse..Error$GT$$GT$$GT$17h5baa65c0efd32897E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17hf5f94c7c5f2f63a2E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr126drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$$GT$17h2dc65e3ef9c52ff3E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17hf5f94c7c5f2f63a2E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !17, !alias.scope !445, !noundef !9 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !445, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !445
  br label %"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %.val.i.i.i1 = load i64, ptr %i.f, align 8, !range !17, !alias.scope !449, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i1, 0
  br i1 %i.g, label %"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E.exit3", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i2 = load ptr, ptr %i.h, align 8, !alias.scope !449, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2, i64 noundef %.val.i.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !449
  br label %"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E.exit3"

"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E.exit3": ; preds = %bb.d, %bb.e
  ret void

"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr127drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$17hb73dc81ac585a165E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !9   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h98dca109e5b387f5E.exit", label %bb.b

"_ZN4core3ptr99drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h98dca109e5b387f5E.exit": ; preds = %bb.h, %"_ZN4core3ptr70drop_in_place$LT$$u5b$clap_builder..util..any_value..AnyValue$u5d$$GT$17h9b7682720a393fc6E.exit.i.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !470, !nonnull !9, !noundef !9 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.e, align 8, !alias.scope !470, !nonnull !9, !noundef !9 ; 2 uses
  %i.f = ptrtoint ptr %.val2.i.i to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5                   ; 3 uses
  %i.j = icmp eq ptr %.val2.i.i, %i.d
  br i1 %i.j, label %"_ZN4core3ptr70drop_in_place$LT$$u5b$clap_builder..util..any_value..AnyValue$u5d$$GT$17h9b7682720a393fc6E.exit.i.i", label %.lr.ph.i.i.i

.body.i.i:                                        ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i.i", %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !470, !noundef !9 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr193drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$clap_builder..util..any_value..AnyValue$C$alloc..alloc..Global$GT$$GT$17h6ab8d396267fbed5E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %.body.i.i
  %i.n = shl nuw i64 %i.l, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !470
  br label %"_ZN4core3ptr193drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$clap_builder..util..any_value..AnyValue$C$alloc..alloc..Global$GT$$GT$17h6ab8d396267fbed5E.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.b, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i.i"
  %.sroa.0.09.i.i.i = phi i64 [ %i.p, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.p = add nuw i64 %.sroa.0.09.i.i.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !474, !noalias !470, !nonnull !9, !noundef !9
  %1 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !475
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.d, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i.i" unwind label %bb.e, !noalias !470

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i
  %i.s = icmp eq i64 %i.p, %i.i
  br i1 %i.s, label %"_ZN4core3ptr70drop_in_place$LT$$u5b$clap_builder..util..any_value..AnyValue$u5d$$GT$17h9b7682720a393fc6E.exit.i.i", label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.p, %i.i
  br i1 %i.u, label %.body.i.i, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %bb.e, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i.i"
  %.sroa.0.110.i.i.i = phi i64 [ %i.w, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i.i" ], [ %i.p, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.0.110.i.i.i ; 2 uses
  %i.w = add i64 %.sroa.0.110.i.i.i, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !479, !noalias !470, !nonnull !9, !noundef !9
  %2 = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !480
  %i.y = icmp eq i64 %2, 1
  br i1 %i.y, label %bb.f, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i.i"

bb.f:                                             ; preds = %.lr.ph12.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i.i" unwind label %bb.g, !noalias !470

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i.i": ; preds = %bb.f, %.lr.ph12.i.i.i
  %i.z = icmp eq i64 %i.w, %i.i
  br i1 %i.z, label %.body.i.i, label %.lr.ph12.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !470
  unreachable

"_ZN4core3ptr70drop_in_place$LT$$u5b$clap_builder..util..any_value..AnyValue$u5d$$GT$17h9b7682720a393fc6E.exit.i.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i.i", %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !470, !noundef !9 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h98dca109e5b387f5E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$$u5b$clap_builder..util..any_value..AnyValue$u5d$$GT$17h9b7682720a393fc6E.exit.i.i"
  %i.ae = shl nuw i64 %i.ac, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !470
  br label %"_ZN4core3ptr99drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17h98dca109e5b387f5E.exit"

"_ZN4core3ptr193drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$clap_builder..util..any_value..AnyValue$C$alloc..alloc..Global$GT$$GT$17h6ab8d396267fbed5E.exit.i.i": ; preds = %bb.c, %.body.i.i
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h972c355a63252d1cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !501
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !501 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h66241f551b46f62dE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !501
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !501 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !502, !noalias !501
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !502, !noalias !501
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !502, !noalias !501
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !502, !noalias !501
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !502, !noalias !501
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !502, !noalias !501
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h66241f551b46f62dE.exit.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h66241f551b46f62dE.exit.i": ; preds = %bb.b, %bb.a
  %.sink23.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink23.i.i, ptr %i.b, align 8, !alias.scope !502, !noalias !501
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i, ptr %i.c, align 8, !alias.scope !502, !noalias !501
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %i.d, align 8, !alias.scope !502, !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbea10bac01e90365E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !501
  %i.e = load ptr, ptr %i.a, align 8, !noalias !503, !noundef !9 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h026fd43cd19bcf9eE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h66241f551b46f62dE.exit.i"
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h24da0ce1bf850e56E.exit.i.i.i", %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.w, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h24da0ce1bf850e56E.exit.i.i.i" ] ; 2 uses
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !503 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.23.0.copyload.i.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.23.0.copyload.i.i.i ; 3 uses
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !range !17, !alias.scope !504, !noalias !503, !noundef !9 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !503, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !505
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !506, !noalias !503, !nonnull !9, !noundef !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !506, !noalias !503, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.o = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i" ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.q = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !range !17, !alias.scope !508, !noalias !509, !noundef !9 ; 2 uses
  %i.r = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !507, !noalias !509, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !510
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.t = icmp eq i64 %i.q, %.val1.i.i.i.i.i.i.i
  br i1 %i.t, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i"
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !range !17, !alias.scope !506, !noalias !503, !noundef !9 ; 2 uses
  %i.u = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h24da0ce1bf850e56E.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i.i.i.i.i.i"
  %i.v = mul nuw i64 %.val2.i.i.i.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !509
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h24da0ce1bf850e56E.exit.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h24da0ce1bf850e56E.exit.i.i.i": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hbea10bac01e90365E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !501
  %i.w = load ptr, ptr %i.a, align 8, !noalias !503, !noundef !9 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h026fd43cd19bcf9eE.exit", label %bb.c

"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h026fd43cd19bcf9eE.exit": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h24da0ce1bf850e56E.exit.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h66241f551b46f62dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h01cd89530d10d61fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !525
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !525 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0d5afc2e0c5642beE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !525
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !525 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !526, !noalias !525
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !526, !noalias !525
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !526, !noalias !525
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !526, !noalias !525
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !526, !noalias !525
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !526, !noalias !525
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0d5afc2e0c5642beE.exit.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0d5afc2e0c5642beE.exit.i": ; preds = %bb.b, %bb.a
  %.sink23.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink23.i.i, ptr %i.b, align 8, !alias.scope !526, !noalias !525
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink23.i.i, ptr %i.c, align 8, !alias.scope !526, !noalias !525
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %i.d, align 8, !alias.scope !526, !noalias !525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !527
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h62c7cedf74613099E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !525
  %i.e = load ptr, ptr %i.a, align 8, !noalias !527, !noundef !9 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he52526d7278565b3E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0d5afc2e0c5642beE.exit.i"
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a3c8d88c3ba7acE.exit.i.i.i", %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.n, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h71a3c8d88c3ba7acE.exit.i.i.i" ] ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h8c8f13890019703aE":bb.a

bb.w:                                             ; preds = %.body.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3.i = load ptr, ptr %i.bd, align 8, !alias.scope !1179, !nonnull !9, !noundef !9
  %i.be = shl nuw i64 %.val2.i140, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1179
  br label %.body142

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg..Arg$GT$$GT$17ha30ac34db2e3b286E.exit.i": ; preds = %bb.v, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h647a94b7d9ec26eaE.exit.i.i"
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i141 = load i64, ptr %i.bf, align 8, !alias.scope !1179 ; 2 uses
  %i.bg = icmp eq i64 %.val.i141, 0
  br i1 %i.bg, label %"_ZN4core3ptr51drop_in_place$LT$clap_builder..mkeymap..MKeyMap$GT$17h165104ce37a6603cE.exit", label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg..Arg$GT$$GT$17ha30ac34db2e3b286E.exit.i"
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i = load ptr, ptr %i.bh, align 8, !alias.scope !1179, !nonnull !9, !noundef !9
  %i.bi = shl nuw i64 %.val.i141, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1179
  br label %"_ZN4core3ptr51drop_in_place$LT$clap_builder..mkeymap..MKeyMap$GT$17h165104ce37a6603cE.exit"

.body142:                                         ; preds = %.body.i, %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h468b17b1ef584b46E"(ptr noalias noundef align 8 dereferenceable(24) %i.bj) #30
          to label %.body unwind label %bb.ak

"_ZN4core3ptr51drop_in_place$LT$clap_builder..mkeymap..MKeyMap$GT$17h165104ce37a6603cE.exit": ; preds = %bb.x, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg..Arg$GT$$GT$17ha30ac34db2e3b286E.exit.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1183, !nonnull !9, !noundef !9 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1183, !noundef !9 ; 4 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h468b17b1ef584b46E.exit", label %.lr.ph155

bb.y:                                             ; preds = %.lr.ph155
  %i.bq = icmp eq i64 %i.bs, %i.bo
  br i1 %i.bq, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h468b17b1ef584b46E.exit", label %.lr.ph155

.lr.ph155:                                        ; preds = %"_ZN4core3ptr51drop_in_place$LT$clap_builder..mkeymap..MKeyMap$GT$17h165104ce37a6603cE.exit", %bb.y
  %.sroa.0.0.i.i154 = phi i64 [ %i.bs, %bb.y ], [ 0, %"_ZN4core3ptr51drop_in_place$LT$clap_builder..mkeymap..MKeyMap$GT$17h165104ce37a6603cE.exit" ] ; 2 uses
  %i.br = getelementptr inbounds nuw [712 x i8], ptr %i.bm, i64 %.sroa.0.0.i.i154
  %i.bs = add i64 %.sroa.0.0.i.i154, 1            ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h8c8f13890019703aE"(ptr noalias noundef align 8 dereferenceable(712) %i.br)
          to label %bb.y unwind label %bb.aa, !noalias !1183, !inline_history !1154

bb.z:                                             ; preds = %.lr.ph157
  %i.bt = add i64 %.sroa.0.1.i.i156, 1            ; 2 uses
  %i.bu = icmp eq i64 %i.bt, %i.bo
  br i1 %i.bu, label %.body121, label %.lr.ph157

bb.aa:                                            ; preds = %.lr.ph155
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = icmp eq i64 %i.bs, %i.bo
  br i1 %i.bw, label %.body121, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.aa, %bb.z
  %.sroa.0.1.i.i156 = phi i64 [ %i.bt, %bb.z ], [ %i.bs, %bb.aa ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [712 x i8], ptr %i.bm, i64 %.sroa.0.1.i.i156
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h8c8f13890019703aE"(ptr noalias noundef align 8 dereferenceable(712) %i.bx) #30
          to label %bb.z unwind label %bb.ab, !noalias !1183, !inline_history !1154

bb.ab:                                            ; preds = %.lr.ph157
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1183, !inline_history !1154
  unreachable

.body121:                                         ; preds = %bb.z, %bb.aa
  %.val2.i = load i64, ptr %i.bk, align 8, !range !17, !alias.scope !1184, !noundef !9 ; 2 uses
  %i.bz = icmp eq i64 %.val2.i, 0
  br i1 %i.bz, label %.body, label %bb.ac

bb.ac:                                            ; preds = %.body121
  %i.ca = mul nuw i64 %.val2.i, 712
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %.body

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h468b17b1ef584b46E.exit": ; preds = %bb.y, %"_ZN4core3ptr51drop_in_place$LT$clap_builder..mkeymap..MKeyMap$GT$17h165104ce37a6603cE.exit"
  %.val.i = load i64, ptr %i.bk, align 8, !range !17, !alias.scope !1184, !noundef !9 ; 2 uses
  %i.cb = icmp eq i64 %.val.i, 0
  br i1 %i.cb, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h468b17b1ef584b46E.exit"
  %i.cc = mul nuw i64 %.val.i, 712
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit"

.body:                                            ; preds = %bb.ac, %.body121, %.body142
  %.pn30 = phi { ptr, i32 } [ %i.at, %.body142 ], [ %i.bv, %.body121 ], [ %i.bv, %bb.ac ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17had1847760e6e9e1aE"(ptr noalias noundef align 8 dereferenceable(24) %i.cd) #30
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE"(ptr noalias noundef align 8 dereferenceable(24) %i.ce) #30
          to label %.body118 unwind label %bb.ak

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit": ; preds = %bb.ad, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h468b17b1ef584b46E.exit"
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17had1847760e6e9e1aE"(ptr noalias noundef align 8 dereferenceable(24) %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %i.ch = load i64, ptr %i.cg, align 8, !range !25, !alias.scope !1185, !noundef !9 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 5
  br i1 %i.ci, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit", label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %switch.i.i.i = icmp samesign ult i64 %i.ch, 4
  br i1 %switch.i.i.i, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !1188 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !1188, !nonnull !9, !align !11, !noundef !9 ; 5 uses
  %i.cl = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !9, !noalias !1188 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.cl(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ah unwind label %bb.ai, !noalias !1188

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !17, !invariant.load !9, !noalias !1188 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !18, !invariant.load !9, !noalias !1188 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp eq i64 %i.cn, 0
  br i1 %i.cr, label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) %i.cp) #32, !noalias !1188
  br label %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit"

bb.ai:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !range !17, !invariant.load !9, !noalias !1188 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !18, !invariant.load !9, !noalias !1188 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp eq i64 %i.cu, 0
  br i1 %i.cy, label %.body118, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) %i.cw) #32, !noalias !1188
  br label %.body118

.body118:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.ai, %.body
  %.pn34 = phi { ptr, i32 } [ %.pn30, %.body ], [ %i.cs, %bb.ai ], [ %i.cs, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i" ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$clap_builder..builder..ext..Extensions$GT$17hfe5f677960608e81E"(ptr noalias noundef align 8 dereferenceable(48) %i.cz) #30
          to label %bb.al unwind label %bb.ak

"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.ah, %bb.ae, %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit"
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %.val.i.i = load i64, ptr %i.da, align 8, !alias.scope !1191 ; 2 uses
  %i.db = icmp eq i64 %.val.i.i, 0
  br i1 %i.db, label %"_ZN4core3ptr59drop_in_place$LT$clap_builder..builder..ext..Extensions$GT$17hfe5f677960608e81E.exit", label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit"
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val1.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !1191, !nonnull !9, !noundef !9
  %i.dd = shl nuw i64 %.val.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1191
  br label %"_ZN4core3ptr59drop_in_place$LT$clap_builder..builder..ext..Extensions$GT$17hfe5f677960608e81E.exit"

"_ZN4core3ptr59drop_in_place$LT$clap_builder..builder..ext..Extensions$GT$17hfe5f677960608e81E.exit": ; preds = %"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE.exit", %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17he9919d5fa094ad35E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.de)
  ret void

bb.ak:                                            ; preds = %.body118, %.body, %.body142
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

bb.al:                                            ; preds = %.body118
  resume { ptr, i32 } %.pn34
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE"(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1198, !nonnull !9, !noundef !9
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !1198
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr113drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h4b3918298521cb3fE.exit"

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %"_ZN4core3ptr113drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h4b3918298521cb3fE.exit"

"_ZN4core3ptr113drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h4b3918298521cb3fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val9 = load i64, ptr %0, align 8              ; 2 uses
  %i.a = icmp eq i64 %.val9, 0
  br i1 %i.a, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val9, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit": ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5 = load i64, ptr %i.d, align 8            ; 2 uses
  %i.e = icmp eq i64 %.val5, 0
  br i1 %i.e, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6 = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9
  %i.g = shl nuw i64 %.val5, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12": ; preds = %bb.c, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.h, align 8             ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit14", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9
  %i.k = shl nuw i64 %.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit14"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit14": ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr64drop_in_place$LT$core..option..Option$LT$semver..Version$GT$$GT$17he9e320a912653ca0E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !9
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
          to label %"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr42drop_in_place$LT$semver..BuildMetadata$GT$17h4199605c4b41a4dcE.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

"_ZN4core3ptr42drop_in_place$LT$semver..BuildMetadata$GT$17h4199605c4b41a4dcE.exit.i": ; preds = %bb.d
  resume { ptr, i32 } %i.c

"_ZN4core3ptr36drop_in_place$LT$semver..Version$GT$17hc89b4231cb079ff1E.exit": ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !range !17, !alias.scope !1206, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1205, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1207
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h68d44c3fb4c72ec7E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit"
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h68d44c3fb4c72ec7E.exit6"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h68d44c3fb4c72ec7E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$cargo_metadata..Target$GT$$GT$17hcac4028680ca153eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hec47bab508c72a4aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr43drop_in_place$LT$cargo_metadata..Target$GT$17h63fa856fc70303faE.exit.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr43drop_in_place$LT$cargo_metadata..Target$GT$17h63fa856fc70303faE.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 13 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %.val.i.i = load i64, ptr %i.d, align 8, !range !17, !alias.scope !1239, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val6.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1238, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1240
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1242, !nonnull !9, !noundef !9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val1.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1242, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.k = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7f268153218b9b7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i", %"_ZN4core3ptr47drop_in_place$LT$cargo_metadata..TargetKind$GT$17h509f5eeb74ce9cf2E.exit.i.i.i.i.i"
  %.sroa.0.013.i.i.i.i.i = phi i64 [ %i.m, %"_ZN4core3ptr47drop_in_place$LT$cargo_metadata..TargetKind$GT$17h509f5eeb74ce9cf2E.exit.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i" ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.013.i.i.i.i.i ; 2 uses
  %i.m = add nuw i64 %.sroa.0.013.i.i.i.i.i, 1    ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.l, align 8, !range !1244, !alias.scope !1243, !noalias !1242, !noundef !9 ; 3 uses
  %switch1.i.i.i.i.i.i = icmp slt i64 %.val8.i.i.i.i.i, -9223372036854775797
  %i.n = icmp eq i64 %.val8.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = or i1 %switch1.i.i.i.i.i.i, %i.n
  br i1 %or.cond.i.i.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$cargo_metadata..TargetKind$GT$17h509f5eeb74ce9cf2E.exit.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1243, !noalias !1242, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1245
  br label %"_ZN4core3ptr47drop_in_place$LT$cargo_metadata..TargetKind$GT$17h509f5eeb74ce9cf2E.exit.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$cargo_metadata..TargetKind$GT$17h509f5eeb74ce9cf2E.exit.i.i.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.p = icmp eq i64 %i.m, %.val1.i.i.i
  br i1 %i.p, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7f268153218b9b7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7f268153218b9b7E.exit.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$cargo_metadata..TargetKind$GT$17h509f5eeb74ce9cf2E.exit.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i"
  %.val2.i.i.i = load i64, ptr %i.h, align 8, !range !17, !alias.scope !1242, !noundef !9 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.q, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$cargo_metadata..TargetKind$GT$$GT$17h622de7e32061923aE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf7f268153218b9b7E.exit.i.i.i"
  %i.r = mul nuw i64 %.val2.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1242
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$cargo_metadata..TargetKind$GT$$GT$17h622de7e32061923aE.exit.i.i"
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr81drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$17h2028026093edaa9fE":bb.a
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1460, !noalias !1459, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1462
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %i.g
  br i1 %i.m, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i", %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1459, !noundef !9 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83a710f8b1d2b2dfE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i"
  %i.q = load ptr, ptr %0, align 8, !alias.scope !1459, !nonnull !9, !noundef !9
  %i.r = mul nuw i64 %i.o, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1459
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83a710f8b1d2b2dfE.exit"

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83a710f8b1d2b2dfE.exit": ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h5ef12ab01efd7a8cE.exit.i", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hab39e7a3cdb03419E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !9
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4a7a0569579314dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$cargo_metadata..dependency..Dependency$GT$$GT$17h02797d6953409538E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !9 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a840f3d8b0ab076E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a840f3d8b0ab076E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [232 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$cargo_metadata..dependency..Dependency$GT$17h49a4f0567e8463d9E"(ptr noalias noundef readonly align 8 dereferenceable(232) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [232 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$cargo_metadata..dependency..Dependency$GT$17h49a4f0567e8463d9E"(ptr noalias noundef readonly align 8 dereferenceable(232) %i.k) #30
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1465
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$cargo_metadata..dependency..Dependency$GT$$GT$17h877c9715f05a8510E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 232
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$cargo_metadata..dependency..Dependency$GT$$GT$17h877c9715f05a8510E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a840f3d8b0ab076E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$cargo_metadata..dependency..Dependency$GT$$GT$17h877c9715f05a8510E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a840f3d8b0ab076E.exit"
  %i.p = mul nuw i64 %.val2, 232
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$cargo_metadata..dependency..Dependency$GT$$GT$17h877c9715f05a8510E.exit6"

"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$cargo_metadata..dependency..Dependency$GT$$GT$17h877c9715f05a8510E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9a840f3d8b0ab076E.exit", %bb.g
  ret void

"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$cargo_metadata..dependency..Dependency$GT$$GT$17h877c9715f05a8510E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..command..Command$GT$$GT$17h468b17b1ef584b46E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1469, !nonnull !9, !noundef !9 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1469, !noundef !9 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h939c0f32fb1b5ecfE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h939c0f32fb1b5ecfE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [712 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h8c8f13890019703aE"(ptr noalias noundef align 8 dereferenceable(712) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1468

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [712 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17h8c8f13890019703aE"(ptr noalias noundef align 8 dereferenceable(712) %i.m) #30
          to label %bb.c unwind label %bb.e, !inline_history !1468

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !inline_history !1468
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 712
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h939c0f32fb1b5ecfE.exit": ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit4", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h939c0f32fb1b5ecfE.exit"
  %i.r = mul nuw i64 %.val, 712
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit4"

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit4": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h939c0f32fb1b5ecfE.exit", %bb.g
  ret void

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..command..Command$GT$$GT$17hb92418777f408440E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17he9919d5fa094ad35E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !9 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.e, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !1487, !nonnull !9, !noundef !9
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !1488
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i" unwind label %bb.c

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.l, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !1492, !nonnull !9, !noundef !9
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1493
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = shl nuw i64 %.val4, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit": ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit"
  %i.t = shl nuw i64 %.val2, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit6"

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit", %bb.g
  ret void

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17had1847760e6e9e1aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 6 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  %.val9.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1500 ; 2 uses
  %i.f = icmp eq i64 %.val9.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val10.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1500, !nonnull !9, !noundef !9
  %i.h = shl nuw i64 %.val9.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1500
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val5.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1500 ; 2 uses
  %i.j = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val6.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1500, !nonnull !9, !noundef !9
  %i.l = shl nuw i64 %.val5.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1500
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i": ; preds = %bb.c, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i"
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !1500 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val2.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1500, !nonnull !9, !noundef !9
  %i.p = shl nuw i64 %.val.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1500
  br label %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i"

"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i": ; preds = %bb.d, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i"
  %i.q = icmp eq i64 %i.e, %.val1
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit": ; preds = %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !17, !noundef !9 ; 2 uses
  %i.r = icmp eq i64 %.val2, 0
  br i1 %i.r, label %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17hd1c1d99c4270d7fbE.exit6", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit"
  %i.s = mul nuw i64 %.val2, 96
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17hd1c1d99c4270d7fbE.exit6"

"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17hd1c1d99c4270d7fbE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit", %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb1cfc56a30439cdcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1509, !nonnull !9, !noundef !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !1509, !nonnull !9, !noundef !9 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.j, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.011.i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %.val8.i.i = load i64, ptr %i.i, align 8, !range !17, !alias.scope !1511, !noalias !1509, !noundef !9 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1510, !noalias !1509, !nonnull !9, !noundef !9
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1512
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %i.g
  br i1 %i.m, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i", %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1509, !noundef !9 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb970075e5f223e5dE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i"
  %i.q = load ptr, ptr %0, align 8, !alias.scope !1509, !nonnull !9, !noundef !9
  %i.r = mul nuw i64 %i.o, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1509
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb970075e5f223e5dE.exit"

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb970075e5f223e5dE.exit": ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h4a7088066e13b997E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1538, !noundef !9 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h4a355b1b9df0b638E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1540, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1540, !nonnull !9, !noundef !9 ; 3 uses
  %.val13.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1541
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i, 0
end_hunk_4
begin_hunk_5_@_ZN5xtask4main17hb2a19bbcbf99ae36E:bb.a

"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread.i.i": ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !2673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !2672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i), !noalias !2672
  br label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h98e206f96633c62bE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !2684
  %.sroa.020.0.copyload.i.i.i = load i64, ptr %i.cm, align 8, !noalias !2708 ; 2 uses
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2708 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !2684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !2679
  %i.rx = icmp eq i64 %.sroa.020.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.rx, label %bb.du, label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

bb.du:                                            ; preds = %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  %i.ry = ptrtoint ptr %.sroa.5.0.copyload.i.i.i to i64
  br label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i": ; preds = %bb.gh, %bb.gg, %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i", %bb.fy, %bb.ea, %bb.du, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i", %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread.i.i", %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread151.i.i"
  %.sroa.27.1.i = phi i8 [ %.sroa.765.089.i.i.i, %bb.fy ], [ undef, %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i" ], [ undef, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread151.i.i" ], [ %.sroa.27.2.i, %bb.ea ], [ undef, %bb.du ], [ undef, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i" ], [ undef, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread.i.i" ], [ undef, %bb.gg ], [ %.sroa.27.24.copyload.i, %bb.gh ] ; 3 uses
  %.sroa.24.1.i = phi i64 [ %.sroa.12.076.i.i.i, %bb.fy ], [ undef, %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i" ], [ 0, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread151.i.i" ], [ %.sroa.24.2.i, %bb.ea ], [ undef, %bb.du ], [ %.sroa.7.0.copyload.i.i.i, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i" ], [ 0, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread.i.i" ], [ undef, %bb.gg ], [ %.sroa.24.24.copyload.i, %bb.gh ] ; 9 uses
  %.sroa.19.1.i = phi ptr [ %.sroa.10.077.i.i.i, %bb.fy ], [ undef, %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i" ], [ inttoptr (i64 8 to ptr), %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread151.i.i" ], [ %.sroa.19.2.i, %bb.ea ], [ undef, %bb.du ], [ %.sroa.5.0.copyload.i.i.i, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i" ], [ inttoptr (i64 8 to ptr), %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread.i.i" ], [ undef, %bb.gg ], [ %i.xk, %bb.gh ] ; 14 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.7.081.i.i.i, %bb.fy ], [ %i.xb, %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i" ], [ 0, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread151.i.i" ], [ %i.so, %bb.ea ], [ %i.ry, %bb.du ], [ %.sroa.020.0.copyload.i.i.i, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i" ], [ 0, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread.i.i" ], [ %i.xl, %bb.gg ], [ %i.xh, %bb.gh ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ -9223372036854775806, %bb.fy ], [ -9223372036854775804, %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i" ], [ -9223372036854775808, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread151.i.i" ], [ %.sink.i.i, %bb.ea ], [ -9223372036854775804, %bb.du ], [ -9223372036854775808, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.i.i" ], [ -9223372036854775808, %"_ZN80_$LT$xtask..ListFeaturesArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hf939033ef6473f3aE.exit.thread.i.i" ], [ -9223372036854775804, %bb.gg ], [ -9223372036854775805, %bb.gh ] ; 4 uses
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..ArgMatches$GT$17hc0926233b3413cd1E"(ptr noalias noundef align 8 dereferenceable(56) %i.cz)
          to label %bb.gl unwind label %bb.gk, !noalias !2671

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i"
  %.val79.i.i = load ptr, ptr %i.pw, align 8, !noalias !2670, !nonnull !9, !noundef !9 ; 2 uses
  %i.rz = load i32, ptr %.val79.i.i, align 1
  %i.sa = xor i32 %i.rz, 1668179298
  %i.sb = getelementptr i8, ptr %.val79.i.i, i64 4
  %i.sc = load i8, ptr %i.sb, align 1
  %i.sd = zext i8 %i.sc to i32
  %i.se = xor i32 %i.sd, 104
  %i.sf = or i32 %i.sa, %i.se
  %i.sg = icmp ne i32 %i.sf, 0
  %i.sh = zext i1 %i.sg to i32
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %bb.dv, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.thread.i.i"

bb.dv:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.i.i"
  %i.sj = invoke noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17h10728f5cb85abf59E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.dw unwind label %bb.cq, !noalias !2671

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread.i.i": ; preds = %"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread_crit_edge.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i"
  %.val76.i.i = phi i64 [ %.val76.pre.i.i, %"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread_crit_edge.i.i" ], [ %.val80.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread.i.i" ] ; 2 uses
  %.not.i95.i.i = icmp eq i64 %.val76.i.i, 18
  br i1 %.not.i95.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.thread.i.i"

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.sj, label %"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread_crit_edge.i.i", label %bb.dx

"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread_crit_edge.i.i": ; preds = %bb.dw
  %.val76.pre.i.i = load i64, ptr %i.px, align 8, !noalias !2670
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread.i.i"

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !2670
  invoke void @"_ZN80_$LT$xtask..bench..BenchArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17h6ac122bede02a66fE"(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.cy, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cz)
          to label %bb.dy unwind label %bb.cq, !noalias !2671

bb.dy:                                            ; preds = %bb.dx
  %i.sk = load i64, ptr %i.cy, align 8, !range !21, !noalias !2670, !noundef !9 ; 2 uses
  %i.sl = icmp eq i64 %i.sk, -9223372036854775808
  %i.sm = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !noalias !2670
  br i1 %i.sl, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.19.16.copyload18.i = load ptr, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !2709
  %.sroa.24.16..sroa.653.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.sroa.24.16.copyload19.i = load i64, ptr %.sroa.24.16..sroa.653.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !2709
  %.sroa.27.16..sroa.653.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.sroa.27.16.copyload20.i = load i8, ptr %.sroa.27.16..sroa.653.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !2709
  %.sroa.28.16..sroa.653.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(223) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(223) %.sroa.28.16..sroa.653.0..sroa_idx.i.sroa_idx.i, i64 223, i1 false), !noalias !2709
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.27.2.i = phi i8 [ undef, %bb.dy ], [ %.sroa.27.16.copyload20.i, %bb.dz ]
  %.sroa.24.2.i = phi i64 [ undef, %bb.dy ], [ %.sroa.24.16.copyload19.i, %bb.dz ]
  %.sroa.19.2.i = phi ptr [ undef, %bb.dy ], [ %.sroa.19.16.copyload18.i, %bb.dz ]
  %.sink.i.i = phi i64 [ -9223372036854775804, %bb.dy ], [ %i.sk, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !2670
  %i.so = ptrtoint ptr %i.sn to i64
  br label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread.i.i"
  %.val75.i.i = load ptr, ptr %i.pw, align 8, !noalias !2670, !nonnull !9, !noundef !9 ; 2 uses
  %i.sp = load i128, ptr %.val75.i.i, align 1
  %i.sq = xor i128 %i.sp, 161441154497988900992415921174748226919
  %i.sr = getelementptr i8, ptr %.val75.i.i, i64 16
  %i.ss = load i16, ptr %i.sr, align 1
  %i.st = zext i16 %i.ss to i128
  %i.su = xor i128 %i.st, 25968
  %i.sv = or i128 %i.sq, %i.su
  %i.sw = icmp ne i128 %i.sv, 0
  %i.sx = zext i1 %i.sw to i32
  %i.sy = icmp eq i32 %i.sx, 0
  br i1 %i.sy, label %bb.eb, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.thread.i.i"

bb.eb:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.i.i"
  %i.sz = invoke noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17h10728f5cb85abf59E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.ec unwind label %bb.cq, !noalias !2671

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.thread.i.i": ; preds = %.thread-pre-split157_crit_edge.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread.i.i"
  %.val72.i.i = phi i64 [ %.val72.pr.pre.i.i, %.thread-pre-split157_crit_edge.i.i ], [ %.val76.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.thread.i.i" ]
  %.not.i99.i.i = icmp eq i64 %.val72.i.i, 4
  br i1 %.not.i99.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.thread.i.i"

bb.ec:                                            ; preds = %bb.eb
  br i1 %i.sz, label %.thread-pre-split157_crit_edge.i.i, label %bb.ed

.thread-pre-split157_crit_edge.i.i:               ; preds = %bb.ec
  %.val72.pr.pre.i.i = load i64, ptr %i.px, align 8, !noalias !2670
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.thread.i.i"

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !2710
  invoke fastcc void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h94807a2b48cfa1f5E(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 4)
          to label %.noexc111.i.i unwind label %bb.cq, !noalias !2671

.noexc111.i.i:                                    ; preds = %bb.ed
  %i.ta = load i64, ptr %i.ce, align 8, !range !31, !noalias !2711, !noundef !9 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  switch i64 %i.ta, label %bb.ee [
    i64 3, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i
    i64 2, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i
  ]

bb.ee:                                            ; preds = %.noexc111.i.i
  store i64 %i.ta, ptr %i.cd, align 8, !noalias !2711
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx2.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.tb, i64 96, i1 false), !noalias !2711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !2711
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.cc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.cd)
          to label %.noexc112.i.i unwind label %bb.cq, !noalias !2671

.noexc112.i.i:                                    ; preds = %bb.ee
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8dca9623cfa215a3E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.cb, ptr noalias noundef align 8 dereferenceable(96) %i.cc)
          to label %bb.eg unwind label %bb.ef, !noalias !2712

bb.ef:                                            ; preds = %bb.eh, %.noexc112.i.i
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i10.i

.body.i.i.i10.i:                                  ; preds = %bb.em, %bb.el, %bb.ef
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.tc, %bb.ef ], [ %i.tf, %bb.em ], [ %i.tf, %bb.el ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h49654e04aa77ac5aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.cc)
          to label %.body.i.i unwind label %bb.eq, !noalias !2712

bb.eg:                                            ; preds = %.noexc112.i.i
  %i.td = load ptr, ptr %i.cb, align 8, !noalias !2711, !noundef !9
  %.not9.i.i.i.i = icmp eq ptr %i.td, null
  br i1 %.not9.i.i.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !2711
  invoke fastcc void @_ZN12clap_builder4util9any_value8AnyValue13downcast_into17h69f59c538d018e37E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ca, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.cb)
          to label %bb.ej unwind label %bb.ef, !noalias !2712

bb.ei:                                            ; preds = %bb.ep, %bb.eg
  %.sroa.5.i.sroa.0.0.i.i.i = phi ptr [ undef, %bb.eg ], [ %.sroa.5.i.sroa.0.0.copyload.i.i.i, %bb.ep ]
  %.sroa.5.i.sroa.4.0.i.i.i = phi i64 [ undef, %bb.eg ], [ %.sroa.5.i.sroa.4.0.copyload.i.i.i, %bb.ep ]
  %.sroa.03.0.i.i.i.i = phi i64 [ -9223372036854775808, %bb.eg ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ep ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h49654e04aa77ac5aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.cc)
          to label %.noexc113.i.i unwind label %bb.cq, !noalias !2671

.noexc113.i.i:                                    ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !2711
  br label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  %i.te = load ptr, ptr %i.ca, align 8, !alias.scope !2714, !noalias !2711, !noundef !9
  %.not.i.i.i.i11.i = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i11.i, label %bb.ep, label %bb.ek, !prof !16

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !2715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !noalias !2716
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 99, ptr noundef nonnull align 1 %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #29
          to label %bb.en unwind label %bb.el, !noalias !2717

bb.el:                                            ; preds = %bb.ek
  %i.tf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  %i.tg = load ptr, ptr %i.bz, align 8, !alias.scope !2721, !noalias !2715, !nonnull !9, !noundef !9
  %0 = atomicrmw sub ptr %i.tg, i64 1 release, align 8, !noalias !2722
  %i.th = icmp eq i64 %0, 1
  br i1 %i.th, label %bb.em, label %.body.i.i.i10.i

bb.em:                                            ; preds = %bb.el
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %.body.i.i.i10.i unwind label %bb.eo, !noalias !2717

bb.en:                                            ; preds = %bb.ek
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2717
  unreachable

bb.ep:                                            ; preds = %bb.ej
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !2723, !noalias !2711
  %.sroa.4.0..sroa_idx.i.i110.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.5.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i110.i.i, align 8, !noalias !2711
  %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.5.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !2711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !2711
  br label %bb.ei

bb.eq:                                            ; preds = %.body.i.i.i10.i
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2712
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i: ; preds = %.noexc113.i.i, %.noexc111.i.i
  %.sroa.12.0.ph.i.i.i = phi i64 [ undef, %.noexc111.i.i ], [ %.sroa.5.i.sroa.4.0.i.i.i, %.noexc113.i.i ]
  %.sroa.10.0.ph.i.i.i = phi ptr [ undef, %.noexc111.i.i ], [ %.sroa.5.i.sroa.0.0.i.i.i, %.noexc113.i.i ]
  %.sroa.7.0.ph.i.i.i = phi i64 [ -9223372036854775808, %.noexc111.i.i ], [ %.sroa.03.0.i.i.i.i, %.noexc113.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2724
  br label %_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i: ; preds = %.noexc111.i.i
  %.sroa.054.0.copyload.i.i.i = load i64, ptr %i.tb, align 8, !noalias !2725 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.7.0.copyload.i107.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !2725 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.10.0.copyload.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !2725 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.tl = load <2 x i64>, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !2725
  %.sroa.12.0.copyload.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !2725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !2710
  store ptr @146, ptr %i.by, align 8, !noalias !2726
  %i.tm = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 4, ptr %i.tm, align 8, !noalias !2726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2726
  %.not.i.i.i9.i = icmp eq i64 %.sroa.054.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i9.i, label %_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i, label %bb.er, !prof !2727

bb.er:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i
  store i64 %.sroa.054.0.copyload.i.i.i, ptr %i.bx, align 8, !noalias !2728
  %.sroa.7.0..sroa_idx56.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.sroa.7.0.copyload.i107.i.i, ptr %.sroa.7.0..sroa_idx56.i.i.i, align 8, !noalias !2728
  %.sroa.10.0..sroa_idx58.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.10.0.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx58.i.i.i, align 8, !noalias !2728
  %.sroa.12.0..sroa_idx60.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store <2 x i64> %i.tl, ptr %.sroa.12.0..sroa_idx60.i.i.i, align 8, !noalias !2728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !2726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !2726
  store ptr %i.by, ptr %i.bv, align 8, !noalias !2726
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.er, %bb.cx
  %.sink226.i.sroa.phi.i = phi ptr [ %.sink226.i.sroa.gep.i, %bb.cx ], [ %.sink226.i.sroa.gep31.i, %bb.er ]
  %.sink226.i.sroa.phi32.i = phi ptr [ %.sink226.i.sroa.gep33.i, %bb.cx ], [ %.sink226.i.sroa.gep34.i, %bb.er ]
  %.sink226.i.sroa.phi35.i = phi ptr [ %.sink226.i.sroa.gep36.i, %bb.cx ], [ %.sink226.i.sroa.gep37.i, %bb.er ]
  %.sink226.i.i = phi ptr [ %i.co, %bb.cx ], [ %i.bv, %bb.er ]
  %.sink223.i.i = phi ptr [ %i.cq, %bb.cx ], [ %i.bx, %bb.er ]
  %.sink221.i.sroa.phi.i = phi ptr [ %.sink221.i.sroa.gep.i, %bb.cx ], [ %.sink221.i.sroa.gep21.i, %bb.er ]
  %.sink221.i.sroa.phi22.i = phi ptr [ %.sink221.i.sroa.gep23.i, %bb.cx ], [ %.sink221.i.sroa.gep24.i, %bb.er ]
  %.sink221.i.sroa.phi25.i = phi ptr [ %.sink221.i.sroa.gep26.i, %bb.cx ], [ %.sink221.i.sroa.gep27.i, %bb.er ]
  %.sink221.i.sroa.phi28.i = phi ptr [ %.sink221.i.sroa.gep29.i, %bb.cx ], [ %.sink221.i.sroa.gep30.i, %bb.er ]
  %.sink221.i.i = phi ptr [ %i.cp, %bb.cx ], [ %i.bw, %bb.er ] ; 2 uses
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h059cc771bb24094dE", ptr %.sink226.i.sroa.phi.i, align 8, !noalias !2670
  store ptr %.sink223.i.i, ptr %.sink226.i.sroa.phi32.i, align 8, !noalias !2670
  store ptr @"_ZN80_$LT$clap_builder..parser..error..MatchesError$u20$as$u20$core..fmt..Display$GT$3fmt17ha5c5d701dae1d4c8E", ptr %.sink226.i.sroa.phi35.i, align 8, !noalias !2670
  store ptr @18, ptr %.sink221.i.i, align 8, !noalias !2670
  store i64 2, ptr %.sink221.i.sroa.phi.i, align 8, !noalias !2670
  store ptr null, ptr %.sink221.i.sroa.phi22.i, align 8, !noalias !2670
  store ptr %.sink226.i.i, ptr %.sink221.i.sroa.phi25.i, align 8, !noalias !2670
  store i64 2, ptr %.sink221.i.sroa.phi28.i, align 8, !noalias !2670
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink221.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29
          to label %.cont.i.i unwind label %bb.cq, !noalias !2671

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i: ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i
  %.sroa.7.081.i.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i ], [ %.sroa.7.0.copyload.i107.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i ] ; 6 uses
  %.sroa.10.077.i.i.i = phi ptr [ %.sroa.10.0.ph.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i ], [ %.sroa.10.0.copyload.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i ] ; 5 uses
  %.sroa.12.076.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.thread.i.i.i ], [ %.sroa.12.0.copyload.i.i.i, %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h774e5be826b4ec35E.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !2726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !2710
  %.not.i103.i.i = icmp eq i64 %.sroa.7.081.i.i.i, -9223372036854775808
  br i1 %.not.i103.i.i, label %bb.ft, label %bb.es

bb.es:                                            ; preds = %_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1166.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !2729
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  %i.tn = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !alias.scope !2730, !noalias !2731, !nonnull !9, !noundef !9 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !2730, !noalias !2731, !noundef !9 ; 7 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.tq, 4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 %.idx.i.i.i
  %i.ts = icmp eq i64 %i.tq, 0
  br i1 %i.ts, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.es, %.backedge.i.i.i.i
  %i.tt = phi ptr [ %i.tv, %.backedge.i.i.i.i ], [ %i.to, %bb.es ] ; 3 uses
  %i.tu = phi i64 [ %i.uh, %.backedge.i.i.i.i ], [ 0, %bb.es ] ; 7 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 16 ; 2 uses
  %i.tw = getelementptr i8, ptr %i.tt, i64 8
  %.val9.i.i.i.i = load i64, ptr %i.tw, align 8, !noalias !2732, !noundef !9
  %.not.i.i.i.i.i.i128.i.i = icmp eq i64 %.val9.i.i.i.i, 12
  br i1 %.not.i.i.i.i.i.i128.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i", label %.backedge.i.i.i.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %.val8.i.i.i.i = load ptr, ptr %i.tt, align 8, !noalias !2732, !nonnull !9, !align !15, !noundef !9 ; 2 uses
  %i.tx = load i64, ptr %.val8.i.i.i.i, align 1
  %i.ty = xor i64 %i.tx, 7310575239085057383
  %i.tz = getelementptr i8, ptr %.val8.i.i.i.i, i64 8
  %i.ua = load i32, ptr %i.tz, align 1
  %i.ub = zext i32 %i.ua to i64
  %i.uc = xor i64 %i.ub, 2003136095
  %i.ud = or i64 %i.ty, %i.uc
  %i.ue = icmp ne i64 %i.ud, 0
  %i.uf = zext i1 %i.ue to i32
  %bcmp.i.fr.i.i.i.i.i.i.i = freeze i32 %i.uf
  %i.ug = icmp eq i32 %bcmp.i.fr.i.i.i.i.i.i.i, 0
  br i1 %i.ug, label %bb.et, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i
  %i.uh = add nuw nsw i64 %i.tu, 1
  %i.ui = icmp eq ptr %i.tv, %i.tr
  br i1 %i.ui, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

bb.et:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2733), !noalias !2734
  %i.uj = icmp ult i64 %i.tq, 576460752303423488
  call void @llvm.assume(i1 %i.uj), !noalias !2734
  %.not.i.i129.i.i = icmp samesign ult i64 %i.tu, %i.tq
  br i1 %.not.i.i129.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i", label %.invoke227.i.i, !prof !16

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i": ; preds = %bb.et
  %i.uk = getelementptr inbounds nuw [16 x i8], ptr %i.to, i64 %i.tu ; 4 uses
  %i.ul = load ptr, ptr %i.uk, align 8, !noalias !2735, !nonnull !9, !align !15, !noundef !9
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.un = load i64, ptr %i.um, align 8, !noalias !2735, !noundef !9
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.up = xor i64 %i.tu, -1                       ; 2 uses
  %i.uq = add nsw i64 %i.tq, %i.up
  %i.ur = shl nuw nsw i64 %i.uq, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uk, ptr nonnull align 8 %i.uo, i64 %i.ur, i1 false), !noalias !2735
  %i.us = add nsw i64 %i.tq, -1
  store i64 %i.us, ptr %i.tp, align 8, !alias.scope !2736, !noalias !2731
  call void @llvm.experimental.noalias.scope.decl(metadata !2737), !noalias !2734
  %i.ut = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 2 uses
  %i.uu = load i64, ptr %i.ut, align 8, !alias.scope !2738, !noalias !2731, !noundef !9 ; 5 uses
  %i.uv = icmp ult i64 %i.uu, 88686269585142076
  call void @llvm.assume(i1 %i.uv), !noalias !2734
  %.not.i10.i.i.i = icmp samesign ult i64 %i.tu, %i.uu
  br i1 %.not.i10.i.i.i, label %.noexc.i.i.i, label %.invoke227.i.i, !prof !16

.invoke227.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i", %bb.et
  %i.uw = phi i64 [ %i.tq, %bb.et ], [ %i.uu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i" ]
  %i.ux = phi ptr [ @5, %bb.et ], [ @6, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i" ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.tu, i64 noundef %i.uw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ux) #29
          to label %.cont228.i.i unwind label %bb.fu, !noalias !2671

.cont228.i.i:                                     ; preds = %.invoke227.i.i
  unreachable

.noexc.i.i.i:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hf1e330be9de66299E.exit.i.i.i"
  %i.uy = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.uz = load ptr, ptr %i.uy, align 8, !alias.scope !2738, !noalias !2731, !nonnull !9, !noundef !9
  %i.va = getelementptr inbounds nuw [104 x i8], ptr %i.uz, i64 %i.tu ; 4 uses
  %.sroa.7141.16.copyload142.i.i = load i64, ptr %i.va, align 8, !noalias !2739 ; 4 uses
  %.sroa.11.16..sroa_idx143.i.i = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx143.i.i, i64 96, i1 false), !noalias !2739
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 104
  %i.vc = add nsw i64 %i.uu, %i.up
  %i.vd = mul nuw nsw i64 %i.vc, 104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.va, ptr nonnull align 8 %i.vb, i64 %i.vd, i1 false), !noalias !2740
  %i.ve = add nsw i64 %i.uu, -1
  store i64 %i.ve, ptr %i.ut, align 8, !alias.scope !2738, !noalias !2731
  %.not.i.i38.i.i.i = icmp eq i64 %.sroa.7141.16.copyload142.i.i, 2
  br i1 %.not.i.i38.i.i.i, label %.thread.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !2741
  store i64 %.sroa.7141.16.copyload142.i.i, ptr %i.br, align 8, !noalias !2741
  %.sroa.11.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.i.i, i64 96, i1 false), !noalias !2741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2741
  store i128 -15607121060179142519861403081325339266, ptr %i.bn, align 16, !noalias !2741
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.bn)
          to label %bb.ev unwind label %bb.ey, !noalias !2742

.thread.i.i.i.i:                                  ; preds = %.backedge.i.i.i.i, %.noexc.i.i.i, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2729
  br label %.thread.i.i.i

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2741
  %.sroa.04.0.copyload.i.i.i.i.i = load i128, ptr %i.bq, align 16, !noalias !2741 ; 2 uses
  %i.vf = icmp eq i128 %.sroa.04.0.copyload.i.i.i.i.i, -15607121060179142519861403081325339266
  %i.vg = trunc i128 %.sroa.04.0.copyload.i.i.i.i.i to i8
  br i1 %i.vf, label %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h496dd934298313bfE.exit.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !2741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !2741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, ptr noundef nonnull align 8 dereferenceable(104) %i.br, i64 104, i1 false), !noalias !2741
  invoke fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17he7441719bd5b15b2E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ul, i64 noundef %i.un, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.bo)
          to label %.noexc44.i.i.i unwind label %bb.fu, !noalias !2743

.noexc44.i.i.i:                                   ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2741
  %i.vh = load i64, ptr %i.bp, align 8, !range !19, !alias.scope !2744, !noalias !2741, !noundef !9
  %i.vi = icmp eq i64 %i.vh, 2
  br i1 %i.vi, label %.thread90.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc44.i.i.i
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.bp)
          to label %.thread90.i.i.i unwind label %bb.fu, !noalias !2743

.thread90.i.i.i:                                  ; preds = %bb.ex, %.noexc44.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !2741
  %.sroa.10.i.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.0..sroa_idx.i.i.i, i64 15, i1 false), !noalias !2729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !2741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1166.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, i64 15, i1 false), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2710
  store ptr @147, ptr %i.bi, align 8, !noalias !2746
  %i.vj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 12, ptr %i.vj, align 8, !noalias !2746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2746
  br label %bb.fx

bb.ey:                                            ; preds = %bb.eu
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h6b9b9f8ff9486e1dE"(ptr noalias noundef align 8 dereferenceable(104) %i.br) #30
          to label %.body.i.i.i unwind label %bb.ez, !noalias !2742

bb.ez:                                            ; preds = %bb.ey
  %i.vk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2742
  unreachable

_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h496dd934298313bfE.exit.i.i.i.i: ; preds = %bb.ev
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.11.16..sroa_idx.i.i, align 8, !noalias !2747 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.10.i.sroa.0.0.copyload68.i.i.i = load i8, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !2729 ; 3 uses
  %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.0..sroa.10.0..sroa_idx.i.sroa_idx.i.i.i, i64 15, i1 false), !noalias !2729
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.11.0.copyload.i.i.i.i = load i128, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !2747 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.0..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !2729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !2741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2729
  %cond.i.i = icmp eq i64 %.sroa.7141.16.copyload142.i.i, 3
  br i1 %cond.i.i, label %bb.fw, label %bb.fa

bb.fa:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h496dd934298313bfE.exit.i.i.i.i
  store i64 %.sroa.7141.16.copyload142.i.i, ptr %i.bu, align 8, !noalias !2729
  %.sroa.3.0..sroa_idx2.i40.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx2.i40.i.i.i, align 8, !noalias !2729
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i8 %.sroa.10.i.sroa.0.0.copyload68.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !2729
  %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.0..sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, i64 15, i1 false), !noalias !2729
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i128 %.sroa.11.0.copyload.i.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !2729
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.i.i.i.i, i64 56, i1 false), !noalias !2729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2729
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.bu)
          to label %.noexc46.i.i.i unwind label %bb.fu, !noalias !2743

.noexc46.i.i.i:                                   ; preds = %bb.fa
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8dca9623cfa215a3E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bs, ptr noalias noundef align 8 dereferenceable(96) %i.bt)
          to label %bb.fc unwind label %bb.fb, !noalias !2748

bb.fb:                                            ; preds = %bb.fl, %.noexc46.i.i.i
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i41.i.i.i

.body.i41.i.i.i:                                  ; preds = %bb.fp, %bb.fo, %bb.ff, %bb.fe, %bb.fb
  %eh.lpad-body.i42.i.i.i = phi { ptr, i32 } [ %i.vw, %bb.fe ], [ %i.vl, %bb.fb ], [ %i.vw, %bb.ff ], [ %i.wl, %bb.fp ], [ %i.wl, %bb.fo ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h49654e04aa77ac5aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bt)
          to label %.body.i.i.i unwind label %bb.fs, !noalias !2748

bb.fc:                                            ; preds = %.noexc46.i.i.i
  %i.vm = load ptr, ptr %i.bs, align 8, !noalias !2729, !noundef !9 ; 13 uses
  %.not5.i.i.i.i = icmp eq ptr %i.vm, null
  br i1 %.not5.i.i.i.i, label %bb.fm, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %.sroa.25.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.25.0.copyload.i.i.i.i = load ptr, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !noalias !2729, !nonnull !9, !noundef !9 ; 4 uses
  %.sroa.36.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !2749)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2750
  store ptr %i.vm, ptr %i.bm, align 8, !noalias !2751
  %i.vn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.25.0.copyload.i.i.i.i, ptr %i.vn, align 8, !noalias !2751
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i.i, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !range !18, !invariant.load !9, !alias.scope !2749, !noalias !2752
  %i.vq = add i64 %i.vp, -1
  %i.vr = and i64 %i.vq, -16
  %i.vs = getelementptr i8, ptr %i.vm, i64 %i.vr
  %i.vt = getelementptr i8, ptr %i.vs, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !2751
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i.i.i.i, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !invariant.load !9, !alias.scope !2749, !noalias !2752, !nonnull !9
  invoke void %i.vv(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bl, ptr noundef align 1 %i.vt)
          to label %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hff302ce97e23ceb5E.exit.i.i.i.i.i" unwind label %bb.fe, !noalias !2753

bb.fe:                                            ; preds = %bb.fd
  %i.vw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %1 = atomicrmw sub ptr %i.vm, i64 1 release, align 8, !noalias !2754
  %i.vx = icmp eq i64 %1, 1
  br i1 %i.vx, label %bb.ff, label %.body.i41.i.i.i

bb.ff:                                            ; preds = %bb.fe
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.body.i41.i.i.i unwind label %bb.fg, !noalias !2753

bb.fg:                                            ; preds = %bb.ff
  %i.vy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2753
  unreachable

"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hff302ce97e23ceb5E.exit.i.i.i.i.i": ; preds = %bb.fd
  %i.vz = load i128, ptr %i.bl, align 16, !noalias !2751, !noundef !9
  %i.wa = icmp eq i128 %i.vz, -15607121060179142519861403081325339266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2750
  br i1 %i.wa, label %bb.fh, label %bb.fn

bb.fh:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hff302ce97e23ceb5E.exit.i.i.i.i.i"
  %i.wb = cmpxchg ptr %i.vm, i64 1, i64 0 monotonic monotonic, align 8, !noalias !2755
  %i.wc = extractvalue { i64, i1 } %i.wb, 1
  br i1 %i.wc, label %bb.fi, label %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hc4dc1d60b9a60547E.exit.i.i.i.i.i"

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.we = load i8, ptr %i.wd, align 8, !range !26, !noalias !2755, !noundef !9 ; 3 uses
  %i.wf = icmp eq ptr %i.vm, inttoptr (i64 -1 to ptr)
  br i1 %i.wf, label %bb.fm, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %2 = atomicrmw sub ptr %i.wg, i64 1 release, align 8, !noalias !2755
  %i.wh = icmp eq i64 %2, 1
  br i1 %i.wh, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  fence acquire
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vm, i64 noundef 24, i64 noundef 8) #32, !noalias !2755
  br label %bb.fm

"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hc4dc1d60b9a60547E.exit.i.i.i.i.i": ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2750
  store ptr %i.vm, ptr %i.bk, align 8, !noalias !2750
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.wj = load i8, ptr %i.wi, align 1, !range !26, !alias.scope !2756, !noalias !2752, !noundef !9
  %3 = atomicrmw sub ptr %i.vm, i64 1 release, align 8, !noalias !2757
  %i.wk = icmp eq i64 %3, 1
  br i1 %i.wk, label %bb.fl, label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hba22220ef1227f85E.exit.i.i.i.i.i"

bb.fl:                                            ; preds = %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hc4dc1d60b9a60547E.exit.i.i.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17haeee4e7d29656440E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hba22220ef1227f85E.exit.i.i.i.i.i" unwind label %bb.fb, !noalias !2748

"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hba22220ef1227f85E.exit.i.i.i.i.i": ; preds = %bb.fl, %"_ZN5alloc4sync16Arc$LT$T$C$A$GT$10try_unwrap17hc4dc1d60b9a60547E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2750
  br label %bb.fm

bb.fm:                                            ; preds = %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hba22220ef1227f85E.exit.i.i.i.i.i", %bb.fk, %bb.fj, %bb.fi, %bb.fc
  %.sroa.03.0.i43.i.i.i = phi i8 [ 2, %bb.fc ], [ %i.wj, %"_ZN12clap_builder4util9any_value8AnyValue13downcast_into28_$u7b$$u7b$closure$u7d$$u7d$17hba22220ef1227f85E.exit.i.i.i.i.i" ], [ %i.we, %bb.fi ], [ %i.we, %bb.fk ], [ %i.we, %bb.fj ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h49654e04aa77ac5aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bt)
          to label %.noexc47.i.i.i unwind label %bb.fu, !noalias !2743

.noexc47.i.i.i:                                   ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2729
  br label %.thread.i.i.i

bb.fn:                                            ; preds = %"_ZN5alloc4sync83Arc$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$C$A$GT$8downcast17hff302ce97e23ceb5E.exit.i.i.i.i.i"
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !2729
  store ptr %i.vm, ptr %i.bj, align 8, !noalias !2729
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %.sroa.25.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2729
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 99, ptr noundef nonnull align 1 %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #29
          to label %bb.fq unwind label %bb.fo, !noalias !2759

bb.fo:                                            ; preds = %bb.fn
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  %i.wm = load ptr, ptr %i.bj, align 8, !alias.scope !2763, !noalias !2758, !nonnull !9, !noundef !9
  %4 = atomicrmw sub ptr %i.wm, i64 1 release, align 8, !noalias !2764
  %i.wn = icmp eq i64 %4, 1
  br i1 %i.wn, label %bb.fp, label %.body.i41.i.i.i

bb.fp:                                            ; preds = %bb.fo
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %.body.i41.i.i.i unwind label %bb.fr, !noalias !2759

bb.fq:                                            ; preds = %bb.fn
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.wo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2759
  unreachable

bb.fs:                                            ; preds = %.body.i41.i.i.i
  %i.wp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2748
  unreachable

bb.ft:                                            ; preds = %_ZN12clap_builder6parser5error12MatchesError6unwrap17h2538d813e74ad56aE.exit.i.i.i
  %i.wq = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17hb42be5c1079dba53E"(i8 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 54)
          to label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i" unwind label %bb.cq, !noalias !2671

bb.fu:                                            ; preds = %bb.fz, %bb.fx, %bb.fm, %bb.fa, %bb.ex, %bb.ew, %.invoke227.i.i
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.fu, %.body.i41.i.i.i, %bb.ey
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.wr, %bb.fu ], [ %lpad.thr_comm.split-lp.i.i.i.i.i, %bb.ey ], [ %eh.lpad-body.i42.i.i.i, %.body.i41.i.i.i ] ; 2 uses
  %i.ws = icmp eq i64 %.sroa.7.081.i.i.i, 0
  br i1 %i.ws, label %.body.i.i, label %bb.fv

bb.fv:                                            ; preds = %.body.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.077.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.077.i.i.i, i64 noundef %.sroa.7.081.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2765
  br label %.body.i.i

.thread.i.i.i:                                    ; preds = %.noexc47.i.i.i, %.thread.i.i.i.i
  %.sroa.765.0.ph.i.i.i = phi i8 [ 2, %.thread.i.i.i.i ], [ %.sroa.03.0.i43.i.i.i, %.noexc47.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2766
  br label %bb.fy

bb.fw:                                            ; preds = %_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17h496dd934298313bfE.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1166.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.sroa.6.i.i.i, i64 15, i1 false), !noalias !2745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2710
  store ptr @147, ptr %i.bi, align 8, !noalias !2767
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 12, ptr %i.wt, align 8, !noalias !2767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2767
  %.not.i48.i.i.i = icmp eq i64 %.sroa.7.0.copyload.i.i.i.i, 2
  br i1 %.not.i48.i.i.i, label %bb.fy, label %bb.fx, !prof !13

bb.fx:                                            ; preds = %bb.fw, %.thread90.i.i.i
  %.sroa.11.018.i97.i.i.i = phi i128 [ -15607121060179142519861403081325339266, %.thread90.i.i.i ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.fw ]
  %.sroa.7.019.i96.i.i.i = phi i64 [ 0, %.thread90.i.i.i ], [ %.sroa.7.0.copyload.i.i.i.i, %bb.fw ]
  %.sroa.10.i.sroa.0.095.i.i.i = phi i8 [ %i.vg, %.thread90.i.i.i ], [ %.sroa.10.i.sroa.0.0.copyload68.i.i.i, %bb.fw ]
  store i64 %.sroa.7.019.i96.i.i.i, ptr %i.bh, align 8, !noalias !2710
  %.sroa.765.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %.sroa.10.i.sroa.0.095.i.i.i, ptr %.sroa.765.0..sroa_idx.i.i.i, align 8, !noalias !2710
  %.sroa.1166.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1166.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1166.i.i.i, i64 15, i1 false), !noalias !2710
  %.sroa.1167.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i128 %.sroa.11.018.i97.i.i.i, ptr %.sroa.1167.0..sroa_idx.i.i.i, align 8, !noalias !2710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2767
  store ptr %i.bi, ptr %i.bf, align 8, !noalias !2767
  %.sroa.42.0..sroa_idx.i49.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h059cc771bb24094dE", ptr %.sroa.42.0..sroa_idx.i49.i.i.i, align 8, !noalias !2767
  %i.wu = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bh, ptr %i.wu, align 8, !noalias !2767
  %.sroa.46.0..sroa_idx.i50.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr @"_ZN80_$LT$clap_builder..parser..error..MatchesError$u20$as$u20$core..fmt..Display$GT$3fmt17ha5c5d701dae1d4c8E", ptr %.sroa.46.0..sroa_idx.i50.i.i.i, align 8, !noalias !2767
  store ptr @18, ptr %i.bg, align 8, !noalias !2767
  %i.wv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 2, ptr %i.wv, align 8, !noalias !2767
  %i.ww = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr null, ptr %i.ww, align 8, !noalias !2767
  %i.wx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bf, ptr %i.wx, align 8, !noalias !2767
  %i.wy = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 2, ptr %i.wy, align 8, !noalias !2767
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29
          to label %.noexc51.i.i.i unwind label %bb.fu, !noalias !2743

.noexc51.i.i.i:                                   ; preds = %bb.fx
  unreachable

bb.fy:                                            ; preds = %bb.fw, %.thread.i.i.i
  %.sroa.765.089.i.i.i = phi i8 [ %.sroa.765.0.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.10.i.sroa.0.0.copyload68.i.i.i, %bb.fw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1166.i.i.i)
  %.not34.i.i.i = icmp eq i8 %.sroa.765.089.i.i.i, 2
  br i1 %.not34.i.i.i, label %bb.fz, label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

bb.fz:                                            ; preds = %bb.fy
  %i.wz = invoke fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17hb42be5c1079dba53E"(i8 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 62)
          to label %bb.ga unwind label %bb.fu, !noalias !2743 ; 2 uses

bb.ga:                                            ; preds = %bb.fz
  %i.xa = icmp eq i64 %.sroa.7.081.i.i.i, 0
  br i1 %i.xa, label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i", label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.077.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.077.i.i.i, i64 noundef %.sroa.7.081.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2768
  br label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i"

"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.thread.i.i": ; preds = %bb.gb, %bb.ga, %bb.ft
  %.sroa.7.0.ph.i.i = phi ptr [ %i.wz, %bb.gb ], [ %i.wz, %bb.ga ], [ %i.wq, %bb.ft ]
  %i.xb = ptrtoint ptr %.sroa.7.0.ph.i.i to i64
  br label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.thread.i.i"
  %.val71.i.i = load ptr, ptr %i.pw, align 8, !noalias !2670, !nonnull !9, !noundef !9
  %i.xc = load i32, ptr %.val71.i.i, align 1
  %i.xd = icmp ne i32 %i.xc, 1953719668
  %i.xe = zext i1 %i.xd to i32
  %i.xf = icmp eq i32 %i.xe, 0
  br i1 %i.xf, label %bb.gc, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.thread.i.i"

bb.gc:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.i.i"
  %i.xg = invoke noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17h10728f5cb85abf59E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.gd unwind label %bb.cq, !noalias !2671

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.thread.i.i": ; preds = %bb.gd, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.thread.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit98.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit90.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !2670
  store ptr %i.da, ptr %i.cv, align 8, !noalias !2670
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !2670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2769
  store ptr @210, ptr %i.be, align 8, !noalias !2770
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2770
  %.sroa.5136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.cv, ptr %.sroa.5136.0..sroa_idx.i.i, align 8, !noalias !2770
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2770
  %.sroa.7137.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr null, ptr %.sroa.7137.0..sroa_idx.i.i, align 8, !noalias !2770
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.be)
          to label %bb.gn unwind label %bb.cq, !noalias !2671

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.xg, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit102.thread.i.i", label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !2670
  invoke void @"_ZN78_$LT$xtask..test..TestArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17h557e3d52e4a4f556E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cz)
          to label %bb.gf unwind label %bb.cq, !noalias !2671

bb.gf:                                            ; preds = %bb.ge
  %i.xh = load i64, ptr %i.cx, align 8, !range !21, !noalias !2670, !noundef !9 ; 2 uses
  %i.xi = icmp eq i64 %i.xh, -9223372036854775808
  %i.xj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !noalias !2670 ; 2 uses
  br i1 %i.xi, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2670
  %i.xl = ptrtoint ptr %i.xk to i64
  br label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

bb.gh:                                            ; preds = %bb.gf
  %.sroa.659.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.24.24.copyload.i = load i64, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !noalias !2709
  %.sroa.27.24..sroa.659.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %.sroa.27.24.copyload.i = load i8, ptr %.sroa.27.24..sroa.659.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !2709
  %.sroa.28.24..sroa.659.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.28.24..sroa.659.0..sroa_idx.i.sroa_idx.i, i64 87, i1 false), !noalias !2709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2670
  br label %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"

bb.gi:                                            ; preds = %bb.gk, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.xn, %bb.gk ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %.val69.i.i = load i64, ptr %i.da, align 8, !range !17, !alias.scope !2771, !noalias !2670, !noundef !9 ; 2 uses
  %i.xm = icmp eq i64 %.val69.i.i, 0
  br i1 %i.xm, label %.body.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %.val70.i.i = load ptr, ptr %i.pw, align 8, !noalias !2670, !nonnull !9, !noundef !9
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70.i.i, i64 noundef %.val69.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2772
  br label %.body.i

bb.gk:                                            ; preds = %"_ZN12clap_builder5error14Error$LT$F$GT$3raw17h1b3d3dffc89f4c9dE.exit.i.i", %"_ZN77_$LT$xtask..PrototypeArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd0886999f826b1dE.exit.i.i"
  %i.xn = landingpad { ptr, i32 }
end_hunk_5
