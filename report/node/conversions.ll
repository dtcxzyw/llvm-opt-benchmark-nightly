Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/conversions?download=true
inline.NumInlined: 1643
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v88internal17StringToIntHelper19DetectRadixInternalIhEEvPKT_m:bb.a

_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit: ; preds = %.lr.ph.i
  switch i8 %i.c, label %bb.g [
    i8 43, label %bb.c
    i8 45, label %bb.e
  ]

bb.c:                                             ; preds = %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.l, align 8
  br label %bb.al

bb.e:                                             ; preds = %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.o, align 8
  br label %bb.al

.sink.split:                                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 0, %bb.e ]
  %.0.ph = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink, ptr %i.p, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit
  %.0 = phi ptr [ %.3, %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit ], [ %.0.ph, %.sink.split ] ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  switch i32 %i.r, label %bb.z [
    i32 0, label %bb.h
    i32 16, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  store i32 10, ptr %i.q, align 8
  %i.s = load i8, ptr %.0, align 1
  %i.t = icmp eq i8 %i.s, 48
  br i1 %i.t, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 4 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.w, align 8
  br label %bb.al

bb.k:                                             ; preds = %bb.i
  %i.x = load i8, ptr %i.u, align 1               ; 2 uses
  switch i8 %i.x, label %bb.n [
    i8 120, label %bb.l
    i8 88, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i32 16, ptr %i.q, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.aa, align 8
  br label %bb.al

bb.n:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.ac = load i8, ptr %i.ab, align 1, !range !19, !noundef !20
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.o, label %.sink.split75

bb.o:                                             ; preds = %bb.n
  switch i8 %i.x, label %.sink.split75 [
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 98, label %bb.r
    i8 66, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  store i32 8, ptr %i.q, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.ag, align 8
  br label %bb.al

bb.r:                                             ; preds = %bb.o, %bb.o
  store i32 2, ptr %i.q, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.aj, align 8
  br label %bb.al

bb.t:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %.0, align 1
  %i.al = icmp eq i8 %i.ak, 48
  br i1 %i.al, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.an = icmp eq ptr %i.am, %i.b
  br i1 %i.an, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.ao, align 8
  br label %bb.al

bb.w:                                             ; preds = %bb.u
  %i.ap = load i8, ptr %i.am, align 1
  switch i8 %i.ap, label %.sink.split75 [
    i8 120, label %bb.x
    i8 88, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.as, align 8
  br label %bb.al

.sink.split75:                                    ; preds = %bb.w, %bb.n, %bb.o
  %.ph = phi i32 [ 10, %bb.n ], [ 10, %bb.o ], [ 16, %bb.w ]
  %.1.ph = phi ptr [ %i.u, %bb.n ], [ %i.u, %bb.o ], [ %i.am, %bb.w ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.at, align 4
  br label %bb.z

bb.z:                                             ; preds = %.sink.split75, %bb.g, %bb.x, %bb.t, %bb.h, %bb.p, %bb.r, %bb.l
  %i.au = phi i32 [ %i.r, %bb.g ], [ 16, %bb.x ], [ 2, %bb.r ], [ 8, %bb.p ], [ 16, %bb.l ], [ 10, %bb.h ], [ 16, %bb.t ], [ %.ph, %.sink.split75 ] ; 8 uses
  %.1 = phi ptr [ %.0, %bb.g ], [ %i.aq, %bb.x ], [ %i.ah, %bb.r ], [ %i.ae, %bb.p ], [ %i.y, %bb.l ], [ %.0, %bb.h ], [ %.0, %bb.t ], [ %.1.ph, %.sink.split75 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %.2 = phi ptr [ %.1, %bb.z ], [ %i.ay, %bb.ab ] ; 3 uses
  %i.aw = load i8, ptr %.2, align 1               ; 8 uses
  %i.ax = icmp eq i8 %i.aw, 48
  br i1 %i.ax, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %bb.ac, label %bb.aa, !llvm.loop !46

bb.ac:                                            ; preds = %bb.ab
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.ba, align 8
  br label %bb.al

bb.ad:                                            ; preds = %bb.aa
  %i.bb = zext i8 %i.aw to i32                    ; 6 uses
  %i.bc = load i8, ptr %i.av, align 4, !range !19, !noundef !20
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bf = load i8, ptr %i.be, align 2, !range !19, !noundef !20
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.af, label %.thread42

bb.af:                                            ; preds = %bb.ae
  %i.bh = add i8 %i.aw, -48
  %or.cond.i = icmp ult i8 %i.bh, 10
  %i.bi = add nsw i32 %i.au, 48
  %i.bj = icmp sgt i32 %i.bi, %i.bb
  %or.cond19.i = select i1 %or.cond.i, i1 %i.bj, i1 false
  br i1 %or.cond19.i, label %.thread42, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bk = icmp sgt i32 %i.au, 10                  ; 2 uses
  %i.bl = icmp ugt i8 %i.aw, 96
  %or.cond3.i = and i1 %i.bl, %i.bk
  %i.bm = add nuw nsw i32 %i.au, 87
  %3 = icmp samesign ugt i32 %i.bm, %i.bb
  %or.cond21.i = select i1 %or.cond3.i, i1 %3, i1 false
  br i1 %or.cond21.i, label %.thread42, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = icmp ugt i8 %i.aw, 64
  %or.cond5.i = and i1 %i.bn, %i.bk
  %i.bo = add nuw nsw i32 %i.au, 55
  %i.bp = icmp samesign ugt i32 %i.bo, %i.bb
  %or.cond = select i1 %or.cond5.i, i1 %i.bp, i1 false
  br i1 %or.cond, label %.thread42, label %_ZN2v88internal7isDigitEii.exit.thread41

_ZN2v88internal7isDigitEii.exit.thread41:         ; preds = %bb.ah
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.bq, align 8
  br label %bb.al

bb.ai:                                            ; preds = %bb.ad
  %i.br = add i8 %i.aw, -48
  %or.cond.i22 = icmp ult i8 %i.br, 10
  %i.bs = add nsw i32 %i.au, 48
  %i.bt = icmp sgt i32 %i.bs, %i.bb
  %or.cond19.i23 = select i1 %or.cond.i22, i1 %i.bt, i1 false
  br i1 %or.cond19.i23, label %.thread42, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bu = icmp sgt i32 %i.au, 10                  ; 2 uses
  %i.bv = icmp ugt i8 %i.aw, 96
  %or.cond3.i24 = and i1 %i.bv, %i.bu
  %i.bw = add nuw nsw i32 %i.au, 87
  %4 = icmp samesign ugt i32 %i.bw, %i.bb
  %or.cond21.i25 = select i1 %or.cond3.i24, i1 %4, i1 false
  br i1 %or.cond21.i25, label %.thread42, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bx = icmp ugt i8 %i.aw, 64
  %or.cond5.i26 = and i1 %i.bx, %i.bu
  %i.by = add nuw nsw i32 %i.au, 55
  %i.bz = icmp samesign ugt i32 %i.by, %i.bb
  %or.cond46 = select i1 %or.cond5.i26, i1 %i.bz, i1 false
  br i1 %or.cond46, label %.thread42, label %_ZN2v88internal7isDigitEii.exit27.thread43

_ZN2v88internal7isDigitEii.exit27.thread43:       ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.ca, align 8
  br label %bb.al

.thread42:                                        ; preds = %bb.ak, %bb.ah, %bb.ai, %bb.aj, %bb.af, %bb.ag, %bb.ae
  %i.cb = ptrtoint ptr %.2 to i64
  %i.cc = ptrtoint ptr %1 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cd, ptr %i.ce, align 8
  br label %bb.al

bb.al:                                            ; preds = %.thread42, %_ZN2v88internal7isDigitEii.exit27.thread43, %_ZN2v88internal7isDigitEii.exit.thread41, %bb.ac, %bb.y, %bb.v, %bb.s, %bb.q, %bb.m, %bb.j, %bb.f, %bb.d, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN2v88internal17StringToIntHelper16GetTwoByteVectorERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::String::FlatContent", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !62, !noalias !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !noalias !63
  %i.k = load atomic volatile i64, ptr %i.h acquire, align 8, !noalias !64
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2, !noalias !64
  %i.o = and i16 %i.n, 15
  switch i16 %i.o, label %bb.n [
    i16 8, label %bb.d
    i16 0, label %bb.e
    i16 9, label %bb.o
    i16 1, label %bb.o
    i16 10, label %bb.f
    i16 2, label %bb.j
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %bb.o
    i16 5, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !65
  %i.t = inttoptr i64 %i.s to ptr                 ; 6 uses
  %i.u = load atomic volatile i64, ptr %i.h monotonic, align 8, !noalias !65
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2, !noalias !65
  %i.y = and i16 %i.x, 16
  %.not.i = icmp eq i16 %i.y, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.t, align 8, !noalias !65
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !65
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #21, !noalias !65, !inline_history !0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !noalias !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !65
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.af = load ptr, ptr %i.t, align 8, !noalias !65
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !65
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !noalias !65, !inline_history !0
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.j:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !66
  %i.al = inttoptr i64 %i.ak to ptr               ; 6 uses
  %i.am = load atomic volatile i64, ptr %i.h monotonic, align 8, !noalias !66
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2, !noalias !66
  %i.aq = and i16 %i.ap, 16
  %.not.i2 = icmp eq i16 %i.aq, 0
  br i1 %.not.i2, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.al, align 8, !noalias !66
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !66
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #21, !noalias !66, !inline_history !1
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #21, !noalias !66
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !66
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ax = load ptr, ptr %i.al, align 8, !noalias !66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !66
  %i.ba = tail call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #21, !noalias !66, !inline_history !1
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.n:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #24, !noalias !67
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.l, %bb.h, %bb.m, %bb.i, %bb.e, %bb.d
  %.sroa.07.sroa.8.0.ph = phi i32 [ 2, %bb.l ], [ 1, %bb.h ], [ 2, %bb.m ], [ 1, %bb.i ], [ 2, %bb.e ], [ 1, %bb.d ]
  %.sroa.07.sroa.0.0.ph = phi ptr [ %i.aw, %bb.l ], [ %i.ae, %bb.h ], [ %i.ba, %bb.m ], [ %i.ai, %bb.i ], [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  store ptr %.sroa.07.sroa.0.0.ph, ptr %3, align 8
  %.sroa.07.sroa.7.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %.sroa.07.sroa.7.0..sroa_idx45, align 8
  %.sroa.07.sroa.8.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.07.sroa.8.0.ph, ptr %.sroa.07.sroa.8.0..sroa_idx51, align 4
  %.sroa.07.sroa.9.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %.sroa.07.sroa.9.0..sroa_idx57, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.o:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !range !19, !noundef !20
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.bb, align 8
  br i1 %i.bd, label %bb.p, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.p:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.be = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !61
  %i.bf = load ptr, ptr %3, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = zext i32 %i.bh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %bb.b
  %.sroa.3.0 = phi i64 [ %i.bi, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ %i.d, %bb.b ]
  %.sroa.05.0 = phi ptr [ %i.bf, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ %i.b, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17StringToIntHelper19DetectRadixInternalItEEvPKT_m(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN2v88internal17StringToIntHelper19DetectRadixInternalItEEvPKT_m:bb.a
split:                                            ; preds = %.split.i, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i._crit_edge
  %i.n = phi i16 [ %.pre, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit.i._crit_edge ], [ %i.c, %.split.i ]
  switch i16 %i.n, label %bb.f [
    i16 43, label %bb.b
    i16 45, label %bb.d
  ]

bb.b:                                             ; preds = %split
  %i.o = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.q, align 8
  br label %bb.ak

bb.d:                                             ; preds = %split
  %i.r = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.t, align 8
  br label %bb.ak

.sink.split:                                      ; preds = %bb.d, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.d ]
  %.0.ph = phi ptr [ %i.o, %bb.b ], [ %i.r, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %split
  %.0 = phi ptr [ %.3, %split ], [ %.0.ph, %.sink.split ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  switch i32 %i.w, label %bb.y [
    i32 0, label %bb.g
    i32 16, label %bb.s
  ]

bb.g:                                             ; preds = %bb.f
  store i32 10, ptr %i.v, align 8
  %i.x = load i16, ptr %.0, align 2
  %i.y = icmp eq i16 %i.x, 48
  br i1 %i.y, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.ab, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ac = load i16, ptr %i.z, align 2             ; 2 uses
  switch i16 %i.ac, label %bb.m [
    i16 120, label %bb.k
    i16 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  store i32 16, ptr %i.v, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.b
  br i1 %i.ae, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.af, align 8
  br label %bb.ak

bb.m:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.ah = load i8, ptr %i.ag, align 1, !range !19, !noundef !20
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.n, label %.sink.split82

bb.n:                                             ; preds = %bb.m
  switch i16 %i.ac, label %.sink.split82 [
    i16 111, label %bb.o
    i16 79, label %bb.o
    i16 98, label %bb.q
    i16 66, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  store i32 8, ptr %i.v, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.al, align 8
  br label %bb.ak

bb.q:                                             ; preds = %bb.n, %bb.n
  store i32 2, ptr %i.v, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.b
  br i1 %i.an, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.ao, align 8
  br label %bb.ak

bb.s:                                             ; preds = %bb.f
  %i.ap = load i16, ptr %.0, align 2
  %i.aq = icmp eq i16 %i.ap, 48
  br i1 %i.aq, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 3 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.at, align 8
  br label %bb.ak

bb.v:                                             ; preds = %bb.t
  %i.au = load i16, ptr %i.ar, align 2
  switch i16 %i.au, label %.sink.split82 [
    i16 120, label %bb.w
    i16 88, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.ax, align 8
  br label %bb.ak

.sink.split82:                                    ; preds = %bb.v, %bb.m, %bb.n
  %.ph = phi i32 [ 10, %bb.m ], [ 10, %bb.n ], [ 16, %bb.v ]
  %.1.ph = phi ptr [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.ar, %bb.v ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.ay, align 4
  br label %bb.y

bb.y:                                             ; preds = %.sink.split82, %bb.f, %bb.w, %bb.s, %bb.g, %bb.o, %bb.q, %bb.k
  %i.az = phi i32 [ %i.w, %bb.f ], [ 16, %bb.w ], [ 2, %bb.q ], [ 8, %bb.o ], [ 16, %bb.k ], [ 10, %bb.g ], [ 16, %bb.s ], [ %.ph, %.sink.split82 ] ; 8 uses
  %.1 = phi ptr [ %.0, %bb.f ], [ %i.av, %bb.w ], [ %i.am, %bb.q ], [ %i.aj, %bb.o ], [ %i.ad, %bb.k ], [ %.0, %bb.g ], [ %.0, %bb.s ], [ %.1.ph, %.sink.split82 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.2 = phi ptr [ %.1, %bb.y ], [ %i.bd, %bb.aa ] ; 3 uses
  %i.bb = load i16, ptr %.2, align 2              ; 8 uses
  %i.bc = icmp eq i16 %i.bb, 48
  br i1 %i.bc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.ba, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %bb.ab, label %bb.z, !llvm.loop !68

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.bf, align 8
  br label %bb.ak

bb.ac:                                            ; preds = %bb.z
  %i.bg = zext i16 %i.bb to i32                   ; 6 uses
  %i.bh = load i8, ptr %i.ba, align 4, !range !19, !noundef !20
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bk = load i8, ptr %i.bj, align 2, !range !19, !noundef !20
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.ae, label %.thread44

bb.ae:                                            ; preds = %bb.ad
  %i.bm = add i16 %i.bb, -48
  %or.cond.i = icmp ult i16 %i.bm, 10
  %i.bn = add nsw i32 %i.az, 48
  %i.bo = icmp sgt i32 %i.bn, %i.bg
  %or.cond19.i = select i1 %or.cond.i, i1 %i.bo, i1 false
  br i1 %or.cond19.i, label %.thread44, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = icmp sgt i32 %i.az, 10                  ; 2 uses
  %i.bq = icmp ugt i16 %i.bb, 96
  %or.cond3.i = and i1 %i.bq, %i.bp
  %i.br = add nuw nsw i32 %i.az, 87
  %3 = icmp samesign ugt i32 %i.br, %i.bg
  %or.cond21.i = select i1 %or.cond3.i, i1 %3, i1 false
  br i1 %or.cond21.i, label %.thread44, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = icmp ugt i16 %i.bb, 64
  %or.cond5.i = and i1 %i.bs, %i.bp
  %i.bt = add nuw nsw i32 %i.az, 55
  %i.bu = icmp samesign ugt i32 %i.bt, %i.bg
  %or.cond = select i1 %or.cond5.i, i1 %i.bu, i1 false
  br i1 %or.cond, label %.thread44, label %_ZN2v88internal7isDigitEii.exit.thread43

_ZN2v88internal7isDigitEii.exit.thread43:         ; preds = %bb.ag
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.bv, align 8
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ac
  %i.bw = add i16 %i.bb, -48
  %or.cond.i22 = icmp ult i16 %i.bw, 10
  %i.bx = add nsw i32 %i.az, 48
  %i.by = icmp sgt i32 %i.bx, %i.bg
  %or.cond19.i23 = select i1 %or.cond.i22, i1 %i.by, i1 false
  br i1 %or.cond19.i23, label %.thread44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bz = icmp sgt i32 %i.az, 10                  ; 2 uses
  %i.ca = icmp ugt i16 %i.bb, 96
  %or.cond3.i24 = and i1 %i.ca, %i.bz
  %i.cb = add nuw nsw i32 %i.az, 87
  %4 = icmp samesign ugt i32 %i.cb, %i.bg
  %or.cond21.i25 = select i1 %or.cond3.i24, i1 %4, i1 false
  br i1 %or.cond21.i25, label %.thread44, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cc = icmp ugt i16 %i.bb, 64
  %or.cond5.i26 = and i1 %i.cc, %i.bz
  %i.cd = add nuw nsw i32 %i.az, 55
  %i.ce = icmp samesign ugt i32 %i.cd, %i.bg
  %or.cond48 = select i1 %or.cond5.i26, i1 %i.ce, i1 false
  br i1 %or.cond48, label %.thread44, label %_ZN2v88internal7isDigitEii.exit27.thread45

_ZN2v88internal7isDigitEii.exit27.thread45:       ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.cf, align 8
  br label %bb.ak

.thread44:                                        ; preds = %bb.aj, %bb.ag, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ad
  %i.cg = ptrtoint ptr %.2 to i64
  %i.ch = ptrtoint ptr %1 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cj, ptr %i.ck, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.thread44, %_ZN2v88internal7isDigitEii.exit27.thread45, %_ZN2v88internal7isDigitEii.exit.thread43, %bb.ab, %bb.x, %bb.u, %bb.r, %bb.p, %bb.l, %bb.i, %bb.e, %bb.c, %_ZN2v88internal17AdvanceToNonspaceItEEbPPKT_S4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN2v88internal14StringToDoubleEPKcNS0_14ConversionFlagEd(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = tail call noundef double @_ZN2v88internal22InternalStringToDoubleIhEEdPKT_S4_NS0_14ConversionFlagEd(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %1, double noundef %2)
  ret double %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN2v88internal14StringToDoubleENS_4base6VectorIKhEENS0_14ConversionFlagEd(ptr %0, i64 %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = tail call noundef double @_ZN2v88internal22InternalStringToDoubleIhEEdPKT_S4_NS0_14ConversionFlagEd(ptr noundef %0, ptr noundef %i.a, i32 noundef %2, double noundef %3)
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZN2v88internal22InternalStringToDoubleIhEEdPKT_S4_NS0_14ConversionFlagEd(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.not7.not.i = icmp eq ptr %0, %1
  br i1 %.not7.not.i, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %indvars.iv = phi ptr [ %scevgep, %.lr.ph.i.preheader ], [ %scevgep120, %bb.b ] ; 2 uses
  %.191 = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.g, %bb.b ] ; 19 uses
  %i.b = load i8, ptr %.191, align 1              ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not6.i = icmp eq i8 %i.f, 0
  br i1 %.not6.i, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.191, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.g, %1
  %scevgep120 = getelementptr i8, ptr %indvars.iv, i64 1
  br i1 %.not.not.i, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread, label %.lr.ph.i, !llvm.loop !2

_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit: ; preds = %.lr.ph.i
  %i.h = icmp eq i32 %2, 1
  %i.i = icmp eq i8 %i.b, 48
  %or.cond157 = and i1 %i.h, %i.i
  br i1 %or.cond157, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.191, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.j, align 1
  switch i8 %i.l, label %bb.k [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.g
    i8 79, label %bb.g
    i8 98, label %bb.i
    i8 66, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.191, i64 2 ; 2 uses
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef double @_ZN2v88internal25InternalStringToIntDoubleILi4EhEEdPKT0_S4_bb(ptr noundef nonnull %i.m, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.191, i64 2 ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noundef double @_ZN2v88internal25InternalStringToIntDoubleILi3EhEEdPKT0_S4_bb(ptr noundef nonnull %i.p, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.191, i64 2 ; 2 uses
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call noundef double @_ZN2v88internal25InternalStringToIntDoubleILi1EhEEdPKT0_S4_bb(ptr noundef nonnull %i.s, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit.thread

bb.k:                                             ; preds = %bb.d, %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit
  %i.v = icmp eq i32 %2, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.w = call { ptr, i32 } @_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef nonnull %.191, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 149, i64 42949673006) #21
  %i.x = extractvalue { ptr, i32 } %i.w, 0        ; 3 uses
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = load double, ptr %i.a, align 8
  br label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp ugt ptr %i.x, %.191
  br i1 %i.aa, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.v, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit64, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.n, %bb.o
  %i.ab = phi ptr [ %i.ah, %bb.o ], [ %i.x, %bb.n ] ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 8
  %.not6.i61 = icmp eq i8 %i.ag, 0
  br i1 %.not6.i61, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %.not.not.i62 = icmp eq ptr %i.ah, %1
  br i1 %.not.not.i62, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit64, label %.lr.ph.i60, !llvm.loop !2

_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit64: ; preds = %bb.o, %bb.n
  %i.ai = load double, ptr %i.a, align 8
  br label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71

bb.p:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.191, align 1
  switch i8 %i.aj, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71 [
    i8 43, label %bb.q
    i8 73, label %bb.s
    i8 45, label %bb.ai
  ]

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %.191, i64 1 ; 3 uses
  %i.al = icmp eq ptr %i.ak, %1
  br i1 %i.al, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i8, ptr %i.ak, align 1
  %.not57 = icmp eq i8 %i.am, 73
  br i1 %.not57, label %bb.s, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71

bb.s:                                             ; preds = %bb.r, %bb.p
  %.090 = phi ptr [ %i.ak, %bb.r ], [ %.191, %bb.p ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = load i8, ptr %i.an, align 1
  %.not12.i = icmp eq i8 %i.ap, 110
  br i1 %.not12.i, label %bb.u, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %.090, i64 2 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load i8, ptr %i.aq, align 1
  %.not12.i.1 = icmp eq i8 %i.as, 102
  br i1 %.not12.i.1, label %bb.w, label %_ZN2v88internal17AdvanceToNonspaceIhEEbPPKT_S4_.exit71

end_hunk_1
