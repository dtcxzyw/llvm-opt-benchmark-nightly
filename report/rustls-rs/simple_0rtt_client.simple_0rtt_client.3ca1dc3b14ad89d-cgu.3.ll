Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_client.simple_0rtt_client.3ca1dc3b14ad89d-cgu.3?download=true
inline.NumInlined: 317
inline.NumDeleted: 142
begin_hunk_0_@_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client:bb.a

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread315, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.du = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.dv = and i64 %i.du, 3
  switch i64 %i.dv, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123
    i64 1, label %bb.e
  ], !prof !10

default.unreachable:                              ; preds = %bb.gw, %bb.gs, %bb.gd, %bb.ga, %bb.f, %bb.fe, %bb.ey, %bb.er, %bb.he, %bb.gz, %bb.gl, %bb.fp, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.dw = icmp ult ptr %.sroa.0.5, inttoptr (i64 188978561024 to ptr)
  %i.dx = and i64 %i.du, 1095216660480
  %i.dy = icmp ne i64 %i.dx, 1095216660480
  call void @llvm.assume(i1 %i.dw)
  call void @llvm.assume(i1 %i.dy)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123

bb.e:                                             ; preds = %bb.c
  %i.dz = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.dz, ptr %i.ea, align 8, !alias.scope !11
  store i8 3, ptr %i.as, align 8, !alias.scope !11
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ea)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i123: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

.lr.ph:                                           ; preds = %.backedge, %bb.l
  %.sroa.021.1953 = phi i64 [ %i.ew, %bb.l ], [ %.sroa.021.0, %.backedge ] ; 3 uses
  %i.eb = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit unwind label %.thread244.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134: ; preds = %bb.l, %bb.b, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %.sroa.021.1346 = phi i64 [ %.sroa.021.1953, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ %.sroa.021.0, %bb.b ], [ %i.ew, %bb.l ] ; 8 uses
  %.sroa.0.5 = phi ptr [ %i.ee, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.b ], [ null, %bb.l ] ; 30 uses
  %i.ec = icmp ne i64 %.sroa.021.1346, 0          ; 2 uses
  %or.cond15.not.not = and i1 %i.dm, %i.ec
  br i1 %or.cond15.not.not, label %bb.p, label %bb.q

_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit: ; preds = %.lr.ph
  %i.ed = extractvalue { i64, ptr } %i.eb, 0
  %i.ee = extractvalue { i64, ptr } %i.eb, 1      ; 9 uses
  %i.ef = ptrtoint ptr %i.ee to i64               ; 4 uses
  %i.eg = trunc nuw i64 %i.ed to i1
  br i1 %i.eg, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.eh = and i64 %i.ef, 3
  switch i64 %i.eh, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 0, label %bb.i
    i64 1, label %bb.j
  ], !prof !10

bb.g:                                             ; preds = %bb.f
  %i.ei = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc129 unwind label %bb.m

.noexc129:                                        ; preds = %bb.g
  %i.ej = lshr i64 %i.ef, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !6, !noundef !6
  %i.en = invoke noundef i8 %i.em(i32 noundef %i.ek)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.m, !inline_history !14

bb.h:                                             ; preds = %bb.f
  %i.eo = lshr i64 %i.ef, 32
  %i.ep = icmp ult ptr %i.ee, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.eo to i8  ; 2 uses
  %i.eq = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.assume(i1 %i.eq)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.es = load i8, ptr %i.er, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %bb.f
  %i.et = getelementptr i8, ptr %i.ee, i64 31
  %i.eu = load i8, ptr %i.et, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.k:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCskaDheoimX9_18simple_0rtt_client.exit
  %i.ev = icmp eq ptr %i.ee, null
  br i1 %i.ev, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ew = add i64 %.sroa.021.1953, %i.ef          ; 2 uses
  %.val90 = load i64, ptr %i.ay, align 8, !noundef !6
  %.not320 = icmp eq i64 %.val90, 0
  br i1 %.not320, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134, label %.lr.ph

bb.m:                                             ; preds = %bb.g, %.noexc129
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr nonnull %i.ee) #13
          to label %.thread236 unwind label %bb.fh

