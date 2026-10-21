Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN90_$LT$alloc..collections..btree..set..BTreeSet$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h50beecea9c5d85b3E":bb.a
  %i.ab = zext i16 %i.aa to i64
  %i.ac = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i, %i.ab
  br i1 %i.ac, label %bb.d, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5da8fd6aca445a6aE.exit.i.i.i", %bb.c
  %.sroa.0.038.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %.sroa.05.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5da8fd6aca445a6aE.exit.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %.sroa.26.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5da8fd6aca445a6aE.exit.i.i.i" ]
  %i.ad = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i, align 8, !noalias !78041, !noundef !23 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.c

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.c
  %i.ae = zext i16 %i.ah to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = add i64 %.sroa.5.037.i.i.i.i.i.i, 1     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i, i64 272
  %i.ah = load i16, ptr %i.ag, align 8, !noalias !78041 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 274
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !78040, !noundef !23
  %i.ak = icmp ult i16 %i.ah, %i.aj
  br i1 %i.ak, label %._crit_edge.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5da8fd6aca445a6aE.exit.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5da8fd6aca445a6aE.exit.i.i.i" ], [ %i.ae, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5da8fd6aca445a6aE.exit.i.i.i" ], [ %i.af, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h5da8fd6aca445a6aE.exit.i.i.i" ], [ %i.ad, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.al = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 0
  %i.am = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.al, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i, i64 280
  %i.ao = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am ; 2 uses
  %xtraiter50 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.prol = phi ptr [ %i.aq, %.prol.preheader ], [ %i.ap, %bb.e ]
  %.pn28.in.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i, %bb.e ]
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.prol.preheader ], [ 0, %bb.e ]
  %.pn28.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.prol, align 8, !noalias !78042, !nonnull !23, !noundef !23 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !78037

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.pn30.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.e ], [ %.pn30.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.unr = phi ptr [ %i.ap, %bb.e ], [ %i.aq, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i, %bb.e ], [ %.pn28.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ar = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i, 8
  br i1 %i.ar, label %.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i = phi ptr [ %i.ba, %.new ], [ %.pn30.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i, align 8, !noalias !78042, !nonnull !23, !noundef !23
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i, i64 280
  %.pn30.i.i.i.i.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !78042, !nonnull !23, !noundef !23
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.1, i64 280
  %.pn30.i.i.i.i.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !78042, !nonnull !23, !noundef !23
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.2, i64 280
  %.pn30.i.i.i.i.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !78042, !nonnull !23, !noundef !23
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.3, i64 280
  %.pn30.i.i.i.i.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !78042, !nonnull !23, !noundef !23
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.4, i64 280
  %.pn30.i.i.i.i.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !78042, !nonnull !23, !noundef !23
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.5, i64 280
  %.pn30.i.i.i.i.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !78042, !nonnull !23, !noundef !23
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.6, i64 280
  %.pn28.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !78042, !nonnull !23, !noundef !23 ; 2 uses
  %i.az = icmp eq i64 %.pn28.i.i.i.i.i.i.7, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.7, i64 280
  br i1 %i.az, label %.loopexit.i, label %.new

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1375) #46
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !78043

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i:                                      ; preds = %.prol.loopexit, %.new, %bb.d
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.am, %bb.d ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i, %bb.d ], [ %.pn30.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.7, %.new ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i, i64 8
  %i.bd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78044
  store ptr %i.be, ptr %i.a, align 8, !noalias !78044
  %i.bf = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders8DebugSet5entry17hcad1a4fd4f581beeE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @996), !noalias !78045 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78044
  %i.bg = icmp eq i64 %i.j, 0
  br i1 %i.bg, label %_ZN4core3fmt8builders8DebugSet7entries17h261d95a9c667247aE.exit, label %.lr.ph.i

_ZN4core3fmt8builders8DebugSet7entries17h261d95a9c667247aE.exit: ; preds = %.loopexit.i, %bb.a
  %i.bh = call noundef zeroext i1 @_ZN4core3fmt8builders8DebugSet6finish17hf1e1ce2970196d3eE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.bh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h37e7aaf914554150E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !31, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78216)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !78217, !nonnull !23, !align !35, !noundef !23 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !40, !alias.scope !78217, !noundef !23
  %i.h = icmp eq i8 %i.g, 1
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !78218 ; 6 uses
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78222)
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !78223, !noalias !78224, !noundef !23 ; 3 uses
  %i.k = load i64, ptr %.val.i.i, align 8, !range !22, !alias.scope !78223, !noalias !78224, !noundef !23
  %i.l = icmp eq i64 %i.k, %i.j
  br i1 %i.l, label %bb.d, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i", !prof !26

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.j, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !78225
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !78226, !noalias !78224
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.j, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !78226, !noalias !78224, !nonnull !23, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store i8 44, ptr %i.q, align 1, !noalias !78227
  %i.r = add nuw i64 %i.m, 1
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !78226, !noalias !78224
  %.val9.pre.i.i = load ptr, ptr %i.e, align 8, !noalias !78218
  br label %bb.e

