Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/cookie-84685c1c06e17ab0.cookie.812c9487578305d5-cgu.0?download=true
inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6cookie5parse10parse_date17h42554519547fd46fE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1979
  %i.m = ptrtoint ptr %.sroa.515.0.copyload.i.i.i.i to i64 ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i64 %i.m, 32
  %i.p = trunc nuw i64 %i.o to i32
  br label %.thread

.loopexit.i:                                      ; preds = %bb.c
  %.sroa.0.0.copyload2.pre.i = load i128, ptr %i.c, align 16, !noalias !1997 ; 2 uses
  %.sroa.7.0.copyload6.pre.i = load i32, ptr %.sroa.7.0..sroa_idx3.i, align 16, !noalias !1997 ; 2 uses
  %.sroa.8.0.copyload10.pre.i = load i32, ptr %.sroa.8.0..sroa_idx7.i, align 4, !noalias !1997 ; 2 uses
  %.sroa.9.0.copyload14.pre.i = load i64, ptr %.sroa.9.0..sroa_idx11.i, align 8, !noalias !1997 ; 2 uses
  %.sroa.12.0.copyload26.pre.i = load i16, ptr %.sroa.12.0..sroa_idx23.i, align 16, !noalias !1997
  %.sroa.13.0.copyload30.pre.i = load i8, ptr %.sroa.13.0..sroa_idx27.i, align 2, !noalias !1997
  %.sroa.14.0.copyload34.pre.i = load i8, ptr %.sroa.14.0..sroa_idx31.i, align 1, !noalias !1997
  %.sroa.15.0.copyload38.pre.i = load i8, ptr %.sroa.15.0..sroa_idx35.i, align 4, !noalias !1997
  %.sroa.16.0.copyload42.pre.i = load i8, ptr %.sroa.16.0..sroa_idx39.i, align 1, !noalias !1997
  %.sroa.17.0.copyload46.pre.i = load i8, ptr %.sroa.17.0..sroa_idx43.i, align 2, !noalias !1997
  %.sroa.18.0.copyload50.pre.i = load i8, ptr %.sroa.18.0..sroa_idx47.i, align 1, !noalias !1997
  %.sroa.19.0.copyload54.pre.i = load i8, ptr %.sroa.19.0..sroa_idx51.i, align 8, !noalias !1997
  %.sroa.20.0.copyload58.pre.i = load i8, ptr %.sroa.20.0..sroa_idx55.i, align 1, !noalias !1997
  %.sroa.21.0.copyload62.pre.i = load i8, ptr %.sroa.21.0..sroa_idx59.i, align 2, !noalias !1997
  %.sroa.22.0.copyload66.pre.i = load i8, ptr %.sroa.22.0..sroa_idx63.i, align 1, !noalias !1997
  %.sroa.26.0.copyload82.pre.i = load i8, ptr %.sroa.26.0..sroa_idx79.i, align 1, !noalias !1997
  %.sroa.27.0.copyload86.pre.i = load i8, ptr %.sroa.27.0..sroa_idx83.i, align 16, !noalias !1997
  %.sroa.28.0.copyload90.pre.i = load i8, ptr %.sroa.28.0..sroa_idx87.i, align 1, !noalias !1997
  %.sroa.30.0.copyload98.pre.i = load i8, ptr %.sroa.30.0..sroa_idx95.i, align 1, !noalias !1997
  %.sroa.31.0.copyload102.pre.i = load i8, ptr %.sroa.31.0..sroa_idx99.i, align 4, !noalias !1997
  %.sroa.32.0.copyload106.pre.i = load i8, ptr %.sroa.32.0..sroa_idx103.i, align 1, !noalias !1997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1979
  %i.q = icmp eq i64 %i.k, 0
  br i1 %i.q, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit, label %.thread

.loopexit.i.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1979
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit.thread, label %.thread

_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit: ; preds = %.loopexit.i
  %i.s = trunc i128 %.sroa.0.0.copyload2.pre.i to i1
  %i.t = select i1 %i.s, i64 10, i64 12
  %extract = lshr i128 %.sroa.0.0.copyload2.pre.i, 64
  %extract.t328 = trunc nuw i128 %extract to i64
  %i.u = zext i32 %.sroa.8.0.copyload10.pre.i to i64
  %i.v = shl nuw i64 %i.u, 32
  %i.w = zext i32 %.sroa.7.0.copyload6.pre.i to i64
  %i.x = icmp eq i8 %.sroa.32.0.copyload106.pre.i, 2
  br i1 %i.x, label %.thread, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit.thread

