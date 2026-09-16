Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN145_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$nickel_lang_core..typecheck..Subst$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$12subst_levels17h4a92ef6678f6b0d4E":bb.a

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = load <2 x i16>, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.8.0.copyload13 = load i32, ptr %.sroa.8.0..sroa_idx12, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bn = load i16, ptr %i.bm, align 8, !range !172, !noundef !145
  br label %bb.ad

bb.ac:                                            ; preds = %bb.c, %bb.ae, %bb.ad
  ret void

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %.thread116
  %.sroa.8.0110 = phi i32 [ undef, %bb.aa ], [ %.sroa.8.0.copyload13, %bb.ab ], [ %.sroa.8.0.copyload, %.thread116 ]
  %.sroa.016.0 = phi i16 [ %i.bk, %bb.aa ], [ %i.bn, %bb.ab ], [ 1, %.thread116 ]
  %i.bo = phi <2 x i16> [ %i.bj, %bb.aa ], [ %i.bl, %bb.ab ], [ %i.bh, %.thread116 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i16> %i.bo, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.8.0110, ptr %.sroa.8.0..sroa_idx14, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %.sroa.016.0, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  tail call fastcc void @"_ZN4core3ptr194drop_in_place$LT$nickel_lang_parser..typ..EnumRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$$GT$17h3e0f661ff7b6e1c3E"(ptr noalias noundef align 8 dereferenceable(40) %1)
  br label %bb.ac

bb.ae:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd3c6a2a0ab63758cE.exit.i, %bb.h, %bb.e
  %.sroa.8.093 = phi ptr [ undef, %bb.h ], [ %i.aw, %_ZN4core3ops8function6FnOnce9call_once17hd3c6a2a0ab63758cE.exit.i ], [ undef, %bb.e ]
  %.sroa.440.0 = phi i32 [ 5, %bb.h ], [ %i.n, %_ZN4core3ops8function6FnOnce9call_once17hd3c6a2a0ab63758cE.exit.i ], [ 3, %bb.e ]
  %.sroa.038.0 = phi i64 [ undef, %bb.h ], [ %i.as, %_ZN4core3ops8function6FnOnce9call_once17hd3c6a2a0ab63758cE.exit.i ], [ undef, %bb.e ]
  %.sroa.035.1 = phi i16 [ 1, %bb.h ], [ %.sroa.0.0.i.i, %_ZN4core3ops8function6FnOnce9call_once17hd3c6a2a0ab63758cE.exit.i ], [ 1, %bb.e ] ; 2 uses
  store i64 %.sroa.038.0, ptr %0, align 8
  %.sroa.017.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.440.0, ptr %.sroa.017.sroa.2.0..sroa_idx, align 8
  %.sroa.017.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.017.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7, i64 20, i1 false)
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.8.093, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %.sroa.035.1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %i.ab, ptr %.sroa.3.0..sroa_idx, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %.sroa.035.1, ptr %i.bq, align 8
  br label %bb.ac

.body.thread:                                     ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.i", %.body25, %bb.af
  %eh.lpad-body105 = phi { ptr, i32 } [ %i.br, %bb.af ], [ %.pn.i.i, %.body25 ], [ %.pn.i28, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.i" ]
  resume { ptr, i32 } %eh.lpad-body105

bb.af:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$nickel_lang_parser..typ..EnumRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$$GT$17h3e0f661ff7b6e1c3E"(ptr noalias noundef align 8 dereferenceable(40) %1) #86
          to label %.body.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN145_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..TypeAnnotation$GT$$GT$13from_mainline17h0f513d1616219312E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(280) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [88 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.427 = alloca [96 x i8], align 8          ; 5 uses
  %.sroa.622 = alloca [96 x i8], align 8          ; 4 uses
  %.sroa.425 = alloca [96 x i8], align 8          ; 4 uses
  %i.t = alloca [104 x i8], align 8               ; 5 uses
  %i.u = load i64, ptr %3, align 8, !range !148, !noundef !145
  %.not = icmp eq i64 %i.u, 18
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35683
  call fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h343f3f1bca0b73f5E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %3), !noalias !35684, !inline_history !35628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !35685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !35685
  store ptr %1, ptr %i.r, align 8, !noalias !35686
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %i.v, align 8, !noalias !35686
  store ptr %1, ptr %i.q, align 8, !noalias !35686
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %2, ptr %i.w, align 8, !noalias !35686
  store ptr %1, ptr %i.p, align 8, !noalias !35686
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %2, ptr %i.x, align 8, !noalias !35686
  store ptr %1, ptr %i.o, align 8, !noalias !35686
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %2, ptr %i.y, align 8, !noalias !35686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35686
  store ptr %i.r, ptr %i.n, align 8, !noalias !35687
  store ptr %i.q, ptr %i.m, align 8, !noalias !35687
  store ptr %i.p, ptr %i.l, align 8, !noalias !35687
  store ptr %i.o, ptr %i.k, align 8, !noalias !35687
  call fastcc void @"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h9f8bd369c667d1f1E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.s, ptr noalias noundef align 8 dereferenceable(8) %i.n, ptr noalias noundef align 8 dereferenceable(8) %i.m, ptr noalias noundef align 8 dereferenceable(8) %i.l, ptr noalias noundef align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !35686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !35685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !35685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !35685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !35685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !35683
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  br label %.noexc4

bb.c:                                             ; preds = %bb.a
  store i64 18, ptr %i.t, align 8
  br label %.noexc4

.noexc4:                                          ; preds = %bb.b, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !145 ; 5 uses
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = mul nuw nsw i64 %i.ae, 104              ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !nonnull !145, !noundef !145 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = and i64 %i.am, 7
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao  ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ult ptr %i.ap, %i.al
  %i.au = icmp ugt i64 %i.ag, %i.as
  %or.cond.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond.i, label %bb.d, label %.noexc6

.noexc6:                                          ; preds = %.noexc4
  %i.av = sub nsw i64 0, %i.ag
  %i.aw = getelementptr i8, ptr %i.ap, i64 %i.av  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  store ptr %i.aw, ptr %i.aj, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.d:                                             ; preds = %.noexc4
  %i.ax = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %i.ag)
          to label %.noexc7 unwind label %.loopexit.split-lp ; 2 uses

