Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2092
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache11locate_file:bb.a
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ac, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %.thread5.loopexit.split-lp

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.j
  %i.af = load ptr, ptr %i.l, align 8, !alias.scope !1994, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.z
  store i32 47, ptr %i.ag, align 4
  %i.ah = add i64 %i.z, 1
  store i64 %i.ah, ptr %i.k, align 8, !alias.scope !1994
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef range(i64 0, 4611686018427387904) %2)
          to label %bb.p unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr %i.k, align 8, !alias.scope !1995, !noundef !5 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !1995, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.al, ptr nonnull readonly align 4 %1, i64 %i.m, i1 false)
  %.pre.i.i = load i64, ptr %i.k, align 8, !alias.scope !1995
  %i.am = add i64 %.pre.i.i, %2
  store i64 %i.am, ptr %i.k, align 8, !alias.scope !1995
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 2)
          to label %.noexc11 unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.p
  %i.an = load i64, ptr %i.k, align 8, !alias.scope !1996, !noundef !5 ; 7 uses
  %i.ao = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1996, !noundef !5
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc11
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %bb.r unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q, %.noexc11
  %i.aq = load ptr, ptr %i.l, align 8, !alias.scope !1996, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  store i32 46, ptr %i.ar, align 4
  %i.as = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.as, ptr %i.k, align 8, !alias.scope !1996
  %i.at = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1996, !noundef !5
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %bb.t unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.av = load ptr, ptr %i.l, align 8, !alias.scope !1996, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.as
  store i32 102, ptr %i.aw, align 4
  %i.ax = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.ax, ptr %i.k, align 8, !alias.scope !1996
  %i.ay = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1996, !noundef !5
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %bb.v unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ba = load ptr, ptr %i.l, align 8, !alias.scope !1996, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ax
  store i32 105, ptr %i.bb, align 4
  %i.bc = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.bc, ptr %i.k, align 8, !alias.scope !1996
  %i.bd = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1996, !noundef !5
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %bb.x unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bf = load ptr, ptr %i.l, align 8, !alias.scope !1996, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc
  store i32 115, ptr %i.bg, align 4
  %i.bh = add i64 %i.an, 4                        ; 3 uses
  store i64 %i.bh, ptr %i.k, align 8, !alias.scope !1996
  %i.bi = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1996, !noundef !5
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.y, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.4

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #39
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.4 unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.4: ; preds = %bb.y, %bb.x
  %i.bk = load ptr, ptr %i.l, align 8, !alias.scope !1996, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store i32 104, ptr %i.bl, align 4
  %i.bm = add i64 %i.an, 5                        ; 2 uses
  store i64 %i.bm, ptr %i.k, align 8, !alias.scope !1996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bn = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_path(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bn, i64 noundef %i.bm)
          to label %bb.z unwind label %.thread5.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.4
  %i.bo = load i64, ptr %i.n, align 8, !alias.scope !1997, !noundef !5
  %i.bp = icmp eq i64 %i.bo, -1
  %i.bq = load i64, ptr %i.o, align 8
  %i.br = icmp eq i64 %i.bq, -9223372036854775808
  %or.cond = select i1 %i.bp, i1 %i.br, i1 false
  %i.bs = load i64, ptr %i.p, align 8
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808
  %or.cond13 = select i1 %or.cond, i1 %i.bt, i1 false
  %i.bu = load i64, ptr %i.q, align 8
  %i.bv = icmp eq i64 %i.bu, -9223372036854775808
  %or.cond16 = select i1 %or.cond13, i1 %i.bv, i1 false
  %i.bw = load i64, ptr %i.r, align 8
  %i.bx = icmp eq i64 %i.bw, -9223372036854775808
  %or.cond19 = select i1 %or.cond16, i1 %i.bx, i1 false
  %i.by = load i64, ptr %i.c, align 8
  %i.bz = icmp eq i64 %i.by, -1
  %or.cond21 = select i1 %or.cond19, i1 %i.bz, i1 false
  %i.ca = load i64, ptr %i.s, align 8
  %i.cb = icmp eq i64 %i.ca, -1
  %or.cond24 = select i1 %or.cond21, i1 %i.cb, i1 false
  br i1 %or.cond24, label %bb.aa, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.outer

_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

common.resume:                                    ; preds = %bb.ae, %.loopexit.split-lp.loopexit.split-lp, %.thread5.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn4, %.thread5.loopexit.split-lp ], [ %i.ce, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

.thread5.loopexit.split-lp:                       ; preds = %.thread5.loopexit.split-lp.loopexit.split-lp, %.thread, %.loopexit.split-lp.loopexit.split-lp
  %.pn4 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp52, %.thread5.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #35
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %.thread5.loopexit.split-lp
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit15, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.ad:                                            ; preds = %.split.us
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit15 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit15: ; preds = %bb.ad
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache5check(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.5.i.i.i = alloca [28 x i8], align 4      ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.034.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [88 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [80 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [56 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [80 x i8], align 8               ; 8 uses
  %i.ae = alloca [96 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [96 x i8], align 8               ; 6 uses
  %i.ah = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.9 = alloca [72 x i8], align 8            ; 6 uses
  %i.ai = alloca [80 x i8], align 8               ; 13 uses
  %i.aj = alloca [96 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [72 x i8], align 8            ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3 ; 2 uses
  %i.al = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %2, ptr noundef nonnull readonly %i.ak, ptr noundef nonnull @62, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @62, i64 18))
  br i1 %i.al, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %2, ptr noundef nonnull readonly %i.ak, ptr noundef nonnull @63, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @63, i64 18))
  %spec.select = select i1 %i.am, i8 1, i8 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.081 = phi i8 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !2161, !noundef !5
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.as = tail call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  %i.at = lshr i64 %i.as, 57
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2164, !noundef !5 ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8, !alias.scope !2164, !nonnull !5, !noundef !5 ; 2 uses
  %i.ay = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.bq, %bb.g ]
  %.pn.i.i = phi i64 [ %i.as, %bb.d ], [ %i.br, %bb.g ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.aw     ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ba, align 1, !noalias !2165 ; 2 uses
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.az
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i = phi i16 [ %i.bp, %bb.f ], [ %i.bc, %bb.e ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.01.0.i.i.i, %i.be
  %i.bg = and i64 %i.bf, %i.aw
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [120 x i8], ptr %i.ax, i64 %i.bh ; 6 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -120
  %i.bk = tail call noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentNtNtBu_9utfstring11Utf32StringE10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj), !noalias !2166
  br i1 %i.bk, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit, label %bb.f, !prof !8

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %select.unfold, !prof !7

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bo = add i16 %.sroa.06.0.i31.i.i, -1
  %i.bp = and i16 %i.bo, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bq = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.br = add i64 %.sroa.01.0.i.i.i, %i.bq
  br label %bb.e

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit: ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.bi, i64 -96 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !4, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %brmerge = or i1 %6, %i.bu
  br i1 %brmerge, label %bb.h, label %bb.i

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = tail call fastcc noundef align 8 ptr @_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3getNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %.not24 = icmp eq ptr %i.bw, null
  br i1 %.not24, label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.p

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %i.bs, align 8
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit
  %i.bx = phi i64 [ %.pr, %thread-pre-split ], [ %i.bt, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %bb.m, label %bb.n

bb.i:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1J_.exit
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !5
  %i.cb = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.cc = load i32, ptr %i.cb, align 8, !range !2167, !noundef !5
  %i.cd = tail call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ce = extractvalue { i64, i32 } %i.cd, 0
  %i.cf = extractvalue { i64, i32 } %i.cd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.ce, ptr %i.v, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.cf, ptr %i.cg, align 8
  %i.ch = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v, i64 noundef %i.ca, i32 noundef range(i32 0, 1000000000) %i.cc)
  %i.ci = extractvalue { i64, i32 } %i.ch, 0
  %i.cj = icmp ult i64 %i.ci, 15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.cj, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs8frGy5WneL6_4fish8autoload9KnownFileNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6removeNtNtBS_6utfstr8Utf32StrEB1J_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5)
  %i.ck = load i64, ptr %i.aj, align 8, !range !27, !alias.scope !2168, !noundef !5
  %i.cl = icmp eq i64 %i.ck, -2
  br i1 %i.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.aj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = call fastcc noundef align 8 ptr @_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3getNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cm, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %.not25 = icmp eq ptr %i.cn, null
  br i1 %.not25, label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit, %bb.p
  %.sroa.013.0 = phi ptr [ %i.bw, %bb.p ], [ %i.cn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit ] ; 2 uses
  %i.co = load i64, ptr %.sroa.013.0, align 8, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !range !2167, !noundef !5
  %i.cr = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.cs = extractvalue { i64, i32 } %i.cr, 0
  %i.ct = extractvalue { i64, i32 } %i.cr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.cs, ptr %i.u, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef %i.co, i32 noundef range(i32 0, 1000000000) %i.cq)
  %i.cw = extractvalue { i64, i32 } %i.cv, 0
  %i.cx = icmp ult i64 %i.cw, 15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.cx, label %bb.q, label %bb.r

bb.m:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds i8, ptr %i.bi, i64 -88
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy)
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
  %.sroa.017.0.copyload = load i64, ptr %i.aa, align 8
  %i.cz = getelementptr inbounds i8, ptr %i.bi, i64 -72
  %.sroa.5.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.cz, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.02.0 = phi i64 [ -1, %bb.m ], [ %.sroa.017.0.copyload, %bb.n ]
  store i64 %.sroa.02.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.bx

