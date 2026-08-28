Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.246?download=true
inline.NumInlined: 695
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXsq_NtCs577yCKf7gy3_4http3uriNtB6_3UriNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.k = icmp eq i8 %i.i, 2
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !232, !alias.scope !1759, !noalias !1762, !noundef !16
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1759, !noalias !1762, !nonnull !16, !noundef !16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !1764, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1765
  store i64 %i.r, ptr %i.h, align 8, !noalias !1765
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #30, !noalias !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1765
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1764, !nonnull !16, !noundef !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  %i.v = icmp samesign eq i64 %i.r, 0
  br i1 %i.v, label %_RINvXs9_NtNtCs577yCKf7gy3_4http3uri6schemeNtB6_6SchemeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1768
  store i8 2, ptr %i.g, align 1, !noalias !1768
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #30, !noalias !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1768
  br label %_RINvXs9_NtNtCs577yCKf7gy3_4http3uri6schemeNtB6_6SchemeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1771
  store i8 1, ptr %i.f, align 1, !noalias !1771
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #30, !noalias !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1771
  br label %_RINvXs9_NtNtCs577yCKf7gy3_4http3uri6schemeNtB6_6SchemeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %.sroa.0.03.i, align 1, !noalias !1764, !noundef !16 ; 2 uses
  %i.y = add i8 %i.x, -65
  %i.z = icmp ult i8 %i.y, 26
  %i.aa = select i1 %i.z, i8 32, i8 0
  %.sroa.02.0.i = or i8 %i.aa, %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1774
  store i8 %.sroa.02.0.i, ptr %i.e, align 1, !noalias !1774
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #30, !noalias !1759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1774
  %i.ab = icmp eq ptr %i.w, %i.u
  br i1 %i.ab, label %_RINvXs9_NtNtCs577yCKf7gy3_4http3uri6schemeNtB6_6SchemeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

