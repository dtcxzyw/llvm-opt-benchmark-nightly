inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN10actix_http6header3map9HeaderMap6insert17h7a7e7214d7598aeeE:bb.a
  %.sroa.6.0.i.i.i.i = select i1 %.not.not.i.not.i.i.i, i64 undef, i64 %i.bs
  %i.bt = add i64 %.sroa.6.0.i.i.i.i, %.sroa.0.017.i.i.i
  %i.bu = and i64 %i.bt, %.val7.i.i
  br i1 %.not.not.i.not.i.i.i, label %bb.h, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.6.122.i.i.i = phi i64 [ %i.bu, %bb.g ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = icmp eq i16 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %.split.us, !prof !282

bb.h:                                             ; preds = %.thread.i.i.i, %bb.g
  %.sroa.01.123.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.g ]
  %.sroa.6.121.i.i.i = phi i64 [ %.sroa.6.122.i.i.i, %.thread.i.i.i ], [ undef, %bb.g ]
  %i.by = add i64 %i.aw, 16                       ; 2 uses
  %i.bz = add i64 %i.by, %.sroa.0.017.i.i.i
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd652cb671641da66E.exit.i.i.split"

.split.us:                                        ; preds = %.thread.i.i.i, %.thread.i.i.i.us
  %.us-phi21 = phi i64 [ %.sroa.6.122.i.i.i.us, %.thread.i.i.i.us ], [ %.sroa.6.122.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.us-phi21
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !1693, !noundef !4 ; 2 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %bb.i, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit", !prof !282

bb.i:                                             ; preds = %.split.us
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !1693
  %i.cd = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %i.cf = icmp ne i16 %i.ce, 0
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ce, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ch
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !1703
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit"

.loopexit.i:                                      ; preds = %.split.us.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h00642b916778a994E.exit.i.i.us"
  %.sroa.3.0.i.ph.i = phi ptr [ %i.ac, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h00642b916778a994E.exit.i.i.us" ], [ %i.bf, %.split.us.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.ph.i) ]
  %i.ci = getelementptr inbounds i8, ptr %.sroa.3.0.i.ph.i, i64 -168 ; 2 uses
  %.sroa.3.8.copyload = load i64, ptr %i.ci, align 8, !noalias !1707
  %.sroa.5.8..sroa_idx = getelementptr inbounds i8, ptr %.sroa.3.0.i.ph.i, i64 -160
  %.sroa.5.8.copyload = load i64, ptr %.sroa.5.8..sroa_idx, align 8, !noalias !1707 ; 2 uses
  %.sroa.6.8..sroa_idx = getelementptr inbounds i8, ptr %.sroa.3.0.i.ph.i, i64 -152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.8..sroa_idx, i64 144, i1 false)
  %.sroa.7.8..sroa_idx = getelementptr inbounds i8, ptr %.sroa.3.0.i.ph.i, i64 -8
  %.sroa.7.8.copyload = load i64, ptr %.sroa.7.8..sroa_idx, align 8, !noalias !1707 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ci, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false), !noalias !1708
  br i1 %.not.i.i, label %.cont.i, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.fr, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !1709, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void %i.ck(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.q, i64 noundef %i.p), !inline_history !1722
  br label %.cont.i

bb.k:                                             ; preds = %bb.c, %bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b)
          to label %bb.m unwind label %bb.l, !noalias !1708

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !1723
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.co = load ptr, ptr %i.c, align 8, !alias.scope !1730, !noalias !1684, !noundef !4 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !1743, !nonnull !4, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !1744, !noalias !1684, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !1744, !noalias !1684, !noundef !4
  invoke void %i.cr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %.body unwind label %bb.l, !noalias !1723, !inline_history !677

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit": ; preds = %.split.us, %bb.i
  %i.cx = phi i8 [ %.pre.i, %bb.i ], [ %i.cb, %.split.us ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.ch, %bb.i ], [ %.us-phi21, %.split.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1684
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.cy, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false), !noalias !1745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.da = and i8 %i.cx, 1
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.dd = and i64 %i.dc, %.val7.i.i
  store i8 %i.l, ptr %i.cz, align 1, !noalias !1703
  %i.de = getelementptr i8, ptr %.val.i.i, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store i8 %i.l, ptr %i.df, align 1, !noalias !1703
  %i.dg = load <2 x i64>, ptr %i.f, align 8, !alias.scope !1747, !noalias !1748
  %i.dh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.db, i64 0
  %i.di = sub <2 x i64> %i.dg, %i.dh
  store <2 x i64> %i.di, ptr %i.f, align 8, !alias.scope !1747, !noalias !1748
  %i.dj = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.dk = getelementptr inbounds [200 x i8], ptr %.val.i.i, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.a, i64 200, i1 false), !noalias !1749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN10actix_http6header3map7Removed3new17hfb7f83048aa5b2f8E.exit

.cont.i:                                          ; preds = %bb.j, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dm = icmp ugt i64 %.sroa.7.8.copyload, 4     ; 3 uses
  %.sink10.i.i.i = select i1 %i.dm, i64 %.sroa.5.8.copyload, i64 %.sroa.7.8.copyload
  %spec.select.i = select i1 %i.dm, i64 %.sroa.7.8.copyload, i64 0
  %spec.select12.i = select i1 %i.dm, i64 0, i64 %.sroa.5.8.copyload
  br label %_ZN10actix_http6header3map7Removed3new17hfb7f83048aa5b2f8E.exit