bb.p:                                             ; preds = %select.unfold
  br i1 %6, label %bb.q, label %bb.l

bb.q:                                             ; preds = %bb.l, %bb.p
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache5check:bb.a
  br i1 %.not.i.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i
  %.sroa.011.046.i.i.i = phi i16 [ %i.dr, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i ], [ %i.dn, %bb.s ] ; 3 uses
  %i.do = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i.i, i1 true)
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = add i16 %.sroa.011.046.i.i.i, -1
  %i.dr = and i16 %i.dq, %.sroa.011.046.i.i.i     ; 2 uses
  %i.ds = add i64 %.sroa.03.0.i.i.i.i, %i.dp      ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.03.0.i.i.i.i
  br i1 %i.dt, label %bb.y, label %bb.x

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, %bb.s
  %i.du = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i.i, splat (i8 -1)
  %i.dv = bitcast <16 x i1> %i.du to i16
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.t, label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, !prof !7

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dx = icmp eq i64 %.sroa.07.0.i.i.i.i, -16
  br i1 %i.dx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = add i64 %.sroa.07.0.i.i.i.i, 16         ; 2 uses
  %i.dz = add i64 %.sroa.03.0.i.i.i.i, %i.dy      ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %.sroa.03.0.i.i.i.i
  br i1 %i.ea, label %bb.w, label %bb.s

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2921) #37, !noalias !2174
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2922) #37, !noalias !2174
  unreachable

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.eb = and i64 %i.ds, %i.dg                    ; 3 uses
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.dh, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -16
  %.val3.i.i.i.i = load ptr, ptr %i.ee, align 8, !noalias !2175, !noundef !5 ; 2 uses
  %i.ef = getelementptr i8, ptr %.val3.i.i.i.i, i64 16
  %.val3.val4.i.i.i.i = load i64, ptr %i.ef, align 8, !noalias !2175, !noundef !5
  %i.eg = icmp eq i64 %5, %.val3.val4.i.i.i.i
  br i1 %i.eg, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !9

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.x
  %i.eh = getelementptr i8, ptr %.val3.i.i.i.i, i64 8
  %.val3.val.i.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !2175, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 4 %4, ptr nonnull readonly align 4 %.val3.val.i.i.i.i, i64 %i.dk), !alias.scope !2176, !noalias !2177
  %i.ei = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ei, label %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i, label %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i, !prof !10

bb.y:                                             ; preds = %.lr.ph.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2923) #37, !noalias !2174
  unreachable

_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.x
  %.not.i.not.i.i.i = icmp eq i16 %i.dr, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyINtBV_10KeyWrapperNtNtB1o_6utfstr8Utf32StrEBS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  %i.ej = add nsw i64 %i.eb, -16
  %i.ek = and i64 %i.ej, %i.dg                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.el, align 1, !noalias !2180
  %i.em = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.en = bitcast <16 x i1> %i.em to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eb ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i.i = load <16 x i8>, ptr %i.eo, align 1, !noalias !2181
  %i.ep = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i.i, splat (i8 -1)
  %i.eq = bitcast <16 x i1> %i.ep to i16
  %i.er = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.en, i1 false)
  %i.es = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eq, i1 false)
  %narrow.i.i.i.i = add nuw nsw i16 %i.es, %i.er
  %i.et = icmp samesign ugt i16 %narrow.i.i.i.i, 15
  br i1 %i.et, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !2182, !noundef !5 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, -1
  br i1 %i.ew, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = add nuw i64 %i.ev, 1
  store i64 %i.ex, ptr %i.eu, align 8, !alias.scope !2182
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2929) #37, !noalias !2183
  unreachable

bb.ac:                                            ; preds = %bb.aa, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ -1, %bb.aa ], [ -128, %_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyINtBT_10KeyWrapperNtNtB1m_6utfstr8Utf32StrEBQ_B2a_E0ECs8frGy5WneL6_4fish.exit.i.i ] ; 2 uses
  %i.ey = icmp ugt i64 %i.ek, -17
  br i1 %i.ey, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.eo, align 1, !noalias !2183
  %i.ez = getelementptr i8, ptr %i.el, i64 16
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.ez, align 1, !noalias !2183
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !2182, !noundef !5 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #37, !noalias !2183
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2930) #37, !noalias !2183
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.fd = add i64 %i.fb, -1
  store i64 %i.fd, ptr %i.fa, align 8, !alias.scope !2182
  %i.fe = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !2184, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %i.ff, i64 56, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef 56, i64 noundef 8) #40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body.i.i.i, %bb.am, %bb.bt, %bb.ca, %.body.thread, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %.pn32, %.body.thread ], [ %i.fh, %bb.ah ], [ %.pn32, %bb.ca ], [ %.pn.i.i.i37, %.body.i.i.i ], [ %i.iq, %bb.bt ], [ %i.fz, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ag
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !2185, !noundef !5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !2185, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2185
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store ptr %i.fk, ptr %i.fo, align 8
  br label %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit

_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit: ; preds = %._crit_edge.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %select.unfold, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val34 = load i64, ptr %i.fq, align 8
  call fastcc void @_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache11locate_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ah, ptr %.val, i64 %.val34, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i8 noundef %.sroa.0.081, i1 noundef zeroext false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  %i.fr = load i64, ptr %i.ah, align 8, !range !27, !alias.scope !2187, !noundef !5 ; 2 uses
  %.not.i36 = icmp eq i64 %i.fr, -2
  br i1 %.not.i36, label %bb.aj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86: ; preds = %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx, i64 72, i1 false), !alias.scope !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread

bb.aj:                                            ; preds = %_RINvMs9_CskOHnqPTvc0z_3lruINtB6_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3popNtNtBH_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
  %.not.i.i = icmp eq i8 %.sroa.0.081, 2
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread, label %.noexc.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit

.noexc.i:                                         ; preds = %bb.aj
  %i.fs = trunc nuw i8 %.sroa.0.081 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2189
  call void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5), !noalias !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2189
  %i.ft = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !2189, !nonnull !5, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !2189, !noundef !5
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef %i.fw)
          to label %bb.ak unwind label %.body16.i.i.i, !noalias !2191

