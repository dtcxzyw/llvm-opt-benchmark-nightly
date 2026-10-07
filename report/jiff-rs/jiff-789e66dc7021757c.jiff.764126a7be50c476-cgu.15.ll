Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0_@_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date:bb.a
  %.sroa.439.0.copyload = load i32, ptr %.sroa.439.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not48 = icmp eq i16 %.sroa.038.0.copyload, 1
  br i1 %.not48, label %.thread140, label %bb.p

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime16to_date_from_iso(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #23
  %i.bg = load i16, ptr %i.v, align 8, !range !16, !noundef !4
  %i.bh = trunc nuw i16 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8
  br label %bb.bn

bb.p:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.val = load i16, ptr %i.bl, align 4, !range !16, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 86
  %.val53 = load i16, ptr %i.bm, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bn = trunc nuw i16 %.val to i1
  br i1 %i.bn, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i, label %bb.ac

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i: ; preds = %bb.p
  %i.bo = add i16 %i.ac, -10000
  %or.cond.i.i55 = icmp ult i16 %i.bo, -19999
  br i1 %or.cond.i.i55, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i, !prof !11

bb.q:                                             ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i
  %i.bp = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !305
  store ptr %i.bp, ptr %i.p, align 8, !noalias !305
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
          to label %bb.u unwind label %bb.r, !noalias !305

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !307), !noalias !308
  %i.br = load ptr, ptr %i.p, align 8, !alias.scope !309, !noalias !305, !noundef !4 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !310
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.t, label %common.resume

bb.t:                                             ; preds = %bb.s
  fence acquire, !noalias !308
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #21
          to label %common.resume unwind label %bb.v, !noalias !304

bb.u:                                             ; preds = %bb.q
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !305
  unreachable

common.resume:                                    ; preds = %bb.bc, %bb.bd, %bb.be, %bb.al, %bb.am, %bb.an, %bb.r, %bb.s, %bb.t, %bb.x, %bb.y, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.al ], [ %i.ce, %bb.x ], [ %i.bq, %bb.t ], [ %i.bq, %bb.s ], [ %i.bq, %bb.r ], [ %i.ce, %bb.z ], [ %i.ce, %bb.y ], [ %i.dx, %bb.an ], [ %i.dx, %bb.am ], [ %i.gk, %bb.be ], [ %i.gk, %bb.bd ], [ %i.gk, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i: ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i
  %.sroa.016.0.insert.ext.i.i56 = zext i16 %i.ac to i32
  %.sroa.016.0.insert.insert.i.i57 = or disjoint i32 %.sroa.016.0.insert.ext.i.i56, 16842752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !304
  %.sroa.429.0.insert.ext.i = zext i16 %.val53 to i32
  %.sroa.429.0.insert.shift.i = shl nuw i32 %.sroa.429.0.insert.ext.i, 16
  %.sroa.027.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  store i32 %.sroa.016.0.insert.insert.i.i57, ptr %i.bw, align 2, !noalias !304
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 2, ptr %i.bx, align 2, !noalias !304
  store i8 0, ptr %i.q, align 2, !noalias !304
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i32 %.sroa.027.0.insert.insert.i, ptr %i.by, align 2, !noalias !304
  call fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(14) %i.q) #23, !noalias !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !304
  %i.bz = load i16, ptr %i.r, align 8, !range !16, !noalias !304, !noundef !4
  %i.ca = trunc nuw i16 %i.bz to i1
  br i1 %i.ca, label %bb.w, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit

bb.w:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !304, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !311
  store ptr %i.cc, ptr %i.o, align 8, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !311
  store i8 9, ptr %i.n, align 8, !noalias !304
  %i.cd = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ab unwind label %bb.x, !noalias !311

bb.x:                                             ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cf = icmp eq ptr %i.cc, null
  br i1 %i.cf, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !312
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #21
          to label %common.resume unwind label %bb.aa, !noalias !311

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !311
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtBN_5error5ErrorE6unwrapBN_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.sroa.030.0.copyload.i = load i32, ptr %i.cj, align 2, !noalias !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.thread140

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !311
  %i.ck = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.cc, ptr noundef %i.cd), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.cl, align 8
  br label %bb.bn

