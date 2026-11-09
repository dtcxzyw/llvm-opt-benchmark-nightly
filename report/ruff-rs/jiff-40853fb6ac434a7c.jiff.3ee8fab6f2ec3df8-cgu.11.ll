Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff-40853fb6ac434a7c.jiff.3ee8fab6f2ec3df8-cgu.11?download=true
inline.NumInlined: 199
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCsau3t54nuvpx_9jiff_core2tz6offsetNtB2_6Offset11to_datetime:bb.a
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = udiv i32 %i.ag, 11758980
  %i.ai = mul nuw nsw i32 %i.ah, 2141
  %i.aj = add nuw nsw i32 %i.ai, 197913           ; 3 uses
  %.lhs.trunc.i = trunc i32 %i.aj to i16
  %i.ak = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.ak to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.al = icmp ugt i32 %i.ag, -696719417          ; 2 uses
  %i.am = and i32 %i.aj, 4128768
  %i.an = add nuw nsw i32 %i.am, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.al, i32 %i.an, i32 %i.aj
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %i.ao = udiv i32 %i.ab, 146097
  %i.ap = mul nuw nsw i32 %i.ao, 100
  %i.aq = add nuw nsw i32 %i.ap, 32736
  %i.ar = lshr i64 %i.af, 32
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = zext i1 %i.al to i32
  %i.av = add nuw nsw i32 %i.at, %i.au
  %.sroa.0.0.insert.ext.i = and i32 %i.av, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %.sroa.440.0.insert.ext = zext nneg i32 %.sroa.041.0.shrunk to i64
  %.sroa.440.0.insert.shift = shl nuw nsw i64 %.sroa.440.0.insert.ext, 32
  %.sroa.039.0.insert.ext = zext nneg i32 %.sroa.0.05763 to i64
  %.sroa.440.0.insert.insert = or i64 %.sroa.043.0, %.sroa.039.0.insert.ext
  %.sroa.039.0.insert.insert = or i64 %.sroa.440.0.insert.insert, %.sroa.440.0.insert.shift
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.aw, align 4
  store i64 %.sroa.039.0.insert.insert, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsK_NtCs5oRRSLMQMUC_4jiff5zonedNtB5_10ZonedRound5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !314 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 4                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [12 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 10 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.3 = alloca [12 x i8], align 8            ; 3 uses
  %i.t = alloca [12 x i8], align 4                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !10, !noundef !6
  %i.x = icmp eq i8 %i.w, 6
  br i1 %i.x, label %bb.b, label %bb.de

bb.b:                                             ; preds = %bb.a
  %.val17 = load i64, ptr %1, align 8, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.val18 = load i8, ptr %i.y, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !317
  call void @_RNvMNtNtCs5oRRSLMQMUC_4jiff4util5roundNtB2_9Increment12for_datetime(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, i8 noundef 6, i64 noundef %.val17), !noalias !317
  %i.z = load i32, ptr %i.s, align 8, !range !7, !noalias !317, !noundef !6
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !317, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !317
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !315
  store i64 1, ptr %0, align 8, !alias.scope !315
  br label %_RNvMsK_NtCs5oRRSLMQMUC_4jiff5zonedNtB5_10ZonedRound10round_days.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !317
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.032.0.copyload.i = load i32, ptr %i.ae, align 8, !alias.scope !316
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %.sroa.032.0.copyload.i, ptr %i.af, align 8, !noalias !317
  store i64 0, ptr %i.n, align 8, !noalias !317
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val44.i = load ptr, ptr %i.ag, align 8, !alias.scope !316, !noundef !6 ; 6 uses
  %i.ah = ptrtoint ptr %.val44.i to i64
  %i.ai = and i64 %i.ah, 7
  switch i64 %i.ai, label %bb.e [
    i64 1, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
    i64 2, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
    i64 3, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
    i64 0, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
    i64 4, label %bb.f
    i64 5, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %.val44.i, i64 -4 ; 3 uses
  %i.ak = call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.aj), !noalias !317
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !317
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %.val44.i, i64 -5 ; 3 uses
  %i.aq = call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.ap), !noalias !317
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !317
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.i, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %bb.h, %bb.f, %bb.d, %bb.d, %bb.d, %bb.d
  call fastcc void @_RNvMNtNtCs5oRRSLMQMUC_4jiff5civil8datetimeNtB2_8DateTime8to_zoned(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.r, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.n, ptr noundef %.val44.i), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !317
  %i.av = load i64, ptr %i.r, align 8, !range !11, !noalias !317, !noundef !6
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !317 ; 7 uses
  br i1 %i.aw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !317
  store ptr %i.ay, ptr %i.m, align 8, !noalias !317
  %i.az = invoke noundef ptr @_RNvXs_NtNtCs5oRRSLMQMUC_4jiff5error5zonedNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 17)
          to label %_RNCINvXsk_NtCs5oRRSLMQMUC_4jiff5errorINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_5zoned5ZonedNtB8_5ErrorEINtB8_12ErrorContextB1b_B1u_E7contextNtNtB8_5zoned5ErrorE0Ba_.exit.i unwind label %bb.k, !noalias !317

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bb = icmp eq ptr %i.ay, null
  br i1 %i.bb, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !318
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5oRRSLMQMUC_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %common.resume unwind label %bb.n, !noalias !317

