Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-parser?download=true
inline.NumInlined: 2670
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE5ParseEPNS0_17RegExpCompileDataE:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %.val14.i, %i.bd
  br i1 %i.be, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16GetNamedCapturesEv.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph23.i
  %.sroa.016.022.i = phi ptr [ %.val14.i, %.lr.ph23.i ], [ %i.bm, %._crit_edge.i ] ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.016.022.i, i64 40
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 2 uses
  %i.bh = load ptr, ptr %.sroa.3.0.copyload.i, align 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 12
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.idx.i = shl nsw i64 %i.bk, 2
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %.idx.i
  %.not20.i = icmp eq i32 %i.bj, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i, %bb.l
  %i.bm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.016.022.i) #21 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bd
  br i1 %i.bn, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16GetNamedCapturesEv.exit, label %bb.l

.lr.ph.i:                                         ; preds = %bb.l, %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i
  %.01221.i = phi ptr [ %i.cb, %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i ], [ %i.bh, %bb.l ] ; 2 uses
  %i.bo = load i32, ptr %.01221.i, align 4
  %i.bp = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE10GetCaptureEi(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.bo)
  %i.bq = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.br = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bs = icmp ult ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %.lr.ph.i
  %i.bt = load ptr, ptr %i.ba, align 8
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = add nsw i64 %i.bx, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.by)
  %.pre.i.i15.i = load ptr, ptr %i.bf, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i: ; preds = %bb.m, %.lr.ph.i
  %i.bz = phi ptr [ %i.bq, %.lr.ph.i ], [ %.pre.i.i15.i, %bb.m ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.ca, ptr %i.bf, align 8
  store ptr %i.bp, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.01221.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cb, %i.bl
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16GetNamedCapturesEv.exit: ; preds = %._crit_edge.i, %bb.i, %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i
  %.0.i = phi ptr [ null, %bb.i ], [ %i.ay, %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i ], [ %i.ay, %._crit_edge.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.0.i, ptr %i.cc, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16GetNamedCapturesEv.exit, %bb.b
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal12RegExpParser25ParseRegExpFromHeapStringEPNS0_7IsolateEPNS0_4ZoneENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_17RegExpCompileDataE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  %7 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 10 uses
  %8 = alloca %"class.v8::internal::(anonymous namespace)::RegExpParserImpl", align 8 ; 16 uses
  %9 = alloca %"class.v8::internal::(anonymous namespace)::RegExpParserImpl.0", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.c = load i64, ptr %2, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !42, !noalias !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !noalias !43
  %i.h = load atomic volatile i64, ptr %i.e acquire, align 8, !noalias !44
  %i.i = add i64 %i.h, 11
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i16, ptr %i.j monotonic, align 2, !noalias !44
  %i.l = and i16 %i.k, 15
  switch i16 %i.l, label %bb.l [
    i16 8, label %bb.b
    i16 0, label %bb.c
    i16 9, label %bb.m
    i16 1, label %bb.m
    i16 10, label %bb.d
    i16 2, label %bb.h
    i16 11, label %bb.m
    i16 3, label %bb.m
    i16 13, label %bb.m
    i16 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !45
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = load atomic volatile i64, ptr %i.e monotonic, align 8, !noalias !45
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2, !noalias !45
  %i.v = and i16 %i.u, 16
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.q, align 8, !noalias !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !45
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #19, !noalias !45, !inline_history !37
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #19, !noalias !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !45
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !45
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #19, !noalias !45, !inline_history !37
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.h:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !46
  %i.ai = inttoptr i64 %i.ah to ptr               ; 6 uses
  %i.aj = load atomic volatile i64, ptr %i.e monotonic, align 8, !noalias !46
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2, !noalias !46
  %i.an = and i16 %i.am, 16
  %.not.i10 = icmp eq i16 %i.an, 0
  br i1 %.not.i10, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !noalias !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !46
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #19, !noalias !46, !inline_history !40
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #19, !noalias !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !46
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.au = load ptr, ptr %i.ai, align 8, !noalias !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !46
  %i.ax = tail call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #19, !noalias !46, !inline_history !40
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #20, !noalias !47
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.j, %bb.f, %bb.k, %bb.g, %bb.c, %bb.b
  %.sroa.020.sroa.8.0.ph = phi i32 [ 2, %bb.j ], [ 1, %bb.f ], [ 2, %bb.k ], [ 1, %bb.g ], [ 2, %bb.c ], [ 1, %bb.b ]
  %.sroa.020.sroa.0.0.ph = phi ptr [ %i.at, %bb.j ], [ %i.ab, %bb.f ], [ %i.ax, %bb.k ], [ %i.af, %bb.g ], [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  store ptr %.sroa.020.sroa.0.0.ph, ptr %7, align 8
  %.sroa.020.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.g, ptr %.sroa.020.sroa.7.0..sroa_idx59, align 8
  %.sroa.020.sroa.8.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.020.sroa.8.0.ph, ptr %.sroa.020.sroa.8.0..sroa_idx65, align 4
  %.sroa.020.sroa.9.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %.sroa.020.sroa.9.0..sroa_idx71, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %7, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !15, !noundef !16
  %i.ba = trunc nuw i8 %i.az to i1
  store i8 0, ptr %i.ay, align 8
  br i1 %i.ba, label %bb.n, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.n:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.bb = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #19
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !41
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 1
  %i.bf = load ptr, ptr %7, align 8               ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load i32, ptr %i.bg, align 8            ; 8 uses
  %i.bi = icmp sgt i32 %i.bh, -1                  ; 2 uses
  br i1 %i.be, label %bb.p, label %bb.x

bb.p:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  br i1 %i.bi, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  store ptr %i.bf, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 %i.bh, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 3 uses
  store i32 2097152, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 %3, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 68
  store i8 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 92 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.br, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 93
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 97
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bt, i8 0, i64 5, i1 false)
  store i64 %i.b, ptr %i.bv, align 8
  %.not145 = icmp eq i32 %i.bh, 0
  br i1 %.not145, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.bw = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.bx = icmp ult i64 %i.bw, %i.b
  br i1 %i.bx, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  store i8 1, ptr %i.bu, align 1
  store i32 1, ptr %i.bk, align 8
  store i32 -1, ptr %i.bl, align 4
  store i32 2097152, ptr %i.bo, align 4
  store i32 %i.bh, ptr %i.br, align 8
  store i8 0, ptr %i.bs, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit

bb.v:                                             ; preds = %bb.r
  %i.ca = load i8, ptr %i.bf, align 1
  store i32 1, ptr %i.br, align 8
  %i.cb = zext i8 %i.ca to i32
  store i32 %i.cb, ptr %i.bo, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit

bb.w:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  store i32 1, ptr %i.br, align 8
  store i8 0, ptr %i.bs, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit: ; preds = %bb.u, %bb.v, %bb.w
  %i.cc = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE5ParseEPNS0_17RegExpCompileDataE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ah

bb.x:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  br i1 %i.bi, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.y, !prof !19

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i8 0, i64 32, i1 false)
  store ptr %i.bf, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 %i.bh, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 %3, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i8 0, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 92 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ck, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 93
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cm, i8 0, i64 5, i1 false)
  store i64 %i.b, ptr %i.cn, align 8
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.co = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.cp = icmp ult i64 %i.co, %i.b
  br i1 %i.cp, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 97
  store i8 1, ptr %i.cs, align 1
  store i32 1, ptr %i.ce, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 -1, ptr %i.ct, align 4
  store i32 2097152, ptr %i.ch, align 4
  store i32 %i.bh, ptr %i.ck, align 8
  store i8 0, ptr %i.cl, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit

bb.ad:                                            ; preds = %bb.z
  %i.cu = load i16, ptr %i.bf, align 2
  %i.cv = zext i16 %i.cu to i32                   ; 4 uses
  %i.cw = and i32 %3, 272
  %or.cond.i.i.i = icmp ne i32 %i.cw, 0
  %i.cx = icmp ne i32 %i.bh, 1
  %or.cond.i.i = and i1 %or.cond.i.i.i, %i.cx
  %i.cy = and i32 %i.cv, 64512
  %i.cz = icmp eq i32 %i.cy, 55296
  %or.cond22.i.i = select i1 %or.cond.i.i, i1 %i.cz, i1 false
  br i1 %or.cond22.i.i, label %bb.ae, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = zext i16 %i.db to i32                   ; 2 uses
  %i.dd = and i32 %i.dc, 64512
  %i.de = icmp eq i32 %i.dd, 56320
  br i1 %i.de, label %bb.af, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.df = shl nuw nsw i32 %i.cv, 10
  %i.dg = and i32 %i.df, 1047552
  %i.dh = add nuw nsw i32 %i.dg, 65536
  %i.di = and i32 %i.dc, 1023
  %i.dj = or disjoint i32 %i.di, %i.dh
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i: ; preds = %bb.af, %bb.ae, %bb.ad
  %.113.i.i = phi i32 [ 1, %bb.ad ], [ 2, %bb.af ], [ 1, %bb.ae ]
  %.1.i.i = phi i32 [ %i.cv, %bb.ad ], [ %i.dj, %bb.af ], [ %i.cv, %bb.ae ]
  store i32 %.113.i.i, ptr %i.ck, align 8
  store i32 %.1.i.i, ptr %i.ch, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit

bb.ag:                                            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  store i32 2097152, ptr %i.ch, align 4
  store i32 1, ptr %i.ck, align 8
  store i8 0, ptr %i.cl, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit: ; preds = %bb.ac, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE8ReadNextILb1EEEjv.exit.i, %bb.ag
  %i.dk = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE5ParseEPNS0_17RegExpCompileDataE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv.exit, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhEC2EPKhiNS_4base5FlagsINS0_10RegExpFlagEiiEEmPNS0_4ZoneERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit50

bb.o:                                             ; preds = %bb.j
  %i.bz = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i3.i44 = load ptr, ptr %i.ca, align 8
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds i8, ptr %.val.i3.i44, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = add nsw i32 %i.bz, 1
  store i32 %i.ce, ptr %i.af, align 8
  %i.cf = zext i8 %i.cd to i32
  store i32 %i.cf, ptr %i.bi, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit50

bb.p:                                             ; preds = %bb.i
  store i32 2097152, ptr %i.bi, align 4
  %i.cg = add nsw i32 %.val1.i42, 1
  store i32 %i.cg, ptr %i.af, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.ch, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit50

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit50: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.thread, %bb.p, %bb.o, %bb.n, %bb.m, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit
  %i.ci = phi i1 [ false, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.thread ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ false, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit ] ; 8 uses
  %i.cj = phi ptr [ %i.bh, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.thread ], [ %i.bi, %bb.p ], [ %i.bi, %bb.o ], [ %i.bi, %bb.n ], [ %i.bi, %bb.m ], [ %i.bi, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit ] ; 60 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 34 uses
  %.val35 = load ptr, ptr %i.ck, align 8          ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val35, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.val35, i64 16 ; 6 uses
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = icmp ult i64 %i.cp, 16
  br i1 %i.cq, label %bb.q, label %bb.r, !prof !17

bb.q:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit50
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val35, i64 noundef 16) #19
  %.pre.i.i = load i64, ptr %i.cn, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit50, %bb.q
  %i.cr = phi i64 [ %.pre.i.i, %bb.q ], [ %i.co, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit50 ] ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 29 uses
  %i.ct = add i64 %i.cr, 16
  store i64 %i.ct, ptr %i.cn, align 8
  store ptr null, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 15 uses
  store i32 2, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 12 ; 28 uses
  store i32 0, ptr %i.cv, align 4
  %i.cw = load i64, ptr %i.cl, align 8
  %i.cx = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp ult i64 %i.cy, 16
  br i1 %i.cz, label %bb.s, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit, !prof !17

