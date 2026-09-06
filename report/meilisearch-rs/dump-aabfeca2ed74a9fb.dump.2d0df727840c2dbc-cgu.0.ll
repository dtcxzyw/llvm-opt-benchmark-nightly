Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@_ZN4time10formatting11formattable6sealed6Sealed6format17h065728b92f5e76f5E:bb.a
  %i.at = load i8, ptr %i.as, align 4, !alias.scope !81474, !noalias !81465, !noundef !21 ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i, label %bb.h, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

bb.h:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i"
  %i.au = and i32 %.val218.i, 511                 ; 2 uses
  %i.av = lshr i32 %.val218.i, 9
  %.lobit.i.i.i = and i32 %i.av, 1
  %i.aw = add nuw nsw i32 %.lobit.i.i.i, 59       ; 2 uses
  %.not.i.i232.i = icmp samesign ugt i32 %i.au, %i.aw ; 2 uses
  %..i.i.i = select i1 %.not.i.i232.i, i32 2, i32 0
  %.7.i.i.i = select i1 %.not.i.i232.i, i32 %i.aw, i32 0
  %i.ax = sub nsw i32 %i.au, %.7.i.i.i            ; 2 uses
  %i.ay = mul nsw i32 %i.ax, 268
  %i.az = add nsw i32 %i.ay, 8028
  %i.ba = lshr i32 %i.az, 13                      ; 2 uses
  %i.bb = add nuw nsw i32 %i.ba, %..i.i.i         ; 2 uses
  %i.bc = and i32 %i.bb, 255
  %i.bd = icmp ne i32 %i.bc, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = mul nuw nsw i32 %i.ba, 3917
  %i.bf = add nuw nsw i32 %i.be, 28902
  %i.bg = lshr i32 %i.bf, 7
  %i.bh = sub nsw i32 %i.ax, %i.bg                ; 2 uses
  %i.bi = and i32 %i.bh, 255
  %.sroa.43.0.extract.trunc.i.i = trunc i32 %i.bb to i8 ; 2 uses
  %.sroa.54.0.extract.trunc.i.i = trunc i32 %i.bh to i8 ; 2 uses
  %i.bj = add i8 %.sroa.43.0.extract.trunc.i.i, -1
  %i.bk = icmp ult i8 %i.bj, 12
  tail call void @llvm.assume(i1 %i.bk)
  store i8 %.sroa.43.0.extract.trunc.i.i, ptr %i.x, align 2, !alias.scope !81474, !noalias !81465
  %i.bl = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bl)
  store i8 %.sroa.54.0.extract.trunc.i.i, ptr %i.as, align 4, !alias.scope !81474, !noalias !81465
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i": ; preds = %bb.h, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i"
  %.sroa.0.0.i.i = phi i8 [ %.sroa.54.0.extract.trunc.i.i, %bb.h ], [ %i.at, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit231.i" ]
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.sroa.0.0.i.i)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81478)
  %i.bm = load i64, ptr %i.e, align 8, !alias.scope !81479, !noalias !81480, !noundef !21 ; 3 uses
  %i.bn = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81479, !noalias !81480, !noundef !21
  %i.bo = icmp eq i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.i, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i", !prof !19

bb.i:                                             ; preds = %.noexc21
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bm, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.i
  %.pre.i.i.i.i233.i = load i64, ptr %i.e, align 8, !alias.scope !81481, !noalias !81480
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i": ; preds = %.noexc22, %.noexc21
  %i.bp = phi i64 [ %i.bm, %.noexc21 ], [ %.pre.i.i.i.i233.i, %.noexc22 ] ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load ptr, ptr %i.d, align 8, !alias.scope !81481, !noalias !81480, !nonnull !21, !noundef !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 84, ptr %i.bs, align 1, !noalias !81482
  %i.bt = add nuw i64 %i.bp, 1
  store i64 %i.bt, ptr %i.e, align 8, !alias.scope !81481, !noalias !81480
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.val223.i = load i8, ptr %i.bu, align 2, !alias.scope !81452, !noalias !81454, !noundef !21 ; 2 uses
  %i.bv = icmp ult i8 %.val223.i, 24
  tail call void @llvm.assume(i1 %i.bv)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.val223.i)
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit234.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81486)
  %i.bw = load i64, ptr %i.e, align 8, !alias.scope !81487, !noalias !81488, !noundef !21 ; 3 uses
  %i.bx = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81487, !noalias !81488, !noundef !21
  %i.by = icmp eq i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.j, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i", !prof !19