_ZN10actix_http6header3map7Removed3new17hfb7f83048aa5b2f8E.exit: ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit", %.cont.i
  %.sroa.5.sroa.5.0.i = phi i64 [ %.sink10.i.i.i, %.cont.i ], [ undef, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit" ]
  %.sroa.5.sroa.0.sroa.0.0.i = phi i64 [ %.sroa.3.8.copyload, %.cont.i ], [ undef, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit" ]
  %.sroa.5.sroa.0.sroa.4.0.i = phi i64 [ %spec.select12.i, %.cont.i ], [ undef, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit" ]
  %.sroa.5.sroa.0.sroa.6.0.i = phi i64 [ %spec.select.i, %.cont.i ], [ undef, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit" ]
  %.sroa.0.0.i = phi i64 [ 1, %.cont.i ], [ 0, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hdb33d5a099f3315aE.exit" ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !1750, !noalias !1753
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1750, !noalias !1753
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.0.sroa.4.0.i, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1750, !noalias !1753
  %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6, i64 144, i1 false)
  %.sroa.4.sroa.0.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.5.sroa.0.sroa.6.0.i, ptr %.sroa.4.sroa.0.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1750, !noalias !1753
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1750, !noalias !1753
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1750, !noalias !1753
  ret void

.body:                                            ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.cm
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http6header3map9HeaderMap7reserve17h1dd7bb112d720498E(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1755, !noalias !1758, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd652cb671641da66E.exit", !prof !282

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h89c9f30401984c70E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, i1 noundef zeroext true) ; 0 uses
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd652cb671641da66E.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd652cb671641da66E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN10actix_http6header6shared7quality8itoa_fmt17hf20417e516b0f08bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @"_ZN38_$LT$u16$u20$as$u20$itoa..Unsigned$GT$3fmt17h380bffb8b40082f3E"(i16 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(5) %i.a) ; 2 uses
  %i.c = sub nuw i64 5, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.e = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http6header6shared8extended20parse_extended_value17he34a5fc08a8d6dbbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.i.i:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.10152 = alloca [56 x i8], align 8        ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.11 = alloca [7 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.lr.ph.split.i.i
  %i.f = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.s, %bb.c ] ; 6 uses
  %i.g = sub nuw i64 %2, %i.f                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.i = icmp ult i64 %i.g, 16
  br i1 %i.i, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, %i.f
  br i1 %.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.b
  %.sroa.01.05.i.i.i = phi i64 [ %i.m, %bb.b ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.05.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1760, !noalias !1763, !noundef !4
  %i.l = icmp eq i8 %i.k, 39
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = add nuw i64 %.sroa.01.05.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 39, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.g), !noalias !1763 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.p, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = add i64 %i.f, 1
  %i.s = add i64 %i.r, %.sroa.4.0.i27.i.i         ; 5 uses
  %.not21.i.i = icmp ugt i64 %i.s, %2
  %i.t = add i64 %i.f, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.t, %2
  br i1 %or.cond.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i", label %bb.a

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.u = add i64 %i.f, %.sroa.4.0.i27.i.i         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %lhsc = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %lhsc, 39
  br i1 %i.w, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i", label %bb.c

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i": ; preds = %bb.c, %bb.d, %.preheader.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.b
  %.sink263 = phi i64 [ %2, %bb.b ], [ %2, %.preheader.i.i.i ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %i.s, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %.pre.i2.i100 = phi i64 [ 0, %bb.b ], [ 0, %.preheader.i.i.i ], [ 0, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %i.s, %bb.d ], [ 0, %bb.c ] ; 9 uses
  %i.x = phi i1 [ true, %bb.b ], [ true, %.preheader.i.i.i ], [ true, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ false, %bb.d ], [ true, %bb.c ]
  %.sroa.4.1.i = phi i64 [ %2, %bb.b ], [ %2, %.preheader.i.i.i ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %i.u, %bb.d ], [ %2, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN91_$LT$actix_http..header..shared..charset..Charset$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hc05a56208072ecfaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %.sroa.4.1.i)
  %i.y = load i64, ptr %i.e, align 8, !range !1769, !noundef !4 ; 8 uses
  %i.z = icmp eq i64 %i.y, -9223372036854775784
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.k

bb.e:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i"
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !350, !noundef !4 ; 4 uses
  %.val.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1770, !align !132, !noundef !4 ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val1.i.i = load ptr, ptr %i.ac, align 8       ; 6 uses
  %i.ad = icmp eq ptr %.val.i.i, null
  br i1 %i.ad, label %"_ZN4core3ptr45drop_in_place$LT$actix_http..error..Error$GT$17h8488a389a74131b3E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.ae = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !1773 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.ae(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.i, !noalias !1773

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !352, !invariant.load !4, !noalias !1773 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !353, !invariant.load !4, !noalias !1773 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ag, 0
  br i1 %i.ak, label %"_ZN4core3ptr45drop_in_place$LT$actix_http..error..Error$GT$17h8488a389a74131b3E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.ai) #45, !noalias !1773
  br label %"_ZN4core3ptr45drop_in_place$LT$actix_http..error..Error$GT$17h8488a389a74131b3E.exit"

bb.i:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !352, !invariant.load !4, !noalias !1773 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !353, !invariant.load !4, !noalias !1773 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %bb.j, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #45, !noalias !1773
  br label %bb.j

common.resume:                                    ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17hc26c8e9e7b778338E.exit142", %bb.p, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.j ], [ %.pn79, %bb.p ], [ %.pn79, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17hc26c8e9e7b778338E.exit142" ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 24, i64 noundef 8) #45
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$actix_http..error..Error$GT$17h8488a389a74131b3E.exit": ; preds = %bb.e, %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 24, i64 noundef 8) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.264.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr65drop_in_place$LT$actix_http..header..shared..charset..Charset$GT$17he3b2214c654c3fcfE.exit147"

bb.k:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17hf85aa8bc7f83cec1E.exit.i"
  %.sroa.539.sroa.0.0.copyload = load i64, ptr %i.aa, align 8 ; 3 uses
  %.sroa.539.sroa.5.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.539.sroa.5.0.copyload = load i8, ptr %.sroa.539.sroa.5.0..sroa.539.0..sroa_idx.sroa_idx, align 8
  %.sroa.539.sroa.6.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.539.sroa.6.0..sroa.539.0..sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10152)
  br i1 %i.x, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h72d0ed09d19e36aaE.exit121", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = icmp ult i64 %2, %.sink263
  br i1 %i.as, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115", label %.backedge

.backedge:                                        ; preds = %bb.l, %.backedge.backedge
  %i.at = phi i64 [ %i.bg, %.backedge.backedge ], [ %.sink263, %bb.l ] ; 6 uses
  %i.au = sub nuw i64 %2, %i.at                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.at ; 2 uses
  %i.aw = icmp ult i64 %i.au, 16
  br i1 %i.aw, label %.preheader.i.i.i116, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i97

.preheader.i.i.i116:                              ; preds = %.backedge
  %.not.i.i.i117 = icmp eq i64 %2, %i.at
  br i1 %.not.i.i.i117, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115", label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %.preheader.i.i.i116, %bb.m
  %.sroa.01.05.i.i.i119 = phi i64 [ %i.ba, %bb.m ], [ 0, %.preheader.i.i.i116 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.01.05.i.i.i119
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !1776, !noalias !1779, !noundef !4
  %i.az = icmp eq i8 %i.ay, 39
  br i1 %i.az, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i109, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i118
  %i.ba = add nuw i64 %.sroa.01.05.i.i.i119, 1    ; 2 uses
  %exitcond.not.i.i.i120 = icmp eq i64 %i.ba, %i.au
  br i1 %exitcond.not.i.i.i120, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115", label %.lr.ph.i.i.i118

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i97: ; preds = %.backedge
  %i.bb = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 39, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.av, i64 noundef %i.au)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i97
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = trunc nuw i64 %i.bc to i1
  br i1 %i.be, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i109, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i109: ; preds = %.lr.ph.i.i.i118, %.noexc
  %.sroa.4.0.i27.i.i110 = phi i64 [ %i.bd, %.noexc ], [ %.sroa.01.05.i.i.i119, %.lr.ph.i.i.i118 ] ; 3 uses
  %i.bf = add i64 %i.at, 1
  %i.bg = add i64 %i.bf, %.sroa.4.0.i27.i.i110    ; 3 uses
  %.not21.i.i112 = icmp ugt i64 %i.bg, %2         ; 2 uses
  %i.bh = add i64 %i.at, %.sroa.4.0.i27.i.i110
  %or.cond.i.i113.not = icmp ult i64 %i.bh, %2
  br i1 %or.cond.i.i113.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i109
  br i1 %.not21.i.i112, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.n, %bb.o
  br label %.backedge

bb.o:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i109
  %i.bi = add i64 %i.at, %.sroa.4.0.i27.i.i110    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %lhsc228 = load i8, ptr %i.bj, align 1
  %i.bk = icmp eq i8 %lhsc228, 39                 ; 4 uses
  %brmerge = or i1 %i.bk, %.not21.i.i112
  br i1 %brmerge, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115.loopexit264.split.loop.exit282", label %.backedge.backedge

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h72d0ed09d19e36aaE.exit121": ; preds = %bb.k
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.319.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17hc26c8e9e7b778338E.exit"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17hc26c8e9e7b778338E.exit142": ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %.body, %.body
  %.pn79 = phi { ptr, i32 } [ %eh.lpad-body, %bb.x ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %switch1.i = icmp slt i64 %i.y, -9223372036854775784
  %i.bl = icmp eq i64 %i.y, 0
  %or.cond.i = or i1 %switch1.i, %i.bl
  br i1 %or.cond.i, label %common.resume, label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17hc26c8e9e7b778338E.exit142"
  %i.bm = inttoptr i64 %.sroa.539.sroa.0.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !1785
  br label %common.resume

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i97
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17hc26c8e9e7b778338E.exit142"

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$language_tags..LanguageTag$GT$$GT$17hc26c8e9e7b778338E.exit142"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115.loopexit264.split.loop.exit282": ; preds = %bb.o
  %.mux.le = select i1 %i.bk, i64 %i.bi, i64 %2
  %.mux254.le = select i1 %i.bk, i64 %i.bg, i64 %.pre.i2.i100
  %not..le = xor i1 %i.bk, true
  br label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115"

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115": ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115.loopexit264.split.loop.exit282", %bb.n, %.preheader.i.i.i116, %.noexc, %bb.m, %bb.l
  %.sink = phi i64 [ %2, %bb.l ], [ %2, %bb.m ], [ %2, %.preheader.i.i.i116 ], [ %.mux.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115.loopexit264.split.loop.exit282" ], [ %2, %bb.n ], [ %2, %.noexc ] ; 2 uses
  %.pre.i132.ph = phi i64 [ %.pre.i2.i100, %bb.l ], [ %.pre.i2.i100, %bb.m ], [ %.pre.i2.i100, %.preheader.i.i.i116 ], [ %.mux254.le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115.loopexit264.split.loop.exit282" ], [ %.pre.i2.i100, %bb.n ], [ %.pre.i2.i100, %.noexc ]
  %.ph = phi i1 [ true, %bb.l ], [ true, %bb.m ], [ true, %.preheader.i.i.i116 ], [ %not..le, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115.loopexit264.split.loop.exit282" ], [ true, %bb.n ], [ true, %.noexc ]
  %.not75 = icmp eq i64 %.sink, %.pre.i2.i100
  br i1 %.not75, label %bb.u, label %bb.q

bb.q:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i115"
  %i.bn = sub nuw i64 %.sink, %.pre.i2.i100
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %.pre.i2.i100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN13language_tags11LanguageTag5parse17h4d5a3345711b559eE(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bn)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %i.d, align 8, !range !1788, !noundef !4 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.322.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
begin_hunk_1_@"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$16FindLongestMatch17h6aba72419c60e38eE":bb.a

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3180
  store ptr @230, ptr %i.a, align 8, !noalias !3180
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !3180
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !3180
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !3180
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !3180
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @867) #46, !noalias !3180
  unreachable

_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit: ; preds = %bb.n
  %.sroa.020.0.copyload = load i32, ptr %i.n, align 1, !alias.scope !3183, !noalias !3187
  %i.cf = zext i32 %.sroa.020.0.copyload to i64
  %i.cg = mul nuw nsw i64 %i.cf, 506832829
  %i.ch = lshr i64 %i.cg, 17
  %i.ci = and i64 %i.ch, 32767                    ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val112 = load i64, ptr %i.cj, align 8, !noundef !4 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.ci, 8                ; 3 uses
  %.not103 = icmp ugt i64 %i.ck, %.val112
  br i1 %.not103, label %bb.p, label %bb.q, !prof !282

bb.p:                                             ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @230, ptr %i.e, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.co, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #46
  unreachable

bb.q:                                             ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.cp, align 8, !nonnull !4, !align !131, !noundef !4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ck ; 3 uses
  %i.cr = sub nuw i64 %.val112, %i.ck
  %i.cs = icmp ugt i64 %i.cr, 255
  br i1 %i.cs, label %bb.s, label %bb.r, !prof !337

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @230, ptr %i.d, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.cw, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #46
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val114 = load i64, ptr %i.cx, align 8, !noundef !4 ; 2 uses
  %i.cy = icmp ugt i64 %.val114, %i.ci
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val113 = load ptr, ptr %0, align 8, !nonnull !4, !align !130, !noundef !4
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.val113, i64 %i.ci ; 7 uses
  %i.da = load i16, ptr %i.cz, align 2, !noundef !4 ; 2 uses
  %i.db = icmp ugt i16 %i.da, 256
  %i.dc = zext i16 %i.da to i64                   ; 3 uses
  %i.dd = add nsw i64 %i.dc, -256
  %.sroa.050.0 = select i1 %i.db, i64 %i.dd, i64 0 ; 3 uses
  %i.de = icmp ult i64 %i.bv, %3
  br i1 %i.de, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ci, i64 noundef %.val114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #46
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.df = icmp ult i64 %.sroa.050.0, %i.dc
  br i1 %i.df, label %.lr.ph188.lr.ph, label %.loopexit

.lr.ph188.lr.ph:                                  ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !4
  %i.di = zext i32 %i.p to i64
  br label %.lr.ph188

bb.w:                                             ; preds = %bb.t
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bv, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #46
  unreachable

bb.x:                                             ; preds = %.lr.ph188, %bb.am
  %.sroa.051.0187 = phi i64 [ %.sroa.051.0.ph193, %.lr.ph188 ], [ %i.dj, %bb.am ]
  %i.dj = add nsw i64 %.sroa.051.0187, -1         ; 5 uses
  %i.dk = and i64 %i.dj, 255
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !noundef !4
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = sub i64 %7, %i.dn                       ; 3 uses
  %i.dp = icmp ugt i64 %i.do, %9
  br i1 %i.dp, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = and i64 %4, %i.dn                       ; 7 uses
  %i.dr = add i64 %i.dq, %.sroa.015.1.ph196       ; 4 uses
  %i.ds = icmp ugt i64 %i.dr, %4
  br i1 %i.ds, label %bb.am, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = icmp ult i64 %i.dr, %3
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  %i.dv = load i8, ptr %i.du, align 1, !noundef !4
  %.not104 = icmp eq i8 %.sroa.054.0.ph194, %i.dv
  br i1 %.not104, label %bb.ac, label %bb.am

bb.ab:                                            ; preds = %bb.z
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dr, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #46
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %.not105 = icmp ugt i64 %i.dq, %3
  br i1 %.not105, label %bb.ad, label %bb.ae, !prof !282

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @230, ptr %i.c, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.dz, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #46
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq
  %i.eb = sub nuw i64 %3, %i.dq
  %i.ec = tail call noundef i64 @_ZN6brotli3enc11static_dict24FindMatchLengthWithLimit17h50d1a297b15ad288E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ea, i64 noundef %i.eb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8) ; 4 uses
  %i.ed = icmp ugt i64 %i.ec, 3
  br i1 %i.ed, label %bb.af, label %.outer

.outer:                                           ; preds = %bb.ak, %bb.ah, %bb.ae
  %.sroa.054.1 = phi i8 [ %.sroa.054.0.ph194, %bb.ae ], [ %i.eu, %bb.ak ], [ %.sroa.054.0.ph194, %bb.ah ]
  %.sroa.027.4 = phi i1 [ %.sroa.027.2.ph195, %bb.ae ], [ true, %bb.ak ], [ %.sroa.027.2.ph195, %bb.ah ] ; 2 uses
  %.sroa.015.2 = phi i64 [ %.sroa.015.1.ph196, %bb.ae ], [ %.sroa.061.0, %bb.ak ], [ %.sroa.015.1.ph196, %bb.ah ]
  %.sroa.011.2 = phi i64 [ %.sroa.011.1.ph197, %bb.ae ], [ %i.eo, %bb.ak ], [ %.sroa.011.1.ph197, %bb.ah ]
  %i.ee = icmp ugt i64 %i.dj, %.sroa.050.0
  br i1 %i.ee, label %.lr.ph188, label %.loopexit

.lr.ph188:                                        ; preds = %.lr.ph188.lr.ph, %.outer
  %.sroa.011.1.ph197 = phi i64 [ %.sroa.011.0.ph.lcssa62, %.lr.ph188.lr.ph ], [ %.sroa.011.2, %.outer ] ; 3 uses
  %.sroa.015.1.ph196 = phi i64 [ %.sroa.015.0.ph.lcssa66, %.lr.ph188.lr.ph ], [ %.sroa.015.2, %.outer ] ; 3 uses
  %.sroa.027.2.ph195 = phi i1 [ %.sroa.027.0.ph.lcssa70, %.lr.ph188.lr.ph ], [ %.sroa.027.4, %.outer ] ; 4 uses
  %.sroa.054.0.ph194 = phi i8 [ %i.dh, %.lr.ph188.lr.ph ], [ %.sroa.054.1, %.outer ] ; 3 uses
  %.sroa.051.0.ph193 = phi i64 [ %i.dc, %.lr.ph188.lr.ph ], [ %i.dj, %.outer ]
  br label %bb.x

bb.af:                                            ; preds = %bb.ae
  br i1 %.not110, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = icmp ult i64 %i.dq, %5
  %i.eg = add i64 %i.ec, %i.dq
  %i.eh = icmp ugt i64 %i.eg, %5
  %or.cond2 = and i1 %i.ef, %i.eh
  %i.ei = sub nuw i64 %5, %i.dq
  %spec.select = select i1 %or.cond2, i64 %i.ei, i64 %i.ec
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.061.0 = phi i64 [ %i.ec, %bb.af ], [ %spec.select, %bb.ag ] ; 4 uses
  %i.ej = mul i64 %.sroa.061.0, %i.di
  %i.ek = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.do, i1 false)
  %i.el = xor i64 %i.ek, 63
  %.neg = mul nsw i64 %i.el, -120
  %i.em = add nsw i64 %.neg, 7680
  %i.en = add i64 %i.em, %i.ej
  %i.eo = lshr i64 %i.en, 2                       ; 3 uses
  %i.ep = icmp ult i64 %.sroa.011.1.ph197, %i.eo
  br i1 %i.ep, label %bb.ai, label %.outer

bb.ai:                                            ; preds = %bb.ah
  store i64 %.sroa.061.0, ptr %11, align 8
  store i64 %i.do, ptr %i.q, align 8
  store i64 %i.eo, ptr %i.i, align 8
  %i.eq = add i64 %.sroa.061.0, %i.h              ; 4 uses
  %i.er = icmp ugt i64 %i.eq, %4
  br i1 %i.er, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.es = icmp ult i64 %i.eq, %3
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  %i.eu = load i8, ptr %i.et, align 1, !noundef !4
  br label %.outer

bb.al:                                            ; preds = %bb.aj
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eq, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #46
  unreachable

bb.am:                                            ; preds = %bb.aa, %bb.y
  %i.ev = icmp ugt i64 %i.dj, %.sroa.050.0
  br i1 %i.ev, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.outer, %bb.am, %bb.x, %bb.v
  %.sroa.027.3 = phi i1 [ %.sroa.027.0.ph.lcssa70, %bb.v ], [ %.sroa.027.2.ph195, %bb.am ], [ %.sroa.027.2.ph195, %bb.x ], [ %.sroa.027.4, %.outer ]
  %i.ew = load i16, ptr %i.cz, align 2, !noundef !4
  %i.ex = and i16 %i.ew, 255
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ey
  %i.fa = trunc i64 %7 to i32
  store i32 %i.fa, ptr %i.ez, align 4
  %i.fb = load i16, ptr %i.cz, align 2, !noundef !4
  %i.fc = add i16 %i.fb, 1
  store i16 %i.fc, ptr %i.cz, align 2
  br i1 %.sroa.027.3, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.j
  %.not107 = icmp eq ptr %1, null
  br i1 %.not107, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.ao

_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit.critedge: ; preds = %bb.ai
  %12 = load i16, ptr %i.cz, align 2, !noundef !4
  %13 = and i16 %12, 255
  %14 = zext nneg i16 %13 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %14
  %16 = trunc i64 %7 to i32
  store i32 %16, ptr %15, align 4
  %17 = load i16, ptr %i.cz, align 2, !noundef !4
  %18 = add i16 %17, 1
  store i16 %18, ptr %i.cz, align 2
  br label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit

_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit: ; preds = %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit.critedge, %.loopexit, %bb.aw, %bb.av, %bb.au, %bb.aq, %bb.an, %bb.j
  %.sroa.027.7 = phi i1 [ true, %bb.j ], [ false, %bb.an ], [ false, %bb.aq ], [ %.sroa.05.1.i, %bb.au ], [ %.sroa.05.1.i, %bb.av ], [ true, %bb.aw ], [ true, %.loopexit ], [ true, %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit.critedge ]
  ret i1 %.sroa.027.7

bb.ao:                                            ; preds = %bb.an
  br i1 %i.l, label %bb.ap, label %bb.aq, !prof !282

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @230, ptr %i.b, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.fg, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #46
  unreachable

bb.aq:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !3189, !noalias !3192, !noundef !4 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !3189, !noalias !3192, !noundef !4 ; 3 uses
  %i.fl = lshr i64 %i.fk, 7
  %i.fm = icmp ult i64 %i.fi, %i.fl
  br i1 %i.fm, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fn = tail call noundef i32 @_ZN6brotli3enc19backward_references6Hash1417h7d738d9067f11999E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m), !noalias !3196
  %i.fo = shl i32 %i.fn, 1                        ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %exitcond.not.i = icmp ugt i32 %i.fo, 32767
  br i1 %exitcond.not.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr @_ZN6brotli3enc15dictionary_hash21kStaticDictionaryHash17hedb611fb812677b0E, i64 %i.fp ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !3197, !noundef !4 ; 2 uses
  %i.fs = add i64 %i.fk, 1
  store i64 %i.fs, ptr %i.fj, align 8, !alias.scope !3189, !noalias !3192
  %i.ft = icmp eq i16 %i.fr, 0
  br i1 %i.ft, label %bb.au, label %bb.ax

bb.at:                                            ; preds = %bb.ar
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fp, i64 noundef 32768, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1080) #46, !noalias !3196
  unreachable

bb.au:                                            ; preds = %bb.ay, %bb.ax, %bb.as
  %i.fu = phi i64 [ %i.fi, %bb.as ], [ %i.fi, %bb.ax ], [ %i.gg, %bb.ay ]
  %.sroa.05.1.i = phi i1 [ false, %bb.as ], [ false, %bb.ax ], [ true, %bb.ay ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fw = load i16, ptr %i.fv, align 2, !noalias !3197, !noundef !4 ; 2 uses
  %i.fx = add i64 %i.fk, 2
  store i64 %i.fx, ptr %i.fj, align 8, !alias.scope !3189, !noalias !3192
  %i.fy = icmp eq i16 %i.fw, 0
  br i1 %i.fy, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = zext i16 %i.fw to i64
  %i.ga = tail call noundef i32 @_ZN6brotli3enc19backward_references24TestStaticDictionaryItem17hd6c51495e38b9278E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.fz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !noalias !3189
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add i64 %i.fu, 1
  store i64 %i.gc, ptr %i.fh, align 8, !alias.scope !3189, !noalias !3192
  br label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit

bb.ax:                                            ; preds = %bb.as
  %i.gd = zext i16 %i.fr to i64
  %i.ge = tail call noundef i32 @_ZN6brotli3enc19backward_references24TestStaticDictionaryItem17hd6c51495e38b9278E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.gd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !noalias !3189
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.au, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.gg, ptr %i.fh, align 8, !alias.scope !3189, !noalias !3192
  br label %bb.au

bb.az:                                            ; preds = %.lr.ph.split.split, %bb.bi
  %i.gh = phi i64 [ %.us-phi179, %.lr.ph.split.split ], [ %i.hm, %bb.bi ] ; 3 uses
  %.sroa.063.071 = phi i64 [ %.us-phi178, %.lr.ph.split.split ], [ %i.gh, %bb.bi ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr @260, i64 %.sroa.063.071
  %i.gj = load i8, ptr %i.gi, align 1, !noundef !4
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !noundef !4
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @261, i64 %.sroa.063.071
  %i.gp = load i8, ptr %i.go, align 1, !noundef !4
  %i.gq = sext i8 %i.gp to i64
  %i.gr = add nsw i64 %i.gq, %i.gn                ; 2 uses
  %i.gs = sub i64 %7, %i.gr                       ; 2 uses
  %i.gt = icmp uge i64 %i.gs, %7
  %i.gu = icmp ugt i64 %i.gr, %9
  %or.cond3 = or i1 %i.gu, %i.gt
  br i1 %or.cond3, label %bb.bi, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = and i64 %i.gs, %4
  %i.gw = add i64 %i.gv, %.us-phi176
  %i.gx = icmp ugt i64 %i.gw, %4
  br i1 %i.gx, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi174, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #46
  unreachable

.split.us:                                        ; preds = %bb.g, %bb.c
  %.us-phi180 = phi i64 [ %i.ak, %bb.c ], [ %i.bm, %bb.g ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi180, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #46
  unreachable

bb.bc:                                            ; preds = %.split113.us
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  %i.gz = sub nuw i64 %3, %i.bl
  %i.ha = tail call noundef i64 @_ZN6brotli3enc11static_dict24FindMatchLengthWithLimit17h50d1a297b15ad288E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gy, i64 noundef %i.gz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8) ; 5 uses
  %i.hb = icmp ugt i64 %i.ha, 2
  br i1 %i.hb, label %bb.be, label %bb.bd

.split185.us:                                     ; preds = %.split113.us, %.split113.us.us
  %.us-phi186 = phi i64 [ %i.aj, %.split113.us.us ], [ %i.bl, %.split113.us ]
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.us-phi186, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #46
  unreachable

.split173.us:                                     ; preds = %.split113.us.us
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.h, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #46
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.hc = icmp eq i64 %i.ha, 2
  %i.hd = icmp samesign ult i64 %.sroa.063.071.us109, 2
  %or.cond = and i1 %i.hd, %i.hc
  br i1 %or.cond, label %bb.be, label %.outer27

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %.not110, label %bb.bg, label %bb.bf

.outer27:                                         ; preds = %bb.bh, %bb.bg, %bb.bd
  %.sroa.027.8 = phi i1 [ %.sroa.027.0.ph161, %bb.bd ], [ true, %bb.bh ], [ %.sroa.027.0.ph161, %bb.bg ] ; 2 uses
  %.sroa.015.4 = phi i64 [ %.sroa.015.0.ph162, %bb.bd ], [ %.sroa.037.0, %bb.bh ], [ %.sroa.015.0.ph162, %bb.bg ] ; 2 uses
  %.sroa.011.4 = phi i64 [ %.sroa.011.0.ph163, %bb.bd ], [ %i.hk, %bb.bh ], [ %.sroa.011.0.ph163, %bb.bg ] ; 2 uses
  %i.he = icmp ult i64 %i.ax, 16
  %i.hf = add nuw nsw i64 %i.ax, 1
  br i1 %i.he, label %.lr.ph, label %.outer27._crit_edge

bb.bf:                                            ; preds = %bb.be
  %i.hg = icmp ult i64 %i.bl, %5
  %i.hh = add i64 %i.ha, %i.bl
  %i.hi = icmp ugt i64 %i.hh, %5
  %or.cond5 = and i1 %i.hg, %i.hi
  %i.hj = sub nuw i64 %5, %i.bl
  %spec.select111 = select i1 %or.cond5, i64 %i.hj, i64 %i.ha
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sroa.037.0 = phi i64 [ %i.ha, %bb.be ], [ %spec.select111, %bb.bf ] ; 3 uses
  %i.hk = tail call noundef i64 @_ZN6brotli3enc19backward_references41BackwardReferenceScoreUsingLastDistanceH917hb2c0215381d82072E(i64 noundef %.sroa.037.0, i64 noundef %.sroa.063.071.us109, i32 noundef %i.p) ; 3 uses
  %i.hl = icmp ult i64 %.sroa.011.0.ph163, %i.hk
  br i1 %i.hl, label %bb.bh, label %.outer27

bb.bh:                                            ; preds = %bb.bg
  store i64 %.sroa.037.0, ptr %11, align 8
  store i64 %i.bh, ptr %i.q, align 8
  store i64 %i.hk, ptr %i.i, align 8
  br label %.outer27

bb.bi:                                            ; preds = %bb.ba, %bb.az
  %i.hm = add i64 %i.gh, 1
  %exitcond270.not = icmp eq i64 %i.gh, 16
  br i1 %exitcond270.not, label %.outer27._crit_edge, label %bb.az
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h5550931a7ee766cdE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = and i64 %4, %3                           ; 3 uses
  %.not = icmp ugt i64 %i.c, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !282

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @230, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.g, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %2, %i.c
  %i.i = icmp ugt i64 %i.h, 3
end_hunk_1
begin_hunk_2_@"_ZN216_$LT$actix_http..h1..client..ClientCodec$u20$as$u20$tokio_util..codec..encoder..Encoder$LT$actix_http..h1..Message$LT$$LP$actix_http..requests..head..RequestHeadType$C$actix_http..body..size..BodySize$RP$$GT$$GT$$GT$6encode17he0d88e2593b33d79E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4718)
  %i.iz = load i8, ptr %i.iy, align 8, !range !27, !alias.scope !4715, !noalias !4718, !noundef !4
  switch i8 %i.iz, label %default.unreachable [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %_ZN10actix_http2h17encoder16TransferEncoding10encode_eof17h94e849ad53da4456E.exit
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !range !467, !alias.scope !4715, !noalias !4718, !noundef !4
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN10actix_http2h17encoder16TransferEncoding10encode_eof17h94e849ad53da4456E.exit, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.je = load i64, ptr %i.jd, align 8, !alias.scope !4715, !noalias !4718, !noundef !4
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %_ZN10actix_http2h17encoder16TransferEncoding10encode_eof17h94e849ad53da4456E.exit, label %bb.aw

bb.as:                                            ; preds = %bb.aq
  store i8 1, ptr %i.ja, align 1, !alias.scope !4715, !noalias !4718
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !4723, !noalias !4724, !noundef !4 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !4723, !noalias !4724, !noundef !4
  %i.jk = sub i64 %i.jj, %i.jh
  %.not.i.i = icmp ult i64 %i.jk, 5
  br i1 %.not.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jl = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 5, i1 noundef zeroext true), !noalias !4724 ; 0 uses
  %.pre.i.i = load i64, ptr %i.jg, align 8, !alias.scope !4723, !noalias !4724
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jm = phi i64 [ %i.jh, %bb.as ], [ %.pre.i.i, %bb.at ]
  %i.jn = load ptr, ptr %2, align 8, !alias.scope !4723, !noalias !4724, !nonnull !4, !noundef !4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.jo, ptr noundef nonnull align 1 dereferenceable(5) @116, i64 5, i1 false), !noalias !4715
  %i.jp = load i64, ptr %i.ji, align 8, !alias.scope !4723, !noalias !4724, !noundef !4
  %i.jq = load i64, ptr %i.jg, align 8, !alias.scope !4723, !noalias !4724, !noundef !4 ; 2 uses
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = icmp ult i64 %i.jr, 5
  br i1 %i.js, label %bb.av, label %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit.i, !prof !282

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4726
  store i64 5, ptr %i.a, align 8, !noalias !4726
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.jr, ptr %i.jt, align 8, !noalias !4726
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #46, !noalias !4724
  unreachable

_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit.i: ; preds = %bb.au
  %i.ju = add i64 %i.jq, 5
  store i64 %i.ju, ptr %i.jg, align 8, !alias.scope !4723, !noalias !4724
  br label %_ZN10actix_http2h17encoder16TransferEncoding10encode_eof17h94e849ad53da4456E.exit

bb.aw:                                            ; preds = %bb.ar
  %i.jv = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 37, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !4727
  br label %_ZN10actix_http2h17encoder16TransferEncoding10encode_eof17h94e849ad53da4456E.exit

bb.ax:                                            ; preds = %bb.ao
  %i.jw = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4731)
  %i.jx = load ptr, ptr %i.n, align 8, !alias.scope !4734, !nonnull !4, !align !350, !noundef !4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !4734, !nonnull !4, !noundef !4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void %i.jz(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef nonnull %i.iu, i64 noundef %i.iw)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit" unwind label %bb.an, !inline_history !518

bb.ay:                                            ; preds = %bb.ao
  %i.kb = load i8, ptr %i.m, align 8, !range !467, !noundef !4
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4738)
  %i.kf = load ptr, ptr %i.n, align 8, !alias.scope !4741, !nonnull !4, !align !350, !noundef !4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !4741, !nonnull !4, !noundef !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void %i.kh(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull %i.iu, i64 noundef %i.iw), !inline_history !1887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.88.0. = select i1 %i.kc, ptr %i.ke, ptr null
  br label %_ZN10actix_http2h17encoder16TransferEncoding10encode_eof17h94e849ad53da4456E.exit

_ZN10actix_http2h17encoder16TransferEncoding10encode_eof17h94e849ad53da4456E.exit: ; preds = %bb.aw, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit.i, %bb.ar, %bb.aq, %bb.ap, %bb.ay, %"_ZN10actix_http2h17encoder23MessageEncoder$LT$T$GT$6encode17h3e72b6c19348b15bE.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.88.0., %bb.ay ], [ %.sroa.05.0.i, %"_ZN10actix_http2h17encoder23MessageEncoder$LT$T$GT$6encode17h3e72b6c19348b15bE.exit" ], [ null, %bb.ap ], [ null, %bb.aq ], [ %i.jv, %bb.aw ], [ null, %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit.i ], [ null, %bb.ar ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @"_ZN223_$LT$actix_http..h1..codec..Codec$u20$as$u20$tokio_util..codec..encoder..Encoder$LT$actix_http..h1..Message$LT$$LP$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$C$actix_http..body..size..BodySize$RP$$GT$$GT$$GT$6encode17h51999dd2162916acE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i = alloca [35 x i8], align 1      ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 1                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !range !4572, !noundef !4 ; 5 uses
  %i.l = icmp eq i64 %i.k, 3
  %.sink134.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink134.sroa.gep171 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink134.sroa.gep172 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink134.sroa.gep173 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !noundef !4
  %.not18 = icmp eq ptr %i.m, null
  br i1 %.not18, label %bb.br, label %bb.bq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.q = load i8, ptr %i.p, align 1, !range !28, !noundef !4 ; 3 uses
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !4742, !align !350, !noundef !4 ; 6 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !282

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1500) #46
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