_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit.thread: ; preds = %.loopexit.i.thread, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit
  %.sroa.31.0.copyload102.i363424 = phi i8 [ %.sroa.31.0.copyload102.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 0, %.loopexit.i.thread ]
  %.sroa.30.0.copyload98.i364423 = phi i8 [ %.sroa.30.0.copyload98.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 0, %.loopexit.i.thread ]
  %.sroa.28.0.copyload90.i365422 = phi i8 [ %.sroa.28.0.copyload90.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 2, %.loopexit.i.thread ] ; 2 uses
  %.sroa.27.0.copyload86.i366421 = phi i8 [ %.sroa.27.0.copyload86.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 7, %.loopexit.i.thread ] ; 5 uses
  %.sroa.26.0.copyload82.i367420 = phi i8 [ %.sroa.26.0.copyload82.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 0, %.loopexit.i.thread ] ; 5 uses
  %.sroa.22.0.copyload66.i368419 = phi i8 [ %.sroa.22.0.copyload66.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -1, %.loopexit.i.thread ] ; 6 uses
  %.sroa.21.0.copyload62.i369418 = phi i8 [ %.sroa.21.0.copyload62.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -1, %.loopexit.i.thread ] ; 4 uses
  %.sroa.20.0.copyload58.i370417 = phi i8 [ %.sroa.20.0.copyload58.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 0, %.loopexit.i.thread ] ; 6 uses
  %.sroa.19.0.copyload54.i371416 = phi i8 [ %.sroa.19.0.copyload54.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -1, %.loopexit.i.thread ] ; 5 uses
  %.sroa.18.0.copyload50.i372415 = phi i8 [ %.sroa.18.0.copyload50.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 0, %.loopexit.i.thread ] ; 5 uses
  %.sroa.17.0.copyload46.i373414 = phi i8 [ %.sroa.17.0.copyload46.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 0, %.loopexit.i.thread ] ; 3 uses
  %.sroa.16.0.copyload42.i374413 = phi i8 [ %.sroa.16.0.copyload42.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -1, %.loopexit.i.thread ] ; 3 uses
  %.sroa.15.0.copyload38.i375412 = phi i8 [ %.sroa.15.0.copyload38.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -1, %.loopexit.i.thread ] ; 3 uses
  %.sroa.14.0.copyload34.i376411 = phi i8 [ %.sroa.14.0.copyload34.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -1, %.loopexit.i.thread ] ; 3 uses
  %.sroa.13.0.copyload30.i377410 = phi i8 [ %.sroa.13.0.copyload30.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -1, %.loopexit.i.thread ] ; 5 uses
  %.sroa.12.0.copyload26.i378409 = phi i16 [ %.sroa.12.0.copyload26.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 0, %.loopexit.i.thread ] ; 4 uses
  %.sroa.9.0.copyload14.i379408 = phi i64 [ %.sroa.9.0.copyload14.pre.i, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -9223231295071453185, %.loopexit.i.thread ] ; 5 uses
  %.sroa.8.0.copyload10.i380407 = phi i64 [ %i.v, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ -9223372036854775808, %.loopexit.i.thread ] ; 2 uses
  %.sroa.7.0.copyload6.i381406 = phi i64 [ %i.w, %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit ], [ 2147483648, %.loopexit.i.thread ] ; 3 uses
  %.sroa.019.sroa.5.sroa.5.8.extract.trunc = trunc nuw i64 %.sroa.7.0.copyload6.i381406 to i32 ; 4 uses
  %.sroa.019.sroa.5.sroa.5.12.extract.shift = lshr exact i64 %.sroa.8.0.copyload10.i380407, 32
  %.sroa.019.sroa.5.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.019.sroa.5.sroa.5.12.extract.shift to i32 ; 4 uses
  %.sroa.019.sroa.5.sroa.8.16.extract.trunc = trunc i64 %.sroa.9.0.copyload14.i379408 to i32 ; 3 uses
  %.sroa.019.sroa.5.sroa.8.20.extract.shift = lshr i64 %.sroa.9.0.copyload14.i379408, 32
  %.sroa.019.sroa.5.sroa.8.20.extract.trunc = trunc i64 %.sroa.019.sroa.5.sroa.8.20.extract.shift to i16 ; 2 uses
  %i.y = icmp eq i64 %.sroa.7.0.copyload6.i381406, 2147483648
  br i1 %i.y, label %bb.e, label %.thread425

.thread425:                                       ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit.thread
  %i.z = icmp sgt i32 %.sroa.019.sroa.5.sroa.5.8.extract.trunc, -10000
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp slt i32 %.sroa.019.sroa.5.sroa.5.8.extract.trunc, 10000
  call void @llvm.assume(i1 %i.aa)
  br label %bb.f

bb.e:                                             ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit.thread
  %.not = icmp eq i8 %.sroa.13.0.copyload30.i377410, -1
  %i.ab = zext nneg i8 %.sroa.13.0.copyload30.i377410 to i32
  br i1 %.not, label %.thread391.i.i, label %bb.f

bb.f:                                             ; preds = %.thread425, %bb.e
  %spec.select.i.i56.pn428 = phi i32 [ %.sroa.019.sroa.5.sroa.5.8.extract.trunc, %.thread425 ], [ %i.ab, %bb.e ] ; 3 uses
  %or.cond = icmp ult i32 %spec.select.i.i56.pn428, 69
  %i.ac = add i32 %spec.select.i.i56.pn428, -69
  %or.cond1 = icmp ult i32 %i.ac, 31
  %. = select i1 %or.cond1, i32 1900, i32 0
  %.sroa.011.0 = select i1 %or.cond, i32 2000, i32 %.
  %i.ad = add i32 %.sroa.011.0, %spec.select.i.i56.pn428 ; 2 uses
  %i.ae = add i32 %i.ad, -10000
  %or.cond.i = icmp ult i32 %i.ae, -19999
  br i1 %or.cond.i, label %bb.g, label %.thread434, !prof !1639

bb.g:                                             ; preds = %bb.f
  %.not294.i.i.not = icmp eq i64 %.sroa.7.0.copyload6.i381406, 2147483648
  br i1 %.not294.i.i.not, label %.thread.i.i, label %.thread434

