Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.03?download=true
inline.NumInlined: 466
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN92_$LT$ftl..garbage_collection..DeprecateEntriesArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h1aef6721279bf2f2E":bb.a
  %i.ef = extractvalue { ptr, i64 } %i.ea, 1
  %.sroa.5.0.i45 = select i1 %i.ee, i64 undef, i64 %i.ef
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 552
  store ptr %i.ed, ptr %i.eg, align 8, !alias.scope !968
  %i.eh = getelementptr inbounds nuw i8, ptr %i.s, i64 560
  store i64 %.sroa.5.0.i45, ptr %i.eh, align 8, !alias.scope !968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(600) %i.s, i64 600, i1 false), !alias.scope !969
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !972
  invoke void @"_ZN119_$LT$I$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..range..ValueRange$GT$$GT$15into_resettable17h5d06361c0a2fed3aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 1)
          to label %bb.au unwind label %bb.as, !noalias !972

bb.as:                                            ; preds = %bb.ar
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$clap_builder..builder..arg..Arg$GT$17h05d47d65f47c19a2E"(ptr noalias noundef nonnull align 8 dereferenceable(600) %i.n) #19
          to label %.body42.thread unwind label %bb.at, !noalias !970

bb.at:                                            ; preds = %bb.as
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !970
  unreachable

bb.au:                                            ; preds = %bb.ar
  %i.ek = load i64, ptr %i.a, align 8, !range !13, !noalias !972, !noundef !10 ; 2 uses
  %i.el = trunc nuw i64 %i.ek to i1               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.en = load i64, ptr %i.em, align 8, !noalias !972
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !972
  %.sroa.6.0.i50 = select i1 %i.el, i64 undef, i64 %i.ep
  %.sroa.5.0.i51 = select i1 %i.el, i64 undef, i64 %i.en
  %not..i52 = xor i64 %i.ek, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !972
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %not..i52, ptr %i.eq, align 8, !alias.scope !971
  %.sroa.5.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.5.0.i51, ptr %.sroa.5.0..sroa_idx.i53, align 8, !alias.scope !971
  %.sroa.6.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.6.0.i50, ptr %.sroa.6.0..sroa_idx.i54, align 8, !alias.scope !971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.o, ptr noundef nonnull align 8 dereferenceable(600) %i.n, i64 600, i1 false), !alias.scope !972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 592 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !noundef !10
  %i.et = or i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 8
  call void @_ZN12clap_builder7builder7command7Command3arg17h4fc370fc70d5b83bE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(600) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  ret void

.body:                                            ; preds = %.body.i, %bb.aw, %.body14.thread, %.body24.thread, %.body42.thread
  %.pn = phi { ptr, i32 } [ %eh.lpad-body4380, %.body42.thread ], [ %i.be, %.body.i ], [ %eh.lpad-body2571, %.body24.thread ], [ %i.ev, %bb.aw ], [ %eh.lpad-body1564, %.body14.thread ]
  resume { ptr, i32 } %.pn

.body42.thread:                                   ; preds = %bb.as, %bb.ap, %bb.am, %.body42.thread84
  %eh.lpad-body4380 = phi { ptr, i32 } [ %lpad.thr_comm82, %.body42.thread84 ], [ %i.eb, %bb.ap ], [ %i.dx, %bb.am ], [ %i.ei, %bb.as ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.t) #19
          to label %.body unwind label %bb.av

bb.av:                                            ; preds = %bb.aw, %.body14.thread, %.body24.thread, %.body42.thread
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

.body24.thread:                                   ; preds = %bb.af, %bb.ac, %bb.z, %.body24.thread75
  %eh.lpad-body2571 = phi { ptr, i32 } [ %lpad.thr_comm73, %.body24.thread75 ], [ %i.cy, %bb.ac ], [ %i.cu, %bb.z ], [ %i.df, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.aa) #19
          to label %.body unwind label %bb.av

.body14.thread:                                   ; preds = %bb.s, %bb.p, %bb.m, %.body14.thread66
  %eh.lpad-body1564 = phi { ptr, i32 } [ %lpad.thr_comm, %.body14.thread66 ], [ %i.bv, %bb.p ], [ %i.br, %bb.m ], [ %i.cc, %bb.s ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.aj) #19
          to label %.body unwind label %bb.av