.loopexit:                                        ; preds = %bb.am, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.invoke128, %.invoke127, %.invoke, %bb.d, %bb.o, %bb.r, %bb.v, %.noexc28, %.noexc29, %.noexc30, %bb.w, %bb.bb, %bb.bc, %bb.bh, %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$GT$17h4d106d92bc1fda76E"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #47
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit" unwind label %bb.bp

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 59
  store i8 %i.q, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 58 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !noundef !4  ; 4 uses
  %i.v = and i8 %i.u, 1
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.w = and i8 %i.u, 2
  %.not16 = icmp eq i8 %i.w, 0
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i8, ptr %i.x, align 8, !range !27, !noundef !4
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.z = and i8 %i.u, 4
  %.not17 = icmp eq i8 %i.z, 0
  br i1 %.not17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !range !27, !noundef !4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  %.sroa.01.1 = phi i8 [ %i.ab, %bb.j ], [ %i.y, %bb.h ], [ 0, %bb.f ], [ 2, %bb.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.01.1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ae = load i8, ptr %i.ad, align 2, !noundef !4 ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  %i.ag = and i8 %i.ae, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.ah, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  br i1 %i.af, label %3, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i64 %i.k, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.m
    i64 2, label %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7chunked17h0aaeab399d6284f6E.exit.i"
  ]