bb.e:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i", %bb.b
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.b ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i" ]
  store i8 2, ptr %i.f, align 1, !alias.scope !78217
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hc4c32ef8e2380125E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @678, i64 noundef range(i64 5, 20) 18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78228)
  %.val.i5.i = load ptr, ptr %i.e, align 8, !noalias !78229, !nonnull !23, !align !35, !noundef !23 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78233)
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !78234, !noalias !78235, !noundef !23 ; 3 uses
  %i.u = load i64, ptr %.val.i5.i, align 8, !range !22, !alias.scope !78234, !noalias !78235, !noundef !23
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.f, label %_ZN10serde_json3ser9Formatter18begin_object_value17he63e0bb025a34ac7E.exit.i.i, !prof !26

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.t, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !78236
  %.pre.i.i.i.i.i.i.i7.i = load i64, ptr %i.s, align 8, !alias.scope !78237, !noalias !78235
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17he63e0bb025a34ac7E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17he63e0bb025a34ac7E.exit.i.i: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %i.t, %bb.e ], [ %.pre.i.i.i.i.i.i.i7.i, %bb.f ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !78237, !noalias !78235, !nonnull !23, !noundef !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 58, ptr %i.aa, align 1, !noalias !78238
  %i.ab = add nuw i64 %i.w, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !78237, !noalias !78235
  %.val9.i6.i = load ptr, ptr %i.e, align 8, !alias.scope !78239, !noalias !78229, !nonnull !23, !align !35, !noundef !23 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78241)
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !78242, !noundef !23 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !78243
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !78243 ; 2 uses
  %i.ah = ptrtoint ptr %i.ac to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78247)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i6.i, i64 16 ; 14 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !78248, !noalias !78249, !noundef !23 ; 3 uses
  %i.ak = load i64, ptr %.val9.i6.i, align 8, !range !22, !alias.scope !78248, !noalias !78249, !noundef !23
  %i.al = icmp eq i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.g, label %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i, !prof !26

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17he63e0bb025a34ac7E.exit.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.aj, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !78250
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !78251, !noalias !78249
  br label %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN10serde_json3ser9Formatter18begin_object_value17he63e0bb025a34ac7E.exit.i.i
  %i.am = phi i64 [ %i.aj, %_ZN10serde_json3ser9Formatter18begin_object_value17he63e0bb025a34ac7E.exit.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val9.i6.i, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !78251, !noalias !78249, !nonnull !23, !noundef !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  store i8 123, ptr %i.aq, align 1, !noalias !78252
  %i.ar = add nuw i64 %i.am, 1                    ; 5 uses
  store i64 %i.ar, ptr %i.ai, align 8, !alias.scope !78251, !noalias !78249
  %i.as = icmp ne i64 %i.ag, 0
  %.not63.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.as, i1 false
  br i1 %.not63.i.i.i.i, label %.lr.ph.i.split.i.i.preheader.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i
  %i.at = load i64, ptr %.val9.i6.i, align 8, !range !22, !alias.scope !78253, !noalias !78254, !noundef !23
  %i.au = icmp eq i64 %i.at, %i.ar
  br i1 %i.au, label %bb.i, label %bb.t, !prof !26

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.ar, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !78255
  %.pre.i.i.i.i.i.i17.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !78256, !noalias !78254
  br label %bb.t

.lr.ph.i.split.i.i.preheader.i.i.i:               ; preds = %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc3f94668e41477d1E.exit.i.i.i.i.i.i"
  %i.av = phi i64 [ %i.dy, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc3f94668e41477d1E.exit.i.i.i.i.i.i" ], [ %i.ar, %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.11.1.i.i.i.i = phi i64 [ 0, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc3f94668e41477d1E.exit.i.i.i.i.i.i" ], [ %i.ah, %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i35.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc3f94668e41477d1E.exit.i.i.i.i.i.i" ], [ %i.ae, %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i ] ; 6 uses
  %i.aw = phi i1 [ false, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc3f94668e41477d1E.exit.i.i.i.i.i.i" ], [ true, %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i ]
  %.sroa.012.0.lcssa.i.i20.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc3f94668e41477d1E.exit.i.i.i.i.i.i" ], [ null, %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i ] ; 2 uses
  %i.ax = phi i64 [ %i.ay, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hc3f94668e41477d1E.exit.i.i.i.i.i.i" ], [ %i.ag, %_ZN10serde_json3ser9Formatter12begin_object17h16713b5239a02560E.exit.i.i.i.i.i ]
  %i.ay = add i64 %i.ax, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.012.0.lcssa.i.i20.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i"

bb.j:                                             ; preds = %.lr.ph.i.split.i.i.preheader.i.i.i
  %i.az = inttoptr i64 %.sroa.11.1.i.i.i.i to ptr ; 3 uses
  %i.ba = icmp eq i64 %.sroa.7.0.i.i.i35.i.i.i.i.i.i, 0
  br i1 %i.ba, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.j
  %xtraiter = and i64 %.sroa.7.0.i.i.i35.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.sroa.7.0.i.i.i35.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i.prol, i64 368
  %i.bc = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bb, align 8, !noalias !78257, !nonnull !23, !noundef !23 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !78134

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.i.i.i35.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bd = icmp ult i64 %.sroa.7.0.i.i.i35.i.i.i.i.i.i, 8
  br i1 %i.bd, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.i, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !78257, !nonnull !23, !noundef !23
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bf, align 8, !noalias !78257, !nonnull !23, !noundef !23
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.1, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bg, align 8, !noalias !78257, !nonnull !23, !noundef !23
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.2, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bh, align 8, !noalias !78257, !nonnull !23, !noundef !23
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.3, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bi, align 8, !noalias !78257, !nonnull !23, !noundef !23
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.4, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bj, align 8, !noalias !78257, !nonnull !23, !noundef !23
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.5, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bk, align 8, !noalias !78257, !nonnull !23, !noundef !23
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.i.6, i64 368
  %i.bm = add i64 %.sroa.011.014.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bl, align 8, !noalias !78257, !nonnull !23, !noundef !23 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.split.i.i.preheader.i.i.i
  %.sroa.37.0.copyload.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i35.i.i.i.i.i.i, %.lr.ph.i.split.i.i.preheader.i.i.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.11.1.i.i.i.i, %.lr.ph.i.split.i.i.preheader.i.i.i ], [ 0, %bb.j ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.lcssa.i.i20.i.i.i.i.i.i, %.lr.ph.i.split.i.i.preheader.i.i.i ], [ %i.az, %bb.j ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, i64 362
  %i.bp = load i16, ptr %i.bo, align 2, !noalias !78258, !noundef !23
  %i.bq = zext i16 %i.bp to i64
  %i.br = icmp ult i64 %.sroa.37.0.copyload.i.i.i.i.i.i.i.i, %i.bq
  br i1 %i.br, label %bb.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i", %bb.k
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.k ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %bb.k ], [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i" ]
  %i.bs = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !78259, !noundef !23 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %bb.k

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.k
  %i.bt = zext i16 %i.bw to i64
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bu = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 360
  %i.bw = load i16, ptr %i.bv, align 8, !noalias !78259 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 362
  %i.by = load i16, ptr %i.bx, align 2, !noalias !78258, !noundef !23
  %i.bz = icmp ult i16 %i.bw, %i.by
  br i1 %i.bz, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i"
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i" ], [ %i.bt, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i" ], [ %i.bu, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h75b660096d2a6372E.exit.i.i.i.i.i.i.i" ], [ %i.bs, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ca = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, 0
  %i.cb = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  br i1 %i.ca, label %.loopexit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, i64 368
  %i.cd = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  %xtraiter7 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  br i1 %lcmp.mod8.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.m, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cf, %.prol.preheader ], [ %i.ce, %bb.m ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %bb.m ]
  %prol.iter9 = phi i64 [ %prol.iter9.next, %.prol.preheader ], [ 0, %bb.m ]
  %.pn28.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !78260, !nonnull !23, !noundef !23 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter9.next = add i64 %prol.iter9, 1       ; 2 uses
  %prol.iter9.cmp.not = icmp eq i64 %prol.iter9.next, %xtraiter7
  br i1 %prol.iter9.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !78148

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.m
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ce, %bb.m ], [ %i.cf, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.cg = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.cg, label %.loopexit.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !78260, !nonnull !23, !noundef !23
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ch, align 8, !noalias !78260, !nonnull !23, !noundef !23
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ci, align 8, !noalias !78260, !nonnull !23, !noundef !23
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cj, align 8, !noalias !78260, !nonnull !23, !noundef !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ck, align 8, !noalias !78260, !nonnull !23, !noundef !23
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cl, align 8, !noalias !78260, !nonnull !23, !noundef !23
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.cm, align 8, !noalias !78260, !nonnull !23, !noundef !23
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cn, align 8, !noalias !78260, !nonnull !23, !noundef !23 ; 2 uses
  %i.co = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 368
  br i1 %i.co, label %.loopexit.i.i.i.i.i.i, label %.new

.split.us.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1375) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !78261

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.split.us.i.i.i.i.i
  unreachable

bb.n:                                             ; preds = %.split.us.i.i.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %.prol.loopexit, %.new, %bb.l
  %.sroa.7.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.l ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, i64 8
  %i.cs = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, i64 272
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr i8, ptr %i.ct, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !78262 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ct, i64 16
  %.val10.i.i.i.i.i.i = load i64, ptr %i.cx, align 8, !noalias !78262
  %.val11.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !noalias !78262
  br i1 %i.aw, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !78263)
  call void @llvm.experimental.noalias.scope.decl(metadata !78264)
  call void @llvm.experimental.noalias.scope.decl(metadata !78265)
  call void @llvm.experimental.noalias.scope.decl(metadata !78266)
  %i.cy = load i64, ptr %.val9.i6.i, align 8, !range !22, !alias.scope !78267, !noalias !78268, !noundef !23
  %i.cz = icmp eq i64 %i.cy, %i.av
  br i1 %i.cz, label %bb.p, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !26

bb.p:                                             ; preds = %bb.o
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0b755ffd0398c886E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i6.i, i64 noundef %i.av, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !78269
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !78270, !noalias !78268
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h779e6072073922d0E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o
  %i.da = phi i64 [ %i.av, %bb.o ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.db = icmp sgt i64 %i.da, -1
  call void @llvm.assume(i1 %i.db)
  %i.dc = load ptr, ptr %i.ao, align 8, !alias.scope !78270, !noalias !78268, !nonnull !23, !noundef !23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 44, ptr %i.dd, align 1, !noalias !78271
  %i.de = add nuw i64 %i.da, 1
  store i64 %i.de, ptr %i.ai, align 8, !alias.scope !78270, !noalias !78268
  br label %bb.q

end_hunk_0
begin_hunk_1_@_ZN9meilitool13export_a_dump17he686912da4dadcd2E:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.655, ptr noundef nonnull align 8 dereferenceable(32) %i.kx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br i1 %i.kw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ky = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9fa194e430feb3b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %.sroa.655)
          to label %"_ZN4core3ptr44drop_in_place$LT$dump..writer..KeyWriter$GT$17h58eab3e36900da59E.exit" unwind label %bb.bx

bb.ca:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.655, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  store i32 0, ptr %i.fl, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  invoke void @_ZN16meilisearch_auth14AuthController9list_keys17hba994ab95b1fcc41E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fp)
          to label %bb.cc unwind label %bb.cb