bb.n:                                             ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1953, ptr %i.ez, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread: ; preds = %bb.n, %bb.o
  %storemerge = phi i64 [ 0, %bb.n ], [ 1, %bb.o ]
  store i64 %storemerge, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.j, %bb.i, %bb.h, %.noexc129
  %.sroa.0.0.i127 = phi i8 [ %i.eu, %bb.j ], [ %switch.idx.cast.i.i.i, %bb.h ], [ %i.es, %bb.i ], [ %i.en, %.noexc129 ]
  %i.fa = icmp eq i8 %.sroa.0.0.i127, 13
  br i1 %i.fa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.fb, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1346, ptr %i.fd, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit134
  %i.fe = load i64, ptr %i.az, align 8, !alias.scope !16, !noundef !6
  %i.ff = icmp ne i64 %i.fe, 0
  %i.fg = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !16
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i135 = select i1 %i.ff, i1 true, i1 %i.fh
  br i1 %or.cond.i135, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = load i8, ptr %i.aw, align 2, !range !5, !alias.scope !16, !noundef !6
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, label %bb.s

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread: ; preds = %bb.r
  %.not681496 = icmp eq ptr %.sroa.0.5, null
  br label %.preheader

bb.s:                                             ; preds = %bb.r
  %i.fk = load i64, ptr %i.ay, align 8, !alias.scope !16, !noundef !6
  %i.fl = icmp eq i64 %i.fk, 0
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137: ; preds = %bb.s, %bb.q
  %.sroa.0.0.i136 = phi i1 [ %i.fl, %bb.s ], [ false, %bb.q ]
  %.not68 = icmp eq ptr %.sroa.0.5, null          ; 2 uses
  %brmerge = or i1 %.not68, %.sroa.0.0.i136
  br i1 %brmerge, label %.preheader, label %bb.t

.preheader:                                       ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %.not681498 = phi i1 [ %.not681496, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread ], [ %.not68, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137 ]
  %i.fm = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.fm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %.lr.ph954.preheader

.lr.ph954.preheader:                              ; preds = %.preheader
  %i.fn = load i64, ptr %i.az, align 8, !alias.scope !19, !noundef !6
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !19
  %i.fq = trunc nuw i8 %i.fp to i1
  %or.cond.i1412415 = select i1 %i.fo, i1 true, i1 %i.fq
  br i1 %or.cond.i1412415, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %.lr.ph2416

bb.t:                                             ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread315, label %bb.u

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196.thread315: ; preds = %bb.t
  store i64 %.sroa.033.0, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1346, ptr %i.fs, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.0.5, ptr %i.fr, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(ptr null)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163: ; preds = %.lr.ph2416, %bb.em, %.lr.ph954, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153, %.lr.ph954.preheader, %.preheader, %bb.ew, %bb.ep
  %.sroa.0198.2 = phi ptr [ null, %bb.ep ], [ null, %bb.ew ], [ null, %.preheader ], [ null, %.lr.ph954.preheader ], [ %.sroa.5.0.i284, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 ], [ null, %bb.em ], [ null, %.lr.ph2416 ], [ null, %.lr.ph954 ] ; 24 uses
  %.sroa.033.1 = phi i64 [ %.sroa.033.0, %bb.ep ], [ %i.ol, %bb.ew ], [ %.sroa.033.0, %.preheader ], [ %.sroa.033.0, %.lr.ph954.preheader ], [ %.sroa.033.0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 ], [ %.sroa.033.0, %.lr.ph954 ], [ %.sroa.033.0, %bb.em ], [ %.sroa.033.0, %.lr.ph2416 ] ; 6 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.ep ], [ %spec.select, %bb.ew ], [ 1, %.preheader ], [ 0, %.lr.ph954.preheader ], [ 0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 ], [ 1, %bb.em ], [ 0, %.lr.ph2416 ], [ 0, %.lr.ph954 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !28
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bi, align 8, !alias.scope !30, !noalias !31 ; 2 uses
  %.sroa.63.0.copyload.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !alias.scope !30, !noalias !31 ; 3 uses
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !30, !noalias !31 ; 3 uses
  store i8 16, ptr %i.bi, align 8, !alias.scope !30, !noalias !31
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !35
  store i8 %.sroa.0.0.copyload.i.i, ptr %i.ar, align 8, !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false), !noalias !31
  store ptr %.sroa.63.0.copyload.i.i, ptr %.sroa.63.0..sroa_idx4.i.i, align 8, !noalias !35
  store ptr %.sroa.7.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx6.i.i, align 8, !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i.i, i64 40, i1 false), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !35
  invoke fastcc void @_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ar)
          to label %bb.ed unwind label %bb.ec, !noalias !36