.thread434:                                       ; preds = %bb.f, %bb.g
  %.sroa.9.1437 = phi i32 [ %.sroa.019.sroa.5.sroa.5.8.extract.trunc, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.af = icmp sgt i32 %.sroa.9.1437, -10000
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp slt i32 %.sroa.9.1437, 10000
  call void @llvm.assume(i1 %i.ag)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread434, %bb.g
  %.not294.i.i433 = phi i1 [ false, %bb.g ], [ true, %.thread434 ]
  %.sroa.9.0432 = phi i32 [ -2147483648, %bb.g ], [ %.sroa.9.1437, %.thread434 ] ; 2 uses
  %.not295.i.i = icmp eq i16 %.sroa.019.sroa.5.sroa.8.20.extract.trunc, -32768
  %spec.select.i = select i1 %.not295.i.i, i8 2, i8 %.sroa.30.0.copyload98.i364423 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.13.0.copyload30.i377410, -1
  br i1 %.not.i.i, label %.thread391.i.i, label %bb.h

bb.h:                                             ; preds = %.thread.i.i
  %i.ah = icmp ult i8 %.sroa.13.0.copyload30.i377410, 100
  call void @llvm.assume(i1 %i.ah)
  %.not296.i.i = icmp eq i8 %spec.select.i, 2
  %or.cond325.i.i = or i1 %.not296.i.i, %.not294.i.i433
  br i1 %or.cond325.i.i, label %.thread391.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = trunc nuw i8 %spec.select.i to i1
  %i.aj = sext i16 %.sroa.019.sroa.5.sroa.8.20.extract.trunc to i32
  %i.ak = mul nsw i32 %i.aj, 100
  %i.al = zext nneg i8 %.sroa.13.0.copyload30.i377410 to i32 ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %.sroa.07.0.p.i.i = select i1 %i.ai, i32 %i.am, i32 %i.al
  %.sroa.07.0.i.i = add nsw i32 %.sroa.07.0.p.i.i, %i.ak ; 2 uses
  %i.an = add nsw i32 %.sroa.07.0.i.i, 9999
  %or.cond.i.i = icmp ult i32 %i.an, 19999
  %spec.select.i.i58 = select i1 %or.cond.i.i, i32 %.sroa.07.0.i.i, i32 -2147483648
  br label %.thread391.i.i

.thread391.i.i:                                   ; preds = %bb.e, %bb.i, %bb.h, %.thread.i.i
  %i.ao = phi i32 [ %.sroa.9.0432, %.thread.i.i ], [ %.sroa.9.0432, %bb.h ], [ %spec.select.i.i58, %bb.i ], [ -2147483648, %bb.e ] ; 18 uses
  %.not298.i.i = icmp ne i64 %.sroa.8.0.copyload10.i380407, -9223372036854775808 ; 2 uses
  br i1 %.not298.i.i, label %bb.j, label %.thread397.i.i

bb.j:                                             ; preds = %.thread391.i.i
  %i.ap = icmp sgt i32 %.sroa.019.sroa.5.sroa.5.12.extract.trunc, -10000
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp slt i32 %.sroa.019.sroa.5.sroa.5.12.extract.trunc, 10000
  call void @llvm.assume(i1 %i.aq)
  br label %.thread397.i.i

.thread397.i.i:                                   ; preds = %bb.j, %.thread391.i.i
  %.not299.i.i = icmp slt i64 %.sroa.9.0.copyload14.i379408, -9223090561878065152
  %spec.select91.i = select i1 %.not299.i.i, i8 2, i8 %.sroa.31.0.copyload102.i363424 ; 2 uses
  %.not297.i.i = icmp eq i8 %.sroa.14.0.copyload34.i376411, -1
  br i1 %.not297.i.i, label %.thread398.i.i, label %bb.k

bb.k:                                             ; preds = %.thread397.i.i
  %i.ar = icmp ult i8 %.sroa.14.0.copyload34.i376411, 100
  call void @llvm.assume(i1 %i.ar)
  %.not300.i.i = icmp eq i8 %spec.select91.i, 2
  %or.cond328.i.i = or i1 %.not298.i.i, %.not300.i.i
  br i1 %or.cond328.i.i, label %.thread398.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = trunc nuw i8 %spec.select91.i to i1
  %i.at = ashr i64 %.sroa.9.0.copyload14.i379408, 48
  %i.au = trunc nsw i64 %i.at to i32
  %i.av = mul nsw i32 %i.au, 100
  %i.aw = zext nneg i8 %.sroa.14.0.copyload34.i376411 to i32 ; 2 uses
  %i.ax = sub nsw i32 0, %i.aw
  %.sroa.019.0.p.i.i = select i1 %i.as, i32 %i.ax, i32 %i.aw
  %.sroa.019.0.i.i = add nsw i32 %.sroa.019.0.p.i.i, %i.av ; 2 uses
  %i.ay = add nsw i32 %.sroa.019.0.i.i, 9999
  %or.cond1.i.i = icmp ult i32 %i.ay, 19999
  %spec.select339.i.i = select i1 %or.cond1.i.i, i32 %.sroa.019.0.i.i, i32 -2147483648
  br label %.thread398.i.i

.thread398.i.i:                                   ; preds = %bb.l, %bb.k, %.thread397.i.i
  %i.az = phi i32 [ %.sroa.019.sroa.5.sroa.5.12.extract.trunc, %.thread397.i.i ], [ %.sroa.019.sroa.5.sroa.5.12.extract.trunc, %bb.k ], [ %spec.select339.i.i, %bb.l ] ; 4 uses
  %.not301.i.i = icmp eq i32 %i.ao, -2147483648   ; 6 uses
  br i1 %.not301.i.i, label %.critedge.i.i, label %.thread511.i.i

.thread511.i.i:                                   ; preds = %.thread398.i.i
  %i.ba = icmp sgt i32 %i.ao, -10000
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp slt i32 %i.ao, 10000
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i16 %.sroa.12.0.copyload26.i378409, 0
  br i1 %i.bc, label %.critedge.i.i, label %bb.m, !prof !155

bb.m:                                             ; preds = %.thread511.i.i
  %i.bd = icmp ult i16 %.sroa.12.0.copyload26.i378409, 367
  call void @llvm.assume(i1 %i.bd)
  %.sroa.010.0.i.i.i = call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.be = mul i32 %.sroa.010.0.i.i.i, 33555415
  %i.bf = and i32 %i.be, 100695055                ; 2 uses
  %i.bg = icmp samesign ult i32 %i.bf, 31745
  %or.cond1.i.i.i = icmp samesign ult i16 %.sroa.12.0.copyload26.i378409, 366
  br i1 %or.cond1.i.i.i, label %bb.p, label %bb.n, !prof !2000

bb.n:                                             ; preds = %bb.m
  %.not2.i.i.i = icmp samesign ugt i32 %i.bf, 31744
  br i1 %.not2.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.sroa.15.0.extract.shift.i = lshr i64 ptrtoint (ptr @31 to i64), 32
  br label %bb.bo

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bh = shl nsw i32 %i.ao, 10
  %i.bi = select i1 %i.bg, i32 512, i32 0
  %i.bj = or disjoint i32 %i.bi, %i.bh
  %i.bk = zext nneg i16 %.sroa.12.0.copyload26.i378409 to i32
  %i.bl = or disjoint i32 %i.bj, %i.bk
  br label %bb.ar

.critedge.i.i:                                    ; preds = %.thread398.i.i, %.thread511.i.i
  %i.bm = icmp eq i8 %.sroa.18.0.copyload50.i372415, 0
  br i1 %i.bm, label %.thread423.i.i, label %bb.q, !prof !155

bb.q:                                             ; preds = %.critedge.i.i
  %i.bn = icmp ult i8 %.sroa.18.0.copyload50.i372415, 32
  call void @llvm.assume(i1 %i.bn)
  %.not304.i.i = icmp eq i8 %.sroa.26.0.copyload82.i367420, 0
  %or.cond331.i.i = or i1 %.not304.i.i, %.not301.i.i
  br i1 %or.cond331.i.i, label %.thread423.i.i, label %bb.r

.thread423.i.i:                                   ; preds = %bb.q, %.critedge.i.i
  %.not306.i.i = icmp eq i32 %i.az, -2147483648   ; 2 uses
  br i1 %.not306.i.i, label %bb.x, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bo = add i32 %i.ao, -10000
  %or.cond.i340.i.i = icmp ult i32 %i.bo, -19999
  br i1 %or.cond.i340.i.i, label %bb.u, label %bb.s, !prof !1639

bb.s:                                             ; preds = %bb.r
  %.sroa.012.0.i.i.i = call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.bp = mul i32 %.sroa.012.0.i.i.i, 33555415
  %i.bq = and i32 %i.bp, 100695055
  %i.br = icmp samesign ult i32 %i.bq, 31745      ; 3 uses
  %or.cond1.i341.i.i = icmp samesign ult i8 %.sroa.18.0.copyload50.i372415, 29
  br i1 %or.cond1.i341.i.i, label %bb.v, label %bb.t, !prof !2000

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp eq i8 %.sroa.26.0.copyload82.i367420, 2
  %i.bt = lshr i8 %.sroa.26.0.copyload82.i367420, 3
  %i.bu = xor i8 %i.bt, %.sroa.26.0.copyload82.i367420
  %i.bv = or i8 %i.bu, 30
  %..i.i.i = select i1 %i.br, i8 29, i8 28
  %.sroa.05.0.i.i.i = select i1 %i.bs, i8 %..i.i.i, i8 %i.bv
  %.not.i.i.i = icmp samesign ugt i8 %.sroa.18.0.copyload50.i372415, %.sroa.05.0.i.i.i
  br i1 %.not.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.0370.0.ph.i.i = phi ptr [ @32, %bb.t ], [ @13, %bb.r ]
  %.sroa.8371.0.ph.i.i = phi i64 [ 3, %bb.t ], [ 4, %bb.r ]
  %.sink.i342.ph.i.i = phi i8 [ 1, %bb.t ], [ 0, %bb.r ]
  %i.bw = ptrtoint ptr %.sroa.0370.0.ph.i.i to i64 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc.i = trunc i64 %i.bw to i32
  %.sroa.0.sroa.15.0.extract.shift58.i = lshr i64 %i.bw, 32
  br label %bb.bo

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bx = zext nneg i8 %.sroa.26.0.copyload82.i367420 to i64
  %.sroa.sel.i.i.i = select i1 %i.br, ptr getelementptr inbounds nuw (i8, ptr @33, i64 24), ptr @33
  %i.by = getelementptr [2 x i8], ptr %.sroa.sel.i.i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -2
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !2001, !noundef !3
  %i.cb = zext nneg i8 %.sroa.18.0.copyload50.i372415 to i16
  %i.cc = add i16 %i.ca, %i.cb
  %i.cd = shl nsw i32 %i.ao, 10
  %i.ce = select i1 %i.br, i32 512, i32 0
  %i.cf = or disjoint i32 %i.ce, %i.cd
  %i.cg = zext i16 %i.cc to i32
  %i.ch = or i32 %i.cf, %i.cg                     ; 2 uses
  %i.ci = icmp ne i32 %i.ch, 0
  call void @llvm.assume(i1 %i.ci)
  br label %bb.ar

bb.w:                                             ; preds = %.thread423.i.i
  %i.cj = icmp sgt i32 %i.az, -10000
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp slt i32 %i.az, 10000
  call void @llvm.assume(i1 %i.ck)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread423.i.i
  %i.cl = icmp eq i8 %.sroa.17.0.copyload46.i373414, 0
  br i1 %i.cl, label %.thread444.i.i, label %bb.y, !prof !155

.thread444.i.i:                                   ; preds = %bb.x
  %.not308448.i.i = icmp eq i8 %.sroa.27.0.copyload86.i366421, 7
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = icmp ult i8 %.sroa.17.0.copyload46.i373414, 54
  call void @llvm.assume(i1 %i.cm)
  %.not308.i.i = icmp eq i8 %.sroa.27.0.copyload86.i366421, 7 ; 2 uses
  %or.cond334.i.i = or i1 %.not308.i.i, %.not306.i.i
  br i1 %or.cond334.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %.thread444.i.i
  %.not308450.i.i = phi i1 [ %.not308448.i.i, %.thread444.i.i ], [ %.not308.i.i, %bb.y ] ; 2 uses
  br i1 %.not301.i.i, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2010
  call void @_ZN4time4date4Date18from_iso_week_date17h82d4ed19514e9fc5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.az, i8 noundef %.sroa.17.0.copyload46.i373414, i8 noundef %.sroa.27.0.copyload86.i366421), !noalias !2010
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !1771, !noalias !2010, !noundef !3 ; 2 uses
  %.not319.i.i = icmp eq i8 %i.co, 2
  %i.cp = load i32, ptr %i.a, align 8, !noalias !2010 ; 2 uses
  br i1 %.not319.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4183.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.sroa.15.4.copyload64.i = load i32, ptr %.sroa.4183.0..sroa_idx.i.i, align 4, !noalias !2011
  %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.17.4.copyload54.i = load i64, ptr %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !2011
  %.sroa.6185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.34.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6185.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  %i.cq = zext i32 %.sroa.0.sroa.15.4.copyload64.i to i64
  br label %bb.bo

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  br label %bb.ar