bb.s:                                             ; preds = %bb.r
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val35, i64 noundef 16) #19
  %.pre.i.i.i.i = load i64, ptr %i.cn, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit: ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %.pre.i.i.i.i, %bb.s ], [ %i.cx, %bb.r ] ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = add i64 %i.da, 16
  store i64 %i.dc, ptr %i.cn, align 8
  store ptr %i.db, ptr %i.cs, align 8
  store ptr %i.cs, ptr %i.aa, align 8
  %.val23 = load i32, ptr %i.cj, align 4
  %i.dd = icmp eq i32 %.val23, 93
  br i1 %i.dd, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit
  %.val1.i51 = load i32, ptr %i.ae, align 8       ; 2 uses
  %.val2.i52 = load i32, ptr %i.af, align 8
  %i.de = icmp slt i32 %.val2.i52, %.val1.i51
  br i1 %i.de, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.df = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !range !15, !noundef !16
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit59, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.dl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.do, align 8
  %.val2.i.i54 = load i32, ptr %i.cj, align 4     ; 2 uses
  %.val3.i.i55 = load i32, ptr %i.af, align 8
  %.not.i.i.i56 = icmp eq i32 %.val2.i.i54, 2097152
  %i.dp = icmp ult i32 %.val2.i.i54, 65536
  %i.dq = or i1 %.not.i.i.i56, %i.dp
  %.neg2.i.i.i57 = select i1 %i.dq, i32 -1, i32 -2
  %i.dr = add i32 %.neg2.i.i.i57, %.val3.i.i55
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.dr, ptr %i.ds, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i.i58 = load i32, ptr %i.ae, align 8
  store i32 %.val.i.i58, ptr %i.af, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.dt, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit59

bb.z:                                             ; preds = %bb.u
  %i.du = load i32, ptr %i.af, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i3.i53 = load ptr, ptr %i.dv, align 8
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds i8, ptr %.val.i3.i53, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = add nsw i32 %i.du, 1
  store i32 %i.dz, ptr %i.af, align 8
  %i.ea = zext i8 %i.dy to i32
  store i32 %i.ea, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit59

bb.aa:                                            ; preds = %bb.t
  store i32 2097152, ptr %i.cj, align 4
  %i.eb = add nsw i32 %.val1.i51, 1
  store i32 %i.eb, ptr %i.af, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.ec, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit59

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit59: ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val40 = load i32, ptr %i.ed, align 8
  %i.ee = and i32 %.val40, 256
  %.not353 = icmp eq i32 %i.ee, 0
  br i1 %.not353, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit59
  %.val33 = load ptr, ptr %i.ck, align 8
  %i.ef = tail call noundef ptr @_ZN2v88internal24RegExpClassSetExpression5EmptyEPNS0_4ZoneEb(ptr noundef %.val33, i1 noundef zeroext %i.ci) #19
  br label %bb.kw

bb.ac:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit59
  %spec.select = zext i1 %i.ci to i32
  %.val32 = load ptr, ptr %i.ck, align 8          ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val32, i64 24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.val32, i64 16 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8            ; 2 uses
  %i.ek = sub i64 %i.eh, %i.ej
  %i.el = icmp ult i64 %i.ek, 32
  br i1 %i.el, label %bb.ad, label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit, !prof !17

bb.ad:                                            ; preds = %bb.ac
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val32, i64 noundef 32) #19
  %.pre.i.i60 = load i64, ptr %i.ei, align 8
  br label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit: ; preds = %bb.ac, %bb.ad
  %i.em = phi i64 [ %.pre.i.i60, %bb.ad ], [ %i.ej, %bb.ac ] ; 2 uses
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  %i.eo = add i64 %i.em, 32
  store i64 %i.eo, ptr %i.ei, align 8
  tail call void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull %.val32, ptr noundef nonnull %i.cs, i32 %spec.select)
  br label %bb.kw

bb.ae:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val39 = load i32, ptr %i.ep, align 8          ; 3 uses
  %i.eq = and i32 %.val39, 256
  %.not = icmp eq i32 %i.eq, 0
  br i1 %.not, label %bb.af, label %bb.dz

bb.af:                                            ; preds = %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.val38 = load i8, ptr %i.er, align 4
  %i.es = and i32 %.val39, 16
  %or.cond.i = icmp ne i32 %i.es, 0
  %i.et = trunc nuw i8 %.val38 to i1
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.et
  %i.eu = and i32 %.val39, 2
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = and i1 %i.ev, %spec.select.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #19
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 11 uses
  %.val25132.i = load i8, ptr %i.ex, align 4, !range !15, !noundef !16
  %i.ey = trunc nuw i8 %.val25132.i to i1
  br i1 %i.ey, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit

.lr.ph.i:                                         ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge.i, %.lr.ph.i
  %.val14.i = load i32, ptr %i.cj, align 4
  %.not.i = icmp eq i32 %.val14.i, 93
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val23.i = load ptr, ptr %i.ck, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassEscapeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_4ZoneEbPjPb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.cs, ptr noundef %.val23.i, i1 noundef zeroext %i.ew, ptr noundef %i.w, ptr noundef %i.y)
  %i.fe = load i8, ptr %i.ez, align 1, !range !15, !noundef !16
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val13.i = load i32, ptr %i.cj, align 4
  %i.fg = icmp eq i32 %.val13.i, 45
  br i1 %i.fg, label %bb.aj, label %bb.de

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i = load i32, ptr %i.ae, align 8       ; 2 uses
  %.val2.i.i61 = load i32, ptr %i.af, align 8
  %i.fh = icmp slt i32 %.val2.i.i61, %.val1.i.i
  br i1 %i.fh, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.fi = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.fj = load i64, ptr %i.fa, align 8
  %i.fk = icmp ult i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.fl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fn = load i8, ptr %i.ez, align 1, !range !15, !noundef !16
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %i.ez, align 1
  store i32 1, ptr %i.fc, align 8
  %.val2.i.i.i = load i32, ptr %i.cj, align 4     ; 2 uses
  %.val3.i.i.i = load i32, ptr %i.af, align 8
  %.not.i.i.i.i = icmp eq i32 %.val2.i.i.i, 2097152
  %i.fp = icmp ult i32 %.val2.i.i.i, 65536
  %i.fq = or i1 %.not.i.i.i.i, %i.fp
  %.neg2.i.i.i.i = select i1 %i.fq, i32 -1, i32 -2
  %i.fr = add i32 %.neg2.i.i.i.i, %.val3.i.i.i
  store i32 %i.fr, ptr %i.fd, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i.i.i = load i32, ptr %i.ae, align 8
  store i32 %.val.i.i.i, ptr %i.af, align 8
  store i8 0, ptr %i.ex, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i

bb.ap:                                            ; preds = %bb.ak
  %i.fs = load i32, ptr %i.af, align 8            ; 2 uses
  %.val.i3.i.i = load ptr, ptr %i.fb, align 8
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %.val.i3.i.i, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = add nsw i32 %i.fs, 1
  store i32 %i.fw, ptr %i.af, align 8
  %i.fx = zext i8 %i.fv to i32
  store i32 %i.fx, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i

bb.aq:                                            ; preds = %bb.aj
  store i32 2097152, ptr %i.cj, align 4
  %i.fy = add nsw i32 %.val1.i.i, 1
  store i32 %i.fy, ptr %i.af, align 8
  store i8 0, ptr %i.ex, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.val24.i = load i8, ptr %i.ex, align 4, !range !15, !noundef !16
  %i.fz = trunc nuw i8 %.val24.i to i1
  br i1 %i.fz, label %bb.ar, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit

bb.ar:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i
  %.val.i = load i32, ptr %i.cj, align 4
  %i.ga = icmp eq i32 %.val.i, 93
  br i1 %i.ga, label %bb.as, label %bb.bm

bb.as:                                            ; preds = %bb.ar
  %i.gb = load i8, ptr %i.y, align 1, !range !15, !noundef !16
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = load i32, ptr %i.w, align 4
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.gd to i64
  %.sroa.0.0.insert.insert.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i, 4294967297
  %.val22.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.ge = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.gf = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gh = load ptr, ptr %i.cs, align 8
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i

bb.av:                                            ; preds = %bb.at
  %i.gi = shl nsw i32 %i.gf, 1
  %i.gj = or disjoint i32 %i.gi, 1                ; 2 uses
  %i.gk = icmp sgt i32 %i.gf, -1
  br i1 %i.gk, label %bb.ax, label %bb.aw, !prof !19

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3                ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val22.i, i64 24
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16 ; 3 uses
  %i.gq = load i64, ptr %i.gp, align 8            ; 2 uses
  %i.gr = sub i64 %i.go, %i.gq
  %i.gs = icmp ugt i64 %i.gm, %i.gr
  br i1 %i.gs, label %bb.ay, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i, !prof !17

bb.ay:                                            ; preds = %bb.ax
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val22.i, i64 noundef %i.gm) #19
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gp, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.gt = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.ay ], [ %i.gq, %bb.ax ] ; 2 uses
  %i.gu = inttoptr i64 %i.gt to ptr               ; 5 uses
  %i.gv = add i64 %i.gt, %i.gm
  store i64 %i.gv, ptr %i.gp, align 8
  %i.gw = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %bb.az, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

bb.az:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i
  %i.gy = load ptr, ptr %i.cs, align 8            ; 3 uses
  switch i32 %i.gw, label %bb.bc [
    i32 2, label %bb.bb
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gz = load i64, ptr %i.gy, align 1
  store i64 %i.gz, ptr %i.gu, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

bb.bb:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gu, ptr noundef nonnull align 1 dereferenceable(16) %i.gy, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

bb.bc:                                            ; preds = %bb.az
  %i.ha = zext nneg i32 %i.gw to i64
  %i.hb = shl nuw nsw i64 %i.ha, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %i.gy, i64 %i.hb, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i: ; preds = %bb.bc, %bb.bb, %bb.ba, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i
  store ptr %i.gu, ptr %i.cs, align 8
  store i32 %i.gj, ptr %i.cu, align 8
  %i.hc = load i32, ptr %i.cv, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i: ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i, %bb.au
  %.sink168.i = phi i32 [ %i.hc, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i ], [ %i.ge, %bb.au ] ; 2 uses
  %.sink165.i = phi ptr [ %i.gu, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i ], [ %i.gh, %bb.au ]
  %i.hd = add nsw i32 %.sink168.i, 1
  store i32 %i.hd, ptr %i.cv, align 4
  %i.he = sext i32 %.sink168.i to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sink165.i, i64 %i.he
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.hf, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i: ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i, %bb.as
  %.val21.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.hg = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.hh = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.hi = icmp slt i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.bd, label %bb.be

end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  %.neg2.i.i52.i = select i1 %i.mj, i32 -1, i32 -2
  %i.mk = add i32 %.neg2.i.i52.i, %.val3.i50.i
  store i32 %i.mk, ptr %i.fd, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i53.i = load i32, ptr %i.ae, align 8
  store i32 %.val.i53.i, ptr %i.af, align 8
  store i8 0, ptr %i.ex, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit

bb.cu:                                            ; preds = %bb.ct
  %.sroa.2.0.insert.ext.i55.i = zext i32 %i.mg to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i55.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.mf to i64
  %.sroa.0.0.insert.insert.i56.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %.val16.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.ml = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.mm = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.mn = icmp slt i32 %i.ml, %i.mm
  br i1 %i.mn, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mo = load ptr, ptr %i.cs, align 8
  br label %.backedge.sink.split.i

bb.cw:                                            ; preds = %bb.cu
  %i.mp = shl nsw i32 %i.mm, 1
  %i.mq = or disjoint i32 %i.mp, 1                ; 2 uses
  %i.mr = icmp sgt i32 %i.mm, -1
  br i1 %i.mr, label %bb.cy, label %bb.cx, !prof !19

bb.cx:                                            ; preds = %bb.cw
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.ms = zext nneg i32 %i.mq to i64
  %i.mt = shl nuw nsw i64 %i.ms, 3                ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.val16.i, i64 24
  %i.mv = load i64, ptr %i.mu, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16 ; 3 uses
  %i.mx = load i64, ptr %i.mw, align 8            ; 2 uses
  %i.my = sub i64 %i.mv, %i.mx
  %i.mz = icmp ugt i64 %i.mt, %i.my
  br i1 %i.mz, label %bb.cz, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i57.i, !prof !17

bb.cz:                                            ; preds = %bb.cy
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val16.i, i64 noundef %i.mt) #19
  %.pre.i.i.i.i.i.i59.i = load i64, ptr %i.mw, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i57.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i57.i: ; preds = %bb.cz, %bb.cy
  %i.na = phi i64 [ %.pre.i.i.i.i.i.i59.i, %bb.cz ], [ %i.mx, %bb.cy ] ; 2 uses
  %i.nb = inttoptr i64 %i.na to ptr               ; 5 uses
  %i.nc = add i64 %i.na, %i.mt
  store i64 %i.nc, ptr %i.mw, align 8
  %i.nd = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %bb.da, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i58.i