bb.j:                                             ; preds = %.noexc23
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bw, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.j
  %.pre.i.i.i.i235.i = load i64, ptr %i.e, align 8, !alias.scope !81489, !noalias !81488
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i": ; preds = %.noexc24, %.noexc23
  %i.bz = phi i64 [ %i.bw, %.noexc23 ], [ %.pre.i.i.i.i235.i, %.noexc24 ] ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load ptr, ptr %i.d, align 8, !alias.scope !81489, !noalias !81488, !nonnull !21, !noundef !21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 58, ptr %i.cc, align 1, !noalias !81490
  %i.cd = add nuw i64 %i.bz, 1
  store i64 %i.cd, ptr %i.e, align 8, !alias.scope !81489, !noalias !81488
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val224.i = load i8, ptr %i.ce, align 1, !alias.scope !81452, !noalias !81454, !noundef !21 ; 2 uses
  %i.cf = icmp ult i8 %.val224.i, 60
  tail call void @llvm.assume(i1 %i.cf)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.val224.i)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit236.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81494)
  %i.cg = load i64, ptr %i.e, align 8, !alias.scope !81495, !noalias !81496, !noundef !21 ; 3 uses
  %i.ch = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81495, !noalias !81496, !noundef !21
  %i.ci = icmp eq i64 %i.ch, %i.cg
  br i1 %i.ci, label %bb.k, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i", !prof !19

bb.k:                                             ; preds = %.noexc25
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cg, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.k
  %.pre.i.i.i.i237.i = load i64, ptr %i.e, align 8, !alias.scope !81497, !noalias !81496
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i": ; preds = %.noexc26, %.noexc25
  %i.cj = phi i64 [ %i.cg, %.noexc25 ], [ %.pre.i.i.i.i237.i, %.noexc26 ] ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = load ptr, ptr %i.d, align 8, !alias.scope !81497, !noalias !81496, !nonnull !21, !noundef !21
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 58, ptr %i.cm, align 1, !noalias !81498
  %i.cn = add nuw i64 %i.cj, 1
  store i64 %i.cn, ptr %i.e, align 8, !alias.scope !81497, !noalias !81496
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val225.i = load i8, ptr %i.co, align 4, !alias.scope !81452, !noalias !81454, !noundef !21 ; 2 uses
  %i.cp = icmp ult i8 %.val225.i, 60
  tail call void @llvm.assume(i1 %i.cp)
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h613d28fb37588925E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.val225.i)
          to label %.noexc27 unwind label %.loopexit.split-lp

.noexc27:                                         ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit238.i"
  %.val226.i = load i32, ptr %1, align 4, !alias.scope !81452, !noalias !81454, !noundef !21 ; 15 uses
  %i.cq = icmp ult i32 %.val226.i, 1000000000
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp eq i32 %.val226.i, 0
  br i1 %i.cr, label %.noexc32, label %bb.l

.noexc32:                                         ; preds = %bb.x, %bb.af, %bb.z, %bb.v, %bb.ad, %bb.ae, %bb.ab, %bb.t, %_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i, %.noexc27
  %.val227.i = load i24, ptr %i.l, align 4, !alias.scope !81452, !noalias !81454 ; 4 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i24 %.val227.i to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i.i = lshr i24 %.val227.i, 8
  %.sroa.01.1.extract.trunc.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i to i8 ; 4 uses
  %.sroa.01.2.extract.shift.i.i.i = lshr i24 %.val227.i, 16
  %.sroa.01.2.extract.trunc.i.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i.i to i8 ; 3 uses
  %i.cs = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i.i, -60
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp slt i8 %.sroa.01.0.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i, -60
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i, 60
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i.i, -26
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp slt i8 %.sroa.01.2.extract.trunc.i.i.i, 26
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp eq i24 %.val227.i, 0
  br i1 %i.cy, label %bb.ah, label %bb.ag