bb.ad:                                            ; preds = %bb.z
  %i.cr = icmp sgt i32 %i.ao, -10000
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp slt i32 %i.ao, 10000
  call void @llvm.assume(i1 %i.cs)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %.not309.i.i = icmp eq i8 %.sroa.15.0.copyload38.i375412, -1
  br i1 %.not309.i.i, label %.thread456.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = icmp ult i8 %.sroa.15.0.copyload38.i375412, 54
  call void @llvm.assume(i1 %i.ct)
  %or.cond336.i.i = or i1 %.not301.i.i, %.not308450.i.i
  br i1 %or.cond336.i.i, label %.thread456.i.i, label %switch.lookup

.thread456.i.i:                                   ; preds = %bb.af, %bb.ae
  br i1 %.not301.i.i, label %bb.al, label %bb.ak

switch.lookup:                                    ; preds = %bb.af
  %i.cu = zext nneg i8 %.sroa.15.0.copyload38.i375412 to i16
  %i.cv = mul nuw nsw i16 %i.cu, 7
  %i.cw = zext nneg i8 %.sroa.27.0.copyload86.i366421 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6cookie5parse10parse_date17h42554519547fd46fE, i64 %i.cw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.cx = add nuw nsw i16 %i.cv, %switch.ext
  %i.cy = shl i32 %i.ao, 10                       ; 2 uses
  %i.cz = ashr exact i32 %i.cy, 10
  %i.da = add nsw i32 %i.cz, 999999               ; 3 uses
  %.neg.i.i.i.i = sdiv i32 %i.da, -100
  %i.db = add nsw i32 %.neg.i.i.i.i, -363521074
  %i.dc = sdiv i32 %i.da, 400
  %i.dd = add nsw i32 %i.db, %i.dc
  %i.de = sext i32 %i.da to i64
  %i.df = mul nsw i64 %i.de, 1461
  %i.dg = sdiv i64 %i.df, 4
  %i.dh = trunc nsw i64 %i.dg to i32
  %i.di = add nsw i32 %i.dd, %i.dh
  %i.dj = srem i32 %i.di, 7
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [2 x i8], ptr @switch.table._ZN6cookie5parse10parse_date17h42554519547fd46fE.138, i64 %i.dk
  %switch.gep453 = getelementptr i8, ptr %i.dl, i64 12
  %switch.load454 = load i16, ptr %switch.gep453, align 2
  %i.dm = add nsw i16 %i.cx, %switch.load454      ; 2 uses
  %i.dn = add nsw i16 %i.dm, 1                    ; 2 uses
  %i.do = add i32 %i.ao, -10000
  %or.cond.i344.i.i = icmp ult i32 %i.do, -19999
  br i1 %or.cond.i344.i.i, label %bb.ai, label %bb.ag, !prof !1639