_RINvXs9_NtNtCs577yCKf7gy3_4http3uri6schemeNtB6_6SchemeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit: ; preds = %.lr.ph.i, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1777
  store i8 -1, ptr %i.d, align 1, !noalias !1777
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1777
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs9_NtNtCs577yCKf7gy3_4http3uri6schemeNtB6_6SchemeNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !16 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvXsf_NtNtCs577yCKf7gy3_4http3uri9authorityNtB6_9AuthorityNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1780
  store i64 %i.ad, ptr %i.c, align 8, !noalias !1780
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1780
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1785, !nonnull !16, !noundef !16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %.lr.ph.i6
  %.sroa.0.03.i7 = phi ptr [ %i.ai, %.lr.ph.i6 ], [ %i.ag, %.lr.ph.i6.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i7, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.sroa.0.03.i7, align 1, !noalias !1785, !noundef !16 ; 2 uses
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = select i1 %i.al, i8 32, i8 0
  %.sroa.02.0.i8 = or i8 %i.am, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1786
  store i8 %.sroa.02.0.i8, ptr %i.b, align 1, !noalias !1786
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1786
  %i.an = icmp eq ptr %i.ai, %i.ah
  br i1 %i.an, label %_RINvXsf_NtNtCs577yCKf7gy3_4http3uri9authorityNtB6_9AuthorityNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i6

_RINvXsf_NtNtCs577yCKf7gy3_4http3uri9authorityNtB6_9AuthorityNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit: ; preds = %.lr.ph.i6, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !16 ; 12 uses
  %i.aq = icmp ne i64 %i.ap, 0
  %brmerge = or i1 %i.j, %i.aq
  br i1 %brmerge, label %bb.h, label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread13

bb.h:                                             ; preds = %_RINvXsf_NtNtCs577yCKf7gy3_4http3uri9authorityNtB6_9AuthorityNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load i16, ptr %i.ar, align 8, !noundef !16 ; 3 uses
  %i.at = icmp eq i16 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !noundef !16 ; 8 uses
  br i1 %i.at, label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = zext i16 %i.as to i64                   ; 5 uses
  %i.ax = icmp eq i16 %i.as, 0
  br i1 %i.ax, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp ugt i64 %i.ap, %i.aw
  br i1 %.not.i.i, label %bb.k, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j
  %i.ay = icmp ne i64 %i.ap, %i.aw
  %.not.i = icmp eq ptr %i.av, null
  %or.cond.i = or i1 %.not.i, %i.ay
  br i1 %or.cond.i, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i, label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread, !prof !1789

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !1790, !noundef !16
  %i.bb = icmp sgt i8 %i.ba, -65
  br i1 %i.bb, label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.i
  %.not.old.i = icmp eq ptr %i.av, null
  br i1 %.not.old.i, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i, label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread13, !prof !1793

_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i: ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %bb.k, %.split.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ap, i64 noundef 0, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread: ; preds = %.split.i.i, %bb.k
  %.sroa.5.0.i.ph = phi i64 [ %i.aw, %bb.k ], [ %i.ap, %.split.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread13

_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.bc = icmp eq i64 %i.ap, 0
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %spec.select = select i1 %i.bc, ptr @29, ptr %i.av
  br label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread13

_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread13: ; preds = %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread, %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %_RINvXsf_NtNtCs577yCKf7gy3_4http3uri9authorityNtB6_9AuthorityNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit
  %.sroa.3.0 = phi i64 [ 0, %_RINvXsf_NtNtCs577yCKf7gy3_4http3uri9authorityNtB6_9AuthorityNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.5.0.i.ph, %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread ], [ %spec.select.i, %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit ], [ 1, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ]
  %.sroa.01.0 = phi ptr [ inttoptr (i64 1 to ptr), %_RINvXsf_NtNtCs577yCKf7gy3_4http3uri9authorityNtB6_9AuthorityNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit ], [ %i.av, %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread ], [ %spec.select, %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit ], [ @29, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0) ]
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.3.0) #30
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load i16, ptr %i.bd, align 8, !noundef !16 ; 2 uses
  %i.bf = icmp eq i16 %i.be, -1
  br i1 %i.bf, label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery5query.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread13
  %i.bg = add nuw i16 %i.be, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !noundef !16 ; 3 uses
  %i.bj = zext i16 %i.bg to i64                   ; 6 uses
  %.not.i.i9 = icmp ugt i64 %i.ap, %i.bj
  br i1 %.not.i.i9, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.l
  %i.bk = icmp eq i64 %i.ap, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  br i1 %i.bk, label %bb.n, label %bb.m, !prof !1744

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1794, !noundef !16
  %i.bo = icmp sgt i8 %i.bn, -65
  %i.bp = sub nuw i64 %i.ap, %i.bj
  br i1 %i.bo, label %bb.n, label %bb.m, !prof !1744

bb.m:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.ap, i64 noundef %i.bj, i64 noundef %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.n:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.split.i
  %.sroa.4.0.i.ph = phi i64 [ 0, %.split.i ], [ %i.bp, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ]
  %.sroa.0.0.i.ph = phi ptr [ %i.bl, %.split.i ], [ %i.bm, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1797
  store i8 63, ptr %i.a, align 1, !noalias !1797
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1797
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.ph, i64 noundef %.sroa.4.0.i.ph) #30
  br label %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery5query.exit

_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery5query.exit: ; preds = %_RNvMNtNtCs577yCKf7gy3_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread13, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB2_9UserAgentINtNtNtB8_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2c_5limit11concurrency7service16ConcurrencyLimitIB26_INtNtNtB2W_4rate7service9RateLimitINtNtB4_9reconnect9ReconnectINtNtB4_10connection22MakeSendRequestServiceINtNtB4_9connector9ConnectorNtNtB6_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4o_EEB3L_EEE3newCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 8 captures(none) dereferenceable(544) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(504) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.821 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !237, !noundef !16
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.821)
  %.sroa.022.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8 ; 6 uses
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.726.0.copyload = load ptr, ptr %.sroa.726.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1800
  store i64 0, ptr %i.c, align 8, !noalias !1800
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !noalias !1800
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  store i64 0, ptr %i.g, align 8, !noalias !1800
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.625.0.copyload)
          to label %.noexc.i unwind label %bb.d, !noalias !1800