bb.n:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !317
  unreachable

common.resume:                                    ; preds = %.body.thread.i, %bb.dm, %bb.k, %bb.l, %bb.m, %.body.i, %bb.cn
  %common.resume.op = phi { ptr, i32 } [ %i.jb, %bb.dm ], [ %.pn.i, %bb.cn ], [ %i.ba, %bb.k ], [ %i.ba, %bb.m ], [ %i.ba, %bb.l ], [ %.pn41.i, %.body.i ], [ %eh.lpad-body21.i, %.body.thread.i ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCs5oRRSLMQMUC_4jiff5errorINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_5zoned5ZonedNtB8_5ErrorEINtB8_12ErrorContextB1b_B1u_E7contextNtNtB8_5zoned5ErrorE0Ba_.exit.i: ; preds = %bb.j
  %i.bf = call noundef ptr @_RNvMs_NtCs5oRRSLMQMUC_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ay, ptr noundef %i.az), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !317
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !alias.scope !315
  store i64 1, ptr %0, align 8, !alias.scope !315
  br label %_RNvMsK_NtCs5oRRSLMQMUC_4jiff5zonedNtB5_10ZonedRound10round_days.exit

bb.o:                                             ; preds = %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.435.sroa.0.0.copyload.i = load i32, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !317 ; 4 uses
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.435.sroa.5.0.copyload.i = load ptr, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i, align 8, !noalias !317 ; 11 uses
  %.sroa.435.sroa.6.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.435.sroa.6.0.copyload.i = load i32, ptr %.sroa.435.sroa.6.0..sroa.435.0..sroa_idx.sroa_idx.i, align 8, !noalias !317
  %.sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %.sroa.435.sroa.7.0.copyload.i = load i32, ptr %.sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.i, align 4, !noalias !317
  %.sroa.435.sroa.8.0..sroa.435.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.435.sroa.8.0.copyload.i = load i32, ptr %.sroa.435.sroa.8.0..sroa.435.0..sroa_idx.sroa_idx.i, align 8, !noalias !317 ; 7 uses
  %i.bh = ptrtoint ptr %i.ay to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !317
  %.sroa.03.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.435.sroa.8.0.copyload.i to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i32 %.sroa.435.sroa.8.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i.i.i to i8 ; 4 uses
  %.sroa.54.0.extract.shift.i.i.i.i = lshr i32 %.sroa.435.sroa.8.0.copyload.i, 24
  %.sroa.54.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.54.0.extract.shift.i.i.i.i to i8 ; 3 uses
  %i.bi = icmp sgt i8 %.sroa.54.0.extract.trunc.i.i.i.i, 27
  br i1 %i.bi, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.thread.i.i.i.i, %_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.i.i.i.i, %bb.o
  %3 = and i32 %.sroa.435.sroa.8.0.copyload.i, -16777216
  %.sroa.528.0.insert.shift.i.i.i.i = add i32 %3, 16777216
  %4 = and i32 %.sroa.435.sroa.8.0.copyload.i, 16777215
  %.sroa.026.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.528.0.insert.shift.i.i.i.i, %4
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.bj = icmp eq i8 %.sroa.4.0.extract.trunc.i.i.i.i, 2
  br i1 %i.bj, label %_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.thread.i.i.i.i, label %_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.i.i.i.i

