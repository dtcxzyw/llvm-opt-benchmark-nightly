Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN9actix_web4http6header19content_disposition19split_once_and_trim17h4d3c0ab9e27ca417E:bb.a
  %i.ar = phi ptr [ %i.bf, %bb.i ], [ %i.af, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.i ], [ %i.ai, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i.i" ]
  %i.as = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i.i, 6
  %i.at = and i8 %i.ac, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  br label %bb.j

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i"
  %i.aw = icmp ne ptr %1, %i.am
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !11575, !noalias !11576, !noundef !25
  %i.az = and i8 %i.ay, 7
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 6
  %i.bc = and i8 %i.an, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd
  br label %bb.i

bb.i:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i"
  %i.bf = phi ptr [ %i.ax, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i" ], [ %i.am, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i.i = phi i32 [ %i.be, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i.i" ], [ %i.ap, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i.i" ]
  %i.bg = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i.i, 6
  %i.bh = and i8 %i.ag, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi
  br label %bb.h

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bk = phi ptr [ %i.ab, %bb.g ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.av, %bb.h ] ; 8 uses
  %i.bl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bl)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i, label %bb.k [
    i32 32, label %bb.q
    i32 13, label %bb.q
    i32 12, label %bb.q
    i32 11, label %bb.q
    i32 10, label %bb.q
    i32 9, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.bm = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i.i, 127
  br i1 %i.bm, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bn = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i, 8
  switch i32 %i.bn, label %bb.r [
    i32 0, label %bb.o
    i32 22, label %bb.m
    i32 32, label %bb.p
    i32 48, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bo = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 5760
  %i.bp = zext i1 %i.bo to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.bq = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 12288
  %i.br = zext i1 %i.bq to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.o:                                             ; preds = %bb.l
  %i.bs = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !11577, !noundef !25
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

bb.p:                                             ; preds = %bb.l
  %i.bw = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !11577, !noundef !25
  %i.ca = lshr i8 %i.bz, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.br, %bb.n ], [ %i.bv, %bb.o ], [ %i.bp, %bb.m ], [ %i.ca, %bb.p ]
  %i.cb = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.cc = icmp eq ptr %1, %i.bk
  br i1 %i.cc, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit", label %.lr.ph.i.i.i

bb.r:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i.i", %bb.l, %bb.k
  %i.cd = ptrtoint ptr %i.aa to i64
  %i.ce = ptrtoint ptr %1 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h6559a91f15506e13E.exit": ; preds = %bb.q, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit, %bb.r
  %.sink.i.i8 = phi i64 [ %.sink.i.i7, %bb.r ], [ %.sink.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink.i.i7, %bb.q ]
  %.sink3.i.i6 = phi ptr [ %.sink3.i.i5, %bb.r ], [ %.sink3.i.i, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ %.sink3.i.i5, %bb.q ]
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.r ], [ 0, %_ZN9actix_web4http6header19content_disposition10split_once17h178f9ec842a287b0E.exit ], [ 0, %bb.q ]
  %i.cg = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17hb5795610c88f9b77E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sink3.i.i6, i64 noundef %.sink.i.i8) ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  store ptr %1, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ch, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ci, ptr %i.cl, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN9actix_web4http6header4date4Date3now17h4bc8955600ca4f06E() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E()
  ret { i64, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9actix_web4http6header5range13ByteRangeSpec20to_satisfiable_range17h381b9c40f9121484E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !42, !noundef !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 8 uses
  switch i64 %i.b, label %default.unreachable9 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.k, %bb.j
  %.sink12 = phi i64 [ %i.o, %bb.j ], [ 0, %bb.k ], [ %i.d, %bb.h ], [ %i.d, %bb.g ]
  %.sink10 = phi i64 [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.m, %bb.h ], [ %.sroa.0.0.i, %bb.g ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink12, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink10, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a, %bb.f, %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

default.unreachable9:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !25 ; 2 uses
  %i.i = icmp ult i64 %i.d, %2
  %i.j = icmp ule i64 %i.d, %i.h
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.d, %2
  br i1 %i.k, label %bb.h, label %bb.c

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = add i64 %2, -1
  %.sroa.0.0.i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.l, i64 %i.h)
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.m = add i64 %2, -1
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.n = icmp ugt i64 %i.d, %2
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = sub nuw i64 %2, %i.d
  %i.p = add i64 %2, -1
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.q = add i64 %2, -1
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range11bytes_multi17h4285cd81cceb357dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !11626, !noalias !11627 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11626, !noalias !11627, !nonnull !25, !noundef !25 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11626, !noalias !11627 ; 7 uses
  %i.a = icmp ult i64 %.sroa.5.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.a)
  %i.b = mul nuw nsw i64 %.sroa.5.0.copyload.i, 24 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.c, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11628
  %i.d = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #46, !noalias !11628 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.b
  %i.f = add nuw nsw i64 %.sroa.5.0.copyload.i, 1152921504606846975
  %i.g = and i64 %i.f, 1152921504606846975        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp samesign ult i64 %i.g, 3
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, 2305843009213693948
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.b, %bb.b ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #52
          to label %.noexc.i.i.i.i.i unwind label %bb.e, !noalias !11629

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.j = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.k = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = load <2 x i64>, ptr %i.k, align 8, !noalias !11630
  store i64 0, ptr %i.m, align 8, !noalias !11631
  store <2 x i64> %i.n, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11631
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load <2 x i64>, ptr %i.l, align 8, !noalias !11630
  store i64 0, ptr %i.q, align 8, !noalias !11631
  store <2 x i64> %i.r, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !11631
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load <2 x i64>, ptr %i.o, align 8, !noalias !11630
  store i64 0, ptr %i.u, align 8, !noalias !11631
  store <2 x i64> %i.v, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !11631
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load <2 x i64>, ptr %i.s, align 8, !noalias !11630
  store i64 0, ptr %i.y, align 8, !noalias !11631
  store <2 x i64> %i.z, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !11631
  %i.aa = add nuw nsw i64 %i.j, 4                 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init18 = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.w, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ab = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init18, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !noalias !11630
  store i64 0, ptr %i.ae, align 8, !noalias !11631
  store <2 x i64> %i.af, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !11631
  %i.ag = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !11621

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i16 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.sroa.5.0.copyload.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.10.0.i.i.i.i.i.i15 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.d, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.val6.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ah, label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ai = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11632
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit

