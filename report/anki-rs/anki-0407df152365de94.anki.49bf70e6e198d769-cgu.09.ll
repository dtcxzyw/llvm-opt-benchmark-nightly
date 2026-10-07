Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5377
inline.NumDeleted: 2914
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h2111bbbf710927dcE":bb.a
  store i64 %.sroa.15.0.sink, ptr %.sroa.12.0..sroa_idx18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ab:                                            ; preds = %bb.f
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.ac:                                            ; preds = %bb.f
  resume { ptr, i32 } %i.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17h0d6902472fccd7c7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly align 1 captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.4.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %.sroa.4.sroa.7.0..sroa_idx, align 8
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h2111bbbf710927dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef align 1 dereferenceable(1) %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 632
  %i.m = icmp ult i64 %i.i, 12
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !noalias !9734, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = add i64 %i.f, -1                         ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.r = add i64 %i.f, -2
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.03.09.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.prol ], [ %i.p, %.lr.ph.i.i.preheader ]
  %.sroa.06.08.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.prol ], [ %i.o, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.prol, i64 626
  %i.t = load i16, ptr %i.s, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.prol, i64 632
  %i.w = icmp ult i16 %i.t, 12
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.y = load ptr, ptr %i.x, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 3 uses
  %i.z = add i64 %.sroa.03.09.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !9723

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa39.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %.sroa.03.09.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.prol ]
  %.sroa.06.08.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %i.aa = icmp ult i64 %i.r, 7
  br i1 %i.aa, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.03.09.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.sroa.03.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.06.08.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.sroa.06.08.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 626
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 632
  %i.af = icmp ult i16 %i.ac, 12
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 626
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 632
  %i.am = icmp ult i16 %i.aj, 12
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 626
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 632
  %i.at = icmp ult i16 %i.aq, 12
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 626
  %i.ax = load i16, ptr %i.aw, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 632
  %i.ba = icmp ult i16 %i.ax, 12
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 626
  %i.be = load i16, ptr %i.bd, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 632
  %i.bh = icmp ult i16 %i.be, 12
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 626
  %i.bl = load i16, ptr %i.bk, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 632
  %i.bo = icmp ult i16 %i.bl, 12
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 626
  %i.bs = load i16, ptr %i.br, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 632
  %i.bv = icmp ult i16 %i.bs, 12
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 626
  %i.bz = load i16, ptr %i.by, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 632
  %i.cc = icmp ult i16 %i.bz, 12
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !9736, !nonnull !4, !noundef !4 ; 2 uses
  %i.cf = add i64 %.sroa.03.09.i.i, -8            ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.o, %bb.c ], [ %.lcssa39.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ce, %.lr.ph.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 626
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !9735, !noundef !4 ; 2 uses
  %i.cj = zext i16 %i.ci to i64
  %.not.i = icmp eq i16 %i.ci, 0                  ; 2 uses
  %i.ck = add nsw i64 %i.cj, -1
  %spec.select.i = select i1 %.not.i, i64 undef, i64 %i.ck
  %spec.select46.i = select i1 %.not.i, ptr null, ptr %.sroa.06.0.lcssa.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select46.i) ]
  store ptr %spec.select46.i, ptr %i.c, align 8, !noalias !9737
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !9737
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %spec.select.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i, align 8, !noalias !9737
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h2111bbbf710927dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 dereferenceable(1) %2), !noalias !9738
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.029.0.copyload.i = load ptr, ptr %i.cl, align 8, !noalias !9737, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !9737 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9737 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.029.0.copyload.i, i64 626
  %i.cn = load i16, ptr %i.cm, align 2, !noalias !9739, !noundef !4
  %i.co = zext i16 %i.cn to i64
  %i.cp = icmp ult i64 %.sroa.3.0.copyload.i, %i.co
  br i1 %i.cp, label %bb.d, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i", %.lr.ph.i26.i
  %.sroa.0.020.i.i = phi ptr [ %i.cr, %.lr.ph.i26.i ], [ %.sroa.029.0.copyload.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i" ] ; 2 uses
  %.sroa.5.019.i.i = phi i64 [ %i.cs, %.lr.ph.i26.i ], [ %.sroa.2.0.copyload.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i" ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 352
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !9740, !nonnull !4, !noundef !4 ; 3 uses
  %i.cs = add i64 %.sroa.5.019.i.i, 1             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 624
  %i.cu = load i16, ptr %i.ct, align 8, !noalias !9740 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 626
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !9739, !noundef !4
  %i.cx = icmp ult i16 %i.cu, %i.cw
  br i1 %i.cx, label %._crit_edge.loopexit.i.i, label %.lr.ph.i26.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i26.i
  %i.cy = zext i16 %i.cu to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.loopexit.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i"
  %.sroa.033.046.i = phi ptr [ %.sroa.029.0.copyload.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i" ], [ %i.cr, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.sroa.6.sroa.4.0.i = phi i64 [ %.sroa.3.0.copyload.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i" ], [ %i.cy, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.sroa.6.sroa.0.0.i = phi i64 [ %.sroa.2.0.copyload.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17h912a77e1c594e3f6E.exit.i" ], [ %i.cs, %._crit_edge.loopexit.i.i ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.033.046.i, i64 360
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %.sroa.6.sroa.4.0.i ; 2 uses
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %.sroa.033.046.i, i64 %.sroa.6.sroa.4.0.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !noalias !9737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !9737
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 32, i1 false), !noalias !9737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !9737
  %i.dd = icmp eq i64 %.sroa.6.sroa.0.0.i, 0
  %i.de = add nuw nsw i64 %.sroa.6.sroa.4.0.i, 1  ; 2 uses
  br i1 %i.dd, label %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h6a9f1319d8037798E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.033.046.i, i64 632
  %i.dg = icmp samesign ult i64 %.sroa.6.sroa.4.0.i, 11
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de ; 2 uses
  %xtraiter40 = and i64 %.sroa.6.sroa.0.0.i, 7    ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %.pn33.in.i.i.prol = phi ptr [ %i.di, %.prol.preheader ], [ %i.dh, %bb.e ]
  %.pn31.in.i.i.prol = phi i64 [ %.pn31.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.i, %bb.e ]
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.prol.preheader ], [ 0, %bb.e ]
  %.pn31.i.i.prol = add i64 %.pn31.in.i.i.prol, -1 ; 2 uses
  %.pn33.i.i.prol = load ptr, ptr %.pn33.in.i.i.prol, align 8, !noalias !9741, !nonnull !4, !noundef !4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.pn33.i.i.prol, i64 632 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9732

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.pn33.i.i.lcssa.unr = phi ptr [ poison, %bb.e ], [ %.pn33.i.i.prol, %.prol.preheader ]
  %.pn33.in.i.i.unr = phi ptr [ %i.dh, %bb.e ], [ %i.di, %.prol.preheader ]
  %.pn31.in.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.i, %bb.e ], [ %.pn31.i.i.prol, %.prol.preheader ]
  %i.dj = icmp ult i64 %.sroa.6.sroa.0.0.i, 8
  br i1 %i.dj, label %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h6a9f1319d8037798E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn33.in.i.i = phi ptr [ %i.ds, %.new ], [ %.pn33.in.i.i.unr, %.prol.loopexit ]
  %.pn31.in.i.i = phi i64 [ %.pn31.i.i.7, %.new ], [ %.pn31.in.i.i.unr, %.prol.loopexit ]
  %.pn33.i.i = load ptr, ptr %.pn33.in.i.i, align 8, !noalias !9741, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn33.i.i, i64 632
  %.pn33.i.i.1 = load ptr, ptr %i.dk, align 8, !noalias !9741, !nonnull !4, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn33.i.i.1, i64 632
  %.pn33.i.i.2 = load ptr, ptr %i.dl, align 8, !noalias !9741, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn33.i.i.2, i64 632
  %.pn33.i.i.3 = load ptr, ptr %i.dm, align 8, !noalias !9741, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn33.i.i.3, i64 632
  %.pn33.i.i.4 = load ptr, ptr %i.dn, align 8, !noalias !9741, !nonnull !4, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.pn33.i.i.4, i64 632
  %.pn33.i.i.5 = load ptr, ptr %i.do, align 8, !noalias !9741, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn33.i.i.5, i64 632
  %.pn33.i.i.6 = load ptr, ptr %i.dp, align 8, !noalias !9741, !nonnull !4, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn33.i.i.6, i64 632
  %.pn31.i.i.7 = add i64 %.pn31.in.i.i, -8        ; 2 uses
  %.pn33.i.i.7 = load ptr, ptr %i.dq, align 8, !noalias !9741, !nonnull !4, !noundef !4 ; 2 uses
  %i.dr = icmp eq i64 %.pn31.i.i.7, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn33.i.i.7, i64 632
  br i1 %i.dr, label %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h6a9f1319d8037798E.exit", label %.new

"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h6a9f1319d8037798E.exit": ; preds = %.prol.loopexit, %.new, %bb.d
  %.sroa.537.0.i = phi i64 [ %i.de, %bb.d ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.035.0.i = phi ptr [ %.sroa.033.046.i, %bb.d ], [ %.pn33.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn33.i.i.7, %.new ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !9742
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.035.0.i, ptr %i.dt, align 8, !alias.scope !9733, !noalias !9742
  %.sroa.336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.336.0..sroa_idx.i, align 8, !alias.scope !9733, !noalias !9742
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.537.0.i, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !9733, !noalias !9742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %"_ZN5alloc11collections5btree6remove263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_internal_kv17h6a9f1319d8037798E.exit"
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h1c226df6e4f0733aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.e ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 360 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 626
  %i.c = load i16, ptr %i.b, align 2, !noalias !9750, !noundef !4 ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.f = icmp eq i16 %i.c, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i81, i64 24 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i80, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i81 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.8.0.i80 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.01.0.i81, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !9750, !nonnull !4, !noundef !4
  %i.k = getelementptr i8, ptr %.sroa.01.0.i81, i64 16
  %.val6.i = load i64, ptr %i.k, align 8, !noalias !9750, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %.val6.i)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly align 1 %3, ptr nonnull readonly align 1 %.val.i, i64 %spec.store.select.i.i), !alias.scope !9751 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %4, %.val6.i
  %spec.select.i.i = select i1 %i.n, i64 %i.o, i64 %i.m
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  switch i8 %i.p, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i80, %.lr.ph ] ; 3 uses
  %i.q = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.q, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i80, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.r, align 8
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.243.0..sroa_idx, align 8
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.344.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 632
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph
  %i.v = load ptr, ptr %i.u, align 8, !noalias !9752, !nonnull !4, !noundef !4
  %i.w = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h5f129a97e9d3eba2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val49 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val50 = load i64, ptr %i.b, align 8           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.e ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 360 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 626
  %i.e = load i16, ptr %i.d, align 2, !noundef !4 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49) ]
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i83, i64 24 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.0.i82, 1
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.03.0.i83 = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i82 = phi i64 [ %i.j, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.03.0.i83, i64 8
  %.val8.i = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr i8, ptr %.sroa.03.0.i83, i64 16
  %.val9.i = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val50, i64 %.val9.i)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val49, ptr nonnull readonly align 1 %.val8.i, i64 %spec.store.select.i.i.i.i), !alias.scope !9758 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %.val50, %.val9.i
  %spec.select.i.i.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  switch i8 %i.r, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i82, %.lr.ph ] ; 3 uses
  %i.s = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.s, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i82, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.t, align 8
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.243.0..sroa_idx, align 8
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.344.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 632
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.0.i.ph
  %i.x = load ptr, ptr %i.w, align 8, !noalias !9759, !nonnull !4, !noundef !4
  %i.y = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hbabf75cca5840829E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.e ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 360 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 626
  %i.c = load i16, ptr %i.b, align 2, !noalias !9767, !noundef !4 ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.f = icmp eq i16 %i.c, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i81, i64 24 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i80, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i81 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.8.0.i80 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr i8, ptr %.sroa.01.0.i81, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !9767, !nonnull !4, !noundef !4
  %i.k = getelementptr i8, ptr %.sroa.01.0.i81, i64 16
  %.val6.i = load i64, ptr %i.k, align 8, !noalias !9767, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %4, i64 %.val6.i)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly align 1 %3, ptr nonnull readonly align 1 %.val.i, i64 %spec.store.select.i.i), !alias.scope !9768 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %4, %.val6.i
  %spec.select.i.i = select i1 %i.n, i64 %i.o, i64 %i.m
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  switch i8 %i.p, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i80, %.lr.ph ] ; 3 uses
  %i.q = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.q, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i80, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.r, align 8
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.243.0..sroa_idx, align 8
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.344.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 632
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph
  %i.v = load ptr, ptr %i.u, align 8, !noalias !9769, !nonnull !4, !noundef !4
  %i.w = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate227_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$7next_kv17h157bbaf3356d7a30E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 626
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.020 = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.019 = phi i64 [ %i.o, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !noalias !9772, !noundef !4 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = zext i16 %i.q to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.020, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.019, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.5.019, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 624
  %i.q = load i16, ptr %i.p, align 8, !noalias !9772 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 626
  %i.s = load i16, ptr %i.r, align 2, !noundef !4
  %i.t = icmp ult i16 %i.q, %i.s
  br i1 %i.t, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17hbcaa53c91ac98fa0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.b, 0
  %i.g = add i64 %i.e, 1                          ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.k = icmp samesign ult i64 %i.g, 12
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.pn33.in.prol = phi ptr [ %i.m, %.prol.preheader ], [ %i.l, %bb.c ]
  %.pn31.in.prol = phi i64 [ %.pn31.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.pn31.prol = add i64 %.pn31.in.prol, -1        ; 2 uses
  %.pn33.prol = load ptr, ptr %.pn33.in.prol, align 8, !noalias !4, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn33.prol, i64 632 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9773

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.pn33.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.pn33.prol, %.prol.preheader ]
  %.pn33.in.unr = phi ptr [ %i.l, %bb.c ], [ %i.m, %.prol.preheader ]
  %.pn31.in.unr = phi i64 [ %i.b, %bb.c ], [ %.pn31.prol, %.prol.preheader ]
  %i.n = icmp ult i64 %i.b, 8
  br i1 %i.n, label %.unr-lcssa, label %.new

bb.d:                                             ; preds = %.unr-lcssa, %bb.b
  ret void

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn33.in = phi ptr [ %i.w, %.new ], [ %.pn33.in.unr, %.prol.loopexit ]
  %.pn31.in = phi i64 [ %.pn31.7, %.new ], [ %.pn31.in.unr, %.prol.loopexit ]
  %.pn33 = load ptr, ptr %.pn33.in, align 8, !noalias !4, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.pn33, i64 632
  %.pn33.1 = load ptr, ptr %i.o, align 8, !noalias !4, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.pn33.1, i64 632
  %.pn33.2 = load ptr, ptr %i.p, align 8, !noalias !4, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.pn33.2, i64 632
  %.pn33.3 = load ptr, ptr %i.q, align 8, !noalias !4, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.pn33.3, i64 632
  %.pn33.4 = load ptr, ptr %i.r, align 8, !noalias !4, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.pn33.4, i64 632
  %.pn33.5 = load ptr, ptr %i.s, align 8, !noalias !4, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.pn33.5, i64 632
  %.pn33.6 = load ptr, ptr %i.t, align 8, !noalias !4, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.pn33.6, i64 632
  %.pn31.7 = add i64 %.pn31.in, -8                ; 2 uses
  %.pn33.7 = load ptr, ptr %i.u, align 8, !noalias !4, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %.pn31.7, 0
  %i.w = getelementptr inbounds nuw i8, ptr %.pn33.7, i64 632
  br i1 %i.v, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.pn33.lcssa = phi ptr [ %.pn33.lcssa.unr, %.prol.loopexit ], [ %.pn33.7, %.new ]
  store ptr %.pn33.lcssa, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h0e7117dea2d19058E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !noalias !9778, !noundef !4 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.e, null
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.0.08 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.07 = phi i64 [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %.sroa.3.07, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.07, 0
  %..i = select i1 %.not.i, i64 456, i64 552
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.08, i64 noundef range(i64 1, 0) %..i, i64 noundef 8) #44, !noalias !9779
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !noalias !9778, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.f, %.lr.ph ]
  %.not.i4 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i5 = select i1 %.not.i4, i64 456, i64 552
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef range(i64 1, 0) %..i5, i64 noundef 8) #44, !noalias !9779
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h9831aeaf1901ad1cE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !noalias !9784, !noundef !4 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.e, null
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
end_hunk_0