_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.i.i.i.i: ; preds = %bb.q
  %i.bk = ashr i8 %.sroa.4.0.extract.trunc.i.i.i.i, 3
  %i.bl = xor i8 %i.bk, %.sroa.4.0.extract.trunc.i.i.i.i
  %i.bm = or i8 %i.bl, 30
  %i.bn = icmp eq i8 %i.bm, %.sroa.54.0.extract.trunc.i.i.i.i
  br i1 %i.bn, label %bb.r, label %bb.p

_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.thread.i.i.i.i: ; preds = %bb.q
  %i.bo = srem i16 %.sroa.03.0.extract.trunc.i.i.i.i, 25
  %i.bp = icmp eq i16 %i.bo, 0
  %..i.i.i.i.i = select i1 %i.bp, i16 15, i16 3
  %i.bq = and i16 %..i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i
  %i.br = icmp eq i16 %i.bq, 0
  %spec.select.i.i.i.i.i = select i1 %i.br, i8 29, i8 28
  %i.bs = icmp eq i8 %spec.select.i.i.i.i.i, %.sroa.54.0.extract.trunc.i.i.i.i
  br i1 %i.bs, label %.thread.i.i.i.i, label %bb.p

bb.r:                                             ; preds = %_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.i.i.i.i
  %i.bt = icmp eq i8 %.sroa.4.0.extract.trunc.i.i.i.i, 12
  br i1 %i.bt, label %bb.s, label %.thread.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bu = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.03.0.extract.trunc.i.i.i.i, i16 1) ; 2 uses
  %i.bv = extractvalue { i16, i1 } %i.bu, 0       ; 2 uses
  %i.bw = extractvalue { i16, i1 } %i.bu, 1
  %i.bx = add i16 %i.bv, -10000
  %or.cond.i.i.i.i = icmp ult i16 %i.bx, -19999
  %or.cond37.not.i.i.i.i = or i1 %i.bw, %or.cond.i.i.i.i
  br i1 %or.cond37.not.i.i.i.i, label %bb.u, label %bb.t, !prof !319

.thread.i.i.i.i:                                  ; preds = %bb.r, %_RNvNtCsau3t54nuvpx_9jiff_core5civil13days_in_month.exit.thread.i.i.i.i
  %.sroa.424.0.insert.ext.i.i.i.i = add i32 %.sroa.435.sroa.8.0.copyload.i, 65536
  %.sroa.424.0.insert.shift.i.i.i.i = and i32 %.sroa.424.0.insert.ext.i.i.i.i, 16711680
  %.sroa.023.0.insert.ext.i.i.i.i = and i32 %.sroa.435.sroa.8.0.copyload.i, 65535
  %.sroa.424.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.023.0.insert.ext.i.i.i.i, %.sroa.424.0.insert.shift.i.i.i.i
  %.sroa.023.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.424.0.insert.insert.i.i.i.i, 16777216
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %.sroa.020.0.insert.ext.i.i.i.i = zext i16 %i.bv to i32
  %.sroa.020.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.020.0.insert.ext.i.i.i.i, 16842752
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.by = invoke noundef ptr @_RNvMs_NtCs5oRRSLMQMUC_4jiff5errorNtB4_5Error11jcore_range(i32 8447)
          to label %.thread.i unwind label %bb.ab, !noalias !317

.thread.i:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !317
  br label %._crit_edge