bb.da:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i57.i
  %i.nf = load ptr, ptr %i.cs, align 8            ; 3 uses
  switch i32 %i.nd, label %bb.dd [
    i32 2, label %bb.dc
    i32 1, label %bb.db
  ]

bb.db:                                            ; preds = %bb.da
  %i.ng = load i64, ptr %i.nf, align 1
  store i64 %i.ng, ptr %i.nb, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i58.i

bb.dc:                                            ; preds = %bb.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.nb, ptr noundef nonnull align 1 dereferenceable(16) %i.nf, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i58.i

bb.dd:                                            ; preds = %bb.da
  %i.nh = zext nneg i32 %i.nd to i64
  %i.ni = shl nuw nsw i64 %i.nh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr align 1 %i.nf, i64 %i.ni, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i58.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i58.i: ; preds = %bb.dd, %bb.dc, %bb.db, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i57.i
  store ptr %i.nb, ptr %i.cs, align 8
  store i32 %i.mq, ptr %i.cu, align 8
  %i.nj = load i32, ptr %i.cv, align 4
  br label %.backedge.sink.split.i

bb.de:                                            ; preds = %bb.ai
  %i.nk = load i8, ptr %i.y, align 1, !range !15, !noundef !16
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %.backedge.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nm = load i32, ptr %i.w, align 4
  %.sroa.2.0.insert.ext.i61.i = zext i32 %i.nm to i64
  %.sroa.0.0.insert.insert.i62.i = mul nuw i64 %.sroa.2.0.insert.ext.i61.i, 4294967297 ; 2 uses
  %.val15.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.nn = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.no = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.np = icmp slt i32 %i.nn, %i.no
  br i1 %i.np, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.nq = load ptr, ptr %i.cs, align 8
  br label %.backedge.sink.split.i

bb.dh:                                            ; preds = %bb.df
  %i.nr = shl nsw i32 %i.no, 1
  %i.ns = or disjoint i32 %i.nr, 1                ; 2 uses
  %i.nt = icmp sgt i32 %i.no, -1
  br i1 %i.nt, label %bb.dj, label %bb.di, !prof !19

bb.di:                                            ; preds = %bb.dh
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.nu = zext nneg i32 %i.ns to i64
  %i.nv = shl nuw nsw i64 %i.nu, 3                ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.val15.i, i64 24
  %i.nx = load i64, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16 ; 3 uses
  %i.nz = load i64, ptr %i.ny, align 8            ; 2 uses
  %i.oa = sub i64 %i.nx, %i.nz
  %i.ob = icmp ugt i64 %i.nv, %i.oa
  br i1 %i.ob, label %bb.dk, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i63.i, !prof !17

bb.dk:                                            ; preds = %bb.dj
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val15.i, i64 noundef %i.nv) #19
  %.pre.i.i.i.i.i.i65.i = load i64, ptr %i.ny, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i63.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i63.i: ; preds = %bb.dk, %bb.dj
  %i.oc = phi i64 [ %.pre.i.i.i.i.i.i65.i, %bb.dk ], [ %i.nz, %bb.dj ] ; 2 uses
  %i.od = inttoptr i64 %i.oc to ptr               ; 5 uses
  %i.oe = add i64 %i.oc, %i.nv
  store i64 %i.oe, ptr %i.ny, align 8
  %i.of = load i32, ptr %i.cv, align 4            ; 3 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %bb.dl, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i64.i

bb.dl:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i63.i
  %i.oh = load ptr, ptr %i.cs, align 8            ; 3 uses
  switch i32 %i.of, label %bb.do [
    i32 2, label %bb.dn
    i32 1, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.oi = load i64, ptr %i.oh, align 1
  store i64 %i.oi, ptr %i.od, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i64.i

bb.dn:                                            ; preds = %bb.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.od, ptr noundef nonnull align 1 dereferenceable(16) %i.oh, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i64.i

bb.do:                                            ; preds = %bb.dl
  %i.oj = zext nneg i32 %i.of to i64
  %i.ok = shl nuw nsw i64 %i.oj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.od, ptr align 1 %i.oh, i64 %i.ok, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i64.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i64.i: ; preds = %bb.do, %bb.dn, %bb.dm, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i63.i
  store ptr %i.od, ptr %i.cs, align 8
  store i32 %i.ns, ptr %i.cu, align 8
  %i.ol = load i32, ptr %i.cv, align 4
  br label %.backedge.sink.split.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit: ; preds = %bb.ag, %bb.ah, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit.i, %bb.bm, %.backedge.i, %bb.af, %bb.bd, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i29.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #19
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 4 uses
  %i.on = load i8, ptr %i.om, align 1, !range !15, !noundef !16
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.kw, label %bb.dp

bb.dp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit
  %.val36 = load i8, ptr %i.ex, align 4, !range !15, !noundef !16
  %i.op = trunc nuw i8 %.val36 to i1
  br i1 %i.op, label %bb.dq, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit: ; preds = %bb.dp
  store i8 1, ptr %i.om, align 1
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.oq, align 8
  %.val2.i67 = load i32, ptr %i.cj, align 4       ; 2 uses
  %.val3.i = load i32, ptr %i.af, align 8
  %.not.i.i = icmp eq i32 %.val2.i67, 2097152
  %i.or = icmp ult i32 %.val2.i67, 65536
  %i.os = or i1 %.not.i.i, %i.or
  %.neg2.i.i = select i1 %i.os, i32 -1, i32 -2
  %i.ot = add i32 %.neg2.i.i, %.val3.i
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ot, ptr %i.ou, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i68 = load i32, ptr %i.ae, align 8
  store i32 %.val.i68, ptr %i.af, align 8
  store i8 0, ptr %i.ex, align 4
  br label %bb.kw

bb.dq:                                            ; preds = %bb.dp
  %.val1.i69 = load i32, ptr %i.ae, align 8       ; 2 uses
  %.val2.i70 = load i32, ptr %i.af, align 8
  %i.ov = icmp slt i32 %.val2.i70, %.val1.i69
  br i1 %i.ov, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.ow = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #19
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = icmp ult i64 %i.ow, %i.oy
  br i1 %i.oz, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.pa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !15, !noundef !16
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #20
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.pc = load i8, ptr %i.om, align 1, !range !15, !noundef !16
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i8 1, ptr %i.om, align 1
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.pe, align 8
  %.val2.i.i73 = load i32, ptr %i.cj, align 4     ; 2 uses
  %.val3.i.i74 = load i32, ptr %i.af, align 8
  %.not.i.i.i75 = icmp eq i32 %.val2.i.i73, 2097152
  %i.pf = icmp ult i32 %.val2.i.i73, 65536
  %i.pg = or i1 %.not.i.i.i75, %i.pf
  %.neg2.i.i.i76 = select i1 %i.pg, i32 -1, i32 -2
  %i.ph = add i32 %.neg2.i.i.i76, %.val3.i.i74
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ph, ptr %i.pi, align 4
  store i32 2097152, ptr %i.cj, align 4
  %.val.i.i77 = load i32, ptr %i.ae, align 8
  store i32 %.val.i.i77, ptr %i.af, align 8
  store i8 0, ptr %i.ex, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78

bb.dw:                                            ; preds = %bb.dr
  %i.pj = load i32, ptr %i.af, align 8            ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i3.i72 = load ptr, ptr %i.pk, align 8
  %i.pl = sext i32 %i.pj to i64
  %i.pm = getelementptr inbounds i8, ptr %.val.i3.i72, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1
  %i.po = add nsw i32 %i.pj, 1
  store i32 %i.po, ptr %i.af, align 8
  %i.pp = zext i8 %i.pn to i32
  store i32 %i.pp, ptr %i.cj, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78

bb.dx:                                            ; preds = %bb.dq
  store i32 2097152, ptr %i.cj, align 4
  %i.pq = add nsw i32 %.val1.i69, 1
  store i32 %i.pq, ptr %i.af, align 8
  store i8 0, ptr %i.ex, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78: ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx
  %spec.select352 = zext i1 %i.ci to i32
  %.val30 = load ptr, ptr %i.ck, align 8          ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.ps = load i64, ptr %i.pr, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %.val30, i64 16 ; 3 uses
  %i.pu = load i64, ptr %i.pt, align 8            ; 2 uses
  %i.pv = sub i64 %i.ps, %i.pu
  %i.pw = icmp ult i64 %i.pv, 32
  br i1 %i.pw, label %bb.dy, label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit81, !prof !17

bb.dy:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val30, i64 noundef 32) #19
  %.pre.i.i80 = load i64, ptr %i.pt, align 8
  br label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit81