"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.aj

bb.e:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ak, label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = shl nuw i64 %.sroa.0.0.copyload.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11633
  br label %"_ZN4core3ptr197drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$u64$C$u64$RP$$GT$$C$actix_web..http..header..range..Range..bytes_multi..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha143777f2a923813E.exit.i.i.i.i.i"

_ZN4core4iter6traits8iterator8Iterator7collect17h501d7a6b759730b6E.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i.i16, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i15, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val6.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header5range5Range5bytes17hcbc2b81a8de86ea0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #46 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx6, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN9actix_web4http6header6Writer3new17h5f6fa997e0373a06E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6Writer4take17h5aefe2556e0aae5eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN5bytes9bytes_mut8BytesMut5split17hdec65ef5b53cc0f1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call fastcc void @_ZN5bytes9bytes_mut8BytesMut6freeze17h3d19f315c4911139E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept10preference17hdb9302611cbcb7c5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  store i64 2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not1920 = icmp eq i64 %i.g, 0
  br i1 %.not1920, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.06.022 = phi i16 [ 0, %.lr.ph ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  %.sroa.07.021 = phi ptr [ %i.e, %.lr.ph ], [ %i.n, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 88
  %i.p = load i16, ptr %i.o, align 8, !noundef !25 ; 2 uses
  %i.q = icmp ugt i16 %i.p, %.sroa.06.022
  br i1 %i.q, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %.sroa.01.0.copyload.pre = load i64, ptr %i.a, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0.copyload.pre, 2
  br i1 %.not, label %._crit_edge.thread, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit"

bb.c:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", %bb.b
  %.sroa.06.1 = phi i16 [ %i.p, %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit" ], [ %.sroa.06.022, %bb.b ]
  %.not19 = icmp eq ptr %i.n, %i.h
  br i1 %.not19, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN49_$LT$mime..Mime$u20$as$u20$core..clone..Clone$GT$5clone17he158e8ae0cbadfb2E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.07.021)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E"(ptr noalias noundef align 8 dereferenceable(88) %i.a) #53
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = load i64, ptr %i.a, align 8, !range !42, !noundef !25
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.i, align 8, !range !31, !noundef !25
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.j, align 8     ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !nonnull !25, !noundef !25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11642
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i": ; preds = %bb.i, %bb.h, %bb.g
  %.val.i.i = load i64, ptr %i.l, align 8, !range !24, !noundef !25 ; 3 uses
  %i.x = icmp ne i64 %.val.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.x)
  %or.cond.i4.i.i = icmp slt i64 %.val.i.i, 1
  br i1 %or.cond.i4.i.i, label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i"
  %.val1.i.i = load ptr, ptr %i.m, align 8, !nonnull !25, !noundef !25
  %i.y = shl nuw i64 %.val.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11643
  br label %"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit"

"_ZN4core3ptr59drop_in_place$LT$core..option..Option$LT$mime..Mime$GT$$GT$17h50415a1504f599d2E.exit": ; preds = %bb.j, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i", %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit": ; preds = %._crit_edge
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, i64 80, i1 false)
  store i64 %.sroa.01.0.copyload.pre, ptr %0, align 8
  br label %bb.k

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @675, i64 16, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775806, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @675, i64 32), i64 16, i1 false)
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @675, i64 49), i64 7, i1 false)
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 ptrtoint (ptr @674 to i64), ptr %.sroa.716.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 3 to ptr), ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @675, i64 72), i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit", %._crit_edge.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept4html17hf9ddfd537db9048eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @677, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