bb.ac:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.cn = load i8, ptr %i.cm, align 2, !range !18, !alias.scope !313, !noalias !314, !noundef !4
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !313, !noalias !314 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.cs = load i8, ptr %i.cr, align 1, !range !17, !alias.scope !313, !noalias !314, !noundef !4 ; 7 uses
  %.not.i = icmp ne i8 %i.cs, 0                   ; 2 uses
  %or.cond.not.i = and i1 %.not.i, %i.co
  br i1 %or.cond.not.i, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59, label %bb.ar

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59: ; preds = %bb.ac
  %i.ct = sext i8 %i.cq to i16
  %i.cu = icmp eq i8 %i.cs, 7
  %spec.store.select.i = select i1 %i.cu, i8 0, i8 %i.cs
  %i.cv = zext nneg i8 %spec.store.select.i to i16 ; 2 uses
  %i.cw = add i16 %i.ac, -10000
  %or.cond.i.i60 = icmp ult i16 %i.cw, -19999
  %.sroa.016.0.insert.ext.i.i61 = zext i16 %i.ac to i32
  %.sroa.016.0.insert.insert.i.i62 = or disjoint i32 %.sroa.016.0.insert.ext.i.i61, 16842752
  br i1 %or.cond.i.i60, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63, !prof !11

bb.ad:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59
  %i.cx = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !315
  store i8 9, ptr %i.j, align 8, !noalias !315
  %i.cy = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noundef %i.cx) #23, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !315
  br label %bb.aq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63: ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i59
  %i.cz = sext i16 %i.ac to i32
  %i.da = add nsw i32 %i.cz, 32799                ; 2 uses
  %.lhs.trunc = trunc nuw i32 %i.da to i16        ; 2 uses
  %i.db = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %i.db to i32
  %i.dc = mul nuw nsw i32 %i.da, 1461
  %i.dd = lshr i32 %i.dc, 2
  %i.de = udiv i16 %.lhs.trunc, 400
  %.zext155 = zext nneg i16 %i.de to i32
  %reass.sub160.i = add nsw i32 %i.dd, -12699116
  %i.df = sub nsw i32 %reass.sub160.i, %.zext
  %i.dg = add nsw i32 %i.df, %.zext155
  %i.dh = mul i32 %i.dg, 613566757
  %i.di = add i32 %i.dh, -1879048192
  %i.dj = lshr i32 %i.di, 29                      ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ae, label %bb.af, !prof !9

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24, !noalias !316
  unreachable

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i63
  %i.dl = trunc nuw nsw i32 %i.dj to i16          ; 2 uses
  %i.dm = icmp eq i8 %i.cq, 0
  br i1 %i.dm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %2 = mul nsw i16 %i.ct, 7
  %reass.sub = sub nsw i16 %2, %i.dl
  %3 = add nsw i16 %reass.sub, 1
  %4 = add nsw i16 %3, %i.cv
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %5 = xor i16 %i.cv, 7
  %6 = add nuw nsw i16 %5, %i.dl                  ; 2 uses
  %7 = sub nsw i16 8, %6
  %8 = icmp eq i16 %6, 8
  br i1 %8, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !315
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.cs, ptr %i.dn, align 1, !noalias !315
  store i8 12, ptr %i.m, align 8, !noalias !315
  %i.do = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #21, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !315
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.068.0.i = phi i16 [ %7, %bb.ah ], [ %4, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !315
  %.sroa.4112.0.insert.ext.i = zext i16 %.sroa.068.0.i to i32
  %.sroa.4112.0.insert.shift.i = shl nuw i32 %.sroa.4112.0.insert.ext.i, 16
  %.sroa.0110.0.insert.insert.i = or disjoint i32 %.sroa.4112.0.insert.shift.i, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  store i32 %.sroa.016.0.insert.insert.i.i62, ptr %i.dp, align 2, !noalias !315
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 2, ptr %i.dq, align 2, !noalias !315
  store i8 0, ptr %i.k, align 2, !noalias !315
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  store i32 %.sroa.0110.0.insert.insert.i, ptr %i.dr, align 2, !noalias !315
  call fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(14) %i.k) #23, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !315
  %i.ds = load i16, ptr %i.l, align 8, !range !16, !noalias !315, !noundef !4
  %i.dt = trunc nuw i16 %i.ds to i1
  br i1 %i.dt, label %bb.ak, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit

bb.ak:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !315, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !317
  store ptr %i.dv, ptr %i.i, align 8, !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !317
  store i8 9, ptr %i.h, align 8, !noalias !315
  %i.dw = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ap unwind label %bb.al, !noalias !317

bb.al:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dy = icmp eq ptr %i.dv, null
  br i1 %i.dy, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !318
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.an, label %common.resume

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
          to label %common.resume unwind label %bb.ao, !noalias !317

