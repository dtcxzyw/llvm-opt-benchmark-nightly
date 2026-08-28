Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/html5ever-7c94b86f9147eabc.html5ever.8469159039506d9f-cgu.3?download=true
inline.NumInlined: 68
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsbmOI1VUejFP_9html5ever:bb.a
  br i1 %i.f, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.bk = and i64 %i.d, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr i8, ptr %i.c, i64 %i.bl
  %i.bn = trunc i64 %i.d to i1
  br i1 %i.bn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !25, !noundef !7
  %i.bq = zext i32 %i.bp to i64
  br label %bb.p

bb.o:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.01.0.i.i.i = phi i64 [ %i.bq, %bb.n ], [ 0, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i: ; preds = %.thread, %bb.p, %bb.o
  %i.bu = phi i64 [ %i.aa, %bb.p ], [ %i.aa, %bb.o ], [ 0, %.thread ]
  %i.bv = phi i64 [ %i.bj, %bb.p ], [ %i.bj, %bb.o ], [ 0, %.thread ] ; 2 uses
  %.sroa.0.0.i3.i = phi ptr [ %i.bt, %bb.p ], [ %i.br, %bb.o ], [ inttoptr (i64 1 to ptr), %.thread ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.bx = icmp eq i32 %3, 0
  %i.by = inttoptr i64 %i.bv to ptr
  %i.bz = select i1 %i.bx, ptr inttoptr (i64 15 to ptr), ptr %i.by
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 1 %i.bw, i64 range(i64 0, 9) %i.bv, i1 false), !noalias !32
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsbmOI1VUejFP_9html5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsbmOI1VUejFP_9html5ever.exit: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i
  %.sroa.5.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %.sroa.0.07 = phi ptr [ %i.bz, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsbmOI1VUejFP_9html5ever.exit.i ], [ %i.bi, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.07, ptr %i.ca, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16, %bb.r, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsbmOI1VUejFP_9html5ever.exit
  %.sink = phi i8 [ 1, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16 ], [ 1, %bb.r ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsbmOI1VUejFP_9html5ever.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %.thread23, %.thread, %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.cb, align 1
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 6 uses
  %i.i = icmp eq ptr %i.g, inttoptr (i64 15 to ptr) ; 3 uses
  %i.j = icmp ult ptr %i.g, inttoptr (i64 9 to ptr) ; 8 uses
  %i.k = and i64 %i.h, 1
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  %i.n = trunc i64 %i.h to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %.sroa.01.0.i.i = select i1 %i.n, i64 %i.q, i64 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = zext i32 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i ; 4 uses
  %. = select i1 %i.j, i64 %i.h, i64 %i.u         ; 8 uses
  %.sroa.4.0.i = select i1 %i.i, i64 0, i64 %.    ; 2 uses
  %.139 = select i1 %i.j, ptr %i.s, ptr %i.v      ; 4 uses
  %.sroa.0.0.i = select i1 %i.i, ptr inttoptr (i64 1 to ptr), ptr %.139
  %i.w = getelementptr inbounds nuw i8, ptr %.139, i64 %.
  %.not184 = icmp ult i64 %.sroa.4.0.i, 7
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sink.sroa.gep194 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sink.sroa.gep195 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br i1 %.not184, label %.thread106, label %.lr.ph

bb.b:                                             ; preds = %.invoke167, %.invoke, %.thread120, %bb.x, %bb.s
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %1) #12
          to label %bb.af unwind label %bb.ae

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.y = phi i64 [ %i.bq, %.backedge ], [ 7, %bb.a ] ; 7 uses
  %.sroa.0.0185 = phi i64 [ %.sroa.0.0.be, %.backedge ], [ 0, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.0185 ; 7 uses
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !33, !noundef !7 ; 2 uses
  %i.ab = add i8 %i.aa, -65
  %i.ac = icmp ult i8 %i.ab, 26
  %i.ad = select i1 %i.ac, i8 32, i8 0
  %.sroa.012.0.i = or i8 %i.ad, %i.aa
  %i.ae = icmp eq i8 %.sroa.012.0.i, 99
  br i1 %i.ae, label %bb.c, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !33, !noundef !7 ; 2 uses
  %i.ah = add i8 %i.ag, -65
  %i.ai = icmp ult i8 %i.ah, 26
  %i.aj = select i1 %i.ai, i8 32, i8 0
  %.sroa.012.0.1.i = or i8 %i.aj, %i.ag
  %i.ak = icmp eq i8 %.sroa.012.0.1.i, 104
  br i1 %i.ak, label %bb.d, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !33, !noundef !7 ; 2 uses
  %i.an = add i8 %i.am, -65
  %i.ao = icmp ult i8 %i.an, 26
  %i.ap = select i1 %i.ao, i8 32, i8 0
  %.sroa.012.0.2.i = or i8 %i.ap, %i.am
  %i.aq = icmp eq i8 %.sroa.012.0.2.i, 97
  br i1 %i.aq, label %bb.e, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !33, !noundef !7 ; 2 uses
  %i.at = add i8 %i.as, -65
  %i.au = icmp ult i8 %i.at, 26
  %i.av = select i1 %i.au, i8 32, i8 0
  %.sroa.012.0.3.i = or i8 %i.av, %i.as
  %i.aw = icmp eq i8 %.sroa.012.0.3.i, 114
  br i1 %i.aw, label %bb.f, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !33, !noundef !7 ; 2 uses
  %i.az = add i8 %i.ay, -65
  %i.ba = icmp ult i8 %i.az, 26
  %i.bb = select i1 %i.ba, i8 32, i8 0
  %.sroa.012.0.4.i = or i8 %i.bb, %i.ay
  %i.bc = icmp eq i8 %.sroa.012.0.4.i, 115
  br i1 %i.bc, label %bb.g, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !33, !noundef !7 ; 2 uses
  %i.bf = add i8 %i.be, -65
  %i.bg = icmp ult i8 %i.bf, 26
  %i.bh = select i1 %i.bg, i8 32, i8 0
  %.sroa.012.0.5.i = or i8 %i.bh, %i.be
  %i.bi = icmp eq i8 %.sroa.012.0.5.i, 101
  br i1 %i.bi, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit: ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !33, !noundef !7 ; 2 uses
  %i.bl = add i8 %i.bk, -65
  %i.bm = icmp ult i8 %i.bl, 26
  %i.bn = select i1 %i.bm, i8 32, i8 0
  %.sroa.012.0.6.i = or i8 %i.bn, %i.bk
  %i.bo = icmp eq i8 %.sroa.012.0.6.i, 116
  br i1 %i.bo, label %bb.h, label %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread

_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread: ; preds = %bb.f, %bb.d, %bb.c, %bb.e, %bb.g, %.lr.ph, %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  %i.bp = add nuw i64 %.sroa.0.0185, 1
  br label %.backedge

.backedge:                                        ; preds = %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, %bb.k
  %.sroa.0.0.be = phi i64 [ %i.bp, %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ], [ %i.ca, %bb.k ] ; 3 uses
  %i.bq = add i64 %.sroa.0.0.be, 7                ; 2 uses
  %i.br = icmp ugt i64 %.sroa.0.0.be, -8
  %.not = icmp ugt i64 %i.bq, %.sroa.4.0.i
  %or.cond = or i1 %i.br, %.not
  br i1 %or.cond, label %.thread106, label %.lr.ph

bb.h:                                             ; preds = %_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  br i1 %i.i, label %.invoke167, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = icmp ugt i64 %i.y, %.
  br i1 %i.bs, label %.invoke167, label %bb.j, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.bt = icmp samesign eq i64 %i.y, %.
  br i1 %i.bt, label %.thread106, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.139, i64 %i.y
  %gepdiff = sub nuw nsw i64 %., %i.y
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.01.018.i.i.i = phi i64 [ %i.by, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bx, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i ], [ %i.bu, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !37, !noalias !40, !noundef !7
  switch i8 %i.bw, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_.exit.thread [
    i8 9, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 10, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 13, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.by = add nuw i64 %.sroa.01.018.i.i.i, 1
  %i.bz = icmp eq ptr %i.bx, %i.w
  br i1 %i.bz, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_.exit.thread, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_.exit.thread: ; preds = %.lr.ph.i.i.i, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %gepdiff, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i ], [ %.sroa.01.018.i.i.i, %.lr.ph.i.i.i ]
  %i.ca = add i64 %.sroa.0.1.i.i, %i.y            ; 5 uses
  %i.cb = icmp ult i64 %i.ca, %.
  br i1 %i.cb, label %bb.k, label %.thread106

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %.139, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !7
  %i.ce = icmp eq i8 %i.cd, 61
  br i1 %i.ce, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k
  %i.cf = add nuw nsw i64 %i.ca, 1                ; 6 uses
  %spec.select = select i1 %i.j, i64 %i.h, i64 %i.u ; 5 uses
  %spec.select169 = select i1 %i.j, ptr %i.s, ptr %i.v ; 2 uses
  %.not47 = icmp ult i64 %i.ca, %spec.select
  br i1 %.not47, label %bb.m, label %.invoke167, !prof !48

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %spec.select169, i64 %spec.select
  %i.ch = icmp samesign eq i64 %i.cf, %spec.select
  br i1 %i.ch, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit.thread, label %.lr.ph.preheader.i.i.i66

.lr.ph.preheader.i.i.i66:                         ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select169, i64 %i.cf
  %gepdiff121 = sub nuw nsw i64 %spec.select, %i.cf
  br label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i, %.lr.ph.preheader.i.i.i66
  %.sroa.01.018.i.i.i69 = phi i64 [ %i.cm, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i66 ] ; 2 uses
  %i.cj = phi ptr [ %i.cl, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i ], [ %i.ci, %.lr.ph.preheader.i.i.i66 ] ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !49, !noalias !52, !noundef !7
  switch i8 %i.ck, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit [
    i8 9, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 10, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 13, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i: ; preds = %.lr.ph.i.i.i68, %.lr.ph.i.i.i68, %.lr.ph.i.i.i68, %.lr.ph.i.i.i68, %.lr.ph.i.i.i68
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  %i.cm = add nuw i64 %.sroa.01.018.i.i.i69, 1
  %i.cn = icmp eq ptr %i.cl, %i.cg
  br i1 %i.cn, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit, label %.lr.ph.i.i.i68

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i, %.lr.ph.i.i.i68
  %.sroa.0.1.i.i70 = phi i64 [ %gepdiff121, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_.exit.i.i.i ], [ %.sroa.01.018.i.i.i69, %.lr.ph.i.i.i68 ]
  %i.co = add i64 %.sroa.0.1.i.i70, %i.cf
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit.thread

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit.thread: ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit, %bb.m
  %i.cp = phi i64 [ %i.co, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit ], [ %i.cf, %bb.m ] ; 13 uses
  %spec.select170 = select i1 %i.j, i64 %i.h, i64 %i.u
  %i.cq = icmp ult i64 %i.cp, %spec.select170
  br i1 %i.cq, label %bb.n, label %.thread106

bb.n:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit.thread
  %spec.select171 = select i1 %i.j, ptr %i.s, ptr %i.v
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select171, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !7 ; 2 uses
  %spec.select172 = select i1 %i.j, i64 %i.h, i64 %i.u ; 10 uses
  %spec.select173 = select i1 %i.j, ptr %i.s, ptr %i.v ; 4 uses
  switch i8 %i.cs, label %bb.o [
    i8 34, label %bb.p
    i8 39, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ct = icmp ugt i64 %i.cp, %spec.select172
  br i1 %i.ct, label %.invoke167, label %bb.w, !prof !21

bb.p:                                             ; preds = %bb.n, %bb.n
  %i.cu = add nuw nsw i64 %i.cp, 1                ; 4 uses
  %.not48 = icmp ult i64 %i.cp, %spec.select172
  br i1 %.not48, label %bb.q, label %.invoke167, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %spec.select173, i64 %spec.select172
  %gepdiff122 = sub nuw nsw i64 %spec.select172, %i.cu
  %i.cw = icmp samesign eq i64 %i.cu, %spec.select172
  br i1 %i.cw, label %.thread106, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %spec.select173, i64 %i.cu
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.r
  %.sroa.02.08.i = phi i64 [ %i.db, %bb.r ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.cy = phi ptr [ %i.da, %bb.r ], [ %i.cx, %.lr.ph.i.preheader ] ; 2 uses
  %.val6.i = load i8, ptr %i.cy, align 1, !noalias !60, !noundef !7
  %i.cz = icmp eq i8 %.val6.i, %i.cs
  br i1 %i.cz, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 2 uses
  %i.db = add nuw i64 %.sroa.02.08.i, 1
  %i.dc = icmp eq ptr %i.da, %i.cv
  br i1 %i.dc, label %.thread106, label %.lr.ph.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.dd = icmp ult i64 %.sroa.02.08.i, %gepdiff122
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = trunc nuw i64 %i.cp to i32
  %i.df = add nuw i32 %i.de, 1
  %i.dg = trunc i64 %.sroa.02.08.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %1, i32 noundef %i.df, i32 noundef %i.dg)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.dh = load i8, ptr %i.f, align 8, !range !67, !alias.scope !64, !noalias !68, !noundef !7
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.u, label %bb.v, !prof !21

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  br label %.invoke

.invoke:                                          ; preds = %bb.ac, %bb.z, %bb.u
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.ac ], [ %.sink.sroa.gep194, %bb.z ], [ %.sink.sroa.gep195, %bb.u ]
  %.sink176 = phi ptr [ %i.c, %bb.ac ], [ %i.b, %bb.z ], [ %i.a, %bb.u ] ; 2 uses
  %i.dj = load i8, ptr %.sink.sroa.phi, align 1, !range !67, !noalias !7, !noundef !7
  store i8 %i.dj, ptr %.sink176, align 1, !noalias !7
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %.sink176, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #11
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dk, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread106

bb.w:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.select173, i64 %spec.select172
  %gepdiff123 = sub nuw nsw i64 %spec.select172, %i.cp
  %i.dn = icmp samesign eq i64 %i.cp, %spec.select172
  br i1 %i.dn, label %.thread120, label %.lr.ph.i85.preheader

.lr.ph.i85.preheader:                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select173, i64 %i.cp
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.lr.ph.i85.preheader, %_RNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0B5_.exit.i
  %.sroa.02.08.i86 = phi i64 [ %i.dr, %_RNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0B5_.exit.i ], [ 0, %.lr.ph.i85.preheader ] ; 3 uses
  %i.dp = phi ptr [ %i.dq, %_RNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0B5_.exit.i ], [ %i.do, %.lr.ph.i85.preheader ] ; 2 uses
  %.val.i = load i8, ptr %i.dp, align 1, !noalias !71, !noundef !7
  switch i8 %.val.i, label %_RNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0B5_.exit.i [
    i8 9, label %bb.x
    i8 10, label %bb.x
    i8 12, label %bb.x
    i8 13, label %bb.x
    i8 32, label %bb.x
    i8 59, label %bb.x
  ]

_RNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0B5_.exit.i: ; preds = %.lr.ph.i85
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.dr = add nuw i64 %.sroa.02.08.i86, 1
  %i.ds = icmp eq ptr %i.dq, %i.dm
  br i1 %i.ds, label %.thread120, label %.lr.ph.i85

.invoke167:                                       ; preds = %bb.i, %bb.h, %bb.o, %bb.p, %bb.l
  %i.dt = phi i64 [ %i.cu, %bb.p ], [ %i.cf, %bb.l ], [ %i.cp, %bb.o ], [ %i.y, %bb.h ], [ %i.y, %bb.i ]
  %i.du = phi i64 [ %spec.select172, %bb.p ], [ %spec.select, %bb.l ], [ %spec.select172, %bb.o ], [ %., %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.dv = phi ptr [ @5, %bb.p ], [ @7, %bb.l ], [ @6, %bb.o ], [ @8, %bb.h ], [ @8, %bb.i ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.dt, i64 noundef %i.du, i64 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv) #13
          to label %.cont168 unwind label %bb.b

.cont168:                                         ; preds = %.invoke167
  unreachable

bb.x:                                             ; preds = %.lr.ph.i85, %.lr.ph.i85, %.lr.ph.i85, %.lr.ph.i85, %.lr.ph.i85, %.lr.ph.i85
  %i.dw = icmp ult i64 %.sroa.02.08.i86, %gepdiff123
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = trunc nuw i64 %i.cp to i32
  %i.dy = trunc i64 %.sroa.02.08.i86 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1, i32 noundef %i.dx, i32 noundef %i.dy)
          to label %bb.y unwind label %bb.b

.thread120:                                       ; preds = %_RNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0B5_.exit.i, %bb.w
  %i.dz = trunc nuw i64 %i.cp to i32
  %i.ea = sub nsw i64 %., %i.cp
  %i.eb = trunc i64 %i.ea to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %1, i32 noundef %i.dz, i32 noundef %i.eb)
          to label %bb.ab unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.ec = load i8, ptr %i.e, align 8, !range !67, !alias.scope !74, !noalias !77, !noundef !7
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.z, label %bb.aa, !prof !21

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79
  br label %.invoke

bb.aa:                                            ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ee, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread106

bb.ab:                                            ; preds = %.thread120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.eg = load i8, ptr %i.d, align 8, !range !67, !alias.scope !80, !noalias !83, !noundef !7
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ac, label %bb.ad, !prof !21

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85
  br label %.invoke

bb.ad:                                            ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ei, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread106

.thread106:                                       ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_.exit.thread, %bb.j, %.backedge, %bb.r, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit.thread, %bb.q, %bb.a, %bb.v, %bb.ad, %bb.aa
  %.sink187 = phi i64 [ 1, %bb.v ], [ 1, %bb.ad ], [ 1, %bb.aa ], [ 0, %bb.a ], [ 0, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_.exit.thread ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %.backedge ], [ 0, %bb.j ], [ 0, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_.exit.thread ]
  store i64 %.sink187, ptr %0, align 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  ret void

bb.ae:                                            ; preds = %bb.b
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

bb.af:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvNtCsldpiDtalS19_7tendril4futf8classify(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 4294967296) %2, i64 noundef range(i64 0, 4294967295) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp samesign ult i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 11 uses
  %i.b = load i8, ptr %i.a, align 1, !noundef !7  ; 8 uses
  %i.c = and i8 %i.b, -64
  switch i8 %i.c, label %bb.d [
    i8 -64, label %bb.e
    i8 -128, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.b
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.y, label %bb.z

bb.c:                                             ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.e = zext i8 %i.b to i32
  store i16 0, ptr %0, align 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %.sroa.011.sroa.5.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ax

bb.e:                                             ; preds = %bb.b
  %i.f = and i8 %i.b, -8
  %i.g = icmp eq i8 %i.f, -16
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = and i8 %i.b, -16
  %i.i = icmp eq i8 %i.h, -32
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.j = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.h ]
  %i.k = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.h ]
  %.sroa.13.0 = phi i64 [ 3, %bb.f ], [ 4, %bb.e ], [ 2, %bb.h ] ; 5 uses
  %i.l = sub nuw nsw i64 %2, %3                   ; 3 uses
  %.not88 = icmp samesign ult i64 %i.l, %.sroa.13.0
  br i1 %.not88, label %bb.j, label %.lr.ph172

bb.h:                                             ; preds = %bb.f
  %i.m = and i8 %i.b, -32
  %i.n = icmp eq i8 %i.m, -64
  br i1 %i.n, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.j:                                             ; preds = %bb.g
  %i.o = sub nuw nsw i64 %.sroa.13.0, %i.l
  store i16 3, ptr %0, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.623.0..sroa_idx, align 8
  br label %bb.ax

.lr.ph172:                                        ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.q = getelementptr i8, ptr %i.a, i64 %.sroa.13.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %.val.i = load i8, ptr %i.p, align 1, !noalias !86, !noundef !7
  %cond.i.i = icmp slt i8 %.val.i, -64
  br i1 %cond.i.i, label %bb.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit

bb.k:                                             ; preds = %.lr.ph172
  br i1 %i.j, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.val.i.1 = load i8, ptr %i.r, align 1, !noalias !86, !noundef !7
  %cond.i.i.1 = icmp slt i8 %.val.i.1, -64
  br i1 %cond.i.i.1, label %bb.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit

bb.m:                                             ; preds = %bb.l
  br i1 %i.k, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.val.i.2 = load i8, ptr %i.s, align 1, !noalias !86, !noundef !7
  %cond.i.i.2 = icmp slt i8 %.val.i.2, -64
  br i1 %cond.i.i.2, label %._crit_edge, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit: ; preds = %bb.n, %bb.l, %.lr.ph172
  store i16 -1, ptr %0, align 8
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.n, %bb.m, %bb.k
  %i.t = load i8, ptr %i.p, align 1, !alias.scope !89, !noalias !92, !noundef !7
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 3 uses
  switch i64 %.sroa.13.0, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
  ]

default.unreachable:                              ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101.thread, %._crit_edge
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.w = and i8 %i.b, 31                          ; 2 uses
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 6
  %i.z = or disjoint i32 %i.y, %i.v
  %i.aa = icmp samesign ult i8 %i.w, 2
  br i1 %i.aa, label %bb.x, label %bb.r

bb.p:                                             ; preds = %._crit_edge
  %i.ab = and i8 %i.b, 15                         ; 2 uses
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 12
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = or disjoint i32 %i.ae, %i.ad            ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !89, !noalias !92, !noundef !7
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj            ; 3 uses
  %i.al = icmp samesign ult i32 %i.af, 2048
  br i1 %i.al, label %bb.x, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  %i.am = and i8 %i.b, 7
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 18
  %i.ap = shl nuw nsw i32 %i.v, 12
  %i.aq = or disjoint i32 %i.ap, %i.ao            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !89, !noalias !92, !noundef !7
  %i.at = and i8 %i.as, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !89, !noalias !92, !noundef !7
  %i.ay = and i8 %i.ax, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.av, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aq
  %i.bc = icmp samesign ult i32 %i.aq, 65536
  br i1 %i.bc, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q, %bb.o
  %.sroa.0.0.i90 = phi i32 [ %i.z, %bb.o ], [ %i.ak, %bb.t ], [ %i.bb, %bb.q ] ; 3 uses
  %i.bd = xor i32 %.sroa.0.0.i90, 55296
  %i.be = add nsw i32 %i.bd, -1114112
  %i.bf = icmp ult i32 %i.be, -1112064
  br i1 %i.bf, label %bb.x, label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bg = and i32 %i.af, 64512
  %or.cond3.i92 = icmp eq i32 %i.bg, 55296
  br i1 %or.cond3.i92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = icmp samesign ugt i32 %i.af, 56319
  %i.bi = icmp samesign ult i8 %i.ab, 14
  %or.cond5.i93 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond5.i93, label %bb.v, label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.bj = trunc nuw i32 %i.ak to i16
  %i.bk = add nsw i16 %i.bj, 10240
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97

bb.v:                                             ; preds = %bb.t
  %i.bl = trunc nuw i32 %i.ak to i16
  %i.bm = add nsw i16 %i.bl, 9216
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97

bb.w:                                             ; preds = %bb.r
  %i.bn = icmp samesign ult i32 %.sroa.0.0.i90, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97

_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97:  ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.14.0 = phi i32 [ undef, %bb.v ], [ undef, %bb.u ], [ %.sroa.0.0.i90, %bb.w ]
  %.sroa.12.0 = phi i16 [ %i.bm, %bb.v ], [ %i.bk, %bb.u ], [ undef, %bb.w ]
  %.sroa.0.0 = phi i16 [ 2, %bb.v ], [ 1, %bb.u ], [ 0, %bb.w ]
  store i16 %.sroa.0.0, ptr %0, align 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.12.0, ptr %.sroa.016.sroa.4.0..sroa_idx, align 2
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.14.0, ptr %.sroa.016.sroa.5.0..sroa_idx, align 4
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.619.0..sroa_idx, align 8
  br label %bb.ax

bb.x:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.r
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.y:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.bo = add nuw nsw i64 %3, 1
  store i16 4, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bo, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.643.0..sroa_idx, align 8
  br label %bb.ax

bb.z:                                             ; preds = %.preheader.preheader
  %i.bp = add nsw i64 %3, -1                      ; 5 uses
  %i.bq = icmp samesign ult i64 %i.bp, %2
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !noundef !7 ; 2 uses
  %i.bt = and i8 %i.bs, -64
  switch i8 %i.bt, label %bb.aa [
    i8 -64, label %bb.ab
    i8 -128, label %.preheader.1
  ]

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.z
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.ab:                                            ; preds = %bb.ad, %bb.ac, %bb.z
  %.lcssa161 = phi i64 [ %i.bp, %bb.z ], [ %i.by, %bb.ac ], [ %i.ce, %bb.ad ] ; 4 uses
  %.lcssa158 = phi i64 [ 1, %bb.z ], [ 2, %bb.ac ], [ 3, %bb.ad ] ; 2 uses
  %.lcssa155 = phi i8 [ %i.bs, %bb.z ], [ %i.cb, %bb.ac ], [ %i.ch, %bb.ad ] ; 6 uses
  %.sroa.027.0.lcssa153 = phi i64 [ %3, %bb.z ], [ %i.bp, %bb.ac ], [ %i.by, %bb.ad ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa161 ; 7 uses
  %i.bv = and i8 %.lcssa155, -8
  %i.bw = icmp eq i8 %i.bv, -16
  br i1 %i.bw, label %bb.ag, label %bb.af

.preheader.1:                                     ; preds = %bb.z
  %i.bx = icmp eq i64 %i.bp, 0
  br i1 %i.bx, label %bb.y, label %bb.ac

bb.ac:                                            ; preds = %.preheader.1
  %i.by = add nsw i64 %3, -2                      ; 5 uses
  %i.bz = icmp samesign ult i64 %i.by, %2
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !7 ; 2 uses
  %i.cc = and i8 %i.cb, -64
  switch i8 %i.cc, label %bb.aa [
    i8 -64, label %bb.ab
    i8 -128, label %.preheader.2
  ]

.preheader.2:                                     ; preds = %bb.ac
  %i.cd = icmp eq i64 %i.by, 0
  br i1 %i.cd, label %bb.y, label %bb.ad

bb.ad:                                            ; preds = %.preheader.2
  %i.ce = add nsw i64 %3, -3                      ; 3 uses
  %i.cf = icmp samesign ult i64 %i.ce, %2
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !7 ; 2 uses
  %i.ci = and i8 %i.ch, -64
  switch i8 %i.ci, label %bb.aa [
    i8 -64, label %bb.ab
    i8 -128, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.af:                                            ; preds = %bb.ab
  %i.cj = and i8 %.lcssa155, -16
  %i.ck = icmp eq i8 %i.cj, -32
  br i1 %i.ck, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af, %bb.ab
  %.sroa.1355.0 = phi i64 [ 3, %bb.af ], [ 4, %bb.ab ], [ 2, %bb.ah ] ; 6 uses
  %i.cl = sub nuw nsw i64 %2, %.lcssa161          ; 3 uses
  %.not86 = icmp samesign ult i64 %i.cl, %.sroa.1355.0
  br i1 %.not86, label %bb.aj, label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.cm = and i8 %.lcssa155, -32
  %i.cn = icmp eq i8 %i.cm, -64
  br i1 %i.cn, label %bb.ag, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.aj:                                            ; preds = %bb.ag
  %i.co = sub nuw nsw i64 %3, %.lcssa161
  %i.cp = sub nuw nsw i64 %.sroa.1355.0, %i.cl
  store i16 3, ptr %0, align 8
  %.sroa.064.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %.sroa.064.sroa.5.0..sroa_idx, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bu, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cl, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.co, ptr %.sroa.667.0..sroa_idx, align 8
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ag
  %i.cq = icmp samesign ult i64 %.lcssa158, %.sroa.1355.0
  br i1 %i.cq, label %.lr.ph, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101.thread

.lr.ph:                                           ; preds = %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.1355.0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.lcssa158
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cu, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101.thread, label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.al
  %i.cv = phi ptr [ %i.cs, %.lr.ph ], [ %i.ct, %bb.al ] ; 2 uses
  %.val.i99 = load i8, ptr %i.cv, align 1, !noalias !94, !noundef !7
  %cond.i.i100 = icmp slt i8 %.val.i99, -64
  br i1 %cond.i.i100, label %bb.al, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101.thread: ; preds = %bb.al, %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.027.0.lcssa153
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !97, !noalias !100, !noundef !7
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i32               ; 3 uses
  switch i64 %.sroa.1355.0, label %default.unreachable [
    i64 2, label %bb.an
    i64 3, label %bb.ao
    i64 4, label %bb.ap
  ]

bb.an:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101.thread
  %i.da = and i8 %.lcssa155, 31                   ; 2 uses
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 6
  %i.dd = or disjoint i32 %i.dc, %i.cz
  %i.de = icmp samesign ult i8 %i.da, 2
  br i1 %i.de, label %bb.aw, label %bb.aq

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101.thread
  %i.df = and i8 %.lcssa155, 15                   ; 2 uses
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 12
  %i.di = shl nuw nsw i32 %i.cz, 6
  %i.dj = or disjoint i32 %i.di, %i.dh            ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !97, !noalias !100, !noundef !7
  %i.dm = and i8 %i.dl, 63
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dj, %i.dn            ; 3 uses
  %i.dp = icmp samesign ult i32 %i.dj, 2048
  br i1 %i.dp, label %bb.aw, label %bb.ar

bb.ap:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101.thread
  %i.dq = and i8 %.lcssa155, 7
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 18
  %i.dt = shl nuw nsw i32 %i.cz, 12
  %i.du = or disjoint i32 %i.dt, %i.ds            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !97, !noalias !100, !noundef !7
  %i.dx = and i8 %i.dw, 63
  %i.dy = zext nneg i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 6
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !97, !noalias !100, !noundef !7
  %i.ec = and i8 %i.eb, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.dz, %i.ed
  %i.ef = or disjoint i32 %i.ee, %i.du
  %i.eg = icmp samesign ult i32 %i.du, 65536
  br i1 %i.eg, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap, %bb.an
  %.sroa.0.0.i = phi i32 [ %i.dd, %bb.an ], [ %i.do, %bb.as ], [ %i.ef, %bb.ap ] ; 3 uses
  %i.eh = xor i32 %.sroa.0.0.i, 55296
  %i.ei = add nsw i32 %i.eh, -1114112
  %i.ej = icmp ult i32 %i.ei, -1112064
  br i1 %i.ej, label %bb.aw, label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.ek = and i32 %i.dj, 64512
  %or.cond3.i = icmp eq i32 %i.ek, 55296
  br i1 %or.cond3.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.el = icmp samesign ugt i32 %i.dj, 56319
  %i.em = icmp samesign ult i8 %i.df, 14
  %or.cond5.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond5.i, label %bb.au, label %bb.aq

bb.at:                                            ; preds = %bb.ar
  %i.en = trunc nuw i32 %i.do to i16
  %i.eo = add nsw i16 %i.en, 10240
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit

bb.au:                                            ; preds = %bb.as
  %i.ep = trunc nuw i32 %i.do to i16
  %i.eq = add nsw i16 %i.ep, 9216
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit

bb.av:                                            ; preds = %bb.aq
  %i.er = icmp samesign ult i32 %.sroa.0.0.i, 1114112
  tail call void @llvm.assume(i1 %i.er)
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101: ; preds = %bb.am
  store i16 -1, ptr %0, align 8
  br label %bb.ax

_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit:    ; preds = %bb.av, %bb.au, %bb.at
  %.sroa.14104.0 = phi i32 [ undef, %bb.au ], [ undef, %bb.at ], [ %.sroa.0.0.i, %bb.av ]
  %.sroa.12103.0 = phi i16 [ %i.eq, %bb.au ], [ %i.eo, %bb.at ], [ undef, %bb.av ]
  %.sroa.0102.0 = phi i16 [ 2, %bb.au ], [ 1, %bb.at ], [ 0, %bb.av ]
  %i.es = sub nuw nsw i64 %3, %.lcssa161
  store i16 %.sroa.0102.0, ptr %0, align 8
  %.sroa.060.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.12103.0, ptr %.sroa.060.sroa.4.0..sroa_idx, align 2
  %.sroa.060.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.14104.0, ptr %.sroa.060.sroa.5.0..sroa_idx, align 4
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bu, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1355.0, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.es, ptr %.sroa.663.0..sroa_idx, align 8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ao, %bb.ap, %bb.an, %bb.aq
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aa, %bb.ai, %bb.aj, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit101, %bb.aw, %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit, %bb.d, %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97, %bb.j, %bb.i, %bb.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever.exit, %bb.ae, %bb.y, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsldpiDtalS19_7tendril7tendrilNtB5_15SubtendrilErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !67, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 16, i64 11
  %.1 = select i1 %i.b, ptr @11, ptr @10
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBI_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { inlinehint }
attributes #11 = { noinline noreturn }
attributes #12 = { cold }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever: argument 0"}
!6 = distinct !{!6, !"_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbmOI1VUejFP_9html5ever"}
!7 = !{}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!10 = distinct !{!10, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!13 = distinct !{!13, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq: argument 0"}
!16 = distinct !{!16, !"_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq"}
!17 = !{i16 -1, i16 5}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsbmOI1VUejFP_9html5ever: argument 0"}
!20 = distinct !{!20, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsbmOI1VUejFP_9html5ever"}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!23, !19}
!23 = distinct !{!23, !24, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!24 = distinct !{!24, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!25 = !{!26, !19}
!26 = distinct !{!26, !27, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever: argument 0"}
!27 = distinct !{!27, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsbmOI1VUejFP_9html5ever"}
!28 = !{!29, !31, !19}
!29 = distinct !{!29, !30, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever: argument 0"}
!30 = distinct !{!30, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever"}
!31 = distinct !{!31, !30, !"_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E6inlineCsbmOI1VUejFP_9html5ever: argument 1"}
!32 = !{!29, !19}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple: argument 0"}
!35 = distinct !{!35, !"_RNvMNtNtCskKLDkoKarTP_4core5slice5asciiSh27eq_ignore_ascii_case_simple"}
!36 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_: argument 0"}
!39 = distinct !{!39, !"_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_"}
!40 = !{!41, !43, !44, !46}
!41 = distinct !{!41, !42, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3H_: argument 0"}
!42 = distinct !{!42, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3H_"}
!43 = distinct !{!43, !42, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3H_: argument 1"}
!44 = distinct !{!44, !45, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3U_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B36_5count0E0B4f_EB1J_: argument 0"}
!45 = distinct !{!45, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3U_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B36_5count0E0B4f_EB1J_"}
!46 = distinct !{!46, !47, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_: argument 0"}
!47 = distinct !{!47, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_element0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B36_5count0EB1J_"}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_: argument 0"}
!51 = distinct !{!51, !"_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2X_"}
!52 = !{!53, !55, !56, !58}
!53 = distinct !{!53, !54, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3H_: argument 0"}
!54 = distinct !{!54, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3H_"}
!55 = distinct !{!55, !54, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtBR_8adapters10take_whileINtB1L_9TakeWhileppEBL_8try_fold5checkRhjINtNtNtBa_3ops9try_trait17NeverShortCircuitjENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0NCINvMB2V_B2S_10wrap_mut_2jB2P_NCNvYIB2e_B3_B3B_EBL_5count0E0E0INtNtB2X_12control_flow11ControlFlowB2S_jEEB3H_: argument 1"}
!56 = distinct !{!56, !57, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3W_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B38_5count0E0B4h_EB1J_: argument 0"}
!57 = distinct !{!57, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3W_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B38_5count0E0B4h_EB1J_"}
!58 = distinct !{!58, !59, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_: argument 0"}
!59 = distinct !{!59, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B38_5count0EB1J_"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements0_0EB1M_: argument 0"}
!62 = distinct !{!62, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements0_0EB1M_"}
!63 = distinct !{!63, !62, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements0_0EB1M_: argument 1"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever: argument 1"}
!66 = distinct !{!66, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever"}
!67 = !{i8 0, i8 2}
!68 = !{!69}
!69 = distinct !{!69, !66, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever: argument 0"}
!70 = !{!69, !65}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0EB1M_: argument 0"}
!73 = distinct !{!73, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCsbmOI1VUejFP_9html5ever8encoding48extract_a_character_encoding_from_a_meta_elements1_0EB1M_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever: argument 1"}
!76 = distinct !{!76, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever: argument 0"}
!79 = !{!78, !75}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever: argument 1"}
!82 = distinct !{!82, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBM_3fmt4UTF8ENtBK_15SubtendrilErrorE6unwrapCsbmOI1VUejFP_9html5ever: argument 0"}
!85 = !{!84, !81}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever: argument 0"}
!88 = distinct !{!88, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RNvNtCsldpiDtalS19_7tendril4futf6decode: argument 1"}
!91 = distinct !{!91, !"_RNvNtCsldpiDtalS19_7tendril4futf6decode"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"_RNvNtCsldpiDtalS19_7tendril4futf6decode: argument 0"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever: argument 0"}
!96 = distinct !{!96, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsbmOI1VUejFP_9html5ever"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RNvNtCsldpiDtalS19_7tendril4futf6decode: argument 1"}
!99 = distinct !{!99, !"_RNvNtCsldpiDtalS19_7tendril4futf6decode"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"_RNvNtCsldpiDtalS19_7tendril4futf6decode: argument 0"}
end_hunk_0