bb.aw:                                            ; preds = %bb.a, %bb.b
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.ao) #19
          to label %.body unwind label %bb.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN95_$LT$ftl..garbage_collection..WriteJsonArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17ha88516719ef2d9e6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !973 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 2 uses
  %i.c = alloca [120 x i8], align 8               ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17hf7c3e85fe8a3d8e2E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @79, i64 noundef 15)
  call void @_ZN12clap_builder6parser5error12MatchesError6unwrap17h236b51b058cd95f9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @79, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = load i64, ptr %i.f, align 8, !range !9, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.h, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.529.0.copyload = load ptr, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.630.0.copyload = load i64, ptr %.sroa.630.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.h, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.529.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.630.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches15try_remove_many17h13a94884eeaa77ddE(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 12)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17hc1c9310c3f75007fE"(i8 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @90, i64 noundef 65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  ret void

bb.e:                                             ; preds = %bb.h, %bb.f, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hef8fec4d23b405fbE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #19
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %bb.b
  invoke void @_ZN12clap_builder6parser5error12MatchesError6unwrap17h0feef1d56c187995E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %i.c)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %i.e, align 8, !noundef !10
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h072e73ec171e90b3E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.b)
          to label %bb.j unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.j
  %.sroa.620.0 = phi i64 [ %.sroa.527.0.copyload, %bb.j ], [ 0, %bb.g ]
  %.sroa.517.0 = phi ptr [ %.sroa.426.0.copyload, %bb.j ], [ inttoptr (i64 8 to ptr), %bb.g ]
  %.sroa.015.0 = phi i64 [ %.sroa.025.0.copyload, %bb.j ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.015.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.517.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.620.0, ptr %.sroa.424.0..sroa_idx, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  %.sroa.025.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.426.0.copyload = load ptr, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.527.0.copyload = load i64, ptr %.sroa.527.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN95_$LT$regex..regex..string..CaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h929ed371dc195f53E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(160) initializes((120, 124)) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1011 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.417.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !10, !align !18, !noundef !10 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !10, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !range !13, !noundef !10
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = tail call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi i64 [ %i.z, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.417.i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.ad = load i64, ptr %1, align 8, !range !13, !noalias !1016, !noundef !10
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1016, !nonnull !10, !align !18, !noundef !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1016, !nonnull !10, !noundef !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi ptr [ %i.ah, %bb.d ], [ %i.aj, %bb.e ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  store i32 0, ptr %i.ak, align 8, !alias.scope !1018, !noalias !1016
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1018, !noalias !1016, !nonnull !10, !noundef !10
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !1018, !noalias !1016, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1020, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i, label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !1020, !noundef !10 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1020, !noundef !10 ; 4 uses
  %i.av = icmp ult i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !1021, !noundef !10
  %i.ay = and i32 %i.ax, 1
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %._crit_edge.i.i.i, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.bb = load i32, ptr %i.ba, align 8, !noalias !1021, !noundef !10
  %i.bc = and i32 %i.bb, 2
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %._crit_edge.i.i.i.i, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %._crit_edge.i.i.i
  %i.be = load i64, ptr %i.t, align 8, !range !13, !noalias !1021, !noundef !10
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.i, label %_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !1021
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 %i.as, i64 %i.aq) ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  br i1 %i.bj, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %i.ac, align 8, !range !25, !alias.scope !1020, !noundef !10
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !1021, !noundef !10
  %i.bo = and i32 %i.bn, 1
  %.not8.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !noalias !1021, !noundef !10
  %i.br = and i32 %i.bq, 2
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !range !13, !noalias !1021, !noundef !10
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.i.i, label %_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i

_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.i.i: ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !1021
  %i.by = icmp ugt i64 %i.bi, %i.bx
  br i1 %i.by, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit, label %_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i

_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i: ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.i.i, %bb.m, %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1022, !nonnull !10, !noundef !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !1022, !nonnull !10, !align !18, !noundef !10 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !range !23, !invariant.load !10, !noalias !1022
  %i.cf = add i64 %i.ce, -1
  %i.cg = and i64 %i.cf, -16
  %i.ch = getelementptr i8, ptr %i.ca, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !10, !noalias !1022, !nonnull !10
  %i.cl = tail call { i32, i32 } %i.ck(ptr noundef align 1 %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noalias noundef nonnull align 8 %i.am, i64 noundef %i.ao), !noalias !1023, !inline_history !993 ; 2 uses
  %i.cm = extractvalue { i32, i32 } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { i32, i32 } %i.cl, 1      ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 %i.cm, ptr %i.ak, align 8, !alias.scope !1018, !noalias !1024
  store i32 %i.cn, ptr %i.co, align 4, !alias.scope !1018, !noalias !1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.cp = trunc nuw i32 %i.cm to i1
  br i1 %i.cp, label %bb.n, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit.thread

_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit.thread: ; preds = %_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i)
  br label %bb.al

bb.n:                                             ; preds = %_ZN14regex_automata4meta5regex5Regex20search_captures_with17hc66112234acf864dE.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1027, !noalias !1024, !nonnull !10, !noundef !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !1028, !noundef !10 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp eq i64 %i.ct, 1
  br i1 %i.cv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = zext i32 %i.cn to i64                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ct, %i.cw
  %i.cx = shl nuw nsw i64 %i.cw, 1                ; 2 uses
  %i.cy = or disjoint i64 %i.cx, 1
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.056.2.i.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.cx, %bb.o ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i = phi i64 [ 1, %bb.n ], [ %i.cy, %bb.o ] ; 2 uses
  %i.cz = load ptr, ptr %i.al, align 8, !alias.scope !1027, !noalias !1024, !nonnull !10, !noundef !10 ; 2 uses
  %i.da = load i64, ptr %i.an, align 8, !alias.scope !1027, !noalias !1024, !noundef !10 ; 2 uses
  %.not64.i.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i.i.i, %i.da
  br i1 %.not64.i.i.i.i.i, label %bb.q, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.056.2.i.i.i.i.i
  %i.dc = load i64, ptr %i.db, align 8, !noalias !1028, !noundef !10 ; 2 uses
  %.not.i.i1.i.i.i = icmp ne i64 %i.dc, 0
  %.not65.i.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i.i.i, %i.da
  %or.cond.i.i.i.i.i = select i1 %.not.i.i1.i.i.i, i1 %.not65.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.r, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.058.0.i.i.i.i.i
  %i.de = load i64, ptr %i.dd, align 8, !noalias !1028, !noundef !10 ; 2 uses
  %.not61.i.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not61.i.i.i.i.i, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = add i64 %i.dc, -1                       ; 3 uses
  %i.dg = add i64 %i.de, -1                       ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.df, %i.dg
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1029
  store ptr @22, ptr %i.g, align 8, !noalias !1029
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.dh, align 8, !noalias !1029
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.di, align 8, !noalias !1029
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dj, align 8, !noalias !1029
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.dk, align 8, !noalias !1029
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #22, !noalias !1030
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.dl = inttoptr i64 %i.df to ptr
  store ptr %i.dl, ptr %i.h, align 8, !noalias !1031
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 %i.dg, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !noalias !1031
  %.sroa.4.sroa.2.0..sroa.4.8..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.cn, ptr %.sroa.4.sroa.2.0..sroa.4.8..sroa_idx.sroa_idx.i.i, align 8, !noalias !1031
  %.not.i.i = icmp ugt i64 %i.dg, %i.df
  br i1 %.not.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.ab, %bb.y, %bb.x, %bb.u
  %i.dm = phi i64 [ %i.au, %bb.x ], [ %.pre38.i.i, %bb.ab ], [ %i.au, %bb.y ], [ %i.au, %bb.u ] ; 2 uses
  %i.dn = phi i64 [ %i.as, %bb.x ], [ %.pre37.i.i, %bb.ab ], [ %i.as, %bb.y ], [ %i.as, %bb.u ] ; 4 uses
  %i.do = phi i64 [ %i.dg, %bb.x ], [ %.pre.i.i, %bb.ab ], [ %i.dg, %bb.y ], [ %i.dg, %bb.u ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1031
  store i64 %i.do, ptr %i.f, align 8, !noalias !1033
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.dn, ptr %i.dp, align 8, !noalias !1033
  %.not.i.i.i = icmp ugt i64 %i.dn, %i.dm
  %i.dq = add i64 %i.dn, 1
  %.not8.i.i.i = icmp ugt i64 %i.do, %i.dq
  %or.cond.i.i.i = or i1 %.not.i.i.i, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %bb.w, label %_ZN14regex_automata4util6search5Input8set_span17he7dd886ea82fcb50E.exit.i.i, !prof !1034

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1033
  store i64 %i.dm, ptr %i.d, align 8, !noalias !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1033
  store ptr %i.f, ptr %i.c, align 8, !noalias !1033
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN71_$LT$regex_automata..util..search..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17h2be7ed8bf8bcd47aE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.dr, align 8, !noalias !1033
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !1033
  store ptr @19, ptr %i.e, align 8, !noalias !1033
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %i.ds, align 8, !noalias !1033
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.dt, align 8, !noalias !1033
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.du, align 8, !noalias !1033
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.dv, align 8, !noalias !1033
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22, !noalias !1035
  unreachable

_ZN14regex_automata4util6search5Input8set_span17he7dd886ea82fcb50E.exit.i.i: ; preds = %bb.v
  store i64 %i.do, ptr %i.ap, align 8, !alias.scope !1036
  store i64 %i.dn, ptr %i.ar, align 8, !alias.scope !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1031
  store i64 1, ptr %i.ab, align 8, !alias.scope !1037
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.do, ptr %i.dw, align 8, !alias.scope !1037
  br label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit

bb.x:                                             ; preds = %bb.u
  %i.dx = load i64, ptr %i.ab, align 8, !range !13, !alias.scope !1037, !noundef !10
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.y, label %bb.v

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !1037, !noundef !10
  %i.eb = icmp eq i64 %i.dg, %i.ea
  br i1 %i.eb, label %bb.z, label %bb.v, !prof !14

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1031
  store ptr %i.o, ptr %i.i, align 8, !noalias !1038
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1038
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.aa, ptr %.sroa.7.0..sroa_idx8, align 8, !noalias !1038
  call void @_ZN14regex_automata4util4iter8Searcher30handle_overlapping_empty_match17h8f44ae1bddf3e277E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !1039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1031
  %i.ec = load i64, ptr %i.j, align 8, !range !21, !noalias !1031, !noundef !10 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 2
  br i1 %i.ed, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.627.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.627.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1031
  %i.ee = trunc nuw i64 %i.ec to i1
  br i1 %i.ee, label %bb.ab, label %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.i.i, i64 16, i1 false), !noalias !1031
  %.pre.i.i = load i64, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !noalias !1031
  %.pre37.i.i = load i64, ptr %i.ar, align 8, !alias.scope !1037
  %.pre38.i.i = load i64, ptr %i.at, align 8, !alias.scope !1036
  br label %bb.v

bb.ac:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !1031, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1014
  store ptr %i.eg, ptr %i.m, align 8, !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1014
  store ptr %i.m, ptr %i.k, align 8, !noalias !1014
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN79_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h77c076b8983fdac4E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1014
  store ptr @8, ptr %i.l, align 8, !noalias !1014
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %i.eh, align 8, !noalias !1014
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.ei, align 8, !noalias !1014
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.k, ptr %i.ej, align 8, !noalias !1014
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %i.ek, align 8, !noalias !1014
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22
          to label %bb.ad unwind label %bb.ae, !noalias !1040

bb.ad:                                            ; preds = %bb.ac
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.aj, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.el, %bb.ae ], [ %i.eu, %bb.aj ], [ %i.eu, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %bb.ac
  %i.el = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.m, align 8, !noalias !1014, !nonnull !10, !noundef !10
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 16, i64 noundef 8) #21, !noalias !1040
  br label %common.resume