bb.ag:                                            ; preds = %switch.lookup
  %.sroa.010.0.i345.i.i = call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.dp = mul i32 %.sroa.010.0.i345.i.i, 33555415
  %i.dq = and i32 %i.dp, 100695055                ; 2 uses
  %i.dr = icmp samesign ult i32 %i.dq, 31745
  %or.cond1.i346.i.i = icmp ult i16 %i.dm, 365
  br i1 %or.cond1.i346.i.i, label %bb.aj, label %bb.ah, !prof !2000

bb.ah:                                            ; preds = %bb.ag
  %3 = icmp ne i16 %i.dn, 366
  %.not2.i347.i.i = icmp samesign ugt i32 %i.dq, 31744
  %brmerge.i348.i.i = or i1 %.not2.i347.i.i, %3
  br i1 %brmerge.i348.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %switch.lookup
  %.sroa.0377.0.ph.i.i = phi ptr [ @31, %bb.ah ], [ @13, %switch.lookup ]
  %.sroa.8378.0.ph.i.i = phi i64 [ 7, %bb.ah ], [ 4, %switch.lookup ]
  %.sink.i349.ph.i.i = phi i8 [ 1, %bb.ah ], [ 0, %switch.lookup ]
  %i.ds = ptrtoint ptr %.sroa.0377.0.ph.i.i to i64 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc56.i = trunc i64 %i.ds to i32
  %.sroa.0.sroa.15.0.extract.shift60.i = lshr i64 %i.ds, 32
  br label %bb.bo

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.dt = select i1 %i.dr, i32 512, i32 0
  %i.du = zext nneg i16 %i.dn to i32
  %i.dv = or i32 %i.dt, %i.du
  %i.dw = or i32 %i.dv, %i.cy                     ; 2 uses
  %i.dx = icmp ne i32 %i.dw, 0
  call void @llvm.assume(i1 %i.dx)
  br label %bb.ar