.noexc7:                                          ; preds = %bb.d
  %.not5.i.i = icmp eq ptr %i.ax, null
  br i1 %.not5.i.i, label %bb.e, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !147

bb.e:                                             ; preds = %.noexc7
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.e
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %.noexc6, %.noexc7
  %.sroa.0.0.i.i = phi ptr [ %i.aw, %.noexc6 ], [ %i.ax, %.noexc7 ] ; 2 uses
  %.not42 = icmp eq i64 %i.ae, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.427.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.427, i64 80
  %smax = call i64 @llvm.smax.i64(i64 %i.ae, i64 1)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.noexc9
  %.sroa.04.0.i41 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %.noexc9 ] ; 2 uses
  %.sroa.0.040 = phi ptr [ %i.ac, %.lr.ph ], [ %i.bd, %.noexc9 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.425)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622)
  %i.bc = icmp eq ptr %.sroa.0.040, %i.af
  br i1 %i.bc, label %.noexc11.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35688
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h343f3f1bca0b73f5E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.040)
          to label %.noexc16 unwind label %.loopexit, !inline_history !35658

.noexc16:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8, !noalias !35689
  store ptr %2, ptr %i.ay, align 8, !noalias !35689
  store ptr %1, ptr %i.h, align 8, !noalias !35689
  store ptr %2, ptr %i.az, align 8, !noalias !35689
  store ptr %1, ptr %i.g, align 8, !noalias !35689
  store ptr %2, ptr %i.ba, align 8, !noalias !35689
  store ptr %1, ptr %i.f, align 8, !noalias !35689
  store ptr %2, ptr %i.bb, align 8, !noalias !35689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35689
  store ptr %i.i, ptr %i.e, align 8, !noalias !35690
  store ptr %i.h, ptr %i.d, align 8, !noalias !35690
  store ptr %i.g, ptr %i.c, align 8, !noalias !35690
  store ptr %i.f, ptr %i.b, align 8, !noalias !35690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35690
  invoke fastcc void @"_ZN18nickel_lang_parser3typ36TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$13try_map_state17h9f8bd369c667d1f1E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.j, ptr noalias noundef align 8 dereferenceable(8) %i.e, ptr noalias noundef align 8 dereferenceable(8) %i.d, ptr noalias noundef align 8 dereferenceable(8) %i.c, ptr noalias noundef align 8 dereferenceable(8) %i.b)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %.noexc16
  %.sroa.028.0.copyload = load i64, ptr %i.a, align 8, !alias.scope !35691, !noalias !35692 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.429.0..sroa_idx, i64 80, i1 false), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35688
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.88..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.be, i64 16, i1 false), !noalias !35693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.622, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.427, i64 96, i1 false), !noalias !35694
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427)
  %.not.i = icmp eq i64 %.sroa.028.0.copyload, 18
  br i1 %.not.i, label %.noexc11.thread, label %.noexc9, !prof !201

.noexc11.thread:                                  ; preds = %bb.f, %.noexc11
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc12 unwind label %.loopexit.split-lp, !inline_history !35680

.noexc12:                                         ; preds = %.noexc11.thread
  unreachable

.noexc9:                                          ; preds = %.noexc11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.425, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.622, i64 96, i1 false), !noalias !35695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622)
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.04.0.i41 ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.0.i41, 1      ; 2 uses
  store i64 %.sroa.028.0.copyload, ptr %i.bf, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.425, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425)
  %exitcond.not = icmp eq i64 %i.bg, %smax
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

