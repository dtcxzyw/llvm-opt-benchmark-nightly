Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0_@_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension18write_negative_int:bb.a
  br i1 %i.cs, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = icmp ult i64 %2, 10000
  br i1 %i.ct, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = tail call fastcc noundef i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef %2) #23, !noalias !226 ; 2 uses
  %i.cv = icmp samesign ult i32 %i.cu, 20
  tail call void @llvm.assume(i1 %i.cv), !noalias !226
  %i.cw = trunc nuw nsw i32 %i.cu to i8
  %i.cx = add nuw nsw i8 %i.cw, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.i28 = phi i8 [ %i.cx, %bb.v ], [ 1, %bb.r ], [ 2, %bb.s ], [ 3, %bb.t ], [ 4, %bb.u ]
  %..i39 = tail call noundef range(i8 1, -1) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i28, i8 range(i8 0, -1) %..i) ; 2 uses
  %i.cy = zext nneg i8 %..i39 to i64              ; 2 uses
  %i.cz = load ptr, ptr %i.cp, align 8, !alias.scope !226, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !226, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 8, !alias.scope !226, !noundef !4 ; 2 uses
  %i.de = zext i16 %i.dd to i64                   ; 2 uses
  %i.df = sub nuw i64 %i.db, %i.de
  %i.dg = getelementptr i8, ptr %i.cz, i64 %i.de  ; 2 uses
  %.not.i.i = icmp ult i64 %i.df, %i.cy
  br i1 %.not.i.i, label %bb.w, label %.preheader47, !prof !14

bb.w:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #24, !noalias !226
  unreachable

.preheader47:                                     ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, %.preheader47
  %.sroa.06.0.i.i = phi i64 [ %i.dh, %.preheader47 ], [ %i.cy, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ]
  %.sroa.0.0.i.i = phi i64 [ %i.dm, %.preheader47 ], [ %2, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ] ; 3 uses
  %i.dh = add i64 %.sroa.06.0.i.i, -1             ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  %i.dj = urem i64 %.sroa.0.0.i.i, 10
  %i.dk = trunc nuw nsw i64 %i.dj to i8
  %i.dl = or disjoint i8 %i.dk, 48
  store i8 %i.dl, ptr %i.di, align 1, !noalias !226
  %i.dm = udiv i64 %.sroa.0.0.i.i, 10
  %i.dn = icmp ugt i64 %.sroa.0.0.i.i, 9
  %i.do = icmp ne i64 %i.dh, 0
  %or.cond2.i.i = and i1 %i.dn, %i.do
  br i1 %or.cond2.i.i, label %.preheader47, label %.preheader