.thread1362:                                      ; preds = %bb.ch, %bb.cm, %bb.ng, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit953", %bb.ck, %bb.cj, %bb.ci, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.thread"
  %.sroa.0429.13.ph = phi i8 [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.thread" ], [ 1, %bb.ci ], [ 1, %bb.cj ], [ 1, %bb.ck ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit953" ], [ %.sroa.0429.32, %bb.ng ], [ 1, %bb.cm ], [ 1, %bb.ch ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1356

bb.cb:                                            ; preds = %bb.ca, %bb.cd
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1346

bb.cc:                                            ; preds = %bb.ca
  %i.kz = load i64, ptr %i.fk, align 8, !range !64, !noundef !23 ; 2 uses
  %.not727 = icmp eq i64 %i.kz, 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.01228.0.copyload = load i64, ptr %i.la, align 8 ; 2 uses
  %.sroa.41229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %.sroa.41229.0.copyload = load ptr, ptr %.sroa.41229.0..sroa_idx, align 8 ; 5 uses
  %.sroa.51230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %.sroa.51230.0.copyload = load i64, ptr %.sroa.51230.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br i1 %.not727, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %i.kz, ptr %i.az, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.01228.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %.sroa.41229.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %.sroa.51230.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %i.lb = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h4cf636fc5a53b2efE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.az)
          to label %bb.no unwind label %bb.cb

