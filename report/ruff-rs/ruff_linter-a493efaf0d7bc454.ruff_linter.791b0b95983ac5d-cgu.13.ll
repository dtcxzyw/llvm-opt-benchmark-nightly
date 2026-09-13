Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.13?download=true
inline.NumInlined: 4418
inline.NumDeleted: 1702
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19unicode_kind_prefix19unicode_kind_prefix:bb.a
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ap:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22extraneous_parentheses22extraneous_parentheses(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.j, 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 7 uses
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.n = getelementptr i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.066 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 10
  %i.s = load i8, ptr %i.r, align 2, !range !42, !noundef !4
  %i.t = icmp ne i8 %i.s, 20
  %i.u = icmp eq ptr %i.q, %i.k
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %.backedge, label %.lr.ph.i

._crit_edge:                                      ; preds = %bb.d, %.backedge, %bb.c, %bb.a
  ret void

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.w, %bb.c ], [ %i.q, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.y = load i8, ptr %i.x, align 2, !range !42, !noalias !7320, !noundef !4
  switch i8 %i.y, label %.backedge [
    i8 12, label %bb.c
    i8 14, label %bb.c
    i8 20, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.z = icmp eq ptr %i.w, %i.k
  br i1 %i.z, label %._crit_edge, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = load i32, ptr %i.v, align 4, !noalias !7320, !noundef !4 ; 5 uses
  %i.ab = icmp eq ptr %i.w, %i.k
  br i1 %i.ab, label %._crit_edge, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.d, %bb.j
  %.sroa.02.035.i = phi i1 [ %.sroa.02.1.i, %bb.j ], [ true, %bb.d ] ; 3 uses
  %.sroa.03.034.i = phi i32 [ %.sroa.03.11820.i, %bb.j ], [ 1, %bb.d ] ; 7 uses
  %i.ac = phi ptr [ %i.ad, %bb.j ], [ %i.w, %bb.d ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.af = load i8, ptr %i.ae, align 2, !range !42, !noalias !7320, !noundef !4 ; 2 uses
  switch i8 %i.af, label %.thread.i [
    i8 20, label %bb.f
    i8 21, label %bb.e
    i8 22, label %bb.f
    i8 23, label %bb.e
    i8 25, label %bb.g
    i8 38, label %bb.f
    i8 39, label %bb.e
    i8 101, label %bb.h
  ]

bb.e:                                             ; preds = %.lr.ph37.i, %.lr.ph37.i, %.lr.ph37.i
  %i.ag = add i32 %.sroa.03.034.i, -1             ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.thread.i

bb.f:                                             ; preds = %.lr.ph37.i, %.lr.ph37.i, %.lr.ph37.i
  %i.ai = call i32 @llvm.uadd.sat.i32(i32 %.sroa.03.034.i, i32 1)
  br label %.thread.i

bb.g:                                             ; preds = %.lr.ph37.i
  %i.aj = icmp eq i32 %.sroa.03.034.i, 1
  br i1 %i.aj, label %.backedge, label %.thread.thread.i

bb.h:                                             ; preds = %.lr.ph37.i
  %i.ak = icmp eq i32 %.sroa.03.034.i, 1
  br i1 %i.ak, label %.backedge, label %.thread.thread.i

bb.i:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.am = load i32, ptr %i.al, align 4, !noalias !7320, !noundef !4 ; 5 uses
  %i.an = icmp eq ptr %i.ad, %i.k
  %or.cond.i = select i1 %.sroa.02.035.i, i1 true, i1 %i.an
  br i1 %or.cond.i, label %.backedge, label %.lr.ph43.i

.thread.i:                                        ; preds = %bb.f, %bb.e, %.lr.ph37.i
  %.sroa.03.118.i = phi i32 [ %i.ag, %bb.e ], [ %.sroa.03.034.i, %.lr.ph37.i ], [ %i.ai, %bb.f ] ; 3 uses
  switch i8 %i.af, label %.thread.thread.i [
    i8 12, label %bb.j
    i8 14, label %bb.j
  ]

.lr.ph43.i:                                       ; preds = %bb.i, %.backedge.i
  %i.ao = phi ptr [ %i.ap, %.backedge.i ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  %i.ar = load i8, ptr %i.aq, align 2, !range !42, !noalias !7320, !noundef !4
  switch i8 %i.ar, label %.backedge [
    i8 12, label %.backedge.i
    i8 14, label %.backedge.i
    i8 21, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22extraneous_parentheses28match_extraneous_parentheses.exit
  ]

.backedge.i:                                      ; preds = %.lr.ph43.i, %.lr.ph43.i
  %i.as = icmp eq ptr %i.ap, %i.k
  br i1 %i.as, label %.backedge, label %.lr.ph43.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.h, %bb.g
  %.sroa.03.11821.i = phi i32 [ %.sroa.03.118.i, %.thread.i ], [ %.sroa.03.034.i, %bb.h ], [ %.sroa.03.034.i, %bb.g ]
  br label %bb.j

bb.j:                                             ; preds = %.thread.thread.i, %.thread.i, %.thread.i
  %.sroa.03.11820.i = phi i32 [ %.sroa.03.11821.i, %.thread.thread.i ], [ %.sroa.03.118.i, %.thread.i ], [ %.sroa.03.118.i, %.thread.i ]
  %.sroa.02.1.i = phi i1 [ false, %.thread.thread.i ], [ %.sroa.02.035.i, %.thread.i ], [ %.sroa.02.035.i, %.thread.i ]
  %i.at = icmp eq ptr %i.ad, %i.k
  br i1 %i.at, label %.backedge, label %.lr.ph37.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22extraneous_parentheses28match_extraneous_parentheses.exit: ; preds = %.lr.ph43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not = icmp ugt i32 %i.aa, %i.am
  br i1 %.not, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22extraneous_parentheses28match_extraneous_parentheses.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #37
  unreachable

bb.l:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules22extraneous_parentheses28match_extraneous_parentheses.exit
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules9pyupgrade5rules22extraneous_parentheses21ExtraneousParenthesesEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %0, i32 noundef %i.aa, i32 noundef %i.am)
  %i.au = load i16, ptr %i.m, align 8, !range !44, !noundef !4
  %.not11 = icmp eq i16 %i.au, -1
  br i1 %.not11, label %.backedge.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %.val = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val14 = load i64, ptr %i.n, align 8, !noundef !4 ; 8 uses
  %i.av = zext i32 %i.aa to i64                   ; 9 uses
  %i.aw = zext i32 %i.am to i64                   ; 8 uses
  %i.ax = icmp eq i32 %i.aa, 0
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not5.i.i = icmp ugt i64 %.val14, %i.av
  br i1 %.not5.i.i, label %bb.p, label %.split.i.i

bb.o:                                             ; preds = %bb.p, %.split.i.i, %bb.m
  %i.ay = icmp eq i32 %i.am, 0
  br i1 %i.ay, label %bb.s, label %bb.q

.split.i.i:                                       ; preds = %bb.n
  %i.az = icmp eq i64 %.val14, %i.av
  br i1 %i.az, label %bb.o, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

bb.p:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 %i.av
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !7321, !noundef !4
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %bb.o, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

bb.q:                                             ; preds = %bb.o
  %.not6.i.i = icmp ugt i64 %.val14, %i.aw
  br i1 %.not6.i.i, label %bb.r, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.q
  %i.bd = icmp eq i64 %.val14, %i.aw
  br i1 %i.bd, label %bb.s, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !7321, !noundef !4
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %bb.s, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke: ; preds = %.split.i.i, %bb.p, %.split7.i.i, %bb.r, %bb.s, %bb.t, %bb.u
  %3 = phi ptr [ %i.bh, %bb.u ], [ %.val, %.split.i.i ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ], [ %.val, %bb.r ], [ %.val, %.split7.i.i ], [ %.val, %bb.p ]
  %4 = phi i64 [ %i.bi, %bb.u ], [ %.val14, %.split.i.i ], [ %i.bi, %bb.s ], [ %i.bi, %bb.t ], [ %.val14, %bb.r ], [ %.val14, %.split7.i.i ], [ %.val14, %bb.p ]
  %5 = phi i64 [ 1, %bb.u ], [ %i.av, %.split.i.i ], [ 1, %bb.s ], [ 1, %bb.t ], [ %i.av, %bb.r ], [ %i.av, %.split7.i.i ], [ %i.av, %bb.p ]
  %6 = phi i64 [ %i.bj, %bb.u ], [ %i.aw, %.split.i.i ], [ %i.bj, %bb.s ], [ %i.bj, %bb.t ], [ %i.aw, %bb.r ], [ %i.aw, %.split7.i.i ], [ %i.aw, %bb.p ]
  %7 = phi ptr [ @231, %bb.u ], [ @1, %.split.i.i ], [ @231, %bb.s ], [ @231, %bb.t ], [ @1, %bb.r ], [ @1, %.split7.i.i ], [ @1, %bb.p ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #37
          to label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.cont unwind label %.body.loopexit.split-lp

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.cont: ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke
  unreachable

.body.loopexit:                                   ; preds = %bb.aa, %bb.ad, %bb.ac, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.loopexit.split-lp:                          ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.loopexit.split-lp, %.body.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.body.loopexit ], [ %lpad.loopexit.split-lp, %.body.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e) #38
          to label %bb.ag unwind label %bb.af

bb.s:                                             ; preds = %bb.r, %.split7.i.i, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.av ; 6 uses
  %i.bi = sub nuw nsw i64 %i.aw, %i.av            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bj = add nsw i64 %i.bi, -1                   ; 4 uses
  %or.cond163 = icmp samesign ugt i64 %i.bi, 1
  br i1 %or.cond163, label %bb.t, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !7322, !noundef !4
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %bb.u, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !7322, !noundef !4
  %i.bp = icmp sgt i8 %i.bo, -65
  br i1 %i.bp, label %bb.v, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.invoke

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i64 %i.bi, -2                   ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.bq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.x unwind label %.body.loopexit

bb.w:                                             ; preds = %bb.y
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bs = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = load i64, ptr %i.o, align 8, !range !12, !noundef !4 ; 3 uses
  br i1 %i.bt, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.bv = load i64, ptr %i.p, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bv) #37
          to label %bb.w unwind label %.body.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bx = icmp samesign ule i64 %i.bq, %i.bu
  call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not13 = icmp eq i64 %i.bq, 0
  br i1 %.not13, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7323
  store i64 %i.bu, ptr %i.a, align 8, !noalias !7324
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx20, align 8, !noalias !7324
  store i64 %i.bq, ptr %.sroa.521.0..sroa_idx, align 8, !noalias !7324
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.aa, i32 noundef %i.am)
          to label %bb.ac unwind label %.body.loopexit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.br, i64 %i.bq, i1 false)
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7323
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ad unwind label %.body.loopexit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.ae unwind label %.body.loopexit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %bb.l, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph.i, %bb.j, %bb.g, %bb.h, %.backedge.i, %.lr.ph43.i, %.backedge.sink.split, %bb.b, %bb.i
  %.sroa.0.0.be = phi ptr [ %i.ap, %.backedge.i ], [ %i.ad, %bb.j ], [ %i.q, %bb.b ], [ %i.ad, %bb.i ], [ %i.ap, %.backedge.sink.split ], [ %i.ap, %.lr.ph43.i ], [ %i.ad, %bb.h ], [ %i.ad, %bb.g ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.by = icmp eq ptr %.sroa.0.0.be, %i.k
  br i1 %i.by, label %._crit_edge, label %bb.b

bb.af:                                            ; preds = %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ag:                                            ; preds = %.body
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules27lru_cache_with_maxsize_none27lru_cache_with_maxsize_none(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 104811045873349726) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [144 x i8], align 8               ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [144 x i8], align 8               ; 6 uses
  %.idx = mul nuw nsw i64 %2, 88
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr i8, ptr %0, i64 1016
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.043 = phi ptr [ %1, %.lr.ph ], [ %i.aj, %.backedge ] ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 88 ; 2 uses
  %i.ak = load i32, ptr %.sroa.0.043, align 8, !range !16, !noundef !4
  %i.al = icmp eq i32 %i.ak, 16
  br i1 %i.al, label %bb.c, label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.au = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.s, ptr noundef nonnull align 8 %i.au)
  %i.av = load i64, ptr %i.p, align 8, !range !19, !noundef !4
  %.not = icmp eq i64 %i.av, 2
  br i1 %.not, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !7339)
  %i.aw = load i64, ptr %i.n, align 8, !range !8, !alias.scope !7339, !noundef !4 ; 2 uses
  %i.ax = trunc nuw i64 %i.aw to i1               ; 5 uses
  %i.ay = load ptr, ptr %i.t, align 8, !alias.scope !7339, !nonnull !4 ; 4 uses
  %i.az = load i64, ptr %i.u, align 8, !alias.scope !7339
  %i.ba = load i32, ptr %i.v, align 8, !alias.scope !7339
  %i.bb = zext i32 %i.ba to i64
  %.sroa.7.0.i = select i1 %i.ax, i64 %i.az, i64 %i.bb
  %.sroa.01.0.i = select i1 %i.ax, ptr %i.ay, ptr %i.t
  %i.bc = icmp eq i64 %.sroa.7.0.i, 2
  br i1 %i.bc, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.01.0.i.sroa.sel = select i1 %i.ax, ptr %.sroa.gep, ptr %i.u
  %i.bd = load i64, ptr %.sroa.01.0.i.sroa.sel, align 8, !noundef !4
  %i.be = icmp eq i64 %i.bd, 9
  br i1 %i.be, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 7813586424186172774
  %i.bi = getelementptr i8, ptr %i.bf, i64 8
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bk, 115
end_hunk_0