3:                                                ; preds = %bb.k
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %4, align 8, !alias.scope !4745, !noalias !4750
  br label %bb.o

default.unreachable:                              ; preds = %bb.br, %.noexc27, %bb.p, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  br label %bb.n

"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7chunked17h0aaeab399d6284f6E.exit.i": ; preds = %bb.l
  %i.ai = and i8 %i.u, 16
  %i.aj = or disjoint i8 %i.ag, %i.ai
  %brmerge.i.not = icmp eq i8 %i.aj, 0
  %.49.i = select i1 %brmerge.i.not, i8 0, i8 2
  br label %bb.n

bb.n:                                             ; preds = %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7chunked17h0aaeab399d6284f6E.exit.i", %bb.m, %bb.l
  %.sroa.011.0.i = phi i8 [ 1, %bb.l ], [ %.49.i, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7chunked17h0aaeab399d6284f6E.exit.i" ], [ 1, %bb.m ]
  %.sroa.9.0.i = phi i64 [ %i.k, %bb.l ], [ undef, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7chunked17h0aaeab399d6284f6E.exit.i" ], [ %i.o, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.011.0.i, ptr %i.ak, align 8, !alias.scope !4745, !noalias !4750
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !4745, !noalias !4750
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %3
  %.sroa.9.0.sink.i = phi i64 [ %.sroa.9.0.i, %bb.n ], [ 0, %3 ]
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.sink.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !4745, !noalias !4750
  %i.al = invoke noundef ptr @"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$13encode_status17h11f64122635063c7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i" unwind label %.loopexit.split-lp ; 0 uses

"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i": ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4752)
  %i.am = load i8, ptr %i.t, align 2, !noalias !4755, !noundef !4 ; 2 uses
  %i.an = and i8 %i.am, 16
  %.not.i.i51.i = icmp eq i8 %i.an, 0
  %i.ao = and i8 %i.am, 32
  %.not.i52.i = icmp eq i8 %i.ao, 0               ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.aq = load i16, ptr %i.ap, align 8, !range !532, !noalias !4755, !noundef !4
  switch i16 %i.aq, label %bb.p [
    i16 100, label %bb.r
    i16 101, label %bb.r
    i16 102, label %bb.r
    i16 204, label %bb.r
    i16 304, label %bb.q
  ]

bb.p:                                             ; preds = %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i"
  %i.ar = icmp ne i64 %i.k, 2
  switch i64 %i.k, label %default.unreachable [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %bb.t
  ]

bb.q:                                             ; preds = %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i"
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i", %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i", %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i", %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i"
  %.sroa.020.0.i.i = phi i1 [ %i.ar, %bb.p ], [ false, %bb.q ], [ true, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i" ], [ true, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i" ], [ true, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i" ], [ true, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$6status17hcae1f8d7f001af1aE.exit.i.i" ]
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @104, i64 noundef 2)
          to label %.noexc27 unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.p
  %i.as = icmp eq i64 %i.o, 0
  br i1 %i.as, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.p
  br i1 %.not.i.i51.i, label %bb.x, label %bb.w

