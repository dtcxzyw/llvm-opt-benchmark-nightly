Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.10?download=true
inline.NumInlined: 163
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCsa9sSWSfjDbm_4jiff9timestampNtB2_9Timestamp3now:bb.a
  %i.ab = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !101
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %common.resume unwind label %bb.h, !noalias !98

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !98
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.w, %bb.x, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.z, %bb.e ], [ %i.z, %bb.g ], [ %i.z, %bb.f ], [ %i.ah, %bb.l ], [ %i.ah, %bb.k ], [ %i.bi, %bb.x ], [ %i.bi, %bb.w ], [ %i.bi, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i: ; preds = %bb.d
  %i.ae = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.x, ptr noundef %i.y), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i

bb.i:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.t, align 8, !noalias !98, !noundef !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  store ptr %i.af, ptr %i.b, align 8, !noalias !98
  %i.ag = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 11)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i unwind label %bb.j, !noalias !98

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ai = icmp eq ptr %i.af, null
  br i1 %i.ai, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !110
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19
          to label %common.resume unwind label %bb.m, !noalias !98

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !98
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i: ; preds = %bb.i
  %i.am = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.af, ptr noundef %i.ag), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i

bb.n:                                             ; preds = %bb.b
  %i.an = load i64, ptr %i.t, align 8, !noalias !98, !noundef !11 ; 2 uses
  %i.ao = icmp eq i64 %i.an, -9223372036854775808
  br i1 %i.ao, label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread8.i, label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i, !prof !18

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread8.i: ; preds = %bb.n
  %i.ap = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_() #22
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i: ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !noalias !98, !noundef !11
  %i.as = sub nsw i64 0, %i.an
  %i.at = sub i32 0, %i.ar
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i: ; preds = %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread8.i, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i
  %i.au = phi ptr [ %i.ap, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread8.i ], [ %i.am, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i ], [ %i.ae, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !92
  br label %bb.u

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i: ; preds = %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i_crit_edge, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i
  %i.av = phi i32 [ %.pre7, %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i_crit_edge ], [ %i.at, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i ] ; 7 uses
  %i.aw = phi i64 [ %.pre, %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i_crit_edge ], [ %i.as, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !92
  %i.ax = add i64 %i.aw, 377705023201
  %or.cond.i.i.i = icmp ult i64 %i.ax, 631107230402
  br i1 %or.cond.i.i.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i
  %i.ay = add i32 %i.av, 999999999
  %or.cond1.i.i.i = icmp ult i32 %i.ay, 1999999999
  br i1 %or.cond1.i.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.az = icmp eq i64 %i.aw, -377705023201
  %i.ba = icmp slt i32 %i.av, 0
  %or.cond3.i.i.i = and i1 %i.az, %i.ba
  br i1 %or.cond3.i.i.i, label %bb.t, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  %i.bb = icmp eq i32 %i.av, 0
  %i.bc = icmp eq i64 %i.aw, 0
  %or.cond5.i.i.i = or i1 %i.bc, %i.bb
  br i1 %or.cond5.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff9timestamp9TimestampNtNtBL_5error5ErrorE6expectBL_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = call i64 @llvm.scmp.i64.i64(i64 %i.aw, i64 0)
  %i.be = call i64 @llvm.scmp.i64.i32(i32 %i.av, i32 0)
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff9timestamp9TimestampNtNtBL_5error5ErrorE6expectBL_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp slt i64 %i.aw, 0                   ; 2 uses
  %.sroa.07.0.v.i.i.i = select i1 %i.bg, i64 1, i64 -1
  %.sroa.07.0.i.i.i = add nsw i64 %.sroa.07.0.v.i.i.i, %i.aw
  %.sroa.021.0.v.i.i.i = select i1 %i.bg, i32 -1000000000, i32 1000000000
  %.sroa.021.0.i.i.i = add nsw i32 %.sroa.021.0.v.i.i.i, %i.av
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff9timestamp9TimestampNtNtBL_5error5ErrorE6expectBL_.exit

bb.t:                                             ; preds = %bb.p, %bb.o, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i
  %.sroa.5.0.ph.i.i = phi i32 [ 7167, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i ], [ 7167, %bb.p ], [ 5887, %bb.o ]
  %i.bh = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5.0.ph.i.i) #19, !noalias !120
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i
  %.sroa.4.0.in = phi ptr [ %i.au, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i ], [ %i.bh, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  store ptr %.sroa.4.0.in, ptr %i.a, align 8, !noalias !123
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
          to label %bb.y unwind label %bb.v, !noalias !123

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !132, !noalias !123, !noundef !11 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !133
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.x, label %common.resume

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #19
          to label %common.resume unwind label %bb.z, !noalias !123

bb.y:                                             ; preds = %bb.u
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !123
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff9timestamp9TimestampNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.9.0.ph = phi i32 [ %.sroa.021.0.i.i.i, %bb.s ], [ %i.av, %bb.r ], [ %i.av, %bb.q ]
  %.sroa.4.0.ph = phi i64 [ %.sroa.07.0.i.i.i, %bb.s ], [ %i.aw, %bb.r ], [ %i.aw, %bb.q ]
  %i.bo = insertvalue { i64, i32 } poison, i64 %.sroa.4.0.ph, 0
  %i.bp = insertvalue { i64, i32 } %i.bo, i32 %.sroa.9.0.ph, 1
  ret { i64, i32 } %i.bp
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB2_12ParsedOffset16to_pieces_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 9)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %1, align 4, !range !138, !noundef !11 ; 2 uses
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !139, !noalias !142, !noundef !11
  %i.e = sext i8 %i.d to i32
  %i.f = mul nsw i32 %i.e, 3600
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 4, !range !144, !alias.scope !139, !noalias !142, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !139, !noalias !142
  %i.l = sext i8 %i.k to i32
  %i.m = mul nsw i32 %i.l, 60
  %i.n = select i1 %i.i, i32 %i.m, i32 0
  %.sroa.0.0.i = add nsw i32 %i.n, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.p = load i8, ptr %i.o, align 2, !range !144, !alias.scope !139, !noalias !142, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !139, !noalias !142
  %2 = sext i8 %i.s to i32
  %3 = select i1 %i.q, i32 %2, i32 0
  %.sroa.0.1.i = add nsw i32 %.sroa.0.0.i, %3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = trunc nuw i32 %i.b to i1
  %i.v = load i32, ptr %i.t, align 4, !alias.scope !139, !noalias !142
  %i.w = icmp sgt i32 %i.v, 499999999
  %or.cond.i = select i1 %i.u, i1 %i.w, i1 false
  %i.x = zext i1 %or.cond.i to i32
  %.sroa.0.2.i = add nsw i32 %.sroa.0.1.i, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i8, ptr %i.y, align 4, !range !145, !alias.scope !139, !noalias !142, !noundef !11 ; 2 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = mul nsw i32 %.sroa.0.2.i, %i.aa         ; 3 uses
  %i.ac = add nsw i32 %i.ab, 93599
  %or.cond.i.i = icmp ult i32 %i.ac, 187199
  br i1 %or.cond.i.i, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit, label %bb.c, !prof !146

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5119) #19, !noalias !147 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !150
  store ptr %i.ad, ptr %i.a, align 8, !noalias !150
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !151
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #19, !noalias !150
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ah, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit, %bb.h, %bb.f
  %.sink = phi i32 [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit ], [ 1, %bb.h ], [ 0, %bb.f ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150
  %i.ai = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 18, i8 undef) #19, !noalias !150
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.g

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit: ; preds = %bb.b
  %.lobit = lshr i32 %i.ab, 31
  %i.ak = trunc nuw nsw i32 %.lobit to i8
  %i.al = icmp eq i8 %i.z, -1
  %spec.select = select i1 %i.al, i8 1, i8 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %spec.select, ptr %i.an, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB2_12ParsedOffset9to_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %1, align 4, !range !138, !noundef !11 ; 2 uses
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !163, !noalias !160, !noundef !11
  %i.e = sext i8 %i.d to i32
  %i.f = mul nsw i32 %i.e, 3600
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 4, !range !144, !alias.scope !163, !noalias !160, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !163, !noalias !160
  %i.l = sext i8 %i.k to i32
  %i.m = mul nsw i32 %i.l, 60
  %i.n = select i1 %i.i, i32 %i.m, i32 0
  %.sroa.0.0.i = add nsw i32 %i.n, %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.p = load i8, ptr %i.o, align 2, !range !144, !alias.scope !163, !noalias !160, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !163, !noalias !160
  %2 = sext i8 %i.s to i32
  %3 = select i1 %i.q, i32 %2, i32 0
  %.sroa.0.1.i = add nsw i32 %.sroa.0.0.i, %3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = trunc nuw i32 %i.b to i1
  %i.v = load i32, ptr %i.t, align 4, !alias.scope !163, !noalias !160
  %i.w = icmp sgt i32 %i.v, 499999999
  %or.cond.i = select i1 %i.u, i1 %i.w, i1 false
  %i.x = zext i1 %or.cond.i to i32
  %.sroa.0.2.i = add nsw i32 %.sroa.0.1.i, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i8, ptr %i.y, align 4, !range !145, !alias.scope !163, !noalias !160, !noundef !11
  %i.aa = sext i8 %i.z to i32
  %i.ab = mul nsw i32 %.sroa.0.2.i, %i.aa         ; 2 uses
  %i.ac = add nsw i32 %i.ab, 93599
  %or.cond.i.i = icmp ult i32 %i.ac, 187199
  br i1 %or.cond.i.i, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12from_seconds.exit.i, label %bb.c, !prof !146

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5119) #19, !noalias !165 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  store ptr %i.ad, ptr %i.a, align 8, !noalias !168
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !169
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #19, !noalias !168
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.ah = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 18, i8 undef) #19, !noalias !168
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !alias.scope !160, !noalias !163
  br label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12from_seconds.exit.i: ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.aj, align 4, !alias.scope !160, !noalias !163
  br label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ak, align 4
  br label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_7Numeric9to_offset.exit: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12from_seconds.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, %bb.f
  %storemerge = phi i32 [ 0, %bb.f ], [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12from_seconds.exit.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc noundef range(i32 0, 67108864) i32 @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util4utf8NtB2_9Utf8Error3new(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 1, -9223372036854775808) %1, i8 %.8.val, i8 %.9.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca i24, align 4                  ; 5 uses
  %i.a = trunc nuw i8 %.8.val to i1
  %i.b = zext i8 %.9.val to i64
  %.sroa.0.0 = select i1 %i.a, i64 %i.b, i64 %1   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.0, i8 0, i64 3, i1 false)
  %i.c = icmp samesign ult i64 %.sroa.0.0, 4
  br i1 %i.c, label %bb.c, label %bb.b, !prof !146

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %.sroa.0.0, %1
  br i1 %.not, label %bb.e, label %bb.d, !prof !178

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr nonnull readonly align 1 %0, i64 range(i64 0, 4) %.sroa.0.0, i1 false), !alias.scope !179
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.06.0.copyload = load i24, ptr %.sroa.0, align 4
  %.sroa.2.0.insert.ext = trunc nuw nsw i64 %.sroa.0.0 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 24
  %.sroa.0.0.insert.ext = zext i24 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.06.0.copyload to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(6) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 1, i8 undef) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.bp

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %2, align 1, !noundef !11   ; 3 uses
  switch i8 %i.i, label %bb.e [
    i8 90, label %bb.d
    i8 122, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.j = load i8, ptr %1, align 1, !range !144, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.bo, label %bb.bn

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  switch i8 %i.i, label %bb.g [
    i8 43, label %bb.l
    i8 45, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 11, i8 undef) #19, !noalias !186 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.l, ptr %i.c, align 8
  %i.m = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB2_5ErrorNtB6_9IntoError10into_error(i8 noundef 10, i8 undef)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedNtNtCsb09rMIQFAXO_9jiff_core6bounds4SignENtB8_5ErrorEINtB8_12ErrorContextB1b_B29_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !190
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.y, %bb.z, %bb.s, %bb.t, %bb.u, %bb.h, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.n, %bb.h ], [ %i.n, %bb.j ], [ %i.n, %bb.i ], [ %i.ag, %bb.u ], [ %i.ag, %bb.t ], [ %i.an, %bb.z ], [ %i.an, %bb.y ], [ %i.an, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedNtNtCsb09rMIQFAXO_9jiff_core6bounds4SignENtB8_5ErrorEINtB8_12ErrorContextB1b_B29_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit: ; preds = %bb.g
  %i.s = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.l, ptr noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bq

bb.l:                                             ; preds = %bb.f, %bb.e
  %.sroa.07.0.i.i = phi i64 [ 1095216660480, %bb.f ], [ 4294967296, %bb.e ] ; 5 uses
  %i.t = icmp samesign ult i64 %3, 3
  br i1 %i.t, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.ptr392 = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 6 uses
  %i.u = add nsw i64 %3, -3                       ; 4 uses
  %.sroa.0.0.i71.ptr = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.v = load i8, ptr %.sroa.0.0.i71.ptr, align 1, !alias.scope !199, !noalias !202, !noundef !11 ; 2 uses
  %i.w = add i8 %i.v, -48                         ; 2 uses
  %or.cond.i72 = icmp ult i8 %i.w, 10
  br i1 %or.cond.i72, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i71.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load i8, ptr %.sroa.0.0.i71.ptr.1, align 1, !alias.scope !199, !noalias !202, !noundef !11 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %or.cond.i72.1 = icmp ult i8 %i.y, 10
  br i1 %or.cond.i72.1, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit73, label %bb.o

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit73: ; preds = %bb.n
  %narrow = mul nuw nsw i8 %i.w, 10
  %narrow454 = add nuw i8 %narrow, %i.y           ; 2 uses
  %i.z = zext i8 %narrow454 to i64                ; 5 uses
  %i.aa = icmp ugt i8 %narrow454, 25
  br i1 %i.aa, label %bb.p, label %bb.ab

bb.o:                                             ; preds = %bb.n, %bb.m
  %.lcssa418 = phi i8 [ %i.v, %bb.m ], [ %i.x, %bb.n ]
  %i.ab = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa418) #19, !noalias !208
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse:bb.a
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.bg, %bb.bh, %bb.bl, %bb.bk
  %.sroa.6188.0.copyload.i381 = phi i64 [ %.sroa.6188.0.copyload.i, %bb.bl ], [ %.sroa.6188.0.copyload.i, %bb.bk ], [ %i.cu, %bb.bh ], [ %i.cu, %bb.bg ]
  %.sroa.5187.0.copyload.i380 = phi ptr [ %i.dt, %bb.bl ], [ %i.dt, %bb.bk ], [ %i.ct, %bb.bh ], [ %i.ct, %bb.bg ]
  %.sroa.0148.0.i = phi i32 [ 1, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  %.sroa.5149.0.i = phi i32 [ %.sroa.4186.0.copyload.i, %bb.bl ], [ undef, %bb.bk ], [ undef, %bb.bh ], [ undef, %bb.bg ]
  %.sroa.24.9.insert.ext139 = shl nuw nsw i64 %i.bo, 8
  %.sroa.24.11.insert.ext156 = shl nuw nsw i64 %i.cz, 24
  %.sroa.24.13.insert.ext196 = shl nuw nsw i64 %i.z, 40
  %i.ea = or disjoint i64 %.sroa.24.13.insert.ext196, %.sroa.24.9.insert.ext139
  %i.eb = or disjoint i64 %i.ea, %.sroa.24.11.insert.ext156
  %.sroa.24.12.insert.insert179 = or disjoint i64 %i.eb, %.sroa.07.0.i.i
  %.sroa.24.13.insert.insert199 = or disjoint i64 %.sroa.24.12.insert.insert179, 65537
  br label %bb.br

bb.bn:                                            ; preds = %bb.d
  %i.ec = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 23, i8 %i.i) #19
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.bp