bb.ao:                                            ; preds = %bb.an
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !317
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !317
  %i.ec = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.dv, ptr noundef %i.dw), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !317
  br label %bb.aq

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit: ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %.sroa.0113.0.copyload.i = load i32, ptr %i.ed, align 2, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread140

bb.aq:                                            ; preds = %bb.ad, %bb.ap, %bb.ai
  %.sroa.15.0.ph = phi ptr [ %i.ec, %bb.ap ], [ %i.do, %bb.ai ], [ %i.cy, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.15.0.ph, ptr %i.ee, align 8
  br label %bb.bn

bb.ar:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.eg = load i8, ptr %i.ef, align 4, !range !18, !alias.scope !319, !noalias !320, !noundef !4
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 101
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !319, !noalias !320 ; 2 uses
  %or.cond.not.i67 = and i1 %.not.i, %i.eh
  br i1 %or.cond.not.i67, label %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68, label %bb.bi

_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68: ; preds = %bb.ar
  %i.ek = sext i8 %i.ej to i16
  %i.el = add nsw i8 %i.cs, -1
  %i.em = zext nneg i8 %i.el to i16               ; 2 uses
  %i.en = add i16 %i.ac, -10000
  %or.cond.i.i69 = icmp ult i16 %i.en, -19999
  %.sroa.016.0.insert.ext.i.i70 = zext i16 %i.ac to i32
  %.sroa.016.0.insert.insert.i.i71 = or disjoint i32 %.sroa.016.0.insert.ext.i.i70, 16842752
  br i1 %or.cond.i.i69, label %bb.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72, !prof !11

bb.as:                                            ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68
  %i.eo = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 8447) #21, !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !321
  store i8 9, ptr %i.d, align 8, !noalias !321
  %i.ep = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noundef %i.eo) #23, !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !321
  br label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72: ; preds = %_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date3new.exit.i68
  %i.eq = sext i16 %i.ac to i32
  %i.er = add nsw i32 %i.eq, 32799                ; 2 uses
  %.lhs.trunc156 = trunc nuw i32 %i.er to i16     ; 2 uses
  %i.es = udiv i16 %.lhs.trunc156, 100
  %.zext157 = zext nneg i16 %i.es to i32
  %i.et = mul nuw nsw i32 %i.er, 1461
  %i.eu = lshr i32 %i.et, 2
  %i.ev = udiv i16 %.lhs.trunc156, 400
  %.zext159 = zext nneg i16 %i.ev to i32
  %reass.sub.i = add nsw i32 %i.eu, -12699116
  %i.ew = sub nsw i32 %reass.sub.i, %.zext157
  %i.ex = add nsw i32 %i.ew, %.zext159
  %i.ey = mul i32 %i.ex, 613566757
  %i.ez = add i32 %i.ey, -1879048192
  %i.fa = lshr i32 %i.ez, 29                      ; 3 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.at, label %bb.au, !prof !9

bb.at:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #24, !noalias !322
  unreachable

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i72
  %.not153.i = icmp eq i32 %i.fa, 1
  %i.fc = shl nuw nsw i32 %i.fa, 24
  %i.fd = sub nuw nsw i32 150994944, %i.fc
  %.sroa.518.0.insert.shift.i.i.i.i = select i1 %.not153.i, i32 16777216, i32 %i.fd ; 2 uses
  %.sroa.016.0.insert.insert.i.i.i.i = lshr exact i32 %.sroa.518.0.insert.shift.i.i.i.i, 16
  %.sroa.4.0.extract.shift.i.i = or disjoint i32 %.sroa.016.0.insert.insert.i.i.i.i, 1
  %.sroa.4.0.extract.trunc.i.i = zext nneg i32 %.sroa.4.0.extract.shift.i.i to i64
  %sext.i121.i = shl i64 %.sroa.4.0.extract.trunc.i.i, 56
  %i.fe = ashr exact i64 %sext.i121.i, 56         ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 14
  br i1 %i.ff, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !321
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i: ; preds = %bb.au
  %i.fg = srem i16 %i.ac, 25
  %i.fh = icmp eq i16 %i.fg, 0
  %..i.i.i78 = select i1 %i.fh, i16 15, i16 3
  %i.fi = and i16 %..i.i.i78, %i.ac
  %i.fj = icmp eq i16 %i.fi, 0
  %.sroa.sel.i.i = select i1 %i.fj, ptr getelementptr inbounds nuw (i8, ptr @23, i64 28), ptr @23
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.sel.i.i, i64 %i.fe
  %i.fl = load i16, ptr %i.fk, align 2, !noalias !321, !noundef !4
  %i.fm = lshr exact i32 %.sroa.518.0.insert.shift.i.i.i.i, 24
  %i.fn = trunc nuw nsw i32 %i.fm to i16
  %i.fo = add i16 %i.fl, %i.fn                    ; 2 uses
  %i.fp = icmp eq i8 %i.ej, 0
  br i1 %i.fp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i
  %i.fq = sub nuw nsw i16 7, %i.em
  %i.fr = tail call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.fo, i16 %i.fq) ; 2 uses
  %i.fs = extractvalue { i16, i1 } %i.fr, 1
  br i1 %i.fs, label %bb.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i, !prof !11

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultsNtBK_5ErrorEINtBK_12ErrorContextsB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit.i
  %i.ft = mul nsw i16 %i.ek, 7
  %i.fu = add nsw i16 %i.ft, -7
  %i.fv = add nsw i16 %i.fu, %i.em
  %i.fw = add i16 %i.fv, %i.fo
  br label %bb.ba

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i: ; preds = %bb.aw
  %i.fx = extractvalue { i16, i1 } %i.fr, 0       ; 2 uses
  %i.fy = icmp eq i16 %i.fx, 0
  br i1 %i.fy, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !321
  store i8 11, ptr %i.c, align 8, !noalias !321
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.cs, ptr %.sroa.463.0..sroa_idx.i, align 1, !noalias !321
  %i.fz = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #21, !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !321
  br label %bb.bh