.thread129.loopexit.i.i:                          ; preds = %bb.an, %bb.al, %.split.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.gc, ptr %i.ao, align 8, !noalias !35
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.i.i:        ; preds = %bb.af, %bb.ad, %.split.us.i.i.i.i
  %lpad.loopexit139.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.gc, ptr %i.ao, align 8, !noalias !35
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %.noexc60.i.i, %bb.ay, %.noexc57.i.i, %.noexc56.i.i, %bb.av, %bb.aq, %.noexc55.i.i
  %i.ft = phi i64 [ %i.hq, %bb.ay ], [ %i.hq, %.noexc57.i.i ], [ %i.hq, %.noexc56.i.i ], [ %i.hq, %bb.av ], [ %i.gc, %bb.aq ], [ %i.gc, %.noexc55.i.i ], [ %i.hq, %.noexc60.i.i ]
  %lpad.loopexit148.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ft, ptr %i.ao, align 8, !noalias !35
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.cj, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE22take_handshake_messageCskaDheoimX9_18simple_0rtt_client.exit.i.i.i, %bb.ba, %bb.aw, %.split89.us.i.i.i.i, %.split82.us.i.i.i.i, %bb.y, %bb.x
  %.sroa.10.1.ph.ph.ph.ph.ph.i.i = phi ptr [ %.sroa.10.2.i.i, %bb.y ], [ %.sroa.10.2.i.i, %bb.x ], [ %i.jn, %bb.cj ], [ %.sroa.10.2.i.i, %.split89.us.i.i.i.i ], [ %.sroa.10.2.i.i, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE22take_handshake_messageCskaDheoimX9_18simple_0rtt_client.exit.i.i.i ], [ %.sroa.10.2.i.i, %bb.aw ], [ %.sroa.10.2.i.i, %bb.ba ], [ %.sroa.10.2.i.i, %.split82.us.i.i.i.i ]
  %.sroa.0.1.ph.ph.ph.ph.ph.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.y ], [ %.sroa.0.2.i.i, %bb.x ], [ %i.jo, %bb.cj ], [ %.sroa.0.2.i.i, %.split89.us.i.i.i.i ], [ %.sroa.0.2.i.i, %_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE22take_handshake_messageCskaDheoimX9_18simple_0rtt_client.exit.i.i.i ], [ %.sroa.0.2.i.i, %bb.aw ], [ %.sroa.0.2.i.i, %bb.ba ], [ %.sroa.0.2.i.i, %.split82.us.i.i.i.i ]
  %lpad.loopexit152.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit: ; preds = %bb.ci, %.loopexit156.i.i
  %.sroa.10.1.ph.ph.ph.ph.ph150.i.i.ph = phi ptr [ %.sroa.10.3.i.i, %.loopexit156.i.i ], [ %i.jn, %bb.ci ]
  %.sroa.0.1.ph.ph.ph.ph.ph151.i.i.ph = phi ptr [ %.sroa.0.3.i.i, %.loopexit156.i.i ], [ %i.jo, %bb.ci ]
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %.thread116.i.i

.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp: ; preds = %._crit_edge.i.i.i.i
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %.thread116.i.i

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !35
  %.val.i.i = load i64, ptr %i.bk, align 8, !alias.scope !30, !noalias !31, !noundef !6 ; 2 uses
  store i64 %.val.i.i, ptr %i.ao, align 8, !noalias !35
  store i64 0, ptr %i.bl, align 8, !noalias !35
  br label %bb.x