bb.ce:                                            ; preds = %bb.cc
  %i.lc = icmp ult i64 %.sroa.51230.0.copyload, 57646075230342349
  call void @llvm.assume(i1 %i.lc)
  %.idx = mul nuw nsw i64 %.sroa.51230.0.copyload, 160
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.41229.0.copyload, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  store ptr %.sroa.41229.0.copyload, ptr %i.fj, align 8
  %.sroa.51161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %.sroa.61162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %.sroa.01228.0.copyload, ptr %.sroa.61162.0..sroa_idx, align 8
  %.sroa.71163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store ptr %i.ld, ptr %.sroa.71163.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.81174)
  %i.le = icmp eq i64 %.sroa.51230.0.copyload, 0
  br i1 %i.le, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.lr.ph": ; preds = %bb.ce
  %.sroa.81174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.lr.ph", %bb.nm
  %i.lf = phi ptr [ %.sroa.41229.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.lr.ph" ], [ %i.lg, %bb.nm ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 160 ; 5 uses
  %.sroa.01172.0.copyload1173 = load i64, ptr %i.lf, align 8, !noalias !82195 ; 2 uses
  %.sroa.81174.0..sroa_idx1175 = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.81174, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.81174.0..sroa_idx1175, i64 152, i1 false), !noalias !82195
  %.not729 = icmp eq i64 %.sroa.01172.0.copyload1173, -9223372036854775808
  br i1 %.not729, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.thread", label %bb.cf

bb.cf:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  store i64 %.sroa.01172.0.copyload1173, ptr %i.fi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.81174.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.81174, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  invoke void @_ZN4dump6writer9KeyWriter8push_key17h0165b7c412d83695E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fh, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fi)
          to label %bb.nk unwind label %.loopexit1732

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit", %bb.nm, %bb.ce
  %i.lh = phi ptr [ %.sroa.41229.0.copyload, %bb.ce ], [ %i.lg, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit" ], [ %i.ld, %bb.nm ]
  store ptr %i.lh, ptr %.sroa.51161.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81174)
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$meilisearch_types..keys..Key$GT$$GT$17h99af08c0dfb7a874E"(ptr noalias noundef align 8 dereferenceable(32) %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i64 32, i1 false)
  invoke void @_ZN4dump6writer9KeyWriter5flush17h52cd62b5ddd69143E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ff)
          to label %bb.cg unwind label %.thread1362

bb.cg:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17habe61abf686d137dE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  %i.li = load i32, ptr %i.fg, align 8, !range !82138, !noundef !23 ; 2 uses
  %.not730 = icmp eq i32 %i.li, 13
  br i1 %.not730, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.sroa.4466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.272.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4466.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  store i32 %i.li, ptr %i.ax, align 8
  %i.lj = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9fa194e430feb3b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ax)
          to label %bb.ni unwind label %.thread1362

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  store ptr %i.fl, ptr %i.fd, align 8
  %.sroa.4470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.4470.0..sroa_idx, align 8
  store ptr @2815, ptr %i.fe, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 2, ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr null, ptr %i.ll, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.fd, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i64 1, ptr %i.ln, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.fe)
          to label %bb.cj unwind label %.thread1362

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  store ptr @2817, ptr %i.fc, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 1, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store ptr null, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 0, ptr %i.lr, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.fc)
          to label %bb.ck unwind label %.thread1362

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  invoke fastcc void @"_ZN4heed3txn14RoTxn$LT$T$GT$3new17hc1996684945f0b16E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fv)
          to label %bb.cl unwind label %.thread1362

bb.cl:                                            ; preds = %bb.ck
  %i.ls = load i64, ptr %i.fa, align 8, !range !42, !noundef !23
  %i.lt = trunc nuw i64 %i.ls to i1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674, ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  br i1 %i.lt, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lv = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hdfb6554553a6f20bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.674)
          to label %bb.nh unwind label %.thread1362

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  invoke fastcc void @_ZN9meilitool20try_opening_database17hc5c85f790b4cbfe4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.674)
          to label %bb.co unwind label %.thread1450