.noexc27:                                         ; preds = %.invoke, %bb.w, %bb.r, %.noexc31
  %.sroa.020.1.i.i = phi i1 [ false, %bb.w ], [ true, %.invoke ], [ %.sroa.020.0.i.i, %bb.r ], [ true, %.noexc31 ] ; 2 uses
  switch i8 %.sroa.01.1, label %default.unreachable [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.u:                                             ; preds = %bb.s
  %. = select i1 %.not.i52.i, ptr @105, ptr @106
  br label %.invoke

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4756
  %..i.i.i = select i1 %.not.i52.i, ptr @191, ptr @192
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %..i.i.i, i64 noundef 18)
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.v
  %i.at = invoke noundef i64 @"_ZN38_$LT$u64$u20$as$u20$itoa..Unsigned$GT$3fmt17hfb85cac2bda75e64E"(i64 noundef range(i64 1, 0) %i.o, ptr noalias noundef nonnull align 1 dereferenceable(20) %i.e)
          to label %.noexc29 unwind label %.loopexit.split-lp ; 2 uses

.noexc29:                                         ; preds = %.noexc28
  %i.au = sub nuw i64 20, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.at
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.av, i64 noundef %i.au)
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %.noexc29
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @104, i64 noundef 2)
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4756
  br label %.noexc27