.noexc.i:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1804, !noalias !1800, !noundef !16 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %.not.i.i = icmp eq i64 %.sroa.625.0.copyload, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !1804, !noalias !1800, !nonnull !16, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.sroa.524.0.copyload, i64 %.sroa.625.0.copyload, i1 false), !noalias !1800
  %.pre.i.i = load i64, ptr %i.g, align 8, !alias.scope !1804, !noalias !1800
  br label %bb.e

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #24
          to label %.body.i unwind label %bb.p, !noalias !1800

bb.e:                                             ; preds = %bb.c, %.noexc.i
  %i.m = phi i64 [ %.pre.i.i, %bb.c ], [ %i.h, %.noexc.i ]
  %i.n = add i64 %i.m, %.sroa.625.0.copyload      ; 4 uses
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !1804, !noalias !1800
  %i.o = load i64, ptr %i.c, align 8, !range !17, !alias.scope !1807, !noalias !1800, !noundef !16
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %bb.g unwind label %bb.d, !noalias !1800

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !1807, !noalias !1800, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store i8 32, ptr %i.r, align 1, !noalias !1800
  %i.s = add i64 %i.n, 1
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !1807, !noalias !1800
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 12)
          to label %bb.h unwind label %bb.d, !noalias !1800

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.g, align 8, !alias.scope !1810, !noalias !1800, !noundef !16 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !1810, !noalias !1800, !nonnull !16, !noundef !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @21, i64 12, i1 false), !noalias !1800
  %.pre.i3.i = load i64, ptr %i.g, align 8, !alias.scope !1810, !noalias !1800
  %i.x = add i64 %.pre.i3.i, 12                   ; 2 uses
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !1810, !noalias !1800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1800
  %i.y = load ptr, ptr %i.f, align 8, !noalias !1800, !nonnull !16, !noundef !16
  invoke void @_RINvMNtNtCs577yCKf7gy3_4http6header5valueNtB3_11HeaderValue16try_from_genericRShNvMNtCs14kzo5Se9zC_5bytes5bytesNtB1j_5Bytes15copy_from_sliceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x)
          to label %bb.i unwind label %bb.d, !noalias !1800

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load i8, ptr %i.z, align 16, !range !237, !alias.scope !1816, !noalias !1818, !noundef !16 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 2
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !244

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.noexc6.i unwind label %bb.d, !noalias !1800

.noexc6.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = load <2 x ptr>, ptr %i.b, align 16, !alias.scope !1820, !noalias !1821
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %3 = load <2 x i64>, ptr %.sroa.518.0..sroa_idx, align 16, !alias.scope !1820, !noalias !1821
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821.0..sroa_idx, i64 7, i1 false), !alias.scope !1820, !noalias !1821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1800
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.l, !noalias !1800

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.n, !noalias !1800

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.o, !noalias !1800

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1800
  unreachable

.body.i:                                          ; preds = %bb.o, %bb.l, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ah, %bb.o ], [ %i.ad, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1822, !nonnull !16, !noundef !16
  invoke void %i.ag(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %.body unwind label %bb.p, !noalias !1800, !inline_history !29

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1829, !nonnull !16, !noundef !16
  invoke void %i.aj(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q, !inline_history !1836

bb.p:                                             ; preds = %.body.i, %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1800
  unreachable

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.q ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgOCJwUSa4vG_5tonic9transport7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB1U_5limit11concurrency7service16ConcurrencyLimitIB1O_INtNtNtB2E_4rate7service9RateLimitINtNtNtNtBI_7channel7service9reconnect9ReconnectINtNtB4b_10connection22MakeSendRequestServiceINtNtB4b_9connector9ConnectorNtNtB4d_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB46_EEB3t_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(504) %1) #24
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.a, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit
  %.sroa.6.0 = phi i8 [ %i.aa, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit ], [ 0, %bb.a ]
  %4 = phi <2 x i64> [ %3, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit ], [ <i64 12, i64 0>, %bb.a ]
  %i.am = phi <2 x ptr> [ %i.ac, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit ], [ <ptr @31, ptr @21>, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %1, i64 504, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 504
  store <2 x ptr> %i.am, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store <2 x i64> %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  ret void

_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.821)
  br label %bb.r

bb.s:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB2_9UserAgentINtNtNtB8_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2c_5limit11concurrency7service16ConcurrencyLimitIB26_INtNtNtB2W_4rate7service9RateLimitINtNtB4_9reconnect9ReconnectINtNtB4_10connection22MakeSendRequestServiceINtNtB4_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4o_EEB3L_EEE3newCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([528 x i8]) align 8 captures(none) dereferenceable(528) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(488) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.821 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !237, !noundef !16
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.821)
  %.sroa.022.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8 ; 6 uses
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.726.0.copyload = load ptr, ptr %.sroa.726.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1837
  store i64 0, ptr %i.c, align 8, !noalias !1837
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !noalias !1837
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  store i64 0, ptr %i.g, align 8, !noalias !1837
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.625.0.copyload)
          to label %.noexc.i unwind label %bb.d, !noalias !1837