.thread1384:                                      ; preds = %bb.eo, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit947", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit986", %.thread1431, %bb.ek, %.thread1450, %.thread1390
  %.sroa.0429.14 = phi i8 [ %.sroa.0429.20, %bb.eo ], [ 1, %.thread1390 ], [ %.sroa.0429.20, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit947" ], [ 1, %.thread1431 ], [ 1, %.thread1450 ], [ 1, %bb.ek ], [ 1, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit986" ]
  %.pn823 = phi { ptr, i32 } [ %.pn747, %bb.eo ], [ %.pn8211399, %.thread1390 ], [ %.pn747, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit947" ], [ %.pn7961440, %.thread1431 ], [ %lpad.thr_comm1448, %.thread1450 ], [ %i.rc, %bb.ek ], [ %.pn790, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit986" ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h410cf3f79d2fde39E"(ptr noalias noundef align 8 dereferenceable(24) %i.fb) #44
          to label %.thread1356 unwind label %bb.q

bb.co:                                            ; preds = %bb.cn
  %i.lw = load i64, ptr %i.ez, align 8, !range !42, !noundef !23
  %i.lx = trunc nuw i64 %i.lw to i1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %.cast = ptrtoint ptr %i.lz to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.mb = load i32, ptr %i.ma, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  br i1 %i.lx, label %bb.ng, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  invoke fastcc void @_ZN9meilitool20try_opening_database17hf2c7a5674ec3cac6E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.cq unwind label %.thread1450

bb.cq:                                            ; preds = %bb.cp
  %i.mc = load i64, ptr %i.ey, align 8, !range !42, !noundef !23
  %i.md = trunc nuw i64 %i.mc to i1
  %i.me = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.mf = load ptr, ptr %i.me, align 8            ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.mh = load i32, ptr %i.mg, align 8
  %.sroa.678.0 = ptrtoint ptr %i.mf to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  br i1 %i.md, label %bb.ng, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  invoke fastcc void @_ZN9meilitool20try_opening_database17h752ee99343e31921E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.cs unwind label %.thread1450

bb.cs:                                            ; preds = %bb.cr
  %i.mi = load i64, ptr %i.ex, align 8, !range !42, !noundef !23
  %i.mj = trunc nuw i64 %i.mi to i1
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8            ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.mn = load i32, ptr %i.mm, align 8
  %.sroa.682.0 = ptrtoint ptr %i.ml to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  br i1 %i.mj, label %bb.ng, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  store ptr @2821, ptr %i.ew, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 1, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store ptr null, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.mq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i64 0, ptr %i.mr, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ew)
          to label %bb.cu unwind label %.thread1450

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  invoke void @_ZN4dump6writer10DumpWriter18create_tasks_queue17h30c03db230deac54E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb)
          to label %bb.cv unwind label %.thread1450

bb.cv:                                            ; preds = %bb.cu
  %i.ms = load i64, ptr %i.eu, align 8, !range !29, !noundef !23 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, -9223372036854775808
  %i.mu = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.787, ptr noundef nonnull align 8 dereferenceable(32) %i.mu, i64 32, i1 false)
  br i1 %i.mt, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  %i.mv = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9fa194e430feb3b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %.sroa.787)
          to label %bb.ne unwind label %.thread1450

bb.cx:                                            ; preds = %bb.cv
  %.sroa.5473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.593.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5473.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.492.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.787, i64 32, i1 false)
  store i64 %i.ms, ptr %i.ev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i32 0, ptr %i.et, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store i32 0, ptr %i.es, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$4iter17hd7a8b44ccca30614E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.er, i64 %.cast, i32 %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.da, %bb.cx, %bb.de, %bb.nc
  %lpad.thr_comm.split-lp1403 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1390

bb.cz:                                            ; preds = %bb.cx
  %i.mw = load i32, ptr %i.er, align 8, !range !130, !noundef !23 ; 2 uses
  %.not732 = icmp eq i32 %i.mw, 5
  br i1 %.not732, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.sroa.4480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.sroa.4480.0.copyload = load i32, ptr %.sroa.4480.0..sroa_idx, align 4
  %.sroa.5481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.5481.0.copyload = load ptr, ptr %.sroa.5481.0..sroa_idx, align 8
  %.sroa.6482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.6482.0.copyload = load i8, ptr %.sroa.6482.0..sroa_idx, align 8
  %.sroa.7483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 17
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5109.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7483.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  store i32 %i.mw, ptr %i.aw, align 8
  %.sroa.2107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %.sroa.4480.0.copyload, ptr %.sroa.2107.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5481.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 %.sroa.6482.0.copyload, ptr %.sroa.4108.0..sroa_idx, align 8
  %i.mx = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hdfb6554553a6f20bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.nd unwind label %bb.cy

bb.db:                                            ; preds = %bb.cz
  %i.my = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !noundef !23
  %i.na = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.nb = load i8, ptr %i.na, align 8, !range !31, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store ptr %i.mz, ptr %i.eq, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i8 %i.nb, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.3115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.2718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.3719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ep, i64 780
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ep, i64 424
  %.sroa.4489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.5490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.01188.0.copyload = load i32, ptr %3, align 4 ; 2 uses
  %.sroa.51189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.51189.0.copyload = load i32, ptr %.sroa.51189.0..sroa_idx, align 4
  %i.nh = icmp eq i32 %.sroa.01188.0.copyload, 1
  %i.ni = icmp eq i32 %.sroa.01188.0.copyload, 0
  %i.nj = icmp ult i32 %.sroa.51189.0.copyload, 12
  %.sroa.0.1.v.i = select i1 %i.nh, i1 %i.nj, i1 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.01191.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.01191.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.01191.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %.sroa.01191.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %.sroa.01191.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %.sroa.01191.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %.sroa.01191.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %.sroa.01191.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 88
  %.sroa.01191.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 89
  %.sroa.2.0..sroa_idx1192 = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %.sroa.31193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 104
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.5526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.sroa.4498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.5499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %.sroa.7146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.9149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ec, i64 152
  %i.nt = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.av, i64 488
  br label %bb.dc