.preheader:                                       ; preds = %.preheader47
  %.not17.i.i50 = icmp eq i64 %i.dh, 0
  br i1 %.not17.i.i50, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dg, i8 %0, i64 %i.dh, i1 false), !noalias !226
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i: ; preds = %.lr.ph52.preheader, %.preheader
  %i.dp = zext nneg i8 %..i39 to i16
  %i.dq = add i16 %i.dd, %i.dp
  store i16 %i.dq, ptr %i.dc, align 8, !alias.scope !226
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter13write_int_padyEBa_.exit

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter13write_int_padyEBa_.exit: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread
  %.sroa.3.0.i.pn = phi ptr [ %i.m, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread ], [ %i.ar, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread ], [ undef, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i ], [ %i.co, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit27.thread ], [ 1, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread ], [ 0, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer13write_int_padyEBa_.exit.i ], [ 1, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushhEBa_.exit ]
  %i.dr = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ds = insertvalue { i64, ptr } %i.dr, ptr %.sroa.3.0.i.pn, 1
  ret { i64, ptr } %i.ds
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime16to_date_from_iso(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i16, ptr %i.c, align 8, !range !16, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.h = load i8, ptr %i.g, align 1               ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.j = load i8, ptr %i.i, align 1, !range !17, !noundef !4 ; 3 uses
  %i.k = trunc nuw i16 %i.d to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i8, ptr %i.l, align 8, !range !18
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %i.k, i1 %i.n, i1 false
  %.not = icmp ne i8 %i.j, 0
  %or.cond23.not = and i1 %.not, %or.cond
  br i1 %or.cond23.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.o, align 2
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = add i16 %i.f, 9999
  %or.cond.i.i = icmp ult i16 %i.p, 19999
  br i1 %or.cond.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.q = add i8 %i.h, -1
  %or.cond1.i.i = icmp ult i8 %i.q, 53
  br i1 %or.cond1.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.h, 53
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = sext i16 %i.f to i32
  %i.t = add nsw i32 %i.s, 32800                  ; 2 uses
  %.lhs.trunc.i.i = trunc nuw i32 %i.t to i16     ; 2 uses
  %i.u = udiv i16 %.lhs.trunc.i.i, 100
  %.zext.i.i = zext nneg i16 %i.u to i32
  %i.v = mul nuw nsw i32 %i.t, 1461
  %i.w = lshr i32 %i.v, 2
  %i.x = udiv i16 %.lhs.trunc.i.i, 400
  %.zext35.i.i = zext nneg i16 %i.x to i32
  %reass.sub.i.i.i = add nsw i32 %i.w, -12699117
  %i.y = sub nsw i32 %reass.sub.i.i.i, %.zext.i.i
  %i.z = add nsw i32 %i.y, %.zext35.i.i
  %i.aa = mul i32 %i.z, 613566757
  %i.ab = add i32 %i.aa, -1879048192
  %i.ac = lshr i32 %i.ab, 29                      ; 2 uses
  switch i32 %i.ac, label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i [
    i32 0, label %bb.g
    i32 4, label %bb.o
  ], !prof !239

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24, !noalias !240
  unreachable

_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i: ; preds = %bb.f
  %i.ad = srem i16 %i.f, 25
  %i.ae = icmp eq i16 %i.ad, 0
  %..i.i.i.i = select i1 %i.ae, i16 15, i16 3
  %i.af = and i16 %..i.i.i.i, %i.f
  %i.ag = icmp eq i16 %i.af, 0
  %i.ah = icmp eq i32 %i.ac, 5
  %spec.select.i.i.i = and i1 %i.ag, %i.ah
  br i1 %spec.select.i.i.i, label %bb.o, label %bb.i, !prof !241

bb.h:                                             ; preds = %bb.e
  %i.ai = icmp eq i16 %i.f, 9999
  %i.aj = icmp eq i8 %i.h, 52
  %or.cond2.i.i = and i1 %i.ai, %i.aj
  %i.ak = icmp samesign ugt i8 %i.j, 5
  %or.cond4.i.i = and i1 %or.cond2.i.i, %i.ak
  br i1 %or.cond4.i.i, label %bb.i, label %bb.o, !prof !242

bb.i:                                             ; preds = %bb.c, %bb.d, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i, %bb.h
  %.sroa.6.0.i.ph.i = phi i32 [ 7679, %bb.h ], [ 2303, %bb.c ], [ 2047, %bb.d ], [ 2047, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i ]
  %i.al = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph.i) #21, !noalias !240 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !243
  store ptr %i.al, ptr %i.b, align 8, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  store i8 10, ptr %i.a, align 8
  %i.am = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.j, !noalias !243

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = icmp eq ptr %i.al, null
  br i1 %i.ao, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !244
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %.thread.i unwind label %bb.m, !noalias !243

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !243
  unreachable

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  resume { ptr, i32 } %i.an

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  %i.as = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.al, ptr noundef %i.am), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !243
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.h, %_RNvNtCsb09rMIQFAXO_9jiff_core5civil21is_long_iso_week_year.exit.i.i, %bb.f
  %.sroa.4.0.insert.ext.i.i = zext nneg i8 %i.h to i32
  %i.au = tail call noundef i32 @_RNvNtNtCsb09rMIQFAXO_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef %i.f)
  %2 = mul nuw nsw i32 %.sroa.4.0.insert.ext.i.i, 7
  %3 = or disjoint i8 %i.j, -8
  %4 = sext i8 %3 to i32
  %i.av = add nsw i32 %2, %4
  %i.aw = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.au, i32 %i.av) ; 2 uses
  %i.ax = extractvalue { i32, i1 } %i.aw, 0       ; 2 uses
  %i.ay = extractvalue { i32, i1 } %i.aw, 1
  %i.az = add i32 %i.ax, -2932897
  %or.cond.i = icmp ult i32 %i.az, -7304484
  %or.cond8.not.i = or i1 %i.ay, %or.cond.i
  br i1 %or.cond8.not.i, label %bb.p, label %_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit, !prof !245

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #24
  unreachable