bb.ak:                                            ; preds = %.thread456.i.i
  %i.dy = icmp sgt i32 %i.ao, -10000
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp slt i32 %i.ao, 10000
  call void @llvm.assume(i1 %i.dz)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread456.i.i
  %.not312.i.i = icmp eq i8 %.sroa.16.0.copyload42.i374413, -1
  br i1 %.not312.i.i, label %bb.bo, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ea = icmp ult i8 %.sroa.16.0.copyload42.i374413, 54
  call void @llvm.assume(i1 %i.ea)
  %or.cond338.i.i = or i1 %.not301.i.i, %.not308450.i.i
  br i1 %or.cond338.i.i, label %bb.bo, label %switch.lookup448

switch.lookup448:                                 ; preds = %bb.am
  %i.eb = zext nneg i8 %.sroa.16.0.copyload42.i374413 to i16
  %i.ec = mul nuw nsw i16 %i.eb, 7
  %i.ed = zext nneg i8 %.sroa.27.0.copyload86.i366421 to i16
  %i.ee = add nuw nsw i16 %i.ec, %i.ed
  %i.ef = shl i32 %i.ao, 10                       ; 2 uses
  %i.eg = ashr exact i32 %i.ef, 10
  %i.eh = add nsw i32 %i.eg, 999999               ; 3 uses
  %.neg.i.i353.i.i = sdiv i32 %i.eh, -100
  %i.ei = add nsw i32 %.neg.i.i353.i.i, -363521074
  %i.ej = sdiv i32 %i.eh, 400
  %i.ek = add nsw i32 %i.ei, %i.ej
  %i.el = sext i32 %i.eh to i64
  %i.em = mul nsw i64 %i.el, 1461
  %i.en = sdiv i64 %i.em, 4
  %i.eo = trunc nsw i64 %i.en to i32
  %i.ep = add nsw i32 %i.ek, %i.eo
  %i.eq = srem i32 %i.ep, 7
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [2 x i8], ptr @switch.table._ZN6cookie5parse10parse_date17h42554519547fd46fE.138, i64 %i.er
  %switch.gep449 = getelementptr i8, ptr %i.es, i64 12
  %switch.load450 = load i16, ptr %switch.gep449, align 2
  %i.et = add nsw i16 %i.ee, %switch.load450      ; 2 uses
  %i.eu = add nsw i16 %i.et, 1                    ; 2 uses
  %i.ev = add i32 %i.ao, -10000
  %or.cond.i358.i.i = icmp ult i32 %i.ev, -19999
  br i1 %or.cond.i358.i.i, label %bb.ap, label %bb.an, !prof !1639

bb.an:                                            ; preds = %switch.lookup448
  %.sroa.010.0.i359.i.i = call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.ew = mul i32 %.sroa.010.0.i359.i.i, 33555415
  %i.ex = and i32 %i.ew, 100695055                ; 2 uses
  %i.ey = icmp samesign ult i32 %i.ex, 31745
  %or.cond1.i360.i.i = icmp ult i16 %i.et, 365
  br i1 %or.cond1.i360.i.i, label %bb.aq, label %bb.ao, !prof !2000

bb.ao:                                            ; preds = %bb.an
  %4 = icmp ne i16 %i.eu, 366
  %.not2.i362.i.i = icmp samesign ugt i32 %i.ex, 31744
  %brmerge.i363.i.i = or i1 %.not2.i362.i.i, %4
  br i1 %brmerge.i363.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %switch.lookup448
  %.sroa.0384.0.ph.i.i = phi ptr [ @31, %bb.ao ], [ @13, %switch.lookup448 ]
  %.sroa.8385.0.ph.i.i = phi i64 [ 7, %bb.ao ], [ 4, %switch.lookup448 ]
  %.sink.i363.ph.i.i = phi i8 [ 1, %bb.ao ], [ 0, %switch.lookup448 ]
  %i.ez = ptrtoint ptr %.sroa.0384.0.ph.i.i to i64 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc57.i = trunc i64 %i.ez to i32
  %.sroa.0.sroa.15.0.extract.shift62.i = lshr i64 %i.ez, 32
  br label %bb.bo

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.fa = select i1 %i.ey, i32 512, i32 0
  %i.fb = zext nneg i16 %i.eu to i32
  %i.fc = or i32 %i.fa, %i.fb
  %i.fd = or i32 %i.fc, %i.ef                     ; 2 uses
  %i.fe = icmp ne i32 %i.fd, 0
  call void @llvm.assume(i1 %i.fe)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aj, %bb.ac, %bb.v, %bb.p
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.cp, %bb.ac ], [ %i.ch, %bb.v ], [ %i.fd, %bb.aq ], [ %i.bl, %bb.p ], [ %i.dw, %bb.aj ]
  %.not.not.i.i = icmp eq i8 %.sroa.19.0.copyload54.i371416, -1 ; 2 uses
  br i1 %.not.not.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = icmp ult i8 %.sroa.19.0.copyload54.i371416, 24
  call void @llvm.assume(i1 %i.ff)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.not.i48.i = icmp eq i8 %.sroa.20.0.copyload58.i370417, 0 ; 2 uses
  br i1 %.not.i48.i, label %bb.av, label %bb.au, !prof !155

bb.au:                                            ; preds = %bb.at
  %i.fg = icmp ult i8 %.sroa.20.0.copyload58.i370417, 13
  call void @llvm.assume(i1 %i.fg)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %.not.not.i.i, label %bb.aw, label %.thread313.i.i

bb.aw:                                            ; preds = %bb.av
  %.not233.i.i = icmp eq i8 %.sroa.28.0.copyload90.i365422, 2
  %or.cond.i50.i = or i1 %.not233.i.i, %.not.i48.i
  br i1 %or.cond.i50.i, label %bb.bn, label %.critedge.i51.i