.body.i.i.i:                                      ; preds = %.body16.thread.i.i.i, %7, %.body16.i.i.i, %bb.bn, %bb.bj, %bb.ay, %bb.au
  %.pn.i.i.i37 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %.body16.i.i.i ], [ %eh.lpad-body173.i.i.i, %.body16.thread.i.i.i ], [ %i.hy, %bb.bj ], [ %i.gp, %bb.au ], [ %i.gx, %bb.ay ], [ %8, %7 ], [ %i.ig, %bb.bn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #35
          to label %common.resume unwind label %bb.bv, !noalias !2191

bb.ak:                                            ; preds = %.noexc.i
  %i.fx = load i64, ptr %i.r, align 8, !range !22, !noalias !2189, !noundef !5
  %i.fy = trunc nuw i64 %i.fx to i1
  br i1 %i.fy, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2189
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i unwind label %bb.am, !noalias !2191

bb.am:                                            ; preds = %bb.al
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.an, !noalias !2191

bb.an:                                            ; preds = %bb.am
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2191
  unreachable

bb.ao:                                            ; preds = %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !2189, !nonnull !5, !noundef !5 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !noalias !2189, !noundef !5 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2189
  br i1 %i.fs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2189
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bg unwind label %.body16.i.i.i, !noalias !2191

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2189
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ar unwind label %.body16.i.i.i, !noalias !2191

bb.ar:                                            ; preds = %bb.aq
  %i.gf = load i64, ptr %i.j, align 8, !range !22, !noalias !2189, !noundef !5
  %i.gg = trunc nuw i64 %i.gf to i1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !range !24, !noalias !2189, !noundef !5 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.gg, label %bb.as, label %bb.at, !prof !7

bb.as:                                            ; preds = %bb.ar
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !2189
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.bh, %bb.as
  %i.gl = phi i64 [ %i.gi, %bb.as ], [ %i.ht, %bb.bh ]
  %i.gm = phi i64 [ %i.gk, %bb.as ], [ %i.hv, %bb.bh ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.gl, i64 %i.gm) #36
          to label %.cont.i.i.i unwind label %.body16.i.i.i, !noalias !2191

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.gn = load ptr, ptr %i.gj, align 8, !noalias !2189, !nonnull !5, !noundef !5 ; 2 uses
  %i.go = icmp samesign ugt i64 %i.gi, 9
  call void @llvm.assume(i1 %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.gn, ptr noundef nonnull align 1 dereferenceable(10) @60, i64 10, i1 false), !noalias !2191
  store i64 %i.gi, ptr %i.o, align 8, !noalias !2189
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.gn, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !2189
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  store i64 10, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !2189
  call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.ge)
          to label %.noexc.i.i.i.i unwind label %bb.au, !noalias !2193

bb.au:                                            ; preds = %bb.at
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #35
          to label %.body.i.i.i unwind label %bb.aw, !noalias !2193

.noexc.i.i.i.i:                                   ; preds = %bb.at
  %i.gq = load i64, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !2194, !noalias !2189, !noundef !5 ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, -1
  call void @llvm.assume(i1 %i.gr)
  %.not.i.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %.noexc.i.i.i.i
  %i.gs = load ptr, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !alias.scope !2194, !noalias !2189, !nonnull !5, !noundef !5
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr nonnull readonly align 1 %i.gc, i64 %i.ge, i1 false), !noalias !2195
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !2194, !noalias !2189
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2193
  unreachable

bb.ax:                                            ; preds = %bb.av, %.noexc.i.i.i.i
  %i.gv = phi i64 [ %.pre.i.i.i.i.i, %bb.av ], [ %i.gq, %.noexc.i.i.i.i ]
  %i.gw = add i64 %i.gv, %i.ge
  store i64 %i.gw, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !2194, !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !alias.scope !2196, !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2189
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 5)
          to label %bb.ba unwind label %bb.ay, !noalias !2198

bb.ay:                                            ; preds = %bb.ax
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #35
          to label %.body.i.i.i unwind label %bb.az, !noalias !2198

bb.az:                                            ; preds = %bb.ay
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2198
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.gz = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !2199, !noalias !2189, !noundef !5 ; 2 uses
  %i.hb = icmp sgt i64 %i.ha, -1
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !2199, !noalias !2189, !nonnull !5, !noundef !5
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.he, ptr noundef nonnull readonly align 1 dereferenceable(5) @59, i64 5, i1 false), !noalias !2200
  %.pre.i.i12.i.i.i = load i64, ptr %i.gz, align 8, !alias.scope !2199, !noalias !2189
  %i.hf = add i64 %.pre.i.i12.i.i.i, 5
  store i64 %i.hf, ptr %i.gz, align 8, !alias.scope !2199, !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !2201, !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2189
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bp, %bb.ba
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !2189, !nonnull !5, !noundef !5
  %i.hi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !2189, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2202
  invoke void @_RNvMs2_NtCs8frGy5WneL6_4fish8autoloadNtB5_5Asset3get(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hh, i64 noundef %i.hj)
          to label %.noexc.i.i.i unwind label %.body16.thread4.i.i.i, !noalias !2191

.noexc.i.i.i:                                     ; preds = %bb.bb
  %i.hk = load i64, ptr %i.i, align 8, !range !30, !noalias !2202, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.hk, 2
  br i1 %.not.i.i.i, label %bb.bq, label %bb.bc

bb.bc:                                            ; preds = %.noexc.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 4 uses
  %i.hm = load i64, ptr %i.hl, align 8, !range !4, !alias.scope !2203, !noalias !2202, !noundef !5
  %i.hn = icmp eq i64 %i.hm, -1
  br i1 %i.hn, label %bb.br, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i unwind label %bb.be, !noalias !2191

bb.be:                                            ; preds = %bb.bd
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %.body16.thread.i.i.i unwind label %bb.bf, !noalias !2191

bb.bf:                                            ; preds = %bb.be
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2191
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %bb.br unwind label %.body16.thread4.i.i.i, !noalias !2191

bb.bg:                                            ; preds = %bb.ap
  %i.hq = load i64, ptr %i.k, align 8, !range !22, !noalias !2189, !noundef !5
  %i.hr = trunc nuw i64 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !range !24, !noalias !2189, !noundef !5 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.hr, label %bb.bh, label %bb.bi, !prof !7

bb.bh:                                            ; preds = %bb.bg
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !2189
  br label %.invoke.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.hw = load ptr, ptr %i.hu, align 8, !noalias !2189, !nonnull !5, !noundef !5 ; 2 uses
  %i.hx = icmp samesign ugt i64 %i.ht, 11
  call void @llvm.assume(i1 %i.hx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.hw, ptr noundef nonnull align 1 dereferenceable(12) @61, i64 12, i1 false), !noalias !2191
  store i64 %i.ht, ptr %i.m, align 8, !noalias !2189
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.hw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2189
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  store i64 12, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !2189
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.ge)
          to label %.noexc.i19.i.i.i unwind label %bb.bj, !noalias !2205

bb.bj:                                            ; preds = %bb.bi
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #35
          to label %.body.i.i.i unwind label %bb.bl, !noalias !2205

.noexc.i19.i.i.i:                                 ; preds = %bb.bi
  %i.hz = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2206, !noalias !2189, !noundef !5 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, -1
  call void @llvm.assume(i1 %i.ia)
  %.not.i.i20.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i20.i.i.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %.noexc.i19.i.i.i
  %i.ib = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !2206, !noalias !2189, !nonnull !5, !noundef !5
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %i.gc, i64 %i.ge, i1 false), !noalias !2207
  %.pre.i.i21.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2206, !noalias !2189
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2205
  unreachable

bb.bm:                                            ; preds = %bb.bk, %.noexc.i19.i.i.i
  %i.ie = phi i64 [ %.pre.i.i21.i.i.i, %bb.bk ], [ %i.hz, %.noexc.i19.i.i.i ]
  %i.if = add i64 %i.ie, %i.ge
  store i64 %i.if, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !2206, !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !alias.scope !2208, !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2189
  call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 5)
          to label %bb.bp unwind label %bb.bn, !noalias !2210

bb.bn:                                            ; preds = %bb.bm
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #35
          to label %.body.i.i.i unwind label %bb.bo, !noalias !2210