_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit: ; preds = %bb.o
  %i.ba = shl nsw i32 %i.ax, 2
  %i.bb = add nsw i32 %i.ba, 50797691             ; 2 uses
  %i.bc = urem i32 %i.bb, 146097
  %i.bd = or i32 %i.bc, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, 2939745          ; 2 uses
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = udiv i32 %i.bg, 11758980
  %i.bi = mul nuw nsw i32 %i.bh, 2141
  %i.bj = add nuw nsw i32 %i.bi, 197913           ; 3 uses
  %i.bk = and i32 %i.bj, 4128768
  %i.bl = icmp ugt i32 %i.bg, -696719417          ; 2 uses
  %i.bm = udiv i32 %i.bb, 146097
  %i.bn = mul nuw nsw i32 %i.bm, 100
  %i.bo = lshr i64 %i.bf, 32
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = zext i1 %i.bl to i32
  %i.br = add nuw nsw i32 %i.bn, 32736
  %i.bs = add nuw nsw i32 %i.br, %i.bp
  %i.bt = add nuw nsw i32 %i.bs, %i.bq
  %.lhs.trunc.i = trunc i32 %i.bj to i16
  %i.bu = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.bu to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.bv = add nuw nsw i32 %i.bk, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bl, i32 %i.bv, i32 %i.bj
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.bt, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.bw, align 2
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.insert.insert.i, ptr %.sroa.414.0..sroa_idx, align 4
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit, %bb.n, %bb.b
  %.sink = phi i16 [ 0, %_RNvMs4_NtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB5_11ISOWeekDate17to_unix_epoch_day.exit ], [ 1, %bb.n ], [ 0, %bb.b ]
  store i16 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(none) dead_on_return dereferenceable(14) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 2, !range !19, !noundef !4
  switch i8 %i.b, label %bb.d [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.d = load i16, ptr %i.c, align 2, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.s, %bb.q, %bb.i, %bb.b
  %.sroa.09.0 = phi i16 [ %.sroa.590.0.extract.trunc, %bb.s ], [ %i.ap, %bb.q ], [ %.sroa.584.0.extract.trunc, %bb.i ], [ %i.d, %bb.b ] ; 14 uses
  %i.e = load i8, ptr %1, align 2, !range !18, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.t, label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.h = load i8, ptr %i.g, align 1, !range !18, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i16, ptr %i.j, align 2, !noundef !4 ; 4 uses
  br i1 %i.i, label %bb.j, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i16, ptr %i.l, align 2, !noundef !4 ; 2 uses
  %i.n = add i16 %i.m, -10000
  %or.cond = icmp ult i16 %i.n, -19999
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef i8 @_RNvXs1y_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = zext i16 %i.m to i32
  %i.t = shl nuw i32 %i.s, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit: ; preds = %bb.f, %bb.g
  %.sroa.3.0.insert.insert.i = phi i32 [ %i.t, %bb.g ], [ %i.r, %bb.f ] ; 3 uses
  %i.u = trunc i32 %.sroa.3.0.insert.insert.i to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit
  %.sroa.483.0.extract.shift = lshr i32 %.sroa.3.0.insert.insert.i, 8
  %.sroa.483.0.extract.trunc = trunc i32 %.sroa.483.0.extract.shift to i8
  %i.v = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.483.0.extract.trunc)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.at

bb.i:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit
  %.sroa.584.0.extract.shift = lshr i32 %.sroa.3.0.insert.insert.i, 16
  %.sroa.584.0.extract.trunc = trunc nuw i32 %.sroa.584.0.extract.shift to i16
  br label %bb.c

bb.j:                                             ; preds = %bb.d
  %i.x = add i16 %i.k, -10000
  %or.cond136 = icmp ult i16 %i.x, -9999
  br i1 %or.cond136, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = tail call noundef i8 @_RNvXs1A_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_6YearCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = or disjoint i32 %i.aa, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b6YearCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit

bb.l:                                             ; preds = %bb.j
  %i.ac = zext nneg i16 %i.k to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b6YearCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b6YearCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit: ; preds = %bb.k, %bb.l
  %.sroa.3.0.insert.insert.i109 = phi i32 [ %i.ad, %bb.l ], [ %i.ab, %bb.k ] ; 3 uses
  %i.ae = trunc i32 %.sroa.3.0.insert.insert.i109 to i1
  br i1 %i.ae, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.d
  %i.af = add i16 %i.k, -10001
  %or.cond137 = icmp ult i16 %i.af, -10000
  br i1 %or.cond137, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = tail call noundef i8 @_RNvXs1C_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_7YearBCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #21
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = or disjoint i32 %i.ai, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b7YearBCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit

bb.o:                                             ; preds = %bb.m
  %i.ak = zext nneg i16 %i.k to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b7YearBCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b7YearBCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit: ; preds = %bb.n, %bb.o
  %.sroa.3.0.insert.insert.i112 = phi i32 [ %i.al, %bb.o ], [ %i.aj, %bb.n ] ; 3 uses
  %i.am = trunc i32 %.sroa.3.0.insert.insert.i112 to i1
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b7YearBCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit
  %.sroa.486.0.extract.shift = lshr i32 %.sroa.3.0.insert.insert.i112, 8
  %.sroa.486.0.extract.trunc = trunc i32 %.sroa.486.0.extract.shift to i8
  %i.an = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.486.0.extract.trunc)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.at

bb.q:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b7YearBCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit
  %.sroa.587.0.extract.shift = lshr i32 %.sroa.3.0.insert.insert.i112, 16
  %.sroa.587.0.extract.trunc = trunc nuw nsw i32 %.sroa.587.0.extract.shift to i16
  %i.ap = sub nsw i16 1, %.sroa.587.0.extract.trunc
  br label %bb.c

bb.r:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b6YearCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit
  %.sroa.489.0.extract.shift = lshr i32 %.sroa.3.0.insert.insert.i109, 8
  %.sroa.489.0.extract.trunc = trunc i32 %.sroa.489.0.extract.shift to i8
  %i.aq = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.489.0.extract.trunc)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.at

bb.s:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b6YearCENtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checksEB9_.exit
  %.sroa.590.0.extract.shift = lshr i32 %.sroa.3.0.insert.insert.i109, 16
  %.sroa.590.0.extract.trunc = trunc nuw nsw i32 %.sroa.590.0.extract.shift to i16
  br label %bb.c

bb.t:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.at = load i8, ptr %i.as, align 1, !noundef !4 ; 2 uses
  %i.au = add i8 %i.at, -13
  %or.cond138 = icmp ult i8 %i.au, -12
  br i1 %or.cond138, label %bb.v, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b5MonthNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkaEB9_.exit

end_hunk_0