.critedge.i51.i:                                  ; preds = %bb.aw
  %i.fh = trunc nuw i8 %.sroa.28.0.copyload90.i365422 to i1
  %i.fi = icmp eq i8 %.sroa.20.0.copyload58.i370417, 12 ; 2 uses
  %i.fj = add nuw nsw i8 %.sroa.20.0.copyload58.i370417, 12
  %spec.select.i52.i = select i1 %i.fi, i8 12, i8 %i.fj
  %..sroa.011.0.i.i = select i1 %i.fi, i8 0, i8 %.sroa.20.0.copyload58.i370417
  %.sroa.0.0.ph.i.i = select i1 %i.fh, i8 %spec.select.i52.i, i8 %..sroa.011.0.i.i ; 3 uses
  %i.fk = icmp samesign ult i8 %.sroa.20.0.copyload58.i370417, 13
  call void @llvm.assume(i1 %i.fk)
  %.not235.i.i = icmp eq i8 %.sroa.21.0.copyload62.i369418, -1
  br i1 %.not235.i.i, label %.critedge252.i.i, label %.thread313.thread360.i.i

.thread313.i.i:                                   ; preds = %bb.av
  %i.fl = icmp samesign ult i8 %.sroa.19.0.copyload54.i371416, 24
  call void @llvm.assume(i1 %i.fl)
  %.not238.i.i = icmp eq i8 %.sroa.21.0.copyload62.i369418, -1
  br i1 %.not238.i.i, label %.thread313.thread.i.i, label %bb.ay

.thread313.thread360.i.i:                         ; preds = %.critedge.i51.i
  %i.fm = icmp ult i8 %.sroa.21.0.copyload62.i369418, 60
  call void @llvm.assume(i1 %i.fm)
  br label %bb.ay

.critedge252.i.i:                                 ; preds = %.critedge.i51.i
  %.not236.i.i = icmp eq i8 %.sroa.22.0.copyload66.i368419, -1
  %.not237.i.i = icmp eq i32 %.sroa.019.sroa.5.sroa.8.16.extract.trunc, -1
  %or.cond455 = select i1 %.not236.i.i, i1 %.not237.i.i, i1 false
  br i1 %or.cond455, label %bb.ax, label %.thread313.thread.i.i

bb.ax:                                            ; preds = %.critedge252.i.i
  %.sroa.0.6.insert.ext.i.i = zext nneg i8 %.sroa.0.0.ph.i.i to i64
  %.sroa.0.6.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i, 48
  br label %bb.bp

bb.ay:                                            ; preds = %.thread313.thread360.i.i, %.thread313.i.i
  %.sroa.0.0312363.i.i = phi i8 [ %.sroa.0.0.ph.i.i, %.thread313.thread360.i.i ], [ %.sroa.19.0.copyload54.i371416, %.thread313.i.i ]
  %i.fn = zext nneg i8 %.sroa.21.0.copyload62.i369418 to i64
  %i.fo = shl nuw nsw i64 %i.fn, 40
  br label %.thread313.thread.i.i