_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit81: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78, %bb.dy
  %i.px = phi i64 [ %.pre.i.i80, %bb.dy ], [ %i.pu, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv.exit78 ] ; 2 uses
  %i.py = inttoptr i64 %i.px to ptr               ; 2 uses
  %i.pz = add i64 %i.px, 32
  store i64 %i.pz, ptr %i.pt, align 8
  %i.qa = load ptr, ptr %i.aa, align 8
  tail call void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.py, ptr noundef nonnull %.val30, ptr noundef %i.qa, i32 %spec.select352)
  br label %bb.kw

bb.dz:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #19
  %.val28 = load ptr, ptr %i.ck, align 8          ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %i.qc = load i64, ptr %i.qb, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %.val28, i64 16 ; 3 uses
  %i.qe = load i64, ptr %i.qd, align 8            ; 2 uses
  %i.qf = sub i64 %i.qc, %i.qe
  %i.qg = icmp ult i64 %i.qf, 56
  br i1 %i.qg, label %bb.ea, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit, !prof !17

bb.ea:                                            ; preds = %bb.dz
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val28, i64 noundef 56) #19
  %.pre.i.i82 = load i64, ptr %i.qd, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit: ; preds = %bb.dz, %bb.ea
  %i.qh = phi i64 [ %.pre.i.i82, %bb.ea ], [ %i.qe, %bb.dz ] ; 2 uses
  %i.qi = inttoptr i64 %i.qh to ptr               ; 8 uses
  %i.qj = add i64 %i.qh, 56
  store i64 %i.qj, ptr %i.qd, align 8
  %i.qk = ptrtoint ptr %.val28 to i64
  store i64 %i.qk, ptr %i.qi, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 16 ; 3 uses
  store i32 0, ptr %i.ql, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  store ptr null, ptr %i.qm, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  store ptr %i.ql, ptr %i.qn, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  store ptr %i.ql, ptr %i.qo, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  store i64 0, ptr %i.qp, align 8
  store ptr %i.qi, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #19
  %i.qq = load ptr, ptr %i.aa, align 8
  %i.qr = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ab, ptr noundef %i.qq, ptr noundef nonnull %i.qi, ptr noundef %i.ad) ; 12 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 35 uses
  %i.qt = load i8, ptr %i.qs, align 1, !range !15, !noundef !16
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.kv, label %bb.eb

bb.eb:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit
  %.val = load i32, ptr %i.cj, align 4
  switch i32 %.val, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread [
    i32 45, label %bb.ec
    i32 38, label %bb.fn
  ]

bb.ec:                                            ; preds = %bb.eb
  %.val.i83 = load i32, ptr %i.ae, align 8
  %.val1.i84 = load i32, ptr %i.af, align 8       ; 2 uses
  %i.qv = icmp slt i32 %.val1.i84, %.val.i83
  br i1 %i.qv, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit: ; preds = %bb.ec
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val2.i85 = load ptr, ptr %i.qw, align 8
  %i.qx = sext i32 %.val1.i84 to i64
  %i.qy = getelementptr inbounds i8, ptr %.val2.i85, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1
  %i.ra = icmp eq i8 %i.qz, 45
  br i1 %i.ra, label %bb.ed, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit.thread

bb.ed:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit
  %i.rb = icmp eq ptr %i.qr, null
  %.pre426 = load i32, ptr %i.ab, align 4         ; 2 uses
  br i1 %i.rb, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.rc = icmp eq i32 %.pre426, 0
  br i1 %i.rc, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.rd = load ptr, ptr %i.aa, align 8
  %i.re = load i32, ptr %i.ad, align 4
  %.sroa.2.0.insert.ext.i = zext i32 %i.re to i64
  %.sroa.0.0.insert.insert.i = mul nuw i64 %.sroa.2.0.insert.ext.i, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.rd, i64 %.sroa.0.0.insert.insert.i)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.val26 = load ptr, ptr %i.ck, align 8
  %i.rf = call noundef ptr @_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val26, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ed
  %.019 = phi ptr [ %i.rf, %bb.eg ], [ %i.qr, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.rg = zext i1 %i.ci to i8
  store i8 %i.rg, ptr %i.o, align 1
  store ptr %.019, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  switch i32 %.pre426, label %bb.em [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit.thread
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit.thread
    i32 3, label %bb.ei
    i32 1, label %bb.ei
    i32 2, label %bb.ek
  ]

bb.ei:                                            ; preds = %bb.eh, %bb.eh
  %i.rh = load ptr, ptr %.019, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 152
  %i.rj = load ptr, ptr %i.ri, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE10GetCaptureEi:bb.a
  switch i32 %i.bu, label %bb.r [
    i32 2, label %bb.q
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bx = load i64, ptr %i.bw, align 1
  store i64 %i.bx, ptr %i.bs, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bs, ptr noundef nonnull align 1 dereferenceable(16) %i.bw, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

bb.r:                                             ; preds = %bb.o
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bw, i64 %i.bz, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %_ZN2v88internal4Zone13AllocateArrayIPNS0_13RegExpCaptureEA_S4_EEPT_m.exit.i.i.i.i
  store ptr %i.bs, ptr %i.al, align 8
  store i32 %i.bh, ptr %i.bc, align 8
  %i.ca = load i32, ptr %i.ak, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE3AddERKS3_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE3AddERKS3_PNS0_4ZoneE.exit: ; preds = %bb.j, %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i
  %.sink12.i = phi i32 [ %i.ca, %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.bb, %bb.j ] ; 2 uses
  %.sink8.i = phi ptr [ %i.bs, %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i ], [ %i.bf, %bb.j ]
  %i.cb = add nsw i32 %.sink12.i, 1
  store i32 %i.cb, ptr %i.ak, align 4
  %i.cc = sext i32 %.sink12.i to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %.sink8.i, i64 %i.cc
  store ptr %i.au, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.d
  br i1 %i.ch, label %bb.h, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE3AddERKS3_PNS0_4ZoneE.exit, %bb.g
  %.lcssa = phi ptr [ %i.ae, %bb.g ], [ %i.ce, %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE3AddERKS3_PNS0_4ZoneE.exit ]
  %i.ci = load ptr, ptr %.lcssa, align 8
  %i.cj = zext nneg i32 %1 to i64
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8
  ret ptr %i.cm
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca i8, align 1                       ; 11 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i8, align 1                       ; 5 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 7 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %i.y = alloca i8, align 1                       ; 6 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca ptr, align 8                     ; 10 uses
  %i.ab = alloca i32, align 4                     ; 6 uses
  %i.ac = alloca ptr, align 8                     ; 6 uses
  %i.ad = alloca i32, align 4                     ; 6 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 37 uses
  %.val24 = load i32, ptr %i.ae, align 4
  %i.af = icmp eq i32 %.val24, 94                 ; 9 uses
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 34 uses
  %.val37 = load ptr, ptr %i.ag, align 8          ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val37, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val37, i64 16 ; 6 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = sub i64 %i.ai, %i.ak
  %i.am = icmp ult i64 %i.al, 16
  br i1 %i.am, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val37, i64 noundef 16) #19
  %.pre.i.i = load i64, ptr %i.aj, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.an = phi i64 [ %.pre.i.i, %bb.d ], [ %i.ak, %bb.c ] ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 29 uses
  %i.ap = add i64 %i.an, 16
  store i64 %i.ap, ptr %i.aj, align 8
  store ptr null, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 15 uses
  store i32 2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 28 uses
  store i32 0, ptr %i.ar, align 4
  %i.as = load i64, ptr %i.ah, align 8
  %i.at = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 16
  br i1 %i.av, label %bb.f, label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val37, i64 noundef 16) #19
  %.pre.i.i.i.i = load i64, ptr %i.aj, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit: ; preds = %bb.e, %bb.f
  %i.aw = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.at, %bb.e ] ; 2 uses
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = add i64 %i.aw, 16
  store i64 %i.ay, ptr %i.aj, align 8
  store ptr %i.ax, ptr %i.ao, align 8
  store ptr %i.ao, ptr %i.aa, align 8
  %.val23 = load i32, ptr %i.ae, align 4
  %i.az = icmp eq i32 %.val23, 93
  br i1 %i.az, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val40 = load i32, ptr %i.ba, align 8
  %i.bb = and i32 %.val40, 256
  %.not318 = icmp eq i32 %i.bb, 0
  br i1 %.not318, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val35 = load ptr, ptr %i.ag, align 8
  %i.bc = tail call noundef ptr @_ZN2v88internal24RegExpClassSetExpression5EmptyEPNS0_4ZoneEb(ptr noundef %.val35, i1 noundef zeroext %i.af) #19
  br label %bb.iy