bb.az:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !321
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.cs, ptr %i.ga, align 1, !noalias !321
  store i8 11, ptr %i.g, align 8, !noalias !321
  %i.gb = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #21, !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !321
  br label %bb.bh

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i, %bb.ax
  %.sroa.066.0.i = phi i16 [ %i.fx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit.i ], [ %i.fw, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !321
  %.sroa.4110.0.insert.ext.i = zext i16 %.sroa.066.0.i to i32
  %.sroa.4110.0.insert.shift.i = shl nuw i32 %.sroa.4110.0.insert.ext.i, 16
  %.sroa.0108.0.insert.insert.i = or disjoint i32 %.sroa.4110.0.insert.shift.i, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i32 %.sroa.016.0.insert.insert.i.i71, ptr %i.gc, align 2, !noalias !321
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 2, ptr %i.gd, align 2, !noalias !321
  store i8 0, ptr %i.e, align 2, !noalias !321
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i32 %.sroa.0108.0.insert.insert.i, ptr %i.ge, align 2, !noalias !321
  call fastcc void @_RNvMsE_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_8DateWith5build(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(14) %i.e) #23, !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !321
  %i.gf = load i16, ptr %i.f, align 8, !range !16, !noalias !321, !noundef !4
  %i.gg = trunc nuw i16 %i.gf to i1
  br i1 %i.gg, label %bb.bb, label %.thread149

bb.bb:                                            ; preds = %bb.ba
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !321, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !323
  store ptr %i.gi, ptr %i.b, align 8, !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !323
  store i8 9, ptr %i.a, align 8, !noalias !321
  %i.gj = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.bg unwind label %bb.bc, !noalias !323

bb.bc:                                            ; preds = %bb.bb
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gl = icmp eq ptr %i.gi, null
  br i1 %i.gl, label %common.resume, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gm = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !324
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.be, label %common.resume

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume unwind label %bb.bf, !noalias !323

bb.bf:                                            ; preds = %bb.be
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !323
  unreachable

bb.bg:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !323
  %i.gp = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.gi, ptr noundef %i.gj), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !323
  br label %bb.bh

.thread149:                                       ; preds = %bb.ba
  %i.gq = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.0111.0.copyload.i = load i32, ptr %i.gq, align 2, !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread140

bb.bh:                                            ; preds = %bb.as, %bb.ay, %bb.az, %bb.bg
  %.sroa.16.0.ph = phi ptr [ %i.gp, %bb.bg ], [ %i.gb, %bb.az ], [ %i.fz, %bb.ay ], [ %i.ep, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.16.0.ph, ptr %i.gr, align 8
  br label %bb.bn

.thread140:                                       ; preds = %.thread149, %.thread96, %bb.m, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit
  %.sroa.10.3143 = phi i32 [ %.sroa.0111.0.copyload.i, %.thread149 ], [ %.sroa.0113.0.copyload.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime21to_date_from_week_sun.exit ], [ %.sroa.030.0.copyload.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime24to_date_from_day_of_year.exit ], [ %.sroa.016.0.insert.insert.i.i, %.thread96 ], [ %.sroa.439.0.copyload, %bb.m ] ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 109
end_hunk_0