bb.dc:                                            ; preds = %.backedge, %bb.db
  invoke fastcc void @"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h251552e4ad15b8d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(792) %i.av, ptr noalias noundef align 8 dereferenceable(16) %i.eq)
          to label %bb.dd unwind label %.loopexit.split-lp1715.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1715:                           ; preds = %.loopexit.split-lp1715.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread1617, %.loopexit.split-lp1720.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn819 = phi { ptr, i32 } [ %.pn8171556, %.thread1617 ], [ %lpad.loopexit.split-lp3379, %.loopexit.split-lp1720.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3376, %.loopexit.split-lp1715.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN64_$LT$heed..cursor..RoCursor$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb513896864dab575E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %.thread1390 unwind label %bb.q

bb.dd:                                            ; preds = %bb.dc
  %i.nx = load i64, ptr %i.nd, align 8, !range !46, !noundef !23 ; 2 uses
  switch i64 %i.nx, label %bb.ko [
    i64 21, label %bb.de
    i64 20, label %bb.kn
  ]

bb.de:                                            ; preds = %bb.dd
  invoke void @"_ZN64_$LT$heed..cursor..RoCursor$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb513896864dab575E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eq)
          to label %"_ZN4core3ptr183drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..tasks..Task$GT$$GT$$GT$17hdc1f7ebbc0864e88E.exit934" unwind label %bb.cy

"_ZN4core3ptr183drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..tasks..Task$GT$$GT$$GT$17hdc1f7ebbc0864e88E.exit934": ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %i.ev, i64 56, i1 false)
  invoke void @_ZN4dump6writer10TaskWriter5flush17h0390c2f465a6fea7E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.do, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.dn)
          to label %bb.df unwind label %.thread1450

bb.df:                                            ; preds = %"_ZN4core3ptr183drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..tasks..Task$GT$$GT$$GT$17hdc1f7ebbc0864e88E.exit934"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %i.ny = load i32, ptr %i.do, align 8, !range !82138, !noundef !23 ; 2 uses
  %.not735 = icmp eq i32 %i.ny, 13
  br i1 %.not735, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.sroa.4538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2201.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4538.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  store i32 %i.ny, ptr %i.ap, align 8
  %i.nz = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9fa194e430feb3b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ap)
          to label %bb.km unwind label %.thread1450

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store ptr %i.et, ptr %i.dl, align 8
  %.sroa.4542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.4542.0..sroa_idx, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.es, ptr %i.oa, align 8
  %.sroa.4546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.4546.0..sroa_idx, align 8
  store ptr @2824, ptr %i.dm, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 3, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store ptr null, ptr %i.oc, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dl, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 2, ptr %i.oe, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dm)
          to label %bb.di unwind label %.thread1450

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store ptr @2826, ptr %i.dk, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 1, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store ptr null, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i64 0, ptr %i.oi, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dk)
          to label %bb.dj unwind label %.thread1450

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  invoke void @_ZN4dump6writer10DumpWriter20create_batches_queue17h33a6eb1763533571E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb)
          to label %bb.dk unwind label %.thread1450

bb.dk:                                            ; preds = %bb.dj
  %i.oj = load i64, ptr %i.di, align 8, !range !42, !noundef !23
  %i.ok = trunc nuw i64 %i.oj to i1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6203, ptr noundef nonnull align 8 dereferenceable(32) %i.ol, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br i1 %i.ok, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.om = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9fa194e430feb3b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %.sroa.6203)
          to label %"_ZN4core3ptr46drop_in_place$LT$dump..writer..BatchWriter$GT$17he3b6f02be04f3732E.exit" unwind label %.thread1450

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6203, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store i32 0, ptr %i.dh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$4iter17h9a0cd9ceee11e155E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dg, i64 %.sroa.678.0, i32 %i.mh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.do unwind label %bb.dn

.thread1450:                                      ; preds = %bb.cp, %bb.cn, %bb.cr, %bb.eh, %"_ZN4core3ptr183drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..tasks..Task$GT$$GT$$GT$17hdc1f7ebbc0864e88E.exit934", %bb.dh, %bb.di, %bb.dj, %bb.kl, %bb.dl, %bb.dg, %bb.ct, %bb.cu, %bb.cw, %bb.nf, %bb.dv, %bb.ea, %bb.jx, %"_ZN4core3ptr186drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$17he31964f62925b4b5E.exit937", %bb.eg, %"_ZN4core3ptr112drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..str..Str$C$meilitool..uuid_codec..UuidCodec$GT$$GT$17h83a8c467babf010aE.exit940", %bb.ef, %bb.dy, %bb.dx, %bb.dw
  %lpad.thr_comm1448 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1384

bb.dn:                                            ; preds = %bb.dp, %bb.dm, %bb.dt, %bb.kj
  %lpad.thr_comm.split-lp1449 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1431

