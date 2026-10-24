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