bb.l:                                             ; preds = %.noexc27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81502)
  %i.cz = load i64, ptr %i.e, align 8, !alias.scope !81503, !noalias !81504, !noundef !21 ; 3 uses
  %i.da = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81503, !noalias !81504, !noundef !21
  %i.db = icmp eq i64 %i.da, %i.cz
  br i1 %i.db, label %bb.m, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i", !prof !19

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cz, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.m
  %.pre.i.i.i.i239.i = load i64, ptr %i.e, align 8, !alias.scope !81505, !noalias !81504
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i": ; preds = %.noexc28, %bb.l
  %i.dc = phi i64 [ %i.cz, %bb.l ], [ %.pre.i.i.i.i239.i, %.noexc28 ] ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = load ptr, ptr %i.d, align 8, !alias.scope !81505, !noalias !81504, !nonnull !21, !noundef !21 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 46, ptr %i.df, align 1, !noalias !81506
  %i.dg = add nuw i64 %i.dc, 1                    ; 3 uses
  store i64 %i.dg, ptr %i.e, align 8, !alias.scope !81505, !noalias !81504
  %i.dh = urem i32 %.val226.i, 10
  %i.di = udiv i32 %.val226.i, 10                 ; 2 uses
  %i.dj = icmp eq i32 %i.dh, 0
  br i1 %i.dj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i"
  %i.dk = urem i32 %i.di, 10
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.s, label %bb.t

bb.o:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit240.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81507)
  %i.dm = icmp samesign ugt i32 %.val226.i, 99999 ; 2 uses
  %i.dn = udiv i32 %.val226.i, 100000
  %.sroa.06.0.i.i.i.i = select i1 %i.dm, i32 5, i32 0
  %.sroa.03.0.i.i.i.i = select i1 %i.dm, i32 %i.dn, i32 %.val226.i ; 4 uses
  %i.do = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 393206
  %i.dp = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 524188
  %i.dq = and i32 %i.do, %i.dp
  %i.dr = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 916504
  %i.ds = add nuw nsw i32 %.sroa.03.0.i.i.i.i, 514288
  %i.dt = and i32 %i.dr, %i.ds
  %i.du = xor i32 %i.dq, %i.dt
  %i.dv = lshr i32 %i.du, 17
  %i.dw = add nuw nsw i32 %i.dv, %.sroa.06.0.i.i.i.i ; 2 uses
  %.not.i241.i = icmp samesign ugt i32 %i.dw, 7
  br i1 %.not.i241.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.o
  %.pre26.i.i = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81508, !noalias !81509
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %narrow.i.i = sub nuw nsw i32 8, %i.dw
  %i.dx = zext nneg i32 %narrow.i.i to i64
  %.pre24.i.i = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81510, !noalias !81511
  br label %bb.q

._crit_edge.i.i:                                  ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i", %.._crit_edge_crit_edge.i.i
  %i.dy = phi ptr [ %i.de, %.._crit_edge_crit_edge.i.i ], [ %i.ej, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  %i.dz = phi i64 [ %.pre26.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.ek, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  %i.ea = phi i64 [ %i.dg, %.._crit_edge_crit_edge.i.i ], [ %i.eo, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81512
  %i.eb = invoke noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef range(i32 1, 0) %.val226.i, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a)
          to label %.noexc29 unwind label %.loopexit.split-lp ; 2 uses

.noexc29:                                         ; preds = %._crit_edge.i.i
  %i.ec = sub nuw i64 10, %i.eb                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81513)
  call void @llvm.experimental.noalias.scope.decl(metadata !81514)
  call void @llvm.experimental.noalias.scope.decl(metadata !81515)
  call void @llvm.experimental.noalias.scope.decl(metadata !81516)
  %i.ed = sub i64 %i.dz, %i.ea
  %i.ee = icmp ugt i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.p, label %_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i, !prof !19

bb.p:                                             ; preds = %.noexc29
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ea, i64 noundef %i.ec, i64 noundef 1, i64 noundef 1)
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.p
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !81517, !noalias !81509
  %.pre7.i = load ptr, ptr %i.d, align 8, !alias.scope !81517, !noalias !81509
  br label %_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i

bb.q:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i", %.lr.ph.i.i
  %i.ef = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.ej, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  %i.eg = phi i64 [ %.pre24.i.i, %.lr.ph.i.i ], [ %i.ek, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ] ; 3 uses
  %i.eh = phi i64 [ %i.dg, %.lr.ph.i.i ], [ %i.eo, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ] ; 2 uses
  %.sroa.01.021.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ep, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81521)
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.r, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i", !prof !19

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.eg, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.r
  %.pre.i.i.i.i18.i.i = load i64, ptr %i.e, align 8, !alias.scope !81522, !noalias !81511
  %.pre23.i.i = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81510, !noalias !81511
  %.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !81522, !noalias !81511
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit19.i.i": ; preds = %.noexc31, %bb.q
  %i.ej = phi ptr [ %i.ef, %bb.q ], [ %.pre.i, %.noexc31 ] ; 3 uses
  %i.ek = phi i64 [ %i.eg, %bb.q ], [ %.pre23.i.i, %.noexc31 ] ; 2 uses
  %i.el = phi i64 [ %i.eh, %bb.q ], [ %.pre.i.i.i.i18.i.i, %.noexc31 ] ; 3 uses
  %i.em = icmp sgt i64 %i.el, -1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.el
  store i8 48, ptr %i.en, align 1, !noalias !81523
  %i.eo = add nuw i64 %i.el, 1                    ; 3 uses
  store i64 %i.eo, ptr %i.e, align 8, !alias.scope !81522, !noalias !81511
  %i.ep = add nuw nsw i64 %.sroa.01.021.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ep, %i.dx
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.q