bb.x:                                             ; preds = %bb.ck, %bb.w
  %.promoted.i.i = phi i64 [ %.val.i.i, %bb.w ], [ %i.ju, %bb.ck ] ; 3 uses
  %.sroa.10.2.i.i = phi ptr [ %.sroa.7.0.copyload.i.i, %bb.w ], [ %i.jn, %bb.ck ] ; 31 uses
  %.sroa.0.2.i.i = phi ptr [ %.sroa.63.0.copyload.i.i, %bb.w ], [ %i.jo, %bb.ck ] ; 27 uses
  %i.fu = invoke { ptr, i64 } @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer10filled_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.y unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !36 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.fv = extractvalue { ptr, i64 } %i.fu, 0      ; 9 uses
  %i.fw = extractvalue { ptr, i64 } %i.fu, 1      ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.fx = invoke noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17has_message_ready(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc.i.i unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !36

.noexc.i.i:                                       ; preds = %bb.y
  br i1 %i.fx, label %bb.bd, label %bb.z

bb.z:                                             ; preds = %.noexc.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !47
  %i.fy = load i16, ptr %i.bm, align 8, !range !50, !alias.scope !51, !noalias !52, !noundef !6
  %.not95.i.i.i.i = icmp eq i16 %i.fy, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !55
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  store ptr %i.fv, ptr %i.ae, align 8, !noalias !55
  store ptr %i.fz, ptr %i.bn, align 8, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !55
  %i.ga = icmp ugt i64 %.promoted.i.i, %i.fw
  br i1 %i.ga, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !prof !56

.lr.ph.i.i.i.i:                                   ; preds = %bb.z
  %i.gb = ptrtoint ptr %i.fv to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.az, %.lr.ph.i.i.i.i
  %i.gc = phi i64 [ %.promoted.i.i, %.lr.ph.i.i.i.i ], [ %i.hq, %bb.az ] ; 12 uses
  %i.gd = sub nuw nsw i64 %i.fw, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gc
  store ptr %i.ge, ptr %i.ad, align 8, !noalias !55
  store i64 %i.gd, ptr %i.bo, align 8, !noalias !55
  store i64 0, ptr %i.bp, align 8, !noalias !55
  br i1 %.not95.i.i.i.i, label %.split.i.i.i.i, label %.split.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.aa, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !55
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc45.i.i unwind label %.thread129.loopexit.split-lp.loopexit.i.i, !noalias !36

.noexc45.i.i:                                     ; preds = %.split.us.i.i.i.i
  %i.gf = load i8, ptr %i.ac, align 8, !range !57, !noalias !55, !noundef !6 ; 2 uses
  switch i8 %i.gf, label %.split82.us.i.i.i.i [
    i8 -2, label %.split84.us.i.i.i.i
    i8 -1, label %bb.ab
  ]

bb.ab:                                            ; preds = %.noexc45.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.gg = load i8, ptr %i.br, align 8, !range !58, !noalias !55, !noundef !6
  %cond.i.i.i.i = icmp eq i8 %i.gg, 0
  br i1 %cond.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gh = load i64, ptr %i.be, align 8, !alias.scope !51, !noalias !52, !noundef !6 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 230584300921369396
  call void @llvm.assume(i1 %i.gi)
  %.not.us.i.i.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.us.i.i.i.i, label %.split86.us.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !55
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer16decrypt_incoming(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc46.i.i unwind label %.thread129.loopexit.split-lp.loopexit.i.i, !noalias !36

.noexc46.i.i:                                     ; preds = %bb.ad
  %i.gj = load i8, ptr %i.z, align 8, !range !59, !noalias !55, !noundef !6
  %.not44.us.i.i.i.i = icmp eq i8 %i.gj, -1
  br i1 %.not44.us.i.i.i.i, label %bb.ae, label %.split89.us.i.i.i.i

bb.ae:                                            ; preds = %.noexc46.i.i
  %i.gk = load i16, ptr %i.bu, align 2, !range !50, !noalias !55, !noundef !6 ; 2 uses
  %.not45.us.i.i.i.i = icmp eq i16 %i.gk, -1
  br i1 %.not45.us.i.i.i.i, label %bb.af, label %.split91.us.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gl = invoke noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer10is_aligned(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %.noexc47.i.i unwind label %.thread129.loopexit.split-lp.loopexit.i.i, !noalias !36

.noexc47.i.i:                                     ; preds = %bb.af
  br i1 %i.gl, label %bb.ag, label %.split94.us.i.i.i.i

bb.ag:                                            ; preds = %.noexc47.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !55
  br label %.split.us.i.i.i.i

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.az
  store i64 %i.hq, ptr %i.ao, align 8, !noalias !35
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %._crit_edge.i.i.loopexit.i.i
  %.lcssa67.i.i.i.i = phi i64 [ %i.hq, %._crit_edge.i.i.loopexit.i.i ], [ %.promoted.i.i, %bb.z ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa67.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.fw, i64 noundef range(i64 0, -9223372036854775808) %i.fw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
          to label %.noexc48.i.i unwind label %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !36

.noexc48.i.i:                                     ; preds = %._crit_edge.i.i.i.i
  unreachable

.split.i.i.i.i:                                   ; preds = %bb.aa, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !55
  invoke void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc49.i.i unwind label %.thread129.loopexit.i.i, !noalias !36

.noexc49.i.i:                                     ; preds = %.split.i.i.i.i
  %i.gm = load i8, ptr %i.ac, align 8, !range !57, !noalias !55, !noundef !6 ; 2 uses
  switch i8 %i.gm, label %.split82.us.i.i.i.i [
    i8 -2, label %.split84.us.i.i.i.i
    i8 -1, label %bb.ai
  ]

.split84.us.i.i.i.i:                              ; preds = %.noexc45.i.i, %.noexc49.i.i
  store i64 %i.gc, ptr %i.ao, align 8, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !55
  store i16 -1, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 2, !noalias !35
  store i8 -1, ptr %i.an, align 8, !noalias !35
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client:bb.a
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.md, i64 noundef range(i64 1, 536870913) %i.mg) #16, !noalias !36
  br label %bb.fi

bb.dz:                                            ; preds = %bb.dw
  %i.mh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i.i, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !range !105, !invariant.load !6, !noalias !36 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %.thread236, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i.i, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !range !106, !invariant.load !6, !noalias !36
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.mj, i64 noundef range(i64 1, 536870913) %i.mm) #16, !noalias !36
  br label %.thread236

.thread116.i.i:                                   ; preds = %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp, %bb.dj, %bb.be, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.thread129.loopexit.split-lp.loopexit.i.i, %.thread129.loopexit.i.i
  %.pn35.pn115.i.i = phi { ptr, i32 } [ %i.hz, %bb.be ], [ %.pn35.i.i, %bb.dj ], [ %lpad.loopexit.i.i, %.thread129.loopexit.i.i ], [ %lpad.loopexit139.i.i, %.thread129.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit148.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit152.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit337, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp338, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp ]
  %.sroa.0.0114.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.be ], [ %.sroa.0.2.i.i, %bb.dj ], [ %.sroa.0.2.i.i, %.thread129.loopexit.i.i ], [ %.sroa.0.2.i.i, %.thread129.loopexit.split-lp.loopexit.i.i ], [ %.sroa.0.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.0.1.ph.ph.ph.ph.ph.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.0.1.ph.ph.ph.ph.ph151.i.i.ph, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit ], [ %.sroa.0.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp ]
  %.sroa.10.0113.i.i = phi ptr [ %.sroa.10.2.i.i, %bb.be ], [ %.sroa.10.2.i.i, %bb.dj ], [ %.sroa.10.2.i.i, %.thread129.loopexit.i.i ], [ %.sroa.10.2.i.i, %.thread129.loopexit.split-lp.loopexit.i.i ], [ %.sroa.10.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.10.1.ph.ph.ph.ph.ph.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.10.1.ph.ph.ph.ph.ph150.i.i.ph, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit ], [ %.sroa.10.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6client11client_conn20ClientConnectionDataEEL_EECskaDheoimX9_18simple_0rtt_client(ptr %.sroa.0.0114.i.i, ptr %.sroa.10.0113.i.i) #13
          to label %.thread236 unwind label %bb.cz, !noalias !36

bb.eb:                                            ; preds = %.body95.i.i, %bb.ec
  %.pn38.i.i = phi { ptr, i32 } [ %eh.lpad-body96.i.i, %.body95.i.i ], [ %i.mn, %bb.ec ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ar) #13
          to label %.thread236 unwind label %bb.cz, !noalias !36

bb.ec:                                            ; preds = %bb.v
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ed:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 64, i1 false), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !35
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.mo = load i8, ptr %i.bi, align 8, !range !59, !alias.scope !145, !noalias !31, !noundef !6
  %i.mp = icmp eq i8 %i.mo, -1
  br i1 %i.mp, label %bb.ee, label %bb.ek

bb.ee:                                            ; preds = %bb.ed
  %.val.i91.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !alias.scope !145, !noalias !31 ; 5 uses
  %.val1.i92.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !145, !noalias !31, !nonnull !6, !align !120, !noundef !6 ; 5 uses
  %i.mq = load ptr, ptr %.val1.i92.i.i, align 8, !invariant.load !6, !noalias !146 ; 2 uses
  %.not.i.i93.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i93.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i91.i.i) ]
  invoke void %i.mq(ptr noundef nonnull %.val.i91.i.i)
          to label %bb.eg unwind label %bb.ei, !noalias !146

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.mr = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !range !105, !invariant.load !6, !noalias !146 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  br i1 %i.mt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mu = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !range !106, !invariant.load !6, !noalias !146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i91.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i91.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ms, i64 noundef range(i64 1, 536870913) %i.mv) #16, !noalias !146
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i