bb.v:                                             ; preds = %bb.t, %.thread.i.i.i.i, %bb.p
  %.sroa.5.0.ph.i.i = phi i32 [ %.sroa.026.0.insert.insert.i.i.i.i, %bb.p ], [ %.sroa.020.0.insert.insert.i.i.i.i, %bb.t ], [ %.sroa.023.0.insert.insert.i.i.i.i, %.thread.i.i.i.i ]
  %.sroa.511.8.insert.ext.i.i = zext i32 %.sroa.5.0.ph.i.i to i64
  %.sroa.511.8.insert.shift.i.i = shl nuw i64 %.sroa.511.8.insert.ext.i.i, 32
  %.sroa.511.0.insert.ext.i.i = zext i32 %.sroa.435.sroa.7.0.copyload.i to i64
  %.sroa.511.0.insert.insert.i.i = or disjoint i64 %.sroa.511.8.insert.shift.i.i, %.sroa.511.0.insert.ext.i.i
  %i.bz = inttoptr i64 %.sroa.511.0.insert.insert.i.i to ptr
  store i32 %.sroa.435.sroa.6.0.copyload.i, ptr %i.l, align 4, !noalias !320
  %.sroa.7.4..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %i.bz, ptr %.sroa.7.4..sroa_idx2.i.i, align 4, !noalias !320
  %i.ca = ptrtoint ptr %.sroa.435.sroa.5.0.copyload.i to i64
  %i.cb = and i64 %i.ca, 7                        ; 7 uses
  switch i64 %i.cb, label %bb.w [
    i64 1, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
    i64 2, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
    i64 3, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
    i64 0, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
    i64 4, label %bb.x
    i64 5, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr i8, ptr %.sroa.435.sroa.5.0.copyload.i, i64 -4 ; 3 uses
  %i.cd = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.cc)
          to label %.noexc55.i unwind label %bb.ab, !noalias !317

.noexc55.i:                                       ; preds = %bb.x
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 %i.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8, !noalias !320
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.y:                                             ; preds = %.noexc55.i
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.v
  %i.ci = getelementptr i8, ptr %.sroa.435.sroa.5.0.copyload.i, i64 -5 ; 3 uses
  %i.cj = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.ci)
          to label %.noexc56.i unwind label %bb.ab, !noalias !317

.noexc56.i:                                       ; preds = %bb.z
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %i.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !320
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.aa, label %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.aa:                                            ; preds = %.noexc56.i
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc56.i, %.noexc55.i, %bb.v, %bb.v, %bb.v, %bb.v
  invoke fastcc void @_RNvMNtNtCs5oRRSLMQMUC_4jiff5civil8datetimeNtB2_8DateTime8to_zoned(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(48) %i.q, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.l, ptr noundef %.sroa.435.sroa.5.0.copyload.i)
          to label %bb.ac unwind label %bb.ab, !noalias !317

.body.i:                                          ; preds = %bb.ax, %bb.ag, %bb.af, %bb.ae, %bb.ab
  %.pn41.i = phi { ptr, i32 } [ %i.eb, %bb.ax ], [ %i.co, %bb.ab ], [ %i.ct, %bb.ag ], [ %i.ct, %bb.af ], [ %i.ct, %bb.ae ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5oRRSLMQMUC_4jiff5zoned5ZonedEBF_(ptr %.sroa.435.sroa.5.0.copyload.i) #19
          to label %common.resume unwind label %bb.cq, !noalias !317

bb.ab:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ad, %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %bb.z, %bb.x, %bb.u
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ac:                                            ; preds = %_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
  %.pre.i = load i64, ptr %i.q, align 8, !range !11, !noalias !317
  %i.cp = trunc nuw i64 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !317
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !317 ; 3 uses
  br i1 %i.cp, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ac, %.thread.i
  %i.cq = phi ptr [ %i.by, %.thread.i ], [ %.pre, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !317
  store ptr %i.cq, ptr %i.k, align 8, !noalias !317
  %i.cr = invoke noundef ptr @_RNvXs_NtNtCs5oRRSLMQMUC_4jiff5error5zonedNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 15)
          to label %bb.ad unwind label %bb.ae, !noalias !317

bb.ad:                                            ; preds = %._crit_edge
  %i.cs = invoke noundef ptr @_RNvMs_NtCs5oRRSLMQMUC_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.cq, ptr noundef %i.cr)
          to label %bb.dd unwind label %bb.ab, !noalias !317