_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.i.i, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN14regex_automata4util6search5Input8set_span17he7dd886ea82fcb50E.exit.i.i, %bb.aa
  %.pr = load i32, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i)
  %i.em = trunc nuw i32 %.pr to i1
  br i1 %i.em, label %bb.af, label %bb.al

bb.af:                                            ; preds = %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1042
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !1041, !nonnull !10, !noundef !10 ; 4 uses
  %i.ep = atomicrmw add ptr %i.eo, i64 1 monotonic, align 8, !noalias !1042
  %i.eq = icmp slt i64 %i.ep, 0
  br i1 %i.eq, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.eo, ptr %i.b, align 8, !noalias !1042
  %i.er = load i32, ptr %i.ak, align 8, !range !17, !alias.scope !1041, !noundef !10 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.et = load i32, ptr %i.es, align 4, !alias.scope !1041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1042
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2dc7393b5a04fb85E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa)
          to label %"_ZN79_$LT$regex_automata..util..captures..Captures$u20$as$u20$core..clone..Clone$GT$5clone17h52bd5d0e406760ecE.exit" unwind label %bb.ai, !noalias !1043

bb.ah:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = atomicrmw add ptr %i.eo, i64 -1 release, align 8, !noalias !1044
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.aj, label %common.resume

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf9f89352961c4d9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.ak, !noalias !1043