bb.do:                                            ; preds = %bb.dm
  %i.on = load i32, ptr %i.dg, align 8, !range !130, !noundef !23 ; 2 uses
  %.not737 = icmp eq i32 %i.on, 5
  br i1 %.not737, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.sroa.4553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %.sroa.4553.0.copyload = load i32, ptr %.sroa.4553.0..sroa_idx, align 4
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.5554.0.copyload = load ptr, ptr %.sroa.5554.0..sroa_idx, align 8
  %.sroa.6555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.6555.0.copyload = load i8, ptr %.sroa.6555.0..sroa_idx, align 8
  %.sroa.7556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 17
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5221.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7556.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  store i32 %i.on, ptr %i.ao, align 8
  %.sroa.2218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %.sroa.4553.0.copyload, ptr %.sroa.2218.0..sroa_idx, align 4
  %.sroa.3219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.5554.0.copyload, ptr %.sroa.3219.0..sroa_idx, align 8
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i8 %.sroa.6555.0.copyload, ptr %.sroa.4220.0..sroa_idx, align 8
  %i.oo = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hdfb6554553a6f20bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao)
          to label %bb.kk unwind label %bb.dn

bb.dq:                                            ; preds = %bb.do
  %i.op = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !noundef !23
  %i.or = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.os = load i8, ptr %i.or, align 8, !range !31, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  store ptr %i.oq, ptr %i.df, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i8 %i.os, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.3227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.2721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.3722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  br label %bb.dr

bb.dr:                                            ; preds = %bb.kg, %bb.dq
  invoke fastcc void @"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7b647ac9cf118ab3E"(ptr noalias noundef align 8 captures(address) dereferenceable(1272) %i.an, ptr noalias noundef align 8 dereferenceable(16) %i.df)
          to label %bb.ds unwind label %.loopexit.split-lp1684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1684:                           ; preds = %.loopexit.split-lp1684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1689.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn794 = phi { ptr, i32 } [ %lpad.loopexit.split-lp3360, %.loopexit.split-lp1689.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3357, %.loopexit.split-lp1684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN64_$LT$heed..cursor..RoCursor$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb513896864dab575E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.df)
          to label %.thread1431 unwind label %bb.q

.loopexit.split-lp1684.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kf, %bb.dr, %bb.kh, %bb.kb
  %lpad.loopexit.split-lp3357 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1684

bb.ds:                                            ; preds = %bb.dr
  %i.ov = load i64, ptr %i.ou, align 8, !range !61, !noundef !23 ; 2 uses
  switch i64 %i.ov, label %bb.kc [
    i64 3, label %bb.dt
    i64 2, label %bb.kb
  ]

bb.dt:                                            ; preds = %bb.ds
  invoke void @"_ZN64_$LT$heed..cursor..RoCursor$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb513896864dab575E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.df)
          to label %"_ZN4core3ptr186drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$17he31964f62925b4b5E.exit937" unwind label %bb.dn

"_ZN4core3ptr186drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$17he31964f62925b4b5E.exit937": ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 32, i1 false)
  invoke void @_ZN4dump6writer11BatchWriter5flush17h3bdccc702bd1ba0dE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.db)
          to label %bb.du unwind label %.thread1450

bb.du:                                            ; preds = %"_ZN4core3ptr186drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..integer..U32$LT$byteorder..BigEndian$GT$$C$heed_types..serde_json..SerdeJson$LT$meilisearch_types..batches..Batch$GT$$GT$$GT$17he31964f62925b4b5E.exit937"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.ow = load i32, ptr %i.dc, align 8, !range !82138, !noundef !23 ; 2 uses
  %.not740 = icmp eq i32 %i.ow, 13
  br i1 %.not740, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.sroa.4568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %.sroa.2247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2247.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4568.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  store i32 %i.ow, ptr %i.al, align 8
  %i.ox = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h9fa194e430feb3b0E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.al)
          to label %bb.ka unwind label %.thread1450

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  store ptr %i.dh, ptr %i.cz, align 8
  %.sroa.4572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.4572.0..sroa_idx, align 8
  store ptr @2828, ptr %i.da, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 2, ptr %i.oy, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr null, ptr %i.oz, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.cz, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 1, ptr %i.pb, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.da)
          to label %bb.dx unwind label %.thread1450

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  store ptr @2830, ptr %i.cy, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 1, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr null, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.pe, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i64 0, ptr %i.pf, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cy)
          to label %bb.dy unwind label %.thread1450

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  store i32 0, ptr %i.cx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$4iter17h8db6e44d747c3d2bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cw, i64 %.sroa.682.0, i32 %i.mn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.dz unwind label %.thread1450

bb.dz:                                            ; preds = %bb.dy
  %i.pg = load i32, ptr %i.cw, align 8, !range !130, !noundef !23 ; 2 uses
  %.not742 = icmp eq i32 %i.pg, 5
  br i1 %.not742, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.sroa.4579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.sroa.4579.0.copyload = load i32, ptr %.sroa.4579.0..sroa_idx, align 4
  %.sroa.5580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.5580.0.copyload = load ptr, ptr %.sroa.5580.0..sroa_idx, align 8
  %.sroa.6581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.6581.0.copyload = load i8, ptr %.sroa.6581.0..sroa_idx, align 8
  %.sroa.7582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 17
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5265.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7582.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  store i32 %i.pg, ptr %i.ak, align 8
  %.sroa.2262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.sroa.4579.0.copyload, ptr %.sroa.2262.0..sroa_idx, align 4
  %.sroa.3263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.5580.0.copyload, ptr %.sroa.3263.0..sroa_idx, align 8
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i8 %.sroa.6581.0.copyload, ptr %.sroa.4264.0..sroa_idx, align 8
  %i.ph = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hdfb6554553a6f20bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.jz unwind label %.thread1450