.thread313.thread.i.i:                            ; preds = %bb.ay, %.critedge252.i.i, %.thread313.i.i
  %.not238359.i.i = phi i1 [ true, %.thread313.i.i ], [ false, %bb.ay ], [ true, %.critedge252.i.i ]
  %.sroa.0.0312358.i.i = phi i8 [ %.sroa.19.0.copyload54.i371416, %.thread313.i.i ], [ %.sroa.0.0312363.i.i, %bb.ay ], [ %.sroa.0.0.ph.i.i, %.critedge252.i.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i.i = phi i64 [ 280375465082880, %.thread313.i.i ], [ %i.fo, %bb.ay ], [ 280375465082880, %.critedge252.i.i ] ; 3 uses
  %.not239.i.i = icmp ne i8 %.sroa.22.0.copyload66.i368419, -1 ; 3 uses
  br i1 %.not239.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.thread313.thread.i.i
  %i.fp = icmp ult i8 %.sroa.22.0.copyload66.i368419, 61
  call void @llvm.assume(i1 %i.fp)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.thread313.thread.i.i
  %.not244.i.i = icmp ne i32 %.sroa.019.sroa.5.sroa.8.16.extract.trunc, -1 ; 4 uses
  br i1 %.not244.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fq = icmp ult i32 %.sroa.019.sroa.5.sroa.8.16.extract.trunc, 1000000000
  call void @llvm.assume(i1 %i.fq)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.not238359.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not239.i.i, label %bb.bg, label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %brmerge.i.i = or i1 %.not239.i.i, %.not244.i.i
  br i1 %brmerge.i.i, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.0294.6.insert.ext.i.i = zext nneg i8 %.sroa.0.0312358.i.i to i64
  %.sroa.0294.6.insert.shift.i.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i.i, 48
  br label %bb.bp

bb.bg:                                            ; preds = %bb.bd
  %i.fr = icmp samesign ugt i8 %.sroa.22.0.copyload66.i368419, 59 ; 2 uses
  br i1 %.not244.i.i, label %bb.bj, label %bb.bk

bb.bh:                                            ; preds = %bb.bd
  br i1 %.not244.i.i, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.0299.6.insert.ext.i.i = zext nneg i8 %.sroa.0.0312358.i.i to i64
  %.sroa.0299.6.insert.shift.i.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i.i, 48
  %.sroa.0299.6.insert.insert.i.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i.i, %.sroa.0306.5.insert.ext.i.i
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bg
  br i1 %i.fr, label %bb.bn, label %bb.bm, !prof !1639

bb.bk:                                            ; preds = %bb.bg
  br i1 %i.fr, label %bb.bn, label %bb.bl, !prof !1639

bb.bl:                                            ; preds = %bb.bk
  %.sroa.0302.4.insert.ext.i.i = zext nneg i8 %.sroa.22.0.copyload66.i368419 to i64
  %.sroa.0302.4.insert.shift.i.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i.i, 32
  %.sroa.0302.6.insert.ext.i.i = zext nneg i8 %.sroa.0.0312358.i.i to i64
  %.sroa.0302.6.insert.shift.i.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i.i, 48
  %i.fs = or disjoint i64 %.sroa.0302.6.insert.shift.i.i, %.sroa.0302.4.insert.shift.i.i
  %.sroa.0302.6.insert.insert.i.i = or i64 %i.fs, %.sroa.0306.5.insert.ext.i.i
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  %.sroa.0306.0.insert.ext.i.i = and i64 %.sroa.9.0.copyload14.i379408, 4294967295
  %.sroa.0306.4.insert.ext.i.i = zext nneg i8 %.sroa.22.0.copyload66.i368419 to i64
  %.sroa.0306.4.insert.shift.i.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i.i, 32
  %i.ft = or disjoint i64 %.sroa.0306.0.insert.ext.i.i, %.sroa.0306.4.insert.shift.i.i
  %.sroa.0306.6.insert.ext.i.i = zext nneg i8 %.sroa.0.0312358.i.i to i64
  %.sroa.0306.6.insert.shift.i.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i.i, 48
  %i.fu = or disjoint i64 %.sroa.0306.6.insert.shift.i.i, %i.ft
  %.sroa.0306.6.insert.insert.i.i = or i64 %i.fu, %.sroa.0306.5.insert.ext.i.i
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bk, %bb.bj, %bb.bh, %bb.be, %bb.aw
  %.sink365.i.i = phi i8 [ 2, %bb.bh ], [ 0, %bb.bk ], [ 2, %bb.aw ], [ 0, %bb.bj ], [ 2, %bb.be ]
  %.sroa.049.sroa.8.0.extract.shift56 = lshr i64 ptrtoint (ptr @34 to i64), 32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.o, %bb.u, %bb.ab, %bb.ai, %bb.al, %bb.am, %bb.ap, %bb.bn
  %.sroa.049.sroa.8.0.ph = phi i64 [ %.sroa.049.sroa.8.0.extract.shift56, %bb.bn ], [ 0, %bb.al ], [ 0, %bb.am ], [ %.sroa.0.sroa.15.0.extract.shift58.i, %bb.u ], [ %i.cq, %bb.ab ], [ %.sroa.0.sroa.15.0.extract.shift60.i, %bb.ai ], [ %.sroa.0.sroa.15.0.extract.shift62.i, %bb.ap ], [ %.sroa.0.sroa.15.0.extract.shift.i, %bb.o ]
  %.sroa.049.sroa.0.0.ph = phi i32 [ ptrtoint (ptr @34 to i32), %bb.bn ], [ undef, %bb.al ], [ undef, %bb.am ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %bb.u ], [ %i.cp, %bb.ab ], [ %.sroa.0.sroa.0.0.extract.trunc56.i, %bb.ai ], [ %.sroa.0.sroa.0.0.extract.trunc57.i, %bb.ap ], [ ptrtoint (ptr @31 to i32), %bb.o ]
  %.sroa.12.0.ph = phi i8 [ %.sink365.i.i, %bb.bn ], [ 2, %bb.al ], [ 2, %bb.am ], [ %.sink.i342.ph.i.i, %bb.u ], [ %i.co, %bb.ab ], [ %.sink.i349.ph.i.i, %bb.ai ], [ %.sink.i363.ph.i.i, %bb.ap ], [ 1, %bb.o ]
  %.sroa.951.0.ph = phi i64 [ 6, %bb.bn ], [ undef, %bb.al ], [ undef, %bb.am ], [ %.sroa.8371.0.ph.i.i, %bb.u ], [ %.sroa.17.4.copyload54.i, %bb.ab ], [ %.sroa.8378.0.ph.i.i, %bb.ai ], [ %.sroa.8385.0.ph.i.i, %bb.ap ], [ 7, %bb.o ]
  %.sroa.049.sroa.8.0.insert.shift = shl nuw i64 %.sroa.049.sroa.8.0.ph, 32
  %.sroa.049.sroa.0.0.insert.ext = zext i32 %.sroa.049.sroa.0.0.ph to i64
  %.sroa.049.sroa.0.0.insert.insert = or disjoint i64 %.sroa.049.sroa.8.0.insert.shift, %.sroa.049.sroa.0.0.insert.ext
  store i64 12, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.049.sroa.0.0.insert.insert, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.951.0.ph, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.12.0.ph, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.648.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.34.i, i64 7, i1 false)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm, %bb.bl, %bb.bi, %bb.bf, %bb.ax
  %.sroa.0.0.ph.i = phi i64 [ %.sroa.0302.6.insert.insert.i.i, %bb.bl ], [ %.sroa.0299.6.insert.insert.i.i, %bb.bi ], [ %.sroa.0306.6.insert.insert.i.i, %bb.bm ], [ %.sroa.0294.6.insert.shift.i.i, %bb.bf ], [ %.sroa.0.6.insert.shift.i.i, %bb.ax ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.i, ptr %i.fv, align 8
  %.sroa.5229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.sroa.0.0.i, ptr %.sroa.5229.0..sroa_idx, align 8
  %.sroa.6230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.6230.0..sroa_idx, i8 0, i64 3, i1 false)
  store i64 16, ptr %0, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %.thread, %bb.bp, %bb.bo
  ret void

.thread:                                          ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17h3f449c11f2fccd64E.exit, %bb.d, %.loopexit.i, %.loopexit.i.thread
end_hunk_0