bb.ei:                                            ; preds = %bb.ef
  %i.mw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !range !105, !invariant.load !6, !noalias !146 ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %.body95.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.na = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !range !106, !invariant.load !6, !noalias !146
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i91.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.my, i64 noundef range(i64 1, 536870913) %i.nb) #16, !noalias !146
  br label %.body95.i.i

bb.ek:                                            ; preds = %bb.ed
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i unwind label %bb.el, !noalias !36

bb.el:                                            ; preds = %bb.ek
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i.i

.body95.i.i:                                      ; preds = %bb.el, %bb.ej, %bb.ei
  %eh.lpad-body96.i.i = phi { ptr, i32 } [ %i.nc, %bb.el ], [ %i.mw, %bb.ej ], [ %i.mw, %bb.ei ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false), !noalias !31
  br label %bb.eb

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i: ; preds = %bb.ek, %bb.eh, %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !35
  br label %bb.fi

.lr.ph2416:                                       ; preds = %.lr.ph954.preheader, %.lr.ph954
  %i.nd = load i8, ptr %i.aw, align 2, !range !5, !alias.scope !19, !noundef !6
  %i.ne = trunc nuw i8 %i.nd to i1
  %i.nf = load i64, ptr %i.ay, align 8
  %i.ng = icmp eq i64 %i.nf, 0
  %or.cond = select i1 %i.ne, i1 true, i1 %i.ng
  br i1 %or.cond, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread: ; preds = %.lr.ph2416
  %i.nh = invoke noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bc)
          to label %.noexc145 unwind label %.thread244.loopexit.split-lp.loopexit

