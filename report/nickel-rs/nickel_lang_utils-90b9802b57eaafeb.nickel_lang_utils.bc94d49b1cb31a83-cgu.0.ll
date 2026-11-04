Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_utils-90b9802b57eaafeb.nickel_lang_utils.bc94d49b1cb31a83-cgu.0?download=true
inline.NumInlined: 8202
inline.NumDeleted: 3888
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h631179a280c97600E":bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.r, ptr %i.af, align 1, !noalias !24458
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %1, 65536
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = or disjoint i8 %i.x, -32
  store i8 %i.ah, ptr %i.n, align 1, !noalias !24458
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.v, ptr %i.ai, align 1, !noalias !24458
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.r, ptr %i.aj, align 1, !noalias !24458
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.ac, ptr %i.n, align 1, !noalias !24458
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.z, ptr %i.ak, align 1, !noalias !24458
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 %i.v, ptr %i.al, align 1, !noalias !24458
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.r, ptr %i.am, align 1, !noalias !24458
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.an = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !24458
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd717793223240653E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24471)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !24472, !noundef !15 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !39, !alias.scope !24472, !noundef !15
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb9b8d757c4430a9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !24473
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !24474
  br label %_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit

_ZN5alloc6string6String8push_str17hc7fbd0eb7d246f02E.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i.i, %bb.b ] ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !24474, !nonnull !15, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !24474
  %i.k = add i64 %i.f, %2
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !24474
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h9aa82ce627d8bf05E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24511)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !24512
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !24512 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !24512 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !24512 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !24512
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0fb0e60f7ff64e8fE.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 1072
  %i.g = load ptr, ptr %i.f, align 8, !noalias !24513, !nonnull !15, !noundef !15 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !24482

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 1072
  %i.k = load ptr, ptr %i.j, align 8, !noalias !24513, !nonnull !15, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1072
  %i.m = load ptr, ptr %i.l, align 8, !noalias !24513, !nonnull !15, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1072
  %i.o = load ptr, ptr %i.n, align 8, !noalias !24513, !nonnull !15, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1072
  %i.q = load ptr, ptr %i.p, align 8, !noalias !24513, !nonnull !15, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1072
  %i.s = load ptr, ptr %i.r, align 8, !noalias !24513, !nonnull !15, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1072
  %i.u = load ptr, ptr %i.t, align 8, !noalias !24513, !nonnull !15, !noundef !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1072
  %i.w = load ptr, ptr %i.v, align 8, !noalias !24513, !nonnull !15, !noundef !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1072
  %i.y = load ptr, ptr %i.x, align 8, !noalias !24513, !nonnull !15, !noundef !15 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !24514, !noundef !15 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf22b1a3a35dd6083E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.5.05.i.i = phi i64 [ %i.ae, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.5.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #40, !noalias !24515
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !24514, !noundef !15 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf22b1a3a35dd6083E.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf22b1a3a35dd6083E.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.5.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #40, !noalias !24515
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0fb0e60f7ff64e8fE.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0fb0e60f7ff64e8fE.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hf22b1a3a35dd6083E.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24517)
  %i.ah = load i64, ptr %1, align 8, !range !29, !alias.scope !24518, !noundef !15
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !24518, !noundef !15 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !24519
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !24519
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !24518, !noundef !15 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !24518, !nonnull !15, !noundef !15 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 1072
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !24520, !nonnull !15, !noundef !15 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !24494

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 1072
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !24520, !nonnull !15, !noundef !15
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 1072
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !24520, !nonnull !15, !noundef !15
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 1072
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !24520, !nonnull !15, !noundef !15
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 1072
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !24520, !nonnull !15, !noundef !15
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 1072
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !24520, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 1072
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !24520, !nonnull !15, !noundef !15
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 1072
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !24520, !nonnull !15, !noundef !15
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 1072
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !24520, !nonnull !15, !noundef !15 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24521)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 1066
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !24522, !noundef !15
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i", %bb.i
  %.sroa.0.060.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i = phi i64 [ %i.by, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i" ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.060.i.i.i.i, align 8, !noalias !24523, !noundef !15 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i" ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h56ede920b139f922E.exit.i" ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bj = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bi, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h5d0eab99324eefcaE.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 1072
  %i.bl = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !24524, !nonnull !15, !noundef !15 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !24509

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.h ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h5d0eab99324eefcaE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !24524, !nonnull !15, !noundef !15
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !24524, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !24524, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !24524, !nonnull !15, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !24524, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !24524, !nonnull !15, !noundef !15
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !24524, !nonnull !15, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !24524, !nonnull !15, !noundef !15 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 1072
  br i1 %i.bw, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h5d0eab99324eefcaE.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 1064
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !24523 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #40, !noalias !24525
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 1066
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !24522, !noundef !15
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #40, !noalias !24525
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @492) #41
          to label %.noexc.i.i unwind label %bb.k, !noalias !24526

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #41, !noalias !24527
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h5d0eab99324eefcaE.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !24519
  store i64 0, ptr %i.al, align 8, !alias.scope !24519
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !24519
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h5d0eab99324eefcaE.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h0fb0e60f7ff64e8fE.exit"
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$10try_unwrap17hbd1528b586d66d4fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) initializes((0, 16)) %0, ptr noundef nonnull %1) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !15
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false)
  store i64 0, ptr %1, align 8
  %i.d = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr86drop_in_place$LT$alloc..rc..Weak$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$17hbce742c68e2d0920E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !15
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr86drop_in_place$LT$alloc..rc..Weak$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$17hbce742c68e2d0920E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 208, i64 noundef 8) #40
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..rc..Weak$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$17hbce742c68e2d0920E.exit"

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..rc..Weak$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$17hbce742c68e2d0920E.exit"

"_ZN4core3ptr86drop_in_place$LT$alloc..rc..Weak$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$17hbce742c68e2d0920E.exit": ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$15unwrap_or_clone28_$u7b$$u7b$closure$u7d$$u7d$17hfe3bafac3c227a0eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [152 x i8], align 8               ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24555)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load i32, ptr %i.h, align 8, !alias.scope !24555, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24556
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.g)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !24555, !nonnull !15, !noundef !15 ; 7 uses
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = and i64 %i.k, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2) ; 2 uses
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !20

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc.i unwind label %bb.e, !noalias !24554

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
end_hunk_0