.invoke:                                          ; preds = %bb.x, %bb.u
  %i.aw = phi ptr [ %., %bb.u ], [ %.129, %bb.x ]
  %i.ax = phi i64 [ 21, %bb.u ], [ 30, %bb.x ]
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %i.ax)
          to label %.noexc27 unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.t
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @104, i64 noundef 2)
          to label %.noexc27 unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.t
  %.129 = select i1 %.not.i52.i, ptr @107, ptr @108
  br label %.invoke

bb.y:                                             ; preds = %.noexc27
  %i.ay = icmp samesign ugt i8 %i.q, 1
  br i1 %i.ay, label %bb.ab, label %.noexc37

bb.z:                                             ; preds = %.noexc27
  %i.az = icmp samesign ult i8 %i.q, 2
  br i1 %i.az, label %bb.ac, label %.noexc37

bb.aa:                                            ; preds = %.noexc27
  %.130 = select i1 %.not.i52.i, ptr @113, ptr @114
  br label %.invoke127

bb.ab:                                            ; preds = %bb.y
  %.131 = select i1 %.not.i52.i, ptr @109, ptr @110
  br label %.invoke127

.noexc37:                                         ; preds = %.invoke127, %bb.z, %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !4759, !noalias !4760, !noundef !4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !4759, !noalias !4760, !noundef !4 ; 2 uses
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.bc, label %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i"