.noexc145:                                        ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread
  br i1 %i.nh, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.noexc145
  %i.ni = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !147, !noundef !6
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %bb.eo

bb.en:                                            ; preds = %.noexc145
  %i.nk = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 30) #17
          to label %.thread281 unwind label %.thread244.loopexit.split-lp.loopexit ; 2 uses

.thread281:                                       ; preds = %bb.en
  %i.nl = ptrtoint ptr %i.nk to i64
  br label %bb.er

bb.eo:                                            ; preds = %bb.em
  %i.nm = load i64, ptr %i.be, align 8, !alias.scope !147, !noundef !6 ; 2 uses
  %i.nn = icmp ult i64 %i.nm, 230584300921369396
  call void @llvm.assume(i1 %i.nn)
  %i.no = icmp ne i64 %i.nm, 0
  %i.np = invoke { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @2, i1 noundef zeroext %i.no)
          to label %.noexc147 unwind label %.thread244.loopexit.split-lp.loopexit

.noexc147:                                        ; preds = %bb.eo
  %.fr321 = freeze { i64, ptr } %i.np             ; 2 uses
  %i.nq = extractvalue { i64, ptr } %.fr321, 0
  %i.nr = extractvalue { i64, ptr } %.fr321, 1    ; 4 uses
  %i.ns = trunc nuw i64 %i.nq to i1               ; 2 uses
  %i.nt = icmp ne ptr %i.nr, null
  %or.cond.not.i = or i1 %i.nt, %i.ns
  br i1 %or.cond.not.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.noexc147
  store i8 1, ptr %i.bg, align 4, !alias.scope !147
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163

bb.eq:                                            ; preds = %.noexc147
  %i.nu = ptrtoint ptr %i.nr to i64               ; 2 uses
  br i1 %i.ns, label %bb.er, label %bb.ew

bb.er:                                            ; preds = %.thread281, %bb.eq
  %i.nv = phi i64 [ %i.nl, %.thread281 ], [ %i.nu, %bb.eq ] ; 6 uses
  %.sroa.5.0.i284 = phi ptr [ %i.nk, %.thread281 ], [ %i.nr, %bb.eq ] ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i284) ]
  %i.nw = and i64 %i.nv, 3                        ; 3 uses
  switch i64 %i.nw, label %default.unreachable [
    i64 2, label %bb.es
    i64 3, label %bb.et
    i64 0, label %bb.eu
    i64 1, label %bb.ev
  ], !prof !10