bb.ak:                                            ; preds = %bb.aj
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !1043
  unreachable

"_ZN79_$LT$regex_automata..util..captures..Captures$u20$as$u20$core..clone..Clone$GT$5clone17h52bd5d0e406760ecE.exit": ; preds = %bb.ag
  %i.ey = trunc nuw i32 %i.er to i1
  %.sroa.5.0.i = select i1 %i.ey, i32 %i.et, i32 undef
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1042
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !10, !align !16, !noundef !10
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fc = load i64, ptr %i.fb, align 8, !noundef !10
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.er, ptr %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.5.0.i, ptr %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx, align 4
  %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.eo, ptr %.sroa.55.sroa.6.0..sroa.55.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.fa, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.fc, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.am

bb.al:                                            ; preds = %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit.thread, %_ZN14regex_automata4util4iter8Searcher7advance17h99e7c3c1cfabd555E.exit
  store i64 2, ptr %0, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %"_ZN79_$LT$regex_automata..util..captures..Captures$u20$as$u20$core..clone..Clone$GT$5clone17h52bd5d0e406760ecE.exit"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches14try_remove_one17h4d649eb8e19bfe55E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12clap_builder6parser5error12MatchesError6unwrap17hb3deb0fd8dfe3c44E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17hc1c9310c3f75007fE"(i8 noundef range(i8 0, 17), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches15try_remove_many17h13a94884eeaa77ddE(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(address) dereferenceable(120), ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12clap_builder6parser5error12MatchesError6unwrap17h0feef1d56c187995E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h072e73ec171e90b3E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17hce8b63f271f622e4E(ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN110_$LT$I$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..str..Str$GT$$GT$15into_resettable17heac9db873bd77c51E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12clap_builder7builder3arg3Arg11value_names17h1c2b47f864ff8525E(ptr dead_on_unwind noalias noundef writable sret([600 x i8]) align 8 captures(address) dereferenceable(600), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(600), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN119_$LT$I$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..range..ValueRange$GT$$GT$15into_resettable17h5d06361c0a2fed3aE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN14regex_automata4meta5regex5Regex15create_captures17h40a7a26c686e556fE(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: cold noinline nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util4iter8Searcher30handle_overlapping_empty_match17h8f44ae1bddf3e277E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN79_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h77c076b8983fdac4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hfbeccf078ea09337E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h3609b688f63ad91fE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17ha7d301020caeacf4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17h6896c627753240bfE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN71_$LT$regex_automata..util..search..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17h2be7ed8bf8bcd47aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha113855cb26b41b0E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2a30675236024fe8E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN7anki_io11create_file17h9d23733799d170fbE(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17hd062b5d6a64d78e0E"(ptr noalias noundef align 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h00d52fdb8467d652E"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs14read_to_string17heaea1f682b3612f8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN13fluent_syntax6parser4core15Parser$LT$S$GT$3new17h4e53e2f82b106e1bE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN13fluent_syntax6parser4core15Parser$LT$S$GT$5parse17h8aba8dfbbb82ce08E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3ftl9serialize22serialize_with_options17hdaccb4af8e9e28b9E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2fs5write17h1ae7c5d9e715a5b4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN7walkdir7WalkDir3new17h41875abb9b7573b8E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN76_$LT$walkdir..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7ded7aa6330d2e74E"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN7walkdir4dent8DirEntry9file_name17ha40fe316e77662aaE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h48059591a076eb94E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17h13256ea608fe75e4E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs4File4open17h4ab240f60269a3beE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3std2io8buffered9bufreader18BufReader$LT$R$GT$13with_capacity17h8b72f582ac1a641aE"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i64 noundef, i32 noundef range(i32 0, -1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10serde_json2de11from_reader17h9c87801833926b83E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h39b5e7dcd0aecd62E"(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17hd97583fd17ce166bE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_ZN5regex5regex6string5Regex3new17h310747bb8ba6fb0eE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN87_$LT$regex..regex..string..Captures$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h1057241be658ed4dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h573a717b1f5f3570E"(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17he0ef50c9145173ceE"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core4iter6traits8iterator8Iterator9partition17h19cc446065c2c7d8E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hd842d61f9cf43fbaE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(16)) unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE() unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std4sync9lazy_lock14panic_poisoned17h1ac6056989a39e12E() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h6f03b4a794a26c86E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h37bd9ab57da75b39E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