.noexc.i:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1841, !noalias !1837, !noundef !16 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %.not.i.i = icmp eq i64 %.sroa.625.0.copyload, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !1841, !noalias !1837, !nonnull !16, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.sroa.524.0.copyload, i64 %.sroa.625.0.copyload, i1 false), !noalias !1837
  %.pre.i.i = load i64, ptr %i.g, align 8, !alias.scope !1841, !noalias !1837
  br label %bb.e

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #24
          to label %.body.i unwind label %bb.p, !noalias !1837

bb.e:                                             ; preds = %bb.c, %.noexc.i
  %i.m = phi i64 [ %.pre.i.i, %bb.c ], [ %i.h, %.noexc.i ]
  %i.n = add i64 %i.m, %.sroa.625.0.copyload      ; 4 uses
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !1841, !noalias !1837
  %i.o = load i64, ptr %i.c, align 8, !range !17, !alias.scope !1844, !noalias !1837, !noundef !16
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %bb.g unwind label %bb.d, !noalias !1837

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !1844, !noalias !1837, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store i8 32, ptr %i.r, align 1, !noalias !1837
  %i.s = add i64 %i.n, 1
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !1844, !noalias !1837
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 12)
          to label %bb.h unwind label %bb.d, !noalias !1837

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.g, align 8, !alias.scope !1847, !noalias !1837, !noundef !16 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !1847, !noalias !1837, !nonnull !16, !noundef !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.w, ptr noundef nonnull align 1 dereferenceable(12) @21, i64 12, i1 false), !noalias !1837
  %.pre.i3.i = load i64, ptr %i.g, align 8, !alias.scope !1847, !noalias !1837
  %i.x = add i64 %.pre.i3.i, 12                   ; 2 uses
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !1847, !noalias !1837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1837
  %i.y = load ptr, ptr %i.f, align 8, !noalias !1837, !nonnull !16, !noundef !16
  invoke void @_RINvMNtNtCs577yCKf7gy3_4http6header5valueNtB3_11HeaderValue16try_from_genericRShNvMNtCs14kzo5Se9zC_5bytes5bytesNtB1j_5Bytes15copy_from_sliceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x)
          to label %bb.i unwind label %bb.d, !noalias !1837

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load i8, ptr %i.z, align 16, !range !237, !alias.scope !1853, !noalias !1855, !noundef !16 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 2
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !244

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
          to label %.noexc6.i unwind label %bb.d, !noalias !1837

.noexc6.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = load <2 x ptr>, ptr %i.b, align 16, !alias.scope !1857, !noalias !1858
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %3 = load <2 x i64>, ptr %.sroa.518.0..sroa_idx, align 16, !alias.scope !1857, !noalias !1858
  %.sroa.821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821.0..sroa_idx, i64 7, i1 false), !alias.scope !1857, !noalias !1858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1837
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.l, !noalias !1837

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.n, !noalias !1837

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.o, !noalias !1837

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1837
  unreachable