bb.es:                                            ; preds = %bb.er
  %i.nx = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc151 unwind label %bb.ex

.noexc151:                                        ; preds = %bb.es
  %i.ny = lshr i64 %i.nv, 32
  %i.nz = trunc nuw i64 %i.ny to i32
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !nonnull !6, !noundef !6
  %i.oc = invoke noundef i8 %i.ob(i32 noundef %i.nz)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 unwind label %bb.ex, !inline_history !14

bb.et:                                            ; preds = %bb.er
  %i.od = lshr i64 %i.nv, 32
  %i.oe = icmp ult ptr %.sroa.5.0.i284, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i149 = trunc i64 %i.od to i8 ; 2 uses
  %i.of = icmp ne i8 %switch.idx.cast.i.i.i149, -1
  call void @llvm.assume(i1 %i.oe)
  call void @llvm.assume(i1 %i.of)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153

bb.eu:                                            ; preds = %bb.er
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i284, i64 16
  %i.oh = load i8, ptr %i.og, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153

bb.ev:                                            ; preds = %bb.er
  %i.oi = getelementptr i8, ptr %.sroa.5.0.i284, i64 31
  %i.oj = load i8, ptr %i.oi, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153

bb.ew:                                            ; preds = %bb.eq
  %i.ok = icmp eq ptr %i.nr, null
  %i.ol = add i64 %.sroa.033.0, %i.nu
  %spec.select = zext i1 %i.ok to i8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163

bb.ex:                                            ; preds = %bb.es, %.noexc151, %bb.ez, %.noexc157
  %i.om = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr %.sroa.5.0.i284) #13
          to label %.thread236 unwind label %bb.fh

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153: ; preds = %bb.ev, %bb.eu, %bb.et, %.noexc151
  %.sroa.0.0.i148 = phi i8 [ %i.oj, %bb.ev ], [ %switch.idx.cast.i.i.i149, %bb.et ], [ %i.oh, %bb.eu ], [ %i.oc, %.noexc151 ]
  %i.on = icmp eq i8 %.sroa.0.0.i148, 13
  br i1 %i.on, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %bb.ey

bb.ey:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i284) ]
  switch i64 %i.nw, label %default.unreachable [
    i64 2, label %bb.ez
    i64 3, label %bb.fa
    i64 0, label %bb.fb
    i64 1, label %bb.fc
  ], !prof !10

bb.ez:                                            ; preds = %bb.ey
  %i.oo = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc157 unwind label %bb.ex

.noexc157:                                        ; preds = %bb.ez
  %i.op = lshr i64 %i.nv, 32
  %i.oq = trunc nuw i64 %i.op to i32
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !nonnull !6, !noundef !6
  %i.ot = invoke noundef i8 %i.os(i32 noundef %i.oq)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159 unwind label %bb.ex, !inline_history !14

bb.fa:                                            ; preds = %bb.ey
  %i.ou = lshr i64 %i.nv, 32
  %i.ov = icmp ult ptr %.sroa.5.0.i284, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i155 = trunc i64 %i.ou to i8 ; 2 uses
  %i.ow = icmp ne i8 %switch.idx.cast.i.i.i155, -1
  call void @llvm.assume(i1 %i.ov)
  call void @llvm.assume(i1 %i.ow)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

bb.fb:                                            ; preds = %bb.ey
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i284, i64 16
  %i.oy = load i8, ptr %i.ox, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

bb.fc:                                            ; preds = %bb.ey
  %i.oz = getelementptr i8, ptr %.sroa.5.0.i284, i64 31
  %i.pa = load i8, ptr %i.oz, align 8, !range !15, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159: ; preds = %bb.fc, %bb.fb, %bb.fa, %.noexc157
  %.sroa.0.0.i154 = phi i8 [ %i.pa, %bb.fc ], [ %switch.idx.cast.i.i.i155, %bb.fa ], [ %i.oy, %bb.fb ], [ %i.ot, %.noexc157 ]
  %i.pb = icmp eq i8 %.sroa.0.0.i154, 35
  br i1 %i.pb, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i284, ptr %i.pc, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.fe:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i284) ]
  switch i64 %i.nw, label %default.unreachable [
    i64 2, label %.lr.ph954
    i64 3, label %bb.ff
    i64 0, label %.lr.ph954
    i64 1, label %bb.fg
  ], !prof !10