bb.i:                                             ; preds = %bb.g
  %spec.select = zext i1 %i.af to i32
  %.val34 = load ptr, ptr %i.ag, align 8          ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.val34, i64 16 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = sub i64 %i.be, %i.bg
  %i.bi = icmp ult i64 %i.bh, 32
  br i1 %i.bi, label %bb.j, label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit, !prof !17

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val34, i64 noundef 32) #19
  %.pre.i.i42 = load i64, ptr %i.bf, align 8
  br label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit: ; preds = %bb.i, %bb.j
  %i.bj = phi i64 [ %.pre.i.i42, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = add i64 %i.bj, 32
  store i64 %i.bl, ptr %i.bf, align 8
  tail call void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull %.val34, ptr noundef nonnull %i.ao, i32 %spec.select)
  br label %bb.iy

bb.k:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiPS1_EEEPT_DpOT0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %.val39 = load i32, ptr %i.bm, align 8          ; 3 uses
  %i.bn = and i32 %.val39, 256
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.l, label %bb.cr

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.val26 = load i8, ptr %i.bo, align 4
  %i.bp = and i32 %.val39, 16
  %or.cond.i = icmp ne i32 %i.bp, 0
  %i.bq = trunc nuw i8 %.val26 to i1
  %spec.select.i = select i1 %or.cond.i, i1 true, i1 %i.bq
  %i.br = and i32 %.val39, 2
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = and i1 %i.bs, %spec.select.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %.val27111.i = load i8, ptr %i.bu, align 4, !range !15, !noundef !16
  %i.bv = trunc nuw i8 %.val27111.i to i1
  br i1 %i.bv, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.val14.i = load i32, ptr %i.ae, align 4
  %.not.i = icmp eq i32 %.val14.i, 93
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val25.i = load ptr, ptr %i.ag, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassEscapeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_4ZoneEbPjPb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ao, ptr noundef %.val25.i, i1 noundef zeroext %i.bt, ptr noundef %i.w, ptr noundef %i.y)
  %i.bx = load i8, ptr %i.bw, align 1, !range !15, !noundef !16
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val13.i = load i32, ptr %i.ae, align 4
  %i.bz = icmp eq i32 %.val13.i, 45
  br i1 %i.bz, label %bb.p, label %bb.cd

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %.val26.i = load i8, ptr %i.bu, align 4, !range !15, !noundef !16
  %i.ca = trunc nuw i8 %.val26.i to i1
  br i1 %i.ca, label %bb.q, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit

bb.q:                                             ; preds = %bb.p
  %.val.i = load i32, ptr %i.ae, align 4
  %i.cb = icmp eq i32 %.val.i, 93
  br i1 %i.cb, label %bb.r, label %bb.al

bb.r:                                             ; preds = %bb.q
  %i.cc = load i8, ptr %i.y, align 1, !range !15, !noundef !16
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = load i32, ptr %i.w, align 4
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ce to i64
  %.sroa.0.0.insert.insert.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i, 4294967297
  %.val24.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.cf = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.cg = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.cj = shl nsw i32 %i.cg, 1
  %i.ck = or disjoint i32 %i.cj, 1                ; 2 uses
  %i.cl = icmp sgt i32 %i.cg, -1
  br i1 %i.cl, label %bb.w, label %bb.v, !prof !19

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3                ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val24.i, i64 24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = icmp ugt i64 %i.cn, %i.cs
  br i1 %i.ct, label %bb.x, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i, !prof !17

bb.x:                                             ; preds = %bb.w
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val24.i, i64 noundef %i.cn) #19
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.cq, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %i.cu = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.x ], [ %i.cr, %bb.w ] ; 2 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 5 uses
  %i.cw = add i64 %i.cu, %i.cn
  store i64 %i.cw, ptr %i.cq, align 8
  %i.cx = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.y, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

bb.y:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i
  %i.cz = load ptr, ptr %i.ao, align 8            ; 3 uses
  switch i32 %i.cx, label %bb.ab [
    i32 2, label %bb.aa
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.da = load i64, ptr %i.cz, align 1
  store i64 %i.da, ptr %i.cv, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cv, ptr noundef nonnull align 1 dereferenceable(16) %i.cz, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

bb.ab:                                            ; preds = %bb.y
  %i.db = zext nneg i32 %i.cx to i64
  %i.dc = shl nuw nsw i64 %i.db, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cz, i64 %i.dc, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i.i
  store ptr %i.cv, ptr %i.ao, align 8
  store i32 %i.ck, ptr %i.aq, align 8
  %i.dd = load i32, ptr %i.ar, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i: ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i, %bb.t
  %.sink148.i = phi i32 [ %i.dd, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i ], [ %i.cf, %bb.t ] ; 2 uses
  %.sink145.i = phi ptr [ %i.cv, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i ], [ %i.ci, %bb.t ]
  %i.de = add nsw i32 %.sink148.i, 1
  store i32 %i.de, ptr %i.ar, align 4
  %i.df = sext i32 %.sink148.i to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %.sink145.i, i64 %i.df
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.dg, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i: ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.sink.split.i, %bb.r
  %.val23.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.dh = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.di = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i
  %i.dk = load ptr, ptr %i.ao, align 8
  %i.dl = add nsw i32 %i.dh, 1
  store i32 %i.dl, ptr %i.ar, align 4
  %i.dm = sext i32 %i.dh to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dm
  store i64 193273528365, ptr %i.dn, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit

bb.ad:                                            ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit.i
  %i.do = shl nsw i32 %i.di, 1
  %i.dp = or disjoint i32 %i.do, 1                ; 2 uses
  %i.dq = icmp sgt i32 %i.di, -1
  br i1 %i.dq, label %bb.af, label %bb.ae, !prof !19

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3                ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val23.i, i64 24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = sub i64 %i.du, %i.dw
  %i.dy = icmp ugt i64 %i.ds, %i.dx
  br i1 %i.dy, label %bb.ag, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i28.i, !prof !17

bb.ag:                                            ; preds = %bb.af
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val23.i, i64 noundef %i.ds) #19
  %.pre.i.i.i.i.i.i30.i = load i64, ptr %i.dv, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i28.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i28.i: ; preds = %bb.ag, %bb.af
  %i.dz = phi i64 [ %.pre.i.i.i.i.i.i30.i, %bb.ag ], [ %i.dw, %bb.af ] ; 2 uses
  %i.ea = inttoptr i64 %i.dz to ptr               ; 5 uses
  %i.eb = add i64 %i.dz, %i.ds
  store i64 %i.eb, ptr %i.dv, align 8
  %i.ec = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.ah, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i29.i