.invoke127:                                       ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bf = phi ptr [ %.131, %bb.ab ], [ %.130, %bb.aa ], [ %.132, %bb.ac ]
  %i.bg = phi i64 [ 19, %bb.ab ], [ 21, %bb.aa ], [ 24, %bb.ac ]
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bf, i64 noundef %i.bg)
          to label %.noexc37 unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.z
  %.132 = select i1 %.not.i52.i, ptr @111, ptr @112
  br label %.invoke127

"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i": ; preds = %.noexc47, %.noexc37
  %i.bh = phi i64 [ %i.bb, %.noexc37 ], [ %.pre48.i.i, %.noexc47 ]
  %i.bi = phi i64 [ %i.bd, %.noexc37 ], [ %.pre.i.i, %.noexc47 ] ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !alias.scope !4759, !noalias !4760, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  %i.bl = sub i64 %i.bh, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !4761)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !4761, !noalias !4764, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.bn, align 16, !noalias !4768
  %i.bo = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !4761, !noalias !4764, !noundef !4
  %i.bs = bitcast <16 x i1> %i.bo to i16
  br label %.outer.i.i.i.i.i

.outer.i.i.i.i.i:                                 ; preds = %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i", %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i"
  %.sroa.019.0.i.i = phi i1 [ false, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %.sroa.019.4.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 8 uses
  %.sroa.017.0.i.i = phi i64 [ %i.bl, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %.sroa.017.3.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 5 uses
  %.sroa.014.0.i.i = phi i64 [ 0, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %.sroa.014.3.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 8 uses
  %.sroa.010.0.i.i = phi ptr [ %i.bk, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %.sroa.010.3.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 5 uses
  %i.bt = phi i16 [ %i.bs, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %i.by, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 2 uses
  %.lcssa2934.i.i.i.i.i = phi ptr [ %i.bp, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %.lcssa2933.i.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 2 uses
  %.lcssa2832.i.i.i.i.i = phi ptr [ %i.bn, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %.lcssa2831.i.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i = phi i64 [ %i.br, %"_ZN114_$LT$actix_http..responses..response..Response$LT$$LP$$RP$$GT$$u20$as$u20$actix_http..h1..encoder..MessageType$GT$7headers17h601906e9b36cc9ccE.exit.i.i.i" ], [ %i.er, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i" ] ; 2 uses
  %.not25.i.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not25.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.outer.i.i.i.i.i
  %i.bu = icmp eq i64 %.sroa.0.0.ph.i.i.i.i.i, 0
  br i1 %i.bu, label %_ZN10actix_http2h17encoder11MessageType13write_headers17hb653848cc22f6198E.exit.i.i, label %.lr.ph.split.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.split.i.i.i.i.i, %.outer.i.i.i.i.i
  %.lcssa2933.i.i.i.i.i = phi ptr [ %.lcssa2934.i.i.i.i.i, %.outer.i.i.i.i.i ], [ %i.ew, %.lr.ph.split.i.i.i.i.i ]
  %.lcssa2831.i.i.i.i.i = phi ptr [ %.lcssa2832.i.i.i.i.i, %.outer.i.i.i.i.i ], [ %i.ev, %.lr.ph.split.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.bt, %.outer.i.i.i.i.i ], [ %.cast.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ] ; 3 uses
  %i.bv = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = and i16 %i.bv, %.lcssa.i.i.i.i.i
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [200 x i8], ptr %.lcssa2831.i.i.i.i.i, i64 %i.bz ; 6 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -200
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -168 ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !noalias !4771, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 -192 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ad, label %.thread12.i.i.i.i.i.i.i.i.i

...thread_crit_edge.i_crit_edge.i.i.i.i.i.i.i.i:  ; preds = %bb.ad
  br label %.thread.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.cf = load i8, ptr %i.ce, align 8, !range !466, !noalias !4771, !noundef !4 ; 2 uses
  switch i8 %i.cf, label %.thread.i.i.i.i.i.i.i.i.i [
    i8 20, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i"
    i8 24, label %bb.ae
    i8 32, label %...thread_crit_edge.i_crit_edge.i.i.i.i.i.i.i.i
    i8 69, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  br i1 %.sroa.020.1.i.i, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i", label %.thread.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  br i1 %.sroa.020.1.i.i, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h091694d97a817628E.exit.i.i.i.i.i", label %.thread.i.i.i.i.i.i.i.i.i

.thread12.i.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.i.i.i.i
  %i.cg = load ptr, ptr %i.ce, align 8, !noalias !4771, !noundef !4
  %i.ch = getelementptr inbounds i8, ptr %i.ca, i64 -184
end_hunk_2