bb.eb:                                            ; preds = %bb.dz
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !noundef !23
  %i.pk = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.pl = load i8, ptr %i.pk, align 8, !range !31, !noundef !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store ptr %i.pj, ptr %i.cv, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.pl, ptr %i.pm, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.3268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.3268.sroa.3.0..sroa.3268.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.ps = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.4592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.5593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.4286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %.sroa.41232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.51233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.14.0..sroa_idx1207 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.21.0..sroa_idx1209 = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.131217.0..sroa_idx1218 = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %.sroa.18.0..sroa_idx1220 = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %.sroa.4615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %.sroa.5618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 50
  %.sroa.4340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %.sroa.5341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 50
  %i.qe = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.qf = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.sroa.0621.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.0621.sroa.4.sroa.4.0..sroa.0621.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.0621.sroa.4.sroa.5.0..sroa.0621.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.0621.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.sroa.0621.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %.sroa.0621.sroa.6.sroa.4.0..sroa.0621.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %.sroa.0621.sroa.6.sroa.5.0..sroa.0621.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %.sroa.4622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %.sroa.8353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.8353.sroa.7.0..sroa.8353.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.8353.sroa.8.0..sroa.8353.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.8353.sroa.9.0..sroa.8353.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.qm = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.4695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.5696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 328
  %.sroa.4401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.5402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 328
  br label %bb.ec

bb.ec:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit1008", %bb.eb
  invoke fastcc void @"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8ce1d18e695fb1e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.cu, ptr noalias noundef align 8 dereferenceable(16) %i.cv)
          to label %bb.ed unwind label %.loopexit.split-lp1637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit986": ; preds = %.loopexit.split-lp1637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gc, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h007f1a28f32a89d9E.exit", %bb.fy, %bb.fx
  %.pn790 = phi { ptr, i32 } [ %.pn788, %bb.gc ], [ %i.te, %bb.fy ], [ %i.te, %bb.fx ], [ %.pn788, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17h007f1a28f32a89d9E.exit" ], [ %lpad.loopexit.split-lp3053, %.loopexit.split-lp1637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN64_$LT$heed..cursor..RoCursor$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb513896864dab575E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %.thread1384 unwind label %bb.q

.loopexit.split-lp1637.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fw, %bb.ec, %bb.fv
  %lpad.loopexit.split-lp3053 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf715d530d480dbb7E.exit986"

bb.ed:                                            ; preds = %bb.ec
  %i.qn = load i64, ptr %i.cu, align 8, !range !42, !noundef !23
  %i.qo = trunc nuw i64 %i.qn to i1
  br i1 %i.qo, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %.sroa.0266.0.copyload = load ptr, ptr %i.pn, align 8 ; 3 uses
  %.sroa.3268.sroa.0.0.copyload = load i64, ptr %.sroa.3268.0..sroa_idx, align 8 ; 3 uses
  %i.qp = icmp eq ptr %.sroa.0266.0.copyload, null
  br i1 %i.qp, label %bb.fv, label %bb.fw

bb.ef:                                            ; preds = %bb.ed
  invoke void @"_ZN64_$LT$heed..cursor..RoCursor$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb513896864dab575E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %"_ZN4core3ptr112drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..str..Str$C$meilitool..uuid_codec..UuidCodec$GT$$GT$17h83a8c467babf010aE.exit940" unwind label %.thread1450

"_ZN4core3ptr112drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..str..Str$C$meilitool..uuid_codec..UuidCodec$GT$$GT$17h83a8c467babf010aE.exit940": ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %i.cx, ptr %i.bo, align 8
  %.sroa.4704.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.4704.0..sroa_idx, align 8
  store ptr @2832, ptr %i.bp, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 2, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %i.qr, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bo, ptr %i.qs, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 1, ptr %i.qt, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bp)
          to label %bb.eg unwind label %.thread1450

bb.eg:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$heed..iterator..iter..RoIter$LT$heed_types..str..Str$C$meilitool..uuid_codec..UuidCodec$GT$$GT$17h83a8c467babf010aE.exit940"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr @2834, ptr %i.bn, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 1, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr null, ptr %i.qv, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.qw, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 0, ptr %i.qx, align 8
  invoke void @_ZN3std2io5stdio7_eprint17h4ba3eb92d5d637abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bn)
          to label %bb.eh unwind label %.thread1450

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, ptr noundef nonnull align 4 dereferenceable(16) %i.gm, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.qy, align 4
  invoke fastcc void @_ZN4time10formatting11formattable6sealed6Sealed6format17h2bbe35839249a285E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bl, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bk, ptr noalias noundef align 4 dereferenceable(8) %i.w)
          to label %bb.ei unwind label %.thread1450

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !82196)
  call void @llvm.experimental.noalias.scope.decl(metadata !82197)
  %i.qz = load i64, ptr %i.bl, align 8, !range !42, !alias.scope !82197, !noundef !23
  %i.ra = trunc nuw i64 %i.qz to i1
  br i1 %i.ra, label %bb.ej, label %bb.en, !prof !26

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !82198
  %i.rb = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.rb, i64 24, i1 false), !noalias !82196
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1085, i64 noundef 43, ptr noundef nonnull align 1 %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1086, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2837) #46
          to label %bb.el unwind label %bb.ek, !noalias !82198

bb.ek:                                            ; preds = %bb.ej
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$time..error..format..Format$GT$17h323c14cd9e906b6cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #44
          to label %.thread1384 unwind label %bb.em, !noalias !82198

end_hunk_1