bb.bo:                                            ; preds = %bb.bn
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2210
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.ii = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !2211, !noalias !2189, !noundef !5 ; 2 uses
  %i.ik = icmp sgt i64 %i.ij, -1
  call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !2211, !noalias !2189, !nonnull !5, !noundef !5
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.in, ptr noundef nonnull readonly align 1 dereferenceable(5) @59, i64 5, i1 false), !noalias !2212
  %.pre.i.i26.i.i.i = load i64, ptr %i.ii, align 8, !alias.scope !2211, !noalias !2189
  %i.io = add i64 %.pre.i.i26.i.i.i, 5
  store i64 %i.io, ptr %i.ii, align 8, !alias.scope !2211, !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !alias.scope !2213, !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2189
  br label %bb.bb

.body16.thread4.i.i.i:                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i, %bb.bb
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body16.thread.i.i.i

.body16.i.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i.i, %.invoke.i.i.i, %bb.aq, %bb.ap, %.noexc.i
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bq:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2189
  %i.ip = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !2189
  store i64 -1, ptr %i.l, align 8, !noalias !2189
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %7, !noalias !2191

7:                                                ; preds = %bb.bq
  %8 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %.body.i.i.i unwind label %9, !noalias !2191

9:                                                ; preds = %7
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2191
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %bb.bs unwind label %.body16.i.i.i, !noalias !2191

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i.i
  %.sroa.0.0 = phi i64 [ -2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ -1, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2189
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i unwind label %bb.bt, !noalias !2191

bb.bt:                                            ; preds = %bb.bs
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.bu, !noalias !2191

bb.bu:                                            ; preds = %bb.bt
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2191
  unreachable

.body16.thread.i.i.i:                             ; preds = %.body16.thread4.i.i.i, %bb.be
  %eh.lpad-body173.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body16.thread4.i.i.i ], [ %i.ho, %bb.be ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #35
          to label %.body.i.i.i unwind label %bb.bv, !noalias !2191

bb.bv:                                            ; preds = %.body16.thread.i.i.i, %.body.i.i.i
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !2191
  unreachable

_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i: ; preds = %bb.bs, %bb.al
  %.sroa.0.1 = phi i64 [ -2, %bb.al ], [ %.sroa.0.0, %bb.bs ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s), !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2189
  %.pre.i = load i64, ptr %i.ah, align 8, !range !27, !alias.scope !2214
  %i.it = icmp eq i64 %.pre.i, -2
  br i1 %i.it, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit, label %bb.bw

bb.bw:                                            ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ah), !noalias !2215
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit: ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache12locate_asset.exit.i.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  %.not.i38 = icmp eq i64 %.sroa.0.1, -2
  br i1 %.not.i38, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86
  %.sroa.0.289 = phi i64 [ %i.fr, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread86 ], [ -1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit ]
  store i64 %.sroa.0.289, ptr %i.ai, align 8, !alias.scope !2218
  %.sroa.9.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx74, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9, i64 72, i1 false), !alias.scope !2218
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.by

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5check0EBM_.exit.thread
  %.val.i.i = load ptr, ptr %i.fp, align 8, !noalias !2219
  %.val1.i.i = load i64, ptr %i.fq, align 8, !noalias !2219
  call fastcc void @_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache11locate_file(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %i.ai, ptr %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, i8 noundef %.sroa.0.081, i1 noundef zeroext true), !noalias !2220
  %.pr90 = load i64, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.not26 = icmp eq i64 %.pr90, -2
  br i1 %.not26, label %bb.bz, label %bb.by

bb.bx:                                            ; preds = %bb.o, %bb.q, %bb.ed
  ret void

bb.by:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef %5, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.eg unwind label %bb.en

bb.bz:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef %5, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.cb unwind label %bb.en

.body.thread:                                     ; preds = %bb.eu, %bb.ev, %bb.en, %bb.dy, %bb.dw, %bb.du, %bb.ds, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.cv, %.thread100, %bb.ee
  %.pn32 = phi { ptr, i32 } [ %i.tg, %bb.eu ], [ %i.sh, %bb.dy ], [ %.pn103, %.thread100 ], [ %lpad.thr_comm.split-lp106, %bb.en ], [ %lpad.thr_comm.split-lp, %bb.ee ], [ %i.tg, %bb.ev ], [ %i.oa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i ], [ %i.rp, %bb.dw ], [ %i.rm, %bb.ds ], [ %i.ng, %bb.cv ], [ %lpad.thr_comm.i.i, %bb.du ] ; 2 uses
  %i.iv = load i64, ptr %i.ai, align 8, !range !27, !alias.scope !2221, !noundef !5
  %i.iw = icmp eq i64 %i.iv, -2
  br i1 %i.iw, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ai)
          to label %common.resume unwind label %bb.ef

bb.cb:                                            ; preds = %bb.bz
  %i.ix = load i64, ptr %i.w, align 8, !range !22, !noundef !5
  %i.iy = trunc nuw i64 %i.ix to i1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !range !24, !noundef !5 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  br i1 %i.iy, label %bb.cc, label %bb.cd, !prof !7

bb.cc:                                            ; preds = %bb.cb
  %i.jc = load i64, ptr %i.jb, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.eh, %bb.cc
  %i.jd = phi i64 [ %i.ja, %bb.cc ], [ %i.sn, %bb.eh ]
  %i.je = phi i64 [ %i.jc, %bb.cc ], [ %i.sp, %bb.eh ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.jd, i64 %i.je) #36
          to label %.cont unwind label %bb.en

.cont:                                            ; preds = %.invoke
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.jf = load ptr, ptr %i.jb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.jg = icmp ule i64 %5, %i.ja
  call void @llvm.assume(i1 %i.jg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not27 = icmp eq i64 %5, 0
  br i1 %.not27, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  store i64 %i.ja, ptr %i.ac, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store ptr %i.jf, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store i64 %5, ptr %.sroa.622.0..sroa_idx, align 8
  %i.jh = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit unwind label %bb.ee ; 2 uses

bb.cf:                                            ; preds = %bb.cd
  %i.ji = shl nuw nsw i64 %5, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jf, ptr nonnull align 4 %4, i64 %i.ji, i1 false)
  br label %bb.ce

_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit: ; preds = %bb.ce
  %i.jj = extractvalue { i64, i32 } %i.jh, 0      ; 3 uses
  %i.jk = extractvalue { i64, i32 } %i.jh, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2227
  store ptr %i.ac, ptr %i.g, align 8, !noalias !2227
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !2228, !noundef !5
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %select.unfold.thread.i.i, label %bb.cg

select.unfold.thread.i.i:                         ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2227
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2229
  br label %bb.cl

bb.cg:                                            ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB5_17AutoloadFileCache17current_timestamp.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.jp = invoke noundef i64 @_RINvYNtNtCs25YkazkrsH5_9hashbrown6hasher18DefaultHashBuilderNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc.i.i unwind label %bb.dw, !noalias !2224 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  call void @llvm.experimental.noalias.scope.decl(metadata !2231), !noalias !2224
  %i.jq = lshr i64 %i.jp, 57
  %i.jr = trunc nuw nsw i64 %i.jq to i8
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !alias.scope !2232, !noalias !2224, !noundef !5 ; 2 uses
  %i.ju = load ptr, ptr %i.iu, align 8, !alias.scope !2232, !noalias !2224, !nonnull !5, !noundef !5 ; 2 uses
  %i.jv = insertelement <16 x i8> poison, i8 %i.jr, i64 0
  %i.jw = shufflevector <16 x i8> %i.jv, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.val2.i.i.i.i = load i64, ptr %.sroa.622.0..sroa_idx, align 8, !alias.scope !2223 ; 2 uses
  %.val.val.i.i.i.i = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !alias.scope !2223, !nonnull !5
  %i.jx = shl nuw i64 %.val.val2.i.i.i.i, 2
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %.noexc.i.i
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.kl, %bb.cj ] ; 2 uses
  %.pn.i.i40 = phi i64 [ %i.jp, %.noexc.i.i ], [ %i.km, %bb.cj ]
  %.sroa.03.0.i.i.i = and i64 %.pn.i.i40, %i.jt   ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.sroa.03.0.i.i.i
  %.sroa.0.0.copyload.i33.i.i = load <16 x i8>, ptr %i.jy, align 1, !noalias !2233 ; 2 uses
  %i.jz = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, %i.jw
  %i.ka = bitcast <16 x i1> %i.jz to i16          ; 2 uses
  %.not.i.not45.i.i = icmp eq i16 %i.ka, 0
  br i1 %.not.i.not45.i.i, label %._crit_edge.i.i43, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %bb.ch, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i
  %.sroa.011.046.i.i = phi i16 [ %i.ke, %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i ], [ %i.ka, %bb.ch ] ; 3 uses
  %i.kb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.011.046.i.i, i1 true)
  %i.kc = zext nneg i16 %i.kb to i64
  %i.kd = add i16 %.sroa.011.046.i.i, -1
  %i.ke = and i16 %i.kd, %.sroa.011.046.i.i       ; 2 uses
  %i.kf = add i64 %.sroa.03.0.i.i.i, %i.kc        ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %.sroa.03.0.i.i.i
  br i1 %i.kg, label %.invoke.i, label %bb.ck