.body.i:                                          ; preds = %bb.o, %bb.l, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ah, %bb.o ], [ %i.ad, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1859, !nonnull !16, !noundef !16
  invoke void %i.ag(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %.body unwind label %bb.p, !noalias !1837, !inline_history !29

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1837
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1866, !nonnull !16, !noundef !16
  invoke void %i.aj(ptr noundef %.sroa.726.0.copyload, ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.625.0.copyload)
          to label %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q, !inline_history !1873

bb.p:                                             ; preds = %.body.i, %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1837
  unreachable

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.q ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsgOCJwUSa4vG_5tonic9transport7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB1U_5limit11concurrency7service16ConcurrencyLimitIB1O_INtNtNtB2E_4rate7service9RateLimitINtNtNtNtBI_7channel7service9reconnect9ReconnectINtNtB4b_10connection22MakeSendRequestServiceINtNtB4b_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB46_EEB3t_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(488) %1) #24
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.a, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit
  %.sroa.6.0 = phi i8 [ %i.aa, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit ], [ 0, %bb.a ]
  %4 = phi <2 x i64> [ %3, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit ], [ <i64 12, i64 0>, %bb.a ]
  %i.am = phi <2 x ptr> [ %i.ac, %_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit ], [ <ptr @31, ptr @21>, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(488) %1, i64 488, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 488
  store <2 x ptr> %i.am, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store <2 x i64> %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  ret void

_RNCNvMNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service10user_agentINtB4_9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtNtNtB2e_5limit11concurrency7service16ConcurrencyLimitIB28_INtNtNtB2Y_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCslfxrBSw8aGw_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs577yCKf7gy3_4http3uri3UriEEB4q_EEB3N_EEE3new0Csl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.821, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.821)
  br label %bb.r

bb.s:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs14kzo5Se9zC_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs14kzo5Se9zC_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @31, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs14kzo5Se9zC_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs2QK82Vyr5sR_12tracing_core8callsite10IdentifierINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %.val1 = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.a = icmp eq ptr %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs577yCKf7gy3_4http3uri3UriINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsa_NtCs577yCKf7gy3_4http3uriNtB5_3UriNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs2Co0DGPNz3P_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs14kzo5Se9zC_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2M_6marker4SendNtB3j_4SyncEL_EEENtNtNtB2M_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(144) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs2Co0DGPNz3P_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCs14kzo5Se9zC_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2r_6marker4SendNtB2Y_4SyncEL_EENtCslGsGNxILxTM_9http_body4Body10poll_frameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !1874, !noundef !16
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx68, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %.sroa.0.0.copyload, label %bb.e [
    i64 -3, label %bb.c
    i64 -2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.019.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -2, ptr %1, align 8
  %.not42 = icmp eq i64 %.sroa.019.0.copyload, -2
  br i1 %.not42, label %bb.m, label %bb.l, !prof !244

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store i64 -2, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.copyload, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, i64 72, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = load i64, ptr %1, align 8, !range !1875, !noundef !16
  %.not43 = icmp eq i64 %i.f, -2
  br i1 %.not43, label %bb.g, label %bb.f, !prof !244

bb.f:                                             ; preds = %bb.e
  call void @_RNvMNtCs2Co0DGPNz3P_14http_body_util9collectedINtB2_9CollectedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesE10push_frameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs2Co0DGPNz3P_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCs14kzo5Se9zC_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB2r_6marker4SendNtB2Y_4SyncEL_EENtCslGsGNxILxTM_9http_body4Body10poll_frameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !1874, !noundef !16
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslGsGNxILxTM_9http_body5frame5FrameNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #24
          to label %.thread45 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.521.0..sroa_idx, i64 120, i1 false)
  store i64 %.sroa.019.0.copyload, ptr %0, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #27
  unreachable

.thread45:                                        ; preds = %bb.i
  resume { ptr, i32 } %i.i

bb.n:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtBX_10LocalShard25internal_scroll_by_id_raw0s3_0INtB7_5FnMutTRNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEE8call_mutCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !16, !align !28, !noundef !16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !16, !align !28, !noundef !16
  tail call void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtBS_10data_types14segment_record16SegmentRecordRawNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE6removeBO_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs3EstPQUvMw7_13ordered_float12OrderedFloatdENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !align !28, !noundef !16
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs577yCKf7gy3_4http3uri10InvalidUriNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1876
  store ptr %i.b, ptr %i.a, align 8, !noalias !1876
end_hunk_0