bb.ah:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i28.i
  %i.ee = load ptr, ptr %i.ao, align 8            ; 3 uses
  switch i32 %i.ec, label %bb.ak [
    i32 2, label %bb.aj
    i32 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load i64, ptr %i.ee, align 1
  store i64 %i.ef, ptr %i.ea, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i29.i

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ea, ptr noundef nonnull align 1 dereferenceable(16) %i.ee, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i29.i

bb.ak:                                            ; preds = %bb.ah
  %i.eg = zext nneg i32 %i.ec to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr align 1 %i.ee, i64 %i.eh, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i29.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  store i32 2097152, ptr %i.ae, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i52.i = load i32, ptr %i.it, align 8
  store i32 %.val.i52.i, ptr %i.io, align 8
  store i8 0, ptr %i.bu, align 4
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit

bb.bt:                                            ; preds = %bb.bs
  %.sroa.2.0.insert.ext.i54.i = zext i32 %i.il to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i54.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ik to i64
  %.sroa.0.0.insert.insert.i55.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %.val18.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.iu = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.iv = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.iw = icmp slt i32 %i.iu, %i.iv
  br i1 %i.iw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ix = load ptr, ptr %i.ao, align 8
  br label %.backedge.sink.split.i

bb.bv:                                            ; preds = %bb.bt
  %i.iy = shl nsw i32 %i.iv, 1
  %i.iz = or disjoint i32 %i.iy, 1                ; 2 uses
  %i.ja = icmp sgt i32 %i.iv, -1
  br i1 %i.ja, label %bb.bx, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.jb = zext nneg i32 %i.iz to i64
  %i.jc = shl nuw nsw i64 %i.jb, 3                ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val18.i, i64 24
  %i.je = load i64, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16 ; 3 uses
  %i.jg = load i64, ptr %i.jf, align 8            ; 2 uses
  %i.jh = sub i64 %i.je, %i.jg
  %i.ji = icmp ugt i64 %i.jc, %i.jh
  br i1 %i.ji, label %bb.by, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i56.i, !prof !17

bb.by:                                            ; preds = %bb.bx
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val18.i, i64 noundef %i.jc) #19
  %.pre.i.i.i.i.i.i58.i = load i64, ptr %i.jf, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i56.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i56.i: ; preds = %bb.by, %bb.bx
  %i.jj = phi i64 [ %.pre.i.i.i.i.i.i58.i, %bb.by ], [ %i.jg, %bb.bx ] ; 2 uses
  %i.jk = inttoptr i64 %i.jj to ptr               ; 5 uses
  %i.jl = add i64 %i.jj, %i.jc
  store i64 %i.jl, ptr %i.jf, align 8
  %i.jm = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %bb.bz, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i57.i

bb.bz:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i56.i
  %i.jo = load ptr, ptr %i.ao, align 8            ; 3 uses
  switch i32 %i.jm, label %bb.cc [
    i32 2, label %bb.cb
    i32 1, label %bb.ca
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.jp = load i64, ptr %i.jo, align 1
  store i64 %i.jp, ptr %i.jk, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i57.i

bb.cb:                                            ; preds = %bb.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jk, ptr noundef nonnull align 1 dereferenceable(16) %i.jo, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i57.i

bb.cc:                                            ; preds = %bb.bz
  %i.jq = zext nneg i32 %i.jm to i64
  %i.jr = shl nuw nsw i64 %i.jq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr align 1 %i.jo, i64 %i.jr, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i57.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i57.i: ; preds = %bb.cc, %bb.cb, %bb.ca, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i56.i
  store ptr %i.jk, ptr %i.ao, align 8
  store i32 %i.iz, ptr %i.aq, align 8
  %i.js = load i32, ptr %i.ar, align 4
  br label %.backedge.sink.split.i

bb.cd:                                            ; preds = %bb.o
  %i.jt = load i8, ptr %i.y, align 1, !range !15, !noundef !16
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %.backedge.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jv = load i32, ptr %i.w, align 4
  %.sroa.2.0.insert.ext.i60.i = zext i32 %i.jv to i64
  %.sroa.0.0.insert.insert.i61.i = mul nuw i64 %.sroa.2.0.insert.ext.i60.i, 4294967297 ; 2 uses
  %.val17.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.jw = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.jx = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.jy = icmp slt i32 %i.jw, %i.jx
  br i1 %i.jy, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jz = load ptr, ptr %i.ao, align 8
  br label %.backedge.sink.split.i

bb.cg:                                            ; preds = %bb.ce
  %i.ka = shl nsw i32 %i.jx, 1
  %i.kb = or disjoint i32 %i.ka, 1                ; 2 uses
  %i.kc = icmp sgt i32 %i.jx, -1
  br i1 %i.kc, label %bb.ci, label %bb.ch, !prof !19

bb.ch:                                            ; preds = %bb.cg
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.kd = zext nneg i32 %i.kb to i64
  %i.ke = shl nuw nsw i64 %i.kd, 3                ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.val17.i, i64 24
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.val17.i, i64 16 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8            ; 2 uses
  %i.kj = sub i64 %i.kg, %i.ki
  %i.kk = icmp ugt i64 %i.ke, %i.kj
  br i1 %i.kk, label %bb.cj, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i62.i, !prof !17

bb.cj:                                            ; preds = %bb.ci
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val17.i, i64 noundef %i.ke) #19
  %.pre.i.i.i.i.i.i64.i = load i64, ptr %i.kh, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i62.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i62.i: ; preds = %bb.cj, %bb.ci
  %i.kl = phi i64 [ %.pre.i.i.i.i.i.i64.i, %bb.cj ], [ %i.ki, %bb.ci ] ; 2 uses
  %i.km = inttoptr i64 %i.kl to ptr               ; 5 uses
  %i.kn = add i64 %i.kl, %i.ke
  store i64 %i.kn, ptr %i.kh, align 8
  %i.ko = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %bb.ck, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i63.i

bb.ck:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i62.i
  %i.kq = load ptr, ptr %i.ao, align 8            ; 3 uses
  switch i32 %i.ko, label %bb.cn [
    i32 2, label %bb.cm
    i32 1, label %bb.cl
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.kr = load i64, ptr %i.kq, align 1
  store i64 %i.kr, ptr %i.km, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i63.i

bb.cm:                                            ; preds = %bb.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.km, ptr noundef nonnull align 1 dereferenceable(16) %i.kq, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i63.i

bb.cn:                                            ; preds = %bb.ck
  %i.ks = zext nneg i32 %i.ko to i64
  %i.kt = shl nuw nsw i64 %i.ks, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.km, ptr align 1 %i.kq, i64 %i.kt, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i63.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i63.i: ; preds = %bb.cn, %bb.cm, %bb.cl, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i62.i
  store ptr %i.km, ptr %i.ao, align 8
  store i32 %i.kb, ptr %i.aq, align 8
  %i.ku = load i32, ptr %i.ar, align 4
  br label %.backedge.sink.split.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit: ; preds = %bb.m, %bb.n, %bb.p, %bb.al, %.backedge.i, %bb.l, %bb.ac, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i29.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #19
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !range !15, !noundef !16
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.iy, label %bb.co

bb.co:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE16ParseClassRangesEPNS0_8ZoneListINS0_14CharacterRangeEEEb.exit
  %.val38 = load i8, ptr %i.bu, align 4, !range !15, !noundef !16
  %i.ky = trunc nuw i8 %.val38 to i1
  br i1 %i.ky, label %bb.cp, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE11ReportErrorENS0_11RegExpErrorE.exit: ; preds = %bb.co
  store i8 1, ptr %i.kv, align 1
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 28, ptr %i.kz, align 8
  %.val2.i = load i32, ptr %i.ae, align 4         ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val3.i = load i32, ptr %i.la, align 8
  %.not.i.i = icmp eq i32 %.val2.i, 2097152
  %i.lb = icmp ult i32 %.val2.i, 65536
  %i.lc = or i1 %.not.i.i, %i.lb
  %.neg2.i.i = select i1 %i.lc, i32 -1, i32 -2
  %i.ld = add i32 %.neg2.i.i, %.val3.i
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ld, ptr %i.le, align 4
  store i32 2097152, ptr %i.ae, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i44 = load i32, ptr %i.lf, align 8
  store i32 %.val.i44, ptr %i.la, align 8
  store i8 0, ptr %i.bu, align 4
  br label %bb.iy

bb.cp:                                            ; preds = %bb.co
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %spec.select313 = zext i1 %i.af to i32
  %.val32 = load ptr, ptr %i.ag, align 8          ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.val32, i64 24
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %.val32, i64 16 ; 3 uses
  %i.lj = load i64, ptr %i.li, align 8            ; 2 uses
  %i.lk = sub i64 %i.lh, %i.lj
  %i.ll = icmp ult i64 %i.lk, 32
  br i1 %i.ll, label %bb.cq, label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit47, !prof !17

bb.cq:                                            ; preds = %bb.cp
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val32, i64 noundef 32) #19
  %.pre.i.i46 = load i64, ptr %i.li, align 8
  br label %_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit47