bb.ff:                                            ; preds = %bb.fe
  %i.pd = icmp ult ptr %.sroa.5.0.i284, inttoptr (i64 188978561024 to ptr)
  %i.pe = and i64 %i.nv, 1095216660480
  %i.pf = icmp ne i64 %i.pe, 1095216660480
  call void @llvm.assume(i1 %i.pd)
  call void @llvm.assume(i1 %i.pf)
  br label %.lr.ph954

bb.fg:                                            ; preds = %bb.fe
  %i.pg = getelementptr i8, ptr %.sroa.5.0.i284, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pg) ]
  store ptr %i.pg, ptr %i.bf, align 8, !alias.scope !150
  store i8 3, ptr %i.i, align 8, !alias.scope !150
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.lr.ph954 unwind label %.thread294

.thread294:                                       ; preds = %bb.fg
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

.lr.ph954:                                        ; preds = %bb.ff, %bb.fe, %bb.fe, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.pi = load i64, ptr %i.az, align 8, !alias.scope !19, !noundef !6
  %i.pj = icmp ne i64 %i.pi, 0
  %i.pk = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !19
  %i.pl = trunc nuw i8 %i.pk to i1
  %or.cond.i141 = select i1 %i.pj, i1 true, i1 %i.pl
  br i1 %or.cond.i141, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %.lr.ph2416

bb.fh:                                            ; preds = %bb.fn, %bb.fl, %.thread236, %.split.thread, %bb.ex, %bb.gv, %bb.hc, %bb.m, %bb.fs
  %i.pm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.fi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i, %bb.dy, %bb.dx, %bb.cy
  %.pr = load i8, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !28
  %.not = icmp eq i8 %.pr, -1
  br i1 %.not, label %bb.ft, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false)
  %i.pn = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %bb.fm unwind label %bb.fs     ; 2 uses

bb.fk:                                            ; preds = %bb.fr
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

bb.fl:                                            ; preds = %bb.fn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(i64 %i.pp, ptr %i.pq) #13
          to label %.thread236 unwind label %bb.fh

bb.fm:                                            ; preds = %bb.fj
  %i.pp = extractvalue { i64, ptr } %i.pn, 0      ; 2 uses
  %i.pq = extractvalue { i64, ptr } %i.pn, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false)
  %i.pr = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.at)
          to label %bb.fo unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ps = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(ptr null) #13
          to label %bb.fl unwind label %bb.fh

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pr, ptr %i.pt, align 8
  store i64 1, ptr %0, align 8
  %i.pu = icmp eq i64 %i.pp, 0
  br i1 %i.pu, label %bb.hd, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pq) ]
  %i.pv = ptrtoint ptr %i.pq to i64               ; 2 uses
  %i.pw = and i64 %i.pv, 3
  switch i64 %i.pw, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171
    i64 3, label %bb.fq
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171
    i64 1, label %bb.fr
  ], !prof !10

bb.fq:                                            ; preds = %bb.fp
  %i.px = icmp ult ptr %i.pq, inttoptr (i64 188978561024 to ptr)
  %i.py = and i64 %i.pv, 1095216660480
  %i.pz = icmp ne i64 %i.py, 1095216660480
  call void @llvm.assume(i1 %i.px)
  call void @llvm.assume(i1 %i.pz)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171

bb.fr:                                            ; preds = %bb.fp
  %i.qa = getelementptr i8, ptr %i.pq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qa) ]
  %i.qb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.qa, ptr %i.qb, align 8, !alias.scope !153
  store i8 3, ptr %i.h, align 8, !alias.scope !153
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qb)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171 unwind label %bb.fk

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171: ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.hd

bb.fs:                                            ; preds = %bb.fj
  %i.qc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.au) #13
          to label %.thread236 unwind label %bb.fh

bb.ft:                                            ; preds = %.thread297, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %.val89 = load i64, ptr %i.ay, align 8, !noundef !6
  %i.qd = icmp ne i64 %.val89, 0                  ; 2 uses
  %.not71 = icmp eq ptr %.sroa.0198.2, null       ; 2 uses
  %brmerge3 = or i1 %.not71, %i.qd
  br i1 %brmerge3, label %bb.fu, label %bb.fv

end_hunk_1