._crit_edge.i.i43:                                ; preds = %_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish.exit.thread.i.i, %bb.ch
  %i.kh = icmp eq <16 x i8> %.sroa.0.0.copyload.i33.i.i, splat (i8 -1)
  %i.ki = bitcast <16 x i1> %i.kh to i16
end_hunk_1
begin_hunk_2_@llvm.experimental.cttz.elts.i64.v16i1
!2076 = distinct !{!2076, !2074, !"_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add: argument 2"}
!2077 = distinct !{!2077, !2074, !"_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add: argument 1"}
!2078 = distinct !{!2078, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish"}
!2079 = distinct !{!2079, !2078, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!2080 = distinct !{!2080, i1 true, !"_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add"}
!2081 = distinct !{!2081, !2080, !"_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add: argument 0"}
!2082 = distinct !{!2082, !2080, !"_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add: argument 2"}
!2083 = distinct !{!2083, !2080, !"_RNvXst_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddReE3add: argument 1"}
!2084 = distinct !{!2084, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish"}
!2085 = distinct !{!2085, !2084, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!2086 = distinct !{!2086, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEEB11_"}
!2087 = distinct !{!2087, !2086, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEEB11_: argument 0"}
!2088 = distinct !{!2088, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_"}
!2089 = distinct !{!2089, !2088, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_: argument 0"}
!2090 = distinct !{!2090, !2088, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_: argument 1"}
!2091 = distinct !{!2091, !2088, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoE7or_elseNCNvMs0_BK_NtBK_17AutoloadFileCache5checks_0EBM_: argument 2"}
!2092 = distinct !{!2092, i1 true, !"_RNCNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB7_17AutoloadFileCache5checks_0B9_"}
!2093 = distinct !{!2093, !2092, !"_RNCNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB7_17AutoloadFileCache5checks_0B9_: argument 1"}
!2094 = distinct !{!2094, !2092, !"_RNCNvMs0_NtCs8frGy5WneL6_4fish8autoloadNtB7_17AutoloadFileCache5checks_0B9_: argument 0"}
!2095 = distinct !{!2095, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEEB11_"}
!2096 = distinct !{!2096, !2095, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEEB11_: argument 0"}
!2097 = distinct !{!2097, i1 true, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3putCs8frGy5WneL6_4fish"}
!2098 = distinct !{!2098, !2097, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3putCs8frGy5WneL6_4fish: argument 0"}
!2099 = distinct !{!2099, !2097, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE3putCs8frGy5WneL6_4fish: argument 1"}
!2100 = distinct !{!2100, i1 true, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish"}
!2101 = distinct !{!2101, !2100, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish: argument 0"}
!2102 = distinct !{!2102, !2100, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish: argument 1"}
!2103 = distinct !{!2103, !2100, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE13capturing_putCs8frGy5WneL6_4fish: argument 2"}
!2104 = distinct !{!2104, i1 true, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutBO_ECs8frGy5WneL6_4fish"}
!2105 = distinct !{!2105, !2104, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE7get_mutBO_ECs8frGy5WneL6_4fish: argument 0"}
!2106 = distinct !{!2106, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0ECs8frGy5WneL6_4fish"}
!2107 = distinct !{!2107, !2106, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0ECs8frGy5WneL6_4fish: argument 0"}
!2108 = distinct !{!2108, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!2109 = distinct !{!2109, !2108, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!2110 = distinct !{!2110, !2106, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0ECs8frGy5WneL6_4fish: argument 1"}
!2111 = distinct !{!2111, !2108, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!2112 = distinct !{!2112, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2113 = distinct !{!2113, !2112, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2114 = distinct !{!2114, i1 true, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish"}
!2115 = distinct !{!2115, !2114, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish: argument 0"}
!2116 = distinct !{!2116, i1 true, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish"}
!2117 = distinct !{!2117, !2116, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish: argument 1"}
!2118 = distinct !{!2118, !2116, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish: argument 2"}
!2119 = distinct !{!2119, !2116, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE22replace_or_create_nodeCs8frGy5WneL6_4fish: argument 0"}
!2120 = distinct !{!2120, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0ECs8frGy5WneL6_4fish"}
!2121 = distinct !{!2121, !2120, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0ECs8frGy5WneL6_4fish: argument 0"}
!2122 = distinct !{!2122, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!2123 = distinct !{!2123, !2122, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!2124 = distinct !{!2124, !2120, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0ECs8frGy5WneL6_4fish: argument 1"}
!2125 = distinct !{!2125, !2122, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!2126 = distinct !{!2126, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2127 = distinct !{!2127, !2126, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2128 = distinct !{!2128, i1 true, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish"}
!2129 = distinct !{!2129, !2128, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0E0Cs8frGy5WneL6_4fish: argument 0"}
!2130 = distinct !{!2130, i1 true, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE6removeCs8frGy5WneL6_4fish"}
!2131 = distinct !{!2131, !2130, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE6removeCs8frGy5WneL6_4fish: argument 1"}
!2132 = distinct !{!2132, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner5erase"}
!2133 = distinct !{!2133, !2132, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!2134 = distinct !{!2134, !2130, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE6removeCs8frGy5WneL6_4fish: argument 0"}
!2135 = distinct !{!2135, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2136 = distinct !{!2136, !2135, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2137 = distinct !{!2137, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2138 = distinct !{!2138, !2137, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2139 = distinct !{!2139, i1 true, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE12remove_entryBO_ECs8frGy5WneL6_4fish"}
!2140 = distinct !{!2140, !2139, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE12remove_entryBO_ECs8frGy5WneL6_4fish: argument 0"}
!2141 = distinct !{!2141, i1 true, !"_RNvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB5_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBQ_8LruEntryB1f_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE6insertCs8frGy5WneL6_4fish"}
!2142 = distinct !{!2142, !2141, !"_RNvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB5_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBQ_8LruEntryB1f_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE6insertCs8frGy5WneL6_4fish: argument 0"}
!2143 = distinct !{!2143, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0NCINvB4n_11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish"}
!2144 = distinct !{!2144, !2143, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0NCINvB4n_11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish: argument 0"}
!2145 = distinct !{!2145, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish"}
!2146 = distinct !{!2146, !2145, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish: argument 0"}
!2147 = distinct !{!2147, !2143, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B2a_E0NCINvB4n_11make_hasherBQ_B2a_NtNtB8_6hasher18DefaultHashBuilderE0ECs8frGy5WneL6_4fish: argument 1"}
!2148 = distinct !{!2148, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2149 = distinct !{!2149, !2148, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2150 = distinct !{!2150, i1 true, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE22insert_tagged_at_indexCs8frGy5WneL6_4fish"}
!2151 = distinct !{!2151, !2150, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE22insert_tagged_at_indexCs8frGy5WneL6_4fish: argument 0"}
!2152 = distinct !{!2152, i1 true, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish"}
!2153 = distinct !{!2153, !2152, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2c_E0NCINvB4p_11make_hasherBS_B2c_NtNtBa_6hasher18DefaultHashBuilderE0E0Cs8frGy5WneL6_4fish: argument 0"}
!2154 = distinct !{!2154, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner21record_item_insert_at"}
!2155 = distinct !{!2155, !2154, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner21record_item_insert_at: argument 0"}
!2156 = distinct !{!2156, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEE6filterNCNvMs9_CskOHnqPTvc0z_3lruINtB2q_8LruCacheBJ_B1A_E13capturing_put0ECs8frGy5WneL6_4fish"}
!2157 = distinct !{!2157, !2156, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEE6filterNCNvMs9_CskOHnqPTvc0z_3lruINtB2q_8LruCacheBJ_B1A_E13capturing_put0ECs8frGy5WneL6_4fish: argument 1"}
!2158 = distinct !{!2158, !2156, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantEE6filterNCNvMs9_CskOHnqPTvc0z_3lruINtB2q_8LruCacheBJ_B1A_E13capturing_put0ECs8frGy5WneL6_4fish: argument 0"}
!2159 = distinct !{!2159, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_"}
!2160 = distinct !{!2160, !2159, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEEB11_: argument 0"}
!2161 = !{!1999}
!2162 = !{!2001}
!2163 = !{!2003}
!2164 = !{!2003, !2001, !1999}
!2165 = !{!2006, !2003, !2004, !2001}
!2166 = !{!2008, !2003, !2004, !2001}
!2167 = !{i32 0, i32 1000000000}
!2168 = !{!2010}
!2169 = !{!2012}
!2170 = !{!2014}
!2171 = !{!2016}
!2172 = !{!2016, !2014, !2018, !2012}
!2173 = !{!2022, !2016, !2020, !2014, !2019}
!2174 = !{!2016, !2020, !2014, !2019}
!2175 = !{!2024, !2016, !2020, !2014, !2019}
!2176 = !{!2033, !2032, !2030, !2029, !2027, !2026}
!2177 = !{!2024, !2016, !2020, !2014}
!2178 = !{!2035}
!2179 = !{!2037}
!2180 = !{!2040, !2037, !2038, !2035}
!2181 = !{!2042, !2037, !2038, !2035}
!2182 = !{!2037, !2035, !2018, !2012}
!2183 = !{!2037, !2038, !2035}
!2184 = !{!2038, !2035}
!2185 = !{!2012, !2043}
!2186 = !{!2045}
!2187 = !{!2046}
!2188 = !{!2045, !2046}
!2189 = !{!2053, !2052, !2050, !2049, !2045, !2046, !2047}
!2190 = !{!2045, !2046, !2047}
!2191 = !{!2053, !2050, !2049, !2045, !2046, !2047}
!2192 = !{!2055}
!2193 = !{!2055, !2056, !2053, !2050, !2049, !2045, !2046, !2047}
!2194 = !{!2059, !2057}
!2195 = !{!2055, !2053, !2050, !2049, !2045, !2046, !2047}
!2196 = !{!2055, !2057}
!2197 = !{!2061}
!2198 = !{!2061, !2062, !2053, !2050, !2049, !2045, !2046, !2047}
!2199 = !{!2065, !2063}
!2200 = !{!2061, !2053, !2050, !2049, !2045, !2046, !2047}
!2201 = !{!2061, !2063}
!2202 = !{!2067, !2053, !2052, !2050, !2049, !2045, !2046, !2047}
!2203 = !{!2073, !2071, !2069}
!2204 = !{!2075}
!2205 = !{!2075, !2076, !2053, !2050, !2049, !2045, !2046, !2047}
!2206 = !{!2079, !2077}
!2207 = !{!2075, !2053, !2050, !2049, !2045, !2046, !2047}
!2208 = !{!2075, !2077}
!2209 = !{!2081}
!2210 = !{!2081, !2082, !2053, !2050, !2049, !2045, !2046, !2047}
!2211 = !{!2085, !2083}
!2212 = !{!2081, !2053, !2050, !2049, !2045, !2046, !2047}
!2213 = !{!2081, !2083}
!2214 = !{!2087, !2046}
!2215 = !{!2045, !2047}
!2216 = !{!2089}
!2217 = !{!2090}
!2218 = !{!2089, !2090}
!2219 = !{!2094, !2093, !2089, !2090, !2091}
!2220 = !{!2090, !2091}
!2221 = !{!2096}
!2222 = !{!2098}
!2223 = !{!2099}
!2224 = !{!2101}
!2225 = !{!2102}
!2226 = !{!2103}
!2227 = !{!2101, !2102, !2103, !2098, !2099}
!2228 = !{!2105, !2102, !2098}
!2229 = !{!2101, !2102, !2098}
!2230 = !{!2107}
!2231 = !{!2109}
!2232 = !{!2109, !2107, !2098}
!2233 = !{!2113, !2109, !2111, !2107, !2110, !2101}
!2234 = !{!2115, !2109, !2111, !2107, !2110, !2101}
!2235 = !{!2117, !2102, !2098}
!2236 = !{!2117}
!2237 = !{!2119, !2117, !2118, !2101, !2102, !2103, !2098, !2099}
!2238 = !{!2119, !2117, !2101, !2102, !2103, !2098, !2099}
!2239 = !{!2119, !2117, !2118, !2101}
!2240 = !{!2119, !2118, !2101}
!2241 = !{!2121}
!2242 = !{!2123}
!2243 = !{!2119, !2118}
!2244 = !{!2123, !2121, !2102, !2098}
!2245 = !{!2127, !2123, !2125, !2121, !2124, !2119, !2118, !2101}
!2246 = !{!2129, !2123, !2125, !2121, !2124, !2119, !2118, !2101}
!2247 = !{!2131}
!2248 = !{!2133}
!2249 = !{!2136, !2133, !2134, !2131, !2119, !2118, !2101}
!2250 = !{!2138, !2133, !2134, !2131, !2119, !2118, !2101}
!2251 = !{!2133, !2131, !2140, !2117, !2102, !2098}
!2252 = !{!2117, !2118, !2101, !2102, !2103, !2098, !2099}
!2253 = !{!2119, !2101}
!2254 = !{!2133, !2134, !2131, !2119, !2118, !2101}
!2255 = !{!2134, !2131, !2119, !2118, !2101}
!2256 = !{!2118, !2101}
!2257 = !{!2102, !2098}
!2258 = !{!2142}
!2259 = !{!2142, !2101, !2102, !2103, !2098, !2099}
!2260 = !{!2146, !2144, !2142, !2102, !2098}
!2261 = !{!2144, !2142, !2102, !2098}
!2262 = !{!2149, !2147, !2101}
!2263 = !{!2147, !2101}
!2264 = !{!2151, !2101}
!2265 = !{!2153, !2147, !2101}
!2266 = !{!2153, !2147, !2142, !2101}
!2267 = !{!2151}
!2268 = !{!2155}
!2269 = !{!2155, !2151, !2142, !2102, !2098}
!2270 = !{!2155, !2151, !2101}
!2271 = !{!2158, !2157, !2101, !2102, !2103, !2098, !2099}
!2272 = !{!2158, !2101, !2102, !2103, !2098, !2099}
!2273 = !{!2158, !2157, !2101}
!2274 = !{!2101, !2103, !2099}
!2275 = !{!2098, !2099}
!2276 = !{!"branch_weights", !"expected", i32 2143282672, i32 4200976}
!2277 = !{!2160}
!2278 = distinct !{!2278, i1 true, !"_RNvMs_NtCs25YkazkrsH5_9hashbrown3mapINtB4_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBP_8LruEntryB1e_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE13with_capacityCs8frGy5WneL6_4fish"}
!2279 = distinct !{!2279, !2278, !"_RNvMs_NtCs25YkazkrsH5_9hashbrown3mapINtB4_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBP_8LruEntryB1e_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE13with_capacityCs8frGy5WneL6_4fish: argument 0"}
!2280 = distinct !{!2280, i1 true, !"_RNvMs1_NtCs25YkazkrsH5_9hashbrown3mapINtB5_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBQ_8LruEntryB1f_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE24with_capacity_and_hasherCs8frGy5WneL6_4fish"}
!2281 = distinct !{!2281, !2280, !"_RNvMs1_NtCs25YkazkrsH5_9hashbrown3mapINtB5_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBQ_8LruEntryB1f_NtNtCsaL1QbXo9JQH_3std4time7InstantEEE24with_capacity_and_hasherCs8frGy5WneL6_4fish: argument 0"}
!2282 = distinct !{!2282, i1 true, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE16with_capacity_inCs8frGy5WneL6_4fish"}
!2283 = distinct !{!2283, !2282, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_NtNtCsaL1QbXo9JQH_3std4time7InstantEEEE16with_capacity_inCs8frGy5WneL6_4fish: argument 0"}
!2284 = distinct !{!2284, i1 true, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!2285 = distinct !{!2285, !2284, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!2286 = distinct !{!2286, i1 true, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!2287 = distinct !{!2287, !2286, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!2288 = distinct !{!2288, i1 true, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE9constructCs8frGy5WneL6_4fish"}
!2289 = distinct !{!2289, !2288, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE9constructCs8frGy5WneL6_4fish: argument 0"}
!2290 = distinct !{!2290, !2288, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCsaL1QbXo9JQH_3std4time7InstantE9constructCs8frGy5WneL6_4fish: argument 1"}
!2291 = distinct !{!2291, i1 true, !"_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs8frGy5WneL6_4fish"}
!2292 = distinct !{!2292, !2291, !"_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs8frGy5WneL6_4fish: argument 0"}
!2293 = distinct !{!2293, i1 true, !"_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs8frGy5WneL6_4fish"}
!2294 = distinct !{!2294, !2293, !"_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs8frGy5WneL6_4fish: argument 0"}
!2295 = distinct !{!2295, i1 true, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs8frGy5WneL6_4fish"}
!2296 = distinct !{!2296, !2295, !"_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs8frGy5WneL6_4fish: argument 0"}
!2297 = distinct !{!2297, i1 true, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish"}
!2298 = distinct !{!2298, !2297, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish: argument 0"}
!2299 = distinct !{!2299, i1 true, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs8frGy5WneL6_4fish"}
!2300 = distinct !{!2300, !2299, !"_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECs8frGy5WneL6_4fish: argument 0"}
!2301 = !{!2279}
!2302 = !{!2287, !2285, !2283, !2281, !2279}
!2303 = !{!2285, !2283, !2281, !2279}
!2304 = !{!2289}
!2305 = !{!2290}
!2306 = !{!2289, !2290}
!2307 = !{!2296, !2294, !2292}
!2308 = !{!2300, !2298}
!2309 = distinct !{!2309, i1 true, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs8frGy5WneL6_4fish"}
!2310 = distinct !{!2310, !2309, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs8frGy5WneL6_4fish: argument 1"}
!2311 = distinct !{!2311, !2309, !"_RINvMs3_NtCs1xwejQucwHj_5alloc3stre7replaceReECs8frGy5WneL6_4fish: argument 0"}
!2312 = distinct !{!2312, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!2313 = distinct !{!2313, !2312, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!2314 = distinct !{!2314, !2312, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!2315 = distinct !{!2315, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTReNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileE16binary_search_byNCINvB2_20binary_search_by_keyBw_NCNvMs2_NtCs8frGy5WneL6_4fish8autoloadNtB2i_5Asset3get0E0EB2k_"}
!2316 = distinct !{!2316, !2315, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTReNtCs9DVVTwq977Y_16rust_embed_utils12EmbeddedFileE16binary_search_byNCINvB2_20binary_search_by_keyBw_NCNvMs2_NtCs8frGy5WneL6_4fish8autoloadNtB2i_5Asset3get0E0EB2k_: argument 0"}
!2317 = distinct !{!2317, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!2318 = distinct !{!2318, !2317, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!2319 = distinct !{!2319, !2317, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!2320 = !{!2311, !2310}
!2321 = !{!2314, !2313}
!2322 = !{!2316}
!2323 = !{!2319, !2318}
!2324 = distinct !{!2324, i1 true, !"_RNvMs5_NtCs8n0tpEuULLm_5pcre23ffiINtB5_4CodeNtB5_15CodeUnitWidth32E10name_countCs8frGy5WneL6_4fish"}
!2325 = distinct !{!2325, !2324, !"_RNvMs5_NtCs8n0tpEuULLm_5pcre23ffiINtB5_4CodeNtB5_15CodeUnitWidth32E10name_countCs8frGy5WneL6_4fish: argument 0"}
!2326 = distinct !{!2326, i1 true, !"_RNvMs5_NtCs8n0tpEuULLm_5pcre23ffiINtB5_4CodeNtB5_15CodeUnitWidth32E15name_entry_sizeCs8frGy5WneL6_4fish"}
!2327 = distinct !{!2327, !2326, !"_RNvMs5_NtCs8n0tpEuULLm_5pcre23ffiINtB5_4CodeNtB5_15CodeUnitWidth32E15name_entry_sizeCs8frGy5WneL6_4fish: argument 0"}
!2328 = distinct !{!2328, i1 true, !"_RNvMs5_NtCs8n0tpEuULLm_5pcre23ffiINtB5_4CodeNtB5_15CodeUnitWidth32E13capture_countCs8frGy5WneL6_4fish"}
!2329 = distinct !{!2329, !2328, !"_RNvMs5_NtCs8n0tpEuULLm_5pcre23ffiINtB5_4CodeNtB5_15CodeUnitWidth32E13capture_countCs8frGy5WneL6_4fish: argument 0"}
!2330 = distinct !{!2330, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8frGy5WneL6_4fish"}
!2331 = distinct !{!2331, !2330, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8frGy5WneL6_4fish: argument 0"}
!2332 = distinct !{!2332, i1 true, !"_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8frGy5WneL6_4fish"}
!2333 = distinct !{!2333, !2332, !"_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8frGy5WneL6_4fish: argument 1"}
!2334 = distinct !{!2334, !2332, !"_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_6string6StringENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8frGy5WneL6_4fish: argument 0"}
!2335 = distinct !{!2335, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8frGy5WneL6_4fish"}
!2336 = distinct !{!2336, !2335, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8frGy5WneL6_4fish: argument 0"}
!2337 = !{!2325}
!2338 = !{!2327}
!2339 = !{!2329}
!2340 = !{!2331}
!2341 = !{!2334, !2333}
!2342 = !{!2334}
!2343 = !{!2333}
!2344 = !{!2336}
!2345 = distinct !{!2345, i1 true, !"_RNvXs8_NtCs8n0tpEuULLm_5pcre23ffiINtB5_14CompileContextNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!2346 = distinct !{!2346, !2345, !"_RNvXs8_NtCs8n0tpEuULLm_5pcre23ffiINtB5_14CompileContextNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!2347 = !{!2346}
!2348 = distinct !{!2348, i1 true, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!2349 = distinct !{!2349, !2348, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!2350 = distinct !{!2350, i1 true, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!2351 = distinct !{!2351, !2350, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!2352 = !{!2351, !2349}
!2353 = !{!2349}
!2354 = distinct !{!2354, i1 true, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!2355 = distinct !{!2355, !2354, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!2356 = distinct !{!2356, i1 true, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish"}
!2357 = distinct !{!2357, !2356, !"_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs8frGy5WneL6_4fish: argument 0"}
!2358 = !{!2357, !2355}
!2359 = !{!2355}
!2360 = distinct !{!2360, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2361 = distinct !{!2361, !2360, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2362 = !{!2361}
!2363 = distinct !{!2363, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2364 = distinct !{!2364, !2363, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2365 = !{!2364}
!2366 = distinct !{!2366, i1 true, !"_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEE13erase_no_dropB2i_"}
!2367 = distinct !{!2367, !2366, !"_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish8function18FunctionPropertiesEEE13erase_no_dropB2i_: argument 0"}
!2368 = distinct !{!2368, i1 true, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner5erase"}
!2369 = distinct !{!2369, !2368, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!2370 = distinct !{!2370, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2371 = distinct !{!2371, !2370, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2372 = distinct !{!2372, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2373 = distinct !{!2373, !2372, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2374 = !{!2367}
!2375 = !{!2369}
!2376 = !{!2369, !2367}
!2377 = !{!2371, !2369, !2367}
!2378 = !{!2373, !2369, !2367}
!2379 = distinct !{!2379, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2380 = distinct !{!2380, !2379, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2381 = !{!2380}
!2382 = distinct !{!2382, i1 true, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEEB27_"}
!2383 = distinct !{!2383, !2382, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEEB27_: argument 0"}
!2384 = distinct !{!2384, i1 true, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE3newB1R_"}
!2385 = distinct !{!2385, !2384, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE3newB1R_: argument 0"}
!2386 = distinct !{!2386, i1 true, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE9next_implKb0_EB1S_"}
!2387 = distinct !{!2387, !2386, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE9next_implKb0_EB1S_: argument 0"}
!2388 = !{!2383}
!2389 = !{!2385, !2383}
!2390 = !{!2387, !2383}
!2391 = distinct !{!2391, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2392 = distinct !{!2392, !2391, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2393 = !{!2392}
!2394 = distinct !{!2394, i1 true, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEECs8frGy5WneL6_4fish"}
!2395 = distinct !{!2395, !2394, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEECs8frGy5WneL6_4fish: argument 0"}
!2396 = distinct !{!2396, i1 true, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE3newCs8frGy5WneL6_4fish"}
!2397 = distinct !{!2397, !2396, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE3newCs8frGy5WneL6_4fish: argument 0"}
!2398 = distinct !{!2398, i1 true, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE9next_implKb0_ECs8frGy5WneL6_4fish"}
!2399 = distinct !{!2399, !2398, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE9next_implKb0_ECs8frGy5WneL6_4fish: argument 0"}
!2400 = !{!2395}
!2401 = !{!2397, !2395}
!2402 = !{!2399, !2395}
!2403 = distinct !{!2403, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2404 = distinct !{!2404, !2403, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2405 = !{!2404}
!2406 = distinct !{!2406, i1 true, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE13capturing_putBG_"}
!2407 = distinct !{!2407, !2406, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE13capturing_putBG_: argument 0"}
!2408 = distinct !{!2408, i1 true, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE7get_mutBO_EB1k_"}
!2409 = distinct !{!2409, !2408, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE7get_mutBO_EB1k_: argument 0"}
!2410 = distinct !{!2410, i1 true, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE22replace_or_create_nodeBG_"}
!2411 = distinct !{!2411, !2410, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE22replace_or_create_nodeBG_: argument 1:thread"}
!2412 = distinct !{!2412, i1 true, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE22replace_or_create_nodeBG_"}
!2413 = distinct !{!2413, !2412, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE22replace_or_create_nodeBG_: argument 0"}
!2414 = distinct !{!2414, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0EB1m_"}
!2415 = distinct !{!2415, !2414, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0EB1m_: argument 0"}
!2416 = distinct !{!2416, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!2417 = distinct !{!2417, !2416, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!2418 = distinct !{!2418, !2414, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0EB1m_: argument 1"}
!2419 = distinct !{!2419, !2416, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!2420 = distinct !{!2420, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2421 = distinct !{!2421, !2420, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2422 = distinct !{!2422, i1 true, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1R_E0E0B1o_"}
!2423 = distinct !{!2423, !2422, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1R_E0E0B1o_: argument 0"}
!2424 = distinct !{!2424, !2412, !"_RNvMs9_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEE22replace_or_create_nodeBG_: argument 1"}
!2425 = distinct !{!2425, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0EB1m_"}
!2426 = distinct !{!2426, !2425, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0EB1m_: argument 0"}
!2427 = distinct !{!2427, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!2428 = distinct !{!2428, !2427, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!2429 = distinct !{!2429, i1 true, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE12remove_entryBO_EB1k_"}
!2430 = distinct !{!2430, !2429, !"_RINvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB6_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBR_8LruEntryB1g_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1k_11wait_handle10WaitHandleEEEE12remove_entryBO_EB1k_: argument 0"}
!2431 = distinct !{!2431, !2425, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0EB1m_: argument 1"}
!2432 = distinct !{!2432, !2427, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!2433 = distinct !{!2433, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2434 = distinct !{!2434, !2433, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2435 = distinct !{!2435, i1 true, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1R_E0E0B1o_"}
!2436 = distinct !{!2436, !2435, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1R_E0E0B1o_: argument 0"}
!2437 = distinct !{!2437, i1 true, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE6removeB1l_"}
!2438 = distinct !{!2438, !2437, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE6removeB1l_: argument 1"}
!2439 = distinct !{!2439, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner5erase"}
!2440 = distinct !{!2440, !2439, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!2441 = distinct !{!2441, !2437, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE6removeB1l_: argument 0"}
!2442 = distinct !{!2442, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2443 = distinct !{!2443, !2442, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2444 = distinct !{!2444, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2445 = distinct !{!2445, !2444, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2446 = distinct !{!2446, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_"}
!2447 = distinct !{!2447, !2446, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_: argument 0"}
!2448 = distinct !{!2448, i1 true, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBH_"}
!2449 = distinct !{!2449, !2448, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBH_: argument 0"}
!2450 = distinct !{!2450, i1 true, !"_RNvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB5_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBQ_8LruEntryB1f_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1j_11wait_handle10WaitHandleEEEE6insertB1j_"}
!2451 = distinct !{!2451, !2450, !"_RNvMs3_NtCs25YkazkrsH5_9hashbrown3mapINtB5_7HashMapINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBQ_8LruEntryB1f_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1j_11wait_handle10WaitHandleEEEE6insertB1j_: argument 0"}
!2452 = distinct !{!2452, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0NCINvB4w_11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_"}
!2453 = distinct !{!2453, !2452, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0NCINvB4w_11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_: argument 0"}
!2454 = distinct !{!2454, i1 true, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_"}
!2455 = distinct !{!2455, !2454, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_: argument 0"}
!2456 = distinct !{!2456, !2452, !"_RINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB6_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBT_8LruEntryB1i_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1m_11wait_handle10WaitHandleEEEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1P_E0NCINvB4w_11make_hasherBQ_B1P_NtNtB8_6hasher18DefaultHashBuilderE0EB1m_: argument 1"}
!2457 = distinct !{!2457, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2458 = distinct !{!2458, !2457, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2459 = distinct !{!2459, i1 true, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE22insert_tagged_at_indexB1l_"}
!2460 = distinct !{!2460, !2459, !"_RNvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEE22insert_tagged_at_indexB1l_: argument 0"}
!2461 = distinct !{!2461, i1 true, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1R_E0NCINvB4y_11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_"}
!2462 = distinct !{!2462, !2461, !"_RNCINvMs6_NtCs25YkazkrsH5_9hashbrown3rawINtB8_8RawTableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBV_8LruEntryB1k_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1o_11wait_handle10WaitHandleEEEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1R_E0NCINvB4y_11make_hasherBS_B1R_NtNtBa_6hasher18DefaultHashBuilderE0E0B1o_: argument 0"}
!2463 = distinct !{!2463, i1 true, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner21record_item_insert_at"}
!2464 = distinct !{!2464, !2463, !"_RNvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB5_13RawTableInner21record_item_insert_at: argument 0"}
!2465 = distinct !{!2465, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEEEBG_"}
!2466 = distinct !{!2466, !2465, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtBG_11wait_handle10WaitHandleEEEBG_: argument 0"}
!2467 = distinct !{!2467, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_"}
!2468 = distinct !{!2468, !2467, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_: argument 0"}
!2469 = distinct !{!2469, i1 true, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBH_"}
!2470 = distinct !{!2470, !2469, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBH_: argument 0"}
!2471 = distinct !{!2471, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_"}
!2472 = distinct !{!2472, !2471, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_: argument 0"}
!2473 = distinct !{!2473, i1 true, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBH_"}
!2474 = distinct !{!2474, !2473, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBH_: argument 0"}
!2475 = !{!2407}
!2476 = !{!2409, !2407}
end_hunk_2