_ZN2v88internal4Zone3NewINS0_17RegExpClassRangesEJPS1_RPNS0_8ZoneListINS0_14CharacterRangeEEERNS_4base5FlagsINS3_4FlagEiiEEEEEPT_DpOT0_.exit47: ; preds = %bb.cp, %bb.cq
  %i.lm = phi i64 [ %.pre.i.i46, %bb.cq ], [ %i.lj, %bb.cp ] ; 2 uses
  %i.ln = inttoptr i64 %i.lm to ptr               ; 2 uses
  %i.lo = add i64 %i.lm, 32
  store i64 %i.lo, ptr %i.li, align 8
  %i.lp = load ptr, ptr %i.aa, align 8
  tail call void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ln, ptr noundef nonnull %.val32, ptr noundef %i.lp, i32 %spec.select313)
  br label %bb.iy

bb.cr:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #19
  %.val30 = load ptr, ptr %i.ag, align 8          ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.val30, i64 16 ; 3 uses
  %i.lt = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.lu = sub i64 %i.lr, %i.lt
  %i.lv = icmp ult i64 %i.lu, 56
  br i1 %i.lv, label %bb.cs, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit, !prof !17

bb.cs:                                            ; preds = %bb.cr
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val30, i64 noundef 56) #19
  %.pre.i.i48 = load i64, ptr %i.ls, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit: ; preds = %bb.cr, %bb.cs
  %i.lw = phi i64 [ %.pre.i.i48, %bb.cs ], [ %i.lt, %bb.cr ] ; 2 uses
  %i.lx = inttoptr i64 %i.lw to ptr               ; 8 uses
  %i.ly = add i64 %i.lw, 56
  store i64 %i.ly, ptr %i.ls, align 8
  %i.lz = ptrtoint ptr %.val30 to i64
  store i64 %i.lz, ptr %i.lx, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 3 uses
  store i32 0, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store ptr null, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  store ptr %i.ma, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  store ptr %i.ma, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  store i64 0, ptr %i.me, align 8
  store ptr %i.lx, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #19
  %i.mf = load ptr, ptr %i.aa, align 8
  %i.mg = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE20ParseClassSetOperandEPKNS1_13RegExpBuilderEPNS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEPj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ab, ptr noundef %i.mf, ptr noundef nonnull %i.lx, ptr noundef %i.ad) ; 12 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 29 uses
  %i.mi = load i8, ptr %i.mh, align 1, !range !15, !noundef !16
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.ix, label %bb.ct

bb.ct:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEJPS1_EEEPT_DpOT0_.exit
  %.val = load i32, ptr %i.ae, align 4
  switch i32 %.val, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread [
    i32 45, label %bb.cu
    i32 38, label %bb.ea
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.val.i49 = load i32, ptr %i.mk, align 8        ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %.val1.i = load i32, ptr %i.ml, align 8         ; 3 uses
  %i.mm = icmp slt i32 %.val1.i, %.val.i49
  br i1 %i.mm, label %bb.cv, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread

bb.cv:                                            ; preds = %bb.cu
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.mn, align 8
  %i.mo = sext i32 %.val1.i to i64
  %i.mp = getelementptr inbounds [2 x i8], ptr %.val13.i.i, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2            ; 2 uses
  %i.mr = add nsw i32 %.val1.i, 1
  %.val14.i.i = load i32, ptr %i.bm, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.val15.i.i = load i8, ptr %i.ms, align 4
  %i.mt = and i32 %.val14.i.i, 272
  %or.cond.i.i.i = icmp ne i32 %i.mt, 0
  %i.mu = trunc nuw i8 %.val15.i.i to i1
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %i.mu
  %i.mv = icmp sge i32 %i.mr, %.val.i49
  %not.spec.select.i.i.i = xor i1 %spec.select.i.i.i, true
  %or.cond.i.i50 = select i1 %not.spec.select.i.i.i, i1 true, i1 %i.mv
  %i.mw = and i16 %i.mq, -1024
  %i.mx = icmp ne i16 %i.mw, -10240
  %or.cond18.i.i = select i1 %or.cond.i.i50, i1 true, i1 %i.mx
  %i.my = icmp eq i16 %i.mq, 45
  %or.cond = select i1 %or.cond18.i.i, i1 %i.my, i1 false
  br i1 %or.cond, label %bb.cw, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit.thread

bb.cw:                                            ; preds = %bb.cv
  %i.mz = icmp eq ptr %i.mg, null
  %.pre385 = load i32, ptr %i.ab, align 4         ; 2 uses
  br i1 %i.mz, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.na = icmp eq i32 %.pre385, 0
  br i1 %i.na, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.nb = load ptr, ptr %i.aa, align 8
  %i.nc = load i32, ptr %i.ad, align 4
  %.sroa.2.0.insert.ext.i = zext i32 %i.nc to i64
  %.sroa.0.0.insert.insert.i = mul nuw i64 %.sroa.2.0.insert.ext.i, 4294967297
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE29AddMaybeSimpleCaseFoldedRangeEPNS0_8ZoneListINS0_14CharacterRangeEEES5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.nb, i64 %.sroa.0.0.insert.insert.i)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.val28 = load ptr, ptr %i.ag, align 8
  %i.nd = call noundef ptr @_ZN2v88internal4Zone3NewINS0_21RegExpClassSetOperandEJRPNS0_8ZoneListINS0_14CharacterRangeEEERPNS0_7ZoneMapINS_4base6VectorIKjEEPNS0_10RegExpTreeENS0_24CharacterClassStringLessEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %.val28, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %.019 = phi ptr [ %i.nd, %bb.cz ], [ %i.mg, %bb.cw ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ne = zext i1 %i.af to i8
  store i8 %i.ne, ptr %i.o, align 1
  store ptr %.019, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  switch i32 %.pre385, label %bb.df [
    i32 0, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit.thread
    i32 4, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit.thread
    i32 3, label %bb.db
    i32 1, label %bb.db
    i32 2, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da, %bb.da
  %i.nf = load ptr, ptr %.019, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 152
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = call noundef ptr %i.nh(ptr noundef nonnull align 8 dereferenceable(8) %.019) #19, !inline_history !104
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8            ; 2 uses
  %.not.i.i124 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i124, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = load i64, ptr %i.nl, align 8
  %i.nn = icmp ne i64 %i.nm, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit

bb.dd:                                            ; preds = %bb.da
  %i.no = load ptr, ptr %.019, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 144
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = call noundef zeroext i1 %i.nq(ptr noundef nonnull align 8 dereferenceable(8) %.019) #19, !inline_history !104
  br i1 %i.nr, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ns = load ptr, ptr %.019, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 168
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = call noundef ptr %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %.019) #19, !inline_history !104
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 13
  %i.nx = load i8, ptr %i.nw, align 1, !range !15, !noundef !16
  %i.ny = trunc nuw i8 %i.nx to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit

bb.df:                                            ; preds = %bb.da
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit.thread: ; preds = %bb.dd, %bb.da, %bb.da, %bb.db
  store i8 0, ptr %i.q, align 1
  br label %bb.di

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit: ; preds = %bb.dc, %bb.de
  %.0.i123 = phi i1 [ %i.ny, %bb.de ], [ %i.nn, %bb.dc ] ; 2 uses
  %i.nz = zext i1 %.0.i123 to i8
  store i8 %i.nz, ptr %i.q, align 1
  %or.cond.i51 = and i1 %i.af, %.0.i123
  br i1 %or.cond.i51, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit
  %i.oa = load i8, ptr %i.mh, align 1, !range !15, !noundef !16
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE21ParseClassSubtractionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeE.exit, label %bb.dh

end_hunk_4