.loopexit:                                        ; preds = %.noexc16, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e, %.noexc11.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17hda895e25b5b908dcE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.t) #86
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %.noexc9, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.t, i64 104, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.0.i.i, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ae, ptr %i.bi, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN145_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..typ..RecordRows$GT$$GT$13from_mainline17h8088ff308b12abe5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35705
  call fastcc void @"_ZN93_$LT$nickel_lang_parser..typ..RecordRowsF$LT$Ty$C$RRows$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h49114d4899327617E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3), !noalias !35706, !inline_history !35704
  call fastcc void @"_ZN18nickel_lang_parser3typ29RecordRowsF$LT$Ty$C$RRows$GT$3map17he17910f7c7d6fcafE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35705
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @"_ZN146_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17ha26eb351c1553c93E"(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !noalias !35709, !nonnull !145, !noundef !145 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !35709, !nonnull !145, !noundef !145 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !noalias !35709, !nonnull !145, !noundef !145 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 7
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr i8, ptr %i.e, i64 %i.i     ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult ptr %i.j, %i.f
  %i.o = icmp ult i64 %i.m, 48
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit": ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.j, i64 -48      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ], !noalias !35709
  store ptr %i.p, ptr %i.d, align 8, !noalias !35709
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit"

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef 8, i64 noundef 48), !noalias !35709 ; 2 uses
  %.not5.i = icmp eq ptr %i.q, null
  br i1 %.not5.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit", !prof !147

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !35709
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit", %bb.b
  %.sroa.0.0.i = phi ptr [ %i.p, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit" ], [ %i.q, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN146_$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17hb19c4c9de80453b6E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noundef !145 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35754)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !35754, !noalias !35755, !nonnull !145, !noundef !145 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !35754, !noalias !35755, !noundef !145 ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64, i64 256 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i64 = phi ptr [ %i.p, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35756
  store ptr %1, ptr %i.b, align 8, !noalias !35756
  store ptr %2, ptr %i.n, align 8, !noalias !35756
  %i.r = call fastcc noundef ptr @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$12traverse_ref17hb8ac126849f2e9c7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.0.i64, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @468, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3), !noalias !35757, !inline_history !35725 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35756
  %.not7.i.i52 = icmp eq ptr %i.r, null
  br i1 %.not7.i.i52, label %bb.c, label %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit.thread55"

"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit.thread55": ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6ab75a3d3448fccfE.exit.thread"

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35758
  store ptr null, ptr %i.c, align 8, !noalias !35759
  %i.s = load i64, ptr %i.h, align 8, !range !148, !alias.scope !35754, !noalias !35760, !noundef !145
  %.not.i4.i = icmp eq i64 %i.s, 18
  br i1 %.not.i4.i, label %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit.thread", label %bb.d

"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit.thread": ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35758
  br label %.sink.split

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35761
  store ptr %1, ptr %i.a, align 8, !noalias !35761
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.t, align 8, !noalias !35761
  %i.u = invoke fastcc noundef ptr @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$12traverse_ref17hb8ac126849f2e9c7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.h, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @468, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3)
          to label %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit" unwind label %bb.e, !noalias !35762, !inline_history !35739 ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h1c97732375bf62bbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #86
          to label %common.resume59 unwind label %bb.f, !noalias !35763, !inline_history !35740

common.resume59:                                  ; preds = %bb.i, %bb.m, %bb.e
  %common.resume59.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.aa, %bb.i ], [ %i.am, %bb.m ]
  resume { ptr, i32 } %common.resume59.op

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !35763, !inline_history !35740
  unreachable

"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.u, ptr %i.e, align 8, !noalias !35764
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.g, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6ab75a3d3448fccfE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$7or_else17h6ab75a3d3448fccfE.exit.thread": ; preds = %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit.thread55", %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit"
  %.sroa.0.0.i2.i58 = phi ptr [ %i.r, %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit.thread55" ], [ %i.u, %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0b408ac86b2edab1E.exit"

.sink.split:                                      ; preds = %bb.a, %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr null, ptr %i.e, align 8, !noalias !145
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %"_ZN147_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h064815324fceccb4E.exit"
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !35765, !noundef !145
  %.not.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i5, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6ab75a3d3448fccfE.exit.thread42", label %bb.h

"_ZN4core6option15Option$LT$T$GT$7or_else17h6ab75a3d3448fccfE.exit.thread42": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8, !noalias !35766
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.z = invoke fastcc noundef ptr @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h57be2f1b9c9ad8ffE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3)
          to label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6ab75a3d3448fccfE.exit" unwind label %bb.i, !inline_history !35747 ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
end_hunk_0