bb.ae:                                            ; preds = %._crit_edge
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cu = icmp eq ptr %i.cq, null
  br i1 %i.cu, label %.body.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !321
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.ag, label %.body.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5oRRSLMQMUC_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body.i unwind label %bb.ah, !noalias !317

bb.ah:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !317
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.437.sroa.0.0.copyload.i = load i32, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !317 ; 2 uses
  %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.437.sroa.5.0.copyload.i = load ptr, ptr %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx.i, align 8, !noalias !317 ; 7 uses
  %i.cy = ptrtoint ptr %.pre to i64
  %i.cz = icmp eq ptr %i.ay, %.pre
  %i.da = icmp eq i32 %.sroa.435.sroa.0.0.copyload.i, %.sroa.437.sroa.0.0.copyload.i
  %or.cond.i = and i1 %i.cz, %i.da
  br i1 %or.cond.i, label %_RNvMNtCs5oRRSLMQMUC_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit76.invoke.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = icmp eq ptr %i.ay, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.db, label %_RNvMNtCs5oRRSLMQMUC_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit68.invoke.i, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %bb.aj
  %i.dc = sub nsw i64 0, %i.bh                    ; 2 uses
  %i.dd = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cy, i64 %i.dc) ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 0       ; 4 uses
  %i.df = extractvalue { i64, i1 } %i.dd, 1
  br i1 %i.df, label %_RNvMNtCs5oRRSLMQMUC_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit68.invoke.i, label %bb.al, !prof !9

bb.al:                                            ; preds = %bb.ak
  %i.dg = sub i32 %.sroa.437.sroa.0.0.copyload.i, %.sroa.435.sroa.0.0.copyload.i ; 6 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ay, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = icmp sgt i32 %i.dg, 999999999
  br i1 %i.di, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = icmp slt i32 %i.dg, -999999999
  br i1 %i.dj, label %bb.ap, label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.dk = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.de, i64 1) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  br i1 %i.dl, label %_RNvMNtCs5oRRSLMQMUC_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit68.invoke.i, label %bb.as, !prof !9

bb.ap:                                            ; preds = %bb.an
  %i.dm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.de, i64 -1) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  br i1 %i.dn, label %_RNvMNtCs5oRRSLMQMUC_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit68.invoke.i, label %bb.aq, !prof !9

bb.aq:                                            ; preds = %bb.ap
  %i.do = extractvalue { i64, i1 } %i.dm, 0
  %i.dp = add nsw i32 %i.dg, 1000000000
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %bb.aq, %bb.an
  %.sroa.016.1.i.i = phi i64 [ %i.ds, %bb.as ], [ %i.do, %bb.aq ], [ %i.de, %bb.an ] ; 7 uses
  %.sroa.02.1.i.i = phi i32 [ %i.dt, %bb.as ], [ %i.dp, %bb.aq ], [ %i.dg, %bb.an ] ; 6 uses
  %i.dq = icmp eq i64 %.sroa.016.1.i.i, 0
  %i.dr = icmp eq i32 %.sroa.02.1.i.i, 0
  %or.cond.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond.i.i, label %bb.ay, label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.ds = extractvalue { i64, i1 } %i.dk, 0
  %i.dt = add nsw i32 %i.dg, -1000000000
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  %i.du = call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i.i, i64 0)
  %i.dv = call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i.i, i32 0)
  %.not.i.i = icmp eq i64 %i.du, %i.dv
  br i1 %.not.i.i, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = icmp slt i64 %.sroa.016.1.i.i, 0
  br i1 %i.dw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dx = add nsw i64 %.sroa.016.1.i.i, -1
  %i.dy = add nsw i32 %.sroa.02.1.i.i, 1000000000
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dz = add nsw i64 %.sroa.016.1.i.i, 1
  %i.ea = add nsw i32 %.sroa.02.1.i.i, -1000000000
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ch, %_RNvMNtCs5oRRSLMQMUC_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit76.invoke.i, %bb.bl, %_RNvMNtCs5oRRSLMQMUC_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit68.invoke.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5oRRSLMQMUC_4jiff5zoned5ZonedEBF_(ptr %.sroa.437.sroa.5.0.copyload.i) #19
          to label %.body.i unwind label %bb.cq, !noalias !317

end_hunk_0