_ZN4time10formatting22format_number_pad_zero17ha8ef9e159df44c87E.exit.i: ; preds = %.noexc30, %.noexc29
  %i.eq = phi ptr [ %i.dy, %.noexc29 ], [ %.pre7.i, %.noexc30 ]
  %i.er = phi i64 [ %i.ea, %.noexc29 ], [ %.pre.i.i.i.i.i.i, %.noexc30 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eb
  %i.et = icmp sgt i64 %i.er, -1
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eu, ptr nonnull readonly align 1 %i.es, i64 %i.ec, i1 false), !noalias !81524
  %i.ev = add nuw i64 %i.er, %i.ec
  store i64 %i.ev, ptr %i.e, align 8, !alias.scope !81517, !noalias !81509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81512
  br label %.noexc32

bb.s:                                             ; preds = %bb.n
  %i.ew = udiv i32 %.val226.i, 100                ; 2 uses
  %i.ex = urem i32 %i.ew, 10
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.n
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h469e6e0257bf7b18E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.di)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.ez = udiv i32 %.val226.i, 1000               ; 2 uses
  %i.fa = urem i32 %i.ez, 10
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h7aac6845c5dea833E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.ew)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  %i.fc = udiv i32 %.val226.i, 10000              ; 2 uses
  %i.fd = urem i32 %i.fc, 10
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17hec897a6c54cc1f2eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.ez)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.w
  %i.ff = udiv i32 %.val226.i, 100000             ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i32 %i.ff to i16
  %i.fg = urem i16 %.lhs.trunc.i, 10
  %i.fh = icmp eq i16 %i.fg, 0
  br i1 %i.fh, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.w
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h82b0415902e99dc9E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.fc)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y
  %i.fi = udiv i32 %.val226.i, 1000000            ; 2 uses
  %.lhs.trunc1.i = trunc nuw nsw i32 %i.fi to i16
  %i.fj = urem i16 %.lhs.trunc1.i, 10
  %i.fk = icmp eq i16 %i.fj, 0
  br i1 %i.fk, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.y
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h584d54ace5ab45afE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.ff)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.fl = udiv i32 %.val226.i, 10000000           ; 2 uses
  %.lhs.trunc3.i = trunc nuw nsw i32 %i.fl to i8
  %i.fm = urem i8 %.lhs.trunc3.i, 10
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h64c98f979a3d860bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.fi)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  %i.fo = udiv i32 %.val226.i, 100000000
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17h5edb1c99417a0908E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.fo)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ac
  invoke fastcc void @_ZN4time10formatting22format_number_pad_zero17hd1b89bde87d39a6bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.fl)
          to label %.noexc32 unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %.noexc32
  %i.fp = or i8 %.sroa.01.1.extract.trunc.i.i.i, %.sroa.01.0.extract.trunc.i.i.i
  %i.fq = or i8 %i.fp, %.sroa.01.2.extract.trunc.i.i.i
  %i.fr = icmp slt i8 %i.fq, 0
  %i.fs = load i64, ptr %i.e, align 8, !alias.scope !81451, !noalias !81525, !noundef !21 ; 3 uses
  %i.ft = load i64, ptr %i.c, align 8, !range !23, !alias.scope !81451, !noalias !81525, !noundef !21
  %i.fu = icmp eq i64 %i.ft, %i.fs
  %. = select i1 %i.fr, i8 45, i8 43
  br i1 %i.fu, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.sink.split.i", label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E.exit250.i", !prof !19

bb.ah:                                            ; preds = %.noexc32
  call void @llvm.experimental.noalias.scope.decl(metadata !81526)
  call void @llvm.experimental.noalias.scope.decl(metadata !81527)
  call void @llvm.experimental.noalias.scope.decl(metadata !81528)
  call void @llvm.experimental.noalias.scope.decl(metadata !81529)
  %i.fv = load i64, ptr %i.e, align 8, !alias.scope !81530, !noalias !81531, !noundef !21 ; 3 uses
end_hunk_0