bb.bo:                                            ; preds = %bb.d
  %i.ee = add nsw i64 %3, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i32 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ef, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ee, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.br, %bb.bq, %bb.b
  ret void

bb.bq:                                            ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedNtNtCsb09rMIQFAXO_9jiff_core6bounds4SignENtB8_5ErrorEINtB8_12ErrorContextB1b_B29_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit, %bb.ag, %bb.ap, %bb.af, %bb.bd, %bb.bj, %bb.bi, %bb.bc, %bb.av, %bb.an
  %.sroa.24.0.ph = phi ptr [ %i.cb, %bb.an ], [ %i.cm, %bb.av ], [ %i.dh, %bb.bc ], [ %i.dw, %bb.bi ], [ %i.dx, %bb.bj ], [ %i.di, %bb.bd ], [ %i.ba, %bb.af ], [ %i.cc, %bb.ap ], [ %i.bc, %bb.ag ], [ %i.as, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedaENtB8_5ErrorEINtB8_12ErrorContextB1b_B1w_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit ], [ %i.s, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBa_3fmt6ParsedNtNtCsb09rMIQFAXO_9jiff_core6bounds4SignENtB8_5ErrorEINtB8_12ErrorContextB1b_B29_E7contextNtNtNtB8_3fmt6offset5ErrorE0Ba_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.24.0.ph, ptr %i.eg, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.bp

bb.br:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread, %bb.bb, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread, %bb.ao
  %.sroa.71.0 = phi i64 [ %i.bj, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ %.sroa.8218.0353, %bb.bb ], [ %.sroa.6188.0.copyload.i381, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %.sroa.8209.0328, %bb.ao ], [ %i.cu, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.65.0 = phi ptr [ %.ptr398, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ %.ptr398, %bb.bb ], [ %.sroa.5187.0.copyload.i380, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %.ptr392, %bb.ao ], [ %i.ct, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.24.0.in = phi i64 [ %.sroa.24.13.insert.insert184, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ %.sroa.24.13.insert.insert189, %bb.bb ], [ %.sroa.24.13.insert.insert199, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %.sroa.24.13.insert.insert, %bb.ao ], [ %.sroa.24.13.insert.insert194, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.22.0 = phi i32 [ undef, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ undef, %bb.bb ], [ %.sroa.5149.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ undef, %bb.ao ], [ undef, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.0.0 = phi i32 [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numeric0EB15_.exit.thread ], [ 0, %bb.bb ], [ %.sroa.0148.0.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ 0, %bb.ao ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB11_6Parser13parse_numerics_0EB15_.exit.thread ]
  %.sroa.24.0 = inttoptr i64 %.sroa.24.0.in to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.034.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.22.0, ptr %.sroa.034.sroa.4.0..sroa_idx, align 4
  %.sroa.034.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.24.0, ptr %.sroa.034.sroa.5.0..sroa_idx, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.65.0, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.71.0, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.bp
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !17, !noundef !11
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !17, !noundef !11 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !noundef !11
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !11, !nonnull !11
  %i.l = tail call { i64, ptr } %i.k(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.i) #22 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = extractvalue { i64, ptr } %i.l, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i16 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.o, %bb.b ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14ParsedTimeZone14into_time_zone(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !284, !noundef !11 ; 2 uses
  %i.e = add nsw i8 %i.d, -3
  %i.f = icmp samesign ugt i8 %i.d, 2
  %narrow = select i1 %i.f, i8 %i.e, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.i
    i8 2, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !11
  %i.k = tail call { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2_16TimeZoneDatabase3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 5 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %bb.d, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %i.o = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 32)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.q = icmp eq ptr %i.m, null
  br i1 %i.q, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !285
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #19
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ %i.aq, %bb.q ], [ %i.aq, %bb.p ], [ %i.aq, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i: ; preds = %bb.d
  %i.u = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.m, ptr noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit: ; preds = %bb.c, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i
  %.sroa.06.0.i = phi i64 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ 0, %bb.c ]
  %.sroa.3.0.i = phi ptr [ %i.u, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_2tz8timezone8TimeZoneNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit.i ], [ %i.m, %bb.c ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.06.0.i, 0
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 4 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload, 2
  br i1 %.not.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.x = sext i8 %.sroa.11.0.copyload to i32
  %i.y = mul nsw i32 %i.x, 3600
  %i.z = trunc nuw i8 %.sroa.6.0.copyload to i1
  %i.aa = sext i8 %.sroa.7.0.copyload to i32
  %i.ab = mul nsw i32 %i.aa, 60
  %i.ac = select i1 %i.z, i32 %i.ab, i32 0
  %i.ad = trunc nuw i8 %.sroa.8.0.copyload to i1
  %2 = sext i8 %.sroa.9.0.copyload to i32
  %3 = select i1 %i.ad, i32 %2, i32 0
  %i.ae = trunc nuw i32 %.sroa.0.0.copyload to i1
  %i.af = icmp sgt i32 %.sroa.5.0.copyload, 499999999
  %or.cond.i.i = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = zext i1 %or.cond.i.i to i32
  %.sroa.0.0.i.i = add nsw i32 %3, %i.y
  %.sroa.0.1.i.i = add nsw i32 %.sroa.0.0.i.i, %i.ac
  %.sroa.0.2.i.i = add nsw i32 %.sroa.0.1.i.i, %i.ag
  %i.ah = sext i8 %.sroa.10.0.copyload to i32
  %i.ai = mul nsw i32 %.sroa.0.2.i.i, %i.ah
  %.fr = freeze i32 %i.ai                         ; 3 uses
  %i.aj = add nsw i32 %.fr, 93599
  %or.cond.i.i.i = icmp ult i32 %i.aj, 187199
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.k, !prof !146

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5119) #19, !noalias !294 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !303
  store ptr %i.ak, ptr %i.b, align 8, !noalias !303
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !304
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19, !noalias !303
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !303
  %i.ao = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 18, i8 undef) #19, !noalias !303 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  store ptr %i.ao, ptr %i.a, align 8, !noalias !313
  %i.ap = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 28)
          to label %bb.u unwind label %bb.o, !noalias !313

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ar = icmp eq ptr %i.ao, null
  br i1 %i.ar, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !317
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #19
          to label %common.resume unwind label %bb.r, !noalias !313

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !313
  unreachable

bb.s:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0)
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.v, %bb.u, %bb.s, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit
  %.pn = phi { i64, ptr } [ %i.v, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit ], [ { i64 1, ptr poison }, %bb.u ], [ { i64 0, ptr poison }, %bb.s ], [ { i64 0, ptr poison }, %bb.v ], [ { i64 0, ptr poison }, %.thread ]
  %.sroa.3.0.i.pn = phi ptr [ %.sroa.3.0.i, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneNtNtBO_5error5ErrorE7map_errB1s_NCINvXsk_B1u_Bv_INtB1u_12ErrorContextBI_B1s_E7contextNtNtNtB1u_3fmt8temporal5ErrorE0EBO_.exit ], [ %i.aw, %bb.u ], [ %i.av, %bb.s ], [ %i.bb, %bb.v ], [ inttoptr (i64 1 to ptr), %.thread ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.sroa.3.0.i.pn, 1
  ret { i64, ptr } %.merged

bb.u:                                             ; preds = %bb.n
  %i.aw = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ao, ptr noundef %i.ap), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  br label %bb.t

bb.v:                                             ; preds = %bb.j
  %i.ax = icmp eq i32 %.fr, 0
  %i.ay = shl nsw i32 %.fr, 4
  %i.az = or disjoint i32 %i.ay, 3
  %i.ba = sext i32 %i.az to i64
  %i.bb = inttoptr i64 %i.ba to ptr
  br i1 %i.ax, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.i, %bb.v
  br label %bb.t
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal6parserNtB5_14DateTimeParser17parse_signed_year(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i8 noundef range(i8 -1, 2) %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = icmp samesign ult i64 %3, 6
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.d = add nsw i64 %3, -6
  %i.e = load i8, ptr %2, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.f = add i8 %i.e, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.f, 10
  br i1 %or.cond.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.i.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %.sroa.0.0.i.ptr.1, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %or.cond.i.1 = icmp ult i8 %i.h, 10
  br i1 %or.cond.i.1, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.i.ptr.2 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i8, ptr %.sroa.0.0.i.ptr.2, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.j = add i8 %i.i, -48                         ; 2 uses
  %or.cond.i.2 = icmp ult i8 %i.j, 10
  br i1 %or.cond.i.2, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.i.ptr.3 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.k = load i8, ptr %.sroa.0.0.i.ptr.3, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.l = add i8 %i.k, -48                         ; 2 uses
  %or.cond.i.3 = icmp ult i8 %i.l, 10
  br i1 %or.cond.i.3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.i.ptr.4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i8, ptr %.sroa.0.0.i.ptr.4, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i.4 = icmp ult i8 %i.n, 10
  br i1 %or.cond.i.4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i.ptr.5 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.o = load i8, ptr %.sroa.0.0.i.ptr.5, align 1, !alias.scope !326, !noalias !329, !noundef !11 ; 2 uses
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %or.cond.i.5 = icmp ult i8 %i.p, 10
  br i1 %or.cond.i.5, label %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit, label %bb.h

_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit:  ; preds = %bb.g
  %narrow = mul nuw nsw i8 %i.f, 10
  %narrow68 = add nuw i8 %narrow, %i.h
  %i.q = zext i8 %narrow68 to i64
  %i.r = mul nuw nsw i64 %i.q, 10
  %i.s = zext nneg i8 %i.j to i64
  %i.t = add nuw nsw i64 %i.r, %i.s
  %i.u = mul nuw nsw i64 %i.t, 10
  %i.v = zext nneg i8 %i.l to i64
  %i.w = add nuw nsw i64 %i.u, %i.v
  %i.x = mul nuw nsw i64 %i.w, 10
  %i.y = zext nneg i8 %i.n to i64
  %i.z = add nuw nsw i64 %i.x, %i.y
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = zext nneg i8 %i.p to i64
  %i.ac = add nuw nsw i64 %i.aa, %i.ab            ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.ac, 9999
  br i1 %i.ad, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.lcssa = phi i8 [ %i.e, %bb.b ], [ %i.k, %bb.e ], [ %i.i, %bb.d ], [ %i.g, %bb.c ], [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.ae = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 1, i8 %.lcssa) #19, !noalias !333
  br label %bb.m

bb.i:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.af = tail call noundef i8 @_RNvXs1y_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #19, !noalias !333
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ah, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

bb.j:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64.exit
  %i.aj = trunc nuw nsw i64 %i.ac to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.i, %bb.j
  %.sroa.3.0.insert.insert.i = phi i32 [ %i.ak, %bb.j ], [ %i.ai, %bb.i ] ; 3 uses
  %i.al = trunc i32 %.sroa.3.0.insert.insert.i to i1
  br i1 %i.al, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %i.am = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.4.0.extract.trunc.i), !noalias !333
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.an = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 14) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.h
  %.sroa.5.0.ph = phi ptr [ %i.am, %bb.k ], [ %i.ae, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.5.0.ph, ptr %i.a, align 8
  %i.ap = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB2_5ErrorNtB6_9IntoError10into_error(i64 52)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultsNtB8_5ErrorEINtB8_12ErrorContextsB1c_E7contextNtNtNtB8_3fmt8temporal5ErrorE0Ba_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = icmp eq ptr %.sroa.5.0.ph, null
  br i1 %i.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.o

end_hunk_1
