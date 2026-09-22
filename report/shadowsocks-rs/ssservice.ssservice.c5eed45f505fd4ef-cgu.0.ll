Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtCsgCecv3eZDcN_5alloc6string6StringE12send_request0CsgZAIVb0XKpv_9ssservice:bb.a

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1083 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1082 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1081 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i32 0, ptr %i.cg, align 1
  %i.cj = load <2 x ptr>, ptr %i.ci, align 8
  store <2 x ptr> %i.cj, ptr %i.ch, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(248) %i.ck, ptr noundef nonnull align 16 dereferenceable(248) %1, i64 248, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cn = load ptr, ptr %i.cm, align 8, !align !186, !noundef !178
  store ptr %i.cn, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http5utils9host_addr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cb, ptr noundef nonnull align 8 %i.co) #53
  %i.cp = load i16, ptr %i.cb, align 8, !range !239, !noundef !178
  %.not = icmp eq i16 %i.cp, 2
  br i1 %.not, label %bb.f, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0229)
  br label %bb.as

bb.e:                                             ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1084
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.cr, ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i64 40, i1 false)
  store i8 1, ptr %i.cq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cs, ptr noundef nonnull align 16 dereferenceable(224) %i.ck, i64 224, i1 false)
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.sroa.4181.0.copyload = load i64, ptr %.sroa.4181.0..sroa_idx, align 16 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.sroa.6182.0.copyload = load i64, ptr %.sroa.6182.0..sroa_idx, align 16
  store i8 1, ptr %i.ce, align 1
  store i8 1, ptr %i.cf, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.cu = getelementptr i8, ptr %1, i64 712       ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !178
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  br i1 %i.cw, label %.thread, label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr %i.co, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %i.ca, ptr %i.bz, align 8
  %.sroa.4.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs7ewmRfXve8r_4http3uri3UriNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4.0..sroa_idx169, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1528, ptr noundef nonnull %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1529) #63
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !66932
  call fastcc void @_RINvXs4_NtNtNtCs7ewmRfXve8r_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.az, ptr @1530, i64 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cs) #61
  %i.cy = load i64, ptr %i.az, align 8, !range !182, !noalias !66932, !noundef !178
  %.not404 = icmp eq i64 %i.cy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !66932
  br i1 %.not404, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cz = load i8, ptr %i.ct, align 8, !range !199, !noundef !178 ; 2 uses
  switch i8 %i.cz, label %default.unreachable [
    i8 0, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
    i8 2, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit
    i8 1, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread353
  ], !prof !332

default.unreachable:                              ; preds = %bb.hu, %bb.gd, %bb.ev, %bb.h
  unreachable

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread353: ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 681
  %i.db = load i8, ptr %i.da, align 1, !range !181, !noundef !178
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread363, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit: ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.de = load ptr, ptr %i.dd, align 16, !nonnull !178, !noundef !178 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noundef !178 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noundef !178
  %.not.i = icmp ne ptr %i.dg, null
  %i.dj = icmp eq i64 %i.di, 4
  %or.cond = and i1 %.not.i, %i.dj
  br i1 %or.cond, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread353
  %.sroa.0.0.i97358389 = phi ptr [ %i.dg, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit ], [ @1531, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread353 ]
  %i.dk = load i32, ptr %.sroa.0.0.i97358389, align 1
  %i.dl = icmp ne i32 %i.dk, 1886680168
  %i.dm = zext i1 %i.dl to i32
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.i, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread

bb.i:                                             ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit
  %i.do = call { i16, i16 } @_RNvMNtNtCs7ewmRfXve8r_4http3uri9authorityNtB2_9Authority8port_u16(ptr noundef nonnull align 8 %i.cx) #53 ; 2 uses
  %i.dp = extractvalue { i16, i16 } %i.do, 0
  %i.dq = trunc i16 %i.dp to i1
  %i.dr = extractvalue { i16, i16 } %i.do, 1
  %i.ds = icmp ne i16 %i.dr, 80
  %.sroa.02.0.not = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %.sroa.02.0.not, label %._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge, label %bb.q

._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge: ; preds = %bb.i
  %.pr.pre = load i8, ptr %i.ct, align 8
  br label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit
  %.pr = phi i8 [ %.pr.pre, %._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.cz, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit ]
  switch i8 %.pr, label %default.unreachable3.i102 [
    i8 0, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
    i8 2, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103
    i8 1, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread363
  ], !prof !333

default.unreachable3.i102:                        ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread
  unreachable

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread363: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread353, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 681
  %i.du = load i8, ptr %i.dt, align 1, !range !181, !noundef !178
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.dx = load ptr, ptr %i.dw, align 16, !nonnull !178, !noundef !178 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noundef !178 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !178
  %.not.i104 = icmp ne ptr %i.dz, null
  %i.ec = icmp eq i64 %i.eb, 5
  %or.cond403 = and i1 %.not.i104, %i.ec
  br i1 %or.cond403, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread363
  %.sroa.0.0.i101368398 = phi ptr [ %i.dz, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103 ], [ @1532, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread363 ] ; 2 uses
  %i.ed = load i32, ptr %.sroa.0.0.i101368398, align 1
  %i.ee = xor i32 %i.ed, 1886680168
  %i.ef = getelementptr i8, ptr %.sroa.0.0.i101368398, i64 4
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i32
  %i.ei = xor i32 %i.eh, 115
  %i.ej = or i32 %i.ee, %i.ei
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.j, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread

bb.j:                                             ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109
  %i.en = call { i16, i16 } @_RNvMNtNtCs7ewmRfXve8r_4http3uri9authorityNtB2_9Authority8port_u16(ptr noundef nonnull align 8 %i.cx) #53 ; 2 uses
  %i.eo = extractvalue { i16, i16 } %i.en, 0
  %i.ep = trunc i16 %i.eo to i1
  %i.eq = extractvalue { i16, i16 } %i.en, 1
  %i.er = icmp ne i16 %i.eq, 443
  %.sroa.05.0.not = select i1 %i.ep, i1 %i.er, i1 false
  br i1 %.sroa.05.0.not, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread, label %bb.q

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread363, %bb.h, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.es = getelementptr i8, ptr %1, i64 704
  %.val91 = load ptr, ptr %i.es, align 16, !noundef !178 ; 7 uses
  %.val92 = load i64, ptr %i.cu, align 8, !noundef !178 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66933)
  call void @llvm.experimental.noalias.scope.decl(metadata !66934)
  call void @llvm.experimental.noalias.scope.decl(metadata !66935)
  call void @llvm.experimental.noalias.scope.decl(metadata !66936)
  %i.et = getelementptr inbounds nuw i8, ptr %.val91, i64 %.val92
  %i.eu = icmp samesign eq i64 %.val92, 0
  br i1 %i.eu, label %bb.n, label %iter.check560

iter.check560:                                    ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
  %min.iters.check542 = icmp ult i64 %.val92, 8
  br i1 %min.iters.check542, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check543

vector.main.loop.iter.check543:                   ; preds = %iter.check560
  %min.iters.check544 = icmp ult i64 %.val92, 32
  br i1 %min.iters.check544, label %vec.epilog.ph564, label %vector.ph545

vector.ph545:                                     ; preds = %vector.main.loop.iter.check543
  %i.ev = and i64 %.val92, 24
  %n.vec546 = and i64 %.val92, -32                ; 4 uses
  %i.ew = getelementptr i8, ptr %.val91, i64 %n.vec546
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph545
  %index548 = phi i64 [ 0, %vector.ph545 ], [ %index.next554, %vector.body547 ] ; 2 uses
  %vec.phi549 = phi <16 x i1> [ zeroinitializer, %vector.ph545 ], [ %i.fh, %vector.body547 ]
  %vec.phi550 = phi <16 x i1> [ zeroinitializer, %vector.ph545 ], [ %i.fj, %vector.body547 ]
  %next.gep551 = getelementptr i8, ptr %.val91, i64 %index548 ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep551, i64 16
  %wide.load552 = load <16 x i8>, ptr %next.gep551, align 1, !alias.scope !66937, !noalias !66938 ; 3 uses
  %wide.load553 = load <16 x i8>, ptr %i.ex, align 1, !alias.scope !66937, !noalias !66938 ; 3 uses
  %i.ey = icmp ult <16 x i8> %wide.load552, splat (i8 32)
  %i.ez = icmp ult <16 x i8> %wide.load553, splat (i8 32)
  %i.fa = icmp eq <16 x i8> %wide.load552, splat (i8 127)
  %i.fb = icmp eq <16 x i8> %wide.load553, splat (i8 127)
  %i.fc = or <16 x i1> %i.ey, %i.fa
  %i.fd = or <16 x i1> %i.ez, %i.fb
  %i.fe = icmp ne <16 x i8> %wide.load552, splat (i8 9)
  %i.ff = icmp ne <16 x i8> %wide.load553, splat (i8 9)
  %i.fg = and <16 x i1> %i.fc, %i.fe
  %i.fh = or <16 x i1> %vec.phi549, %i.fg         ; 2 uses
  %i.fi = and <16 x i1> %i.fd, %i.ff
  %i.fj = or <16 x i1> %vec.phi550, %i.fi         ; 2 uses
  %index.next554 = add nuw i64 %index548, 32      ; 2 uses
  %i.fk = icmp eq i64 %index.next554, %n.vec546
  br i1 %i.fk, label %middle.block555, label %vector.body547, !llvm.loop !66495

middle.block555:                                  ; preds = %vector.body547
  %bin.rdx556 = or <16 x i1> %i.fj, %i.fh
  %i.fl = bitcast <16 x i1> %bin.rdx556 to i16
  %i.fm = icmp ne i16 %i.fl, 0                    ; 3 uses
  %cmp.n557 = icmp eq i64 %.val92, %n.vec546
  br i1 %cmp.n557, label %._crit_edge.i.i, label %vec.epilog.iter.check562

vec.epilog.iter.check562:                         ; preds = %middle.block555
  %min.epilog.iters.check563 = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check563, label %.lr.ph.i.i.preheader, label %vec.epilog.ph564, !prof !334

vec.epilog.ph564:                                 ; preds = %vector.main.loop.iter.check543, %vec.epilog.iter.check562
  %vec.epilog.resume.val558 = phi i64 [ %n.vec546, %vec.epilog.iter.check562 ], [ 0, %vector.main.loop.iter.check543 ]
  %bc.merge.rdx559 = phi i1 [ %i.fm, %vec.epilog.iter.check562 ], [ false, %vector.main.loop.iter.check543 ]
  %n.vec565 = and i64 %.val92, -8                 ; 3 uses
  %i.fn = getelementptr i8, ptr %.val91, i64 %n.vec565
  %i.fo = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx559, i64 0
  br label %vec.epilog.vector.body566

vec.epilog.vector.body566:                        ; preds = %vec.epilog.vector.body566, %vec.epilog.ph564
  %index567 = phi i64 [ %vec.epilog.resume.val558, %vec.epilog.ph564 ], [ %index.next571, %vec.epilog.vector.body566 ] ; 2 uses
  %vec.phi568 = phi <8 x i1> [ %i.fo, %vec.epilog.ph564 ], [ %i.fu, %vec.epilog.vector.body566 ]
  %next.gep569 = getelementptr i8, ptr %.val91, i64 %index567
  %wide.load570 = load <8 x i8>, ptr %next.gep569, align 1, !alias.scope !66937, !noalias !66938 ; 3 uses
  %i.fp = icmp ult <8 x i8> %wide.load570, splat (i8 32)
  %i.fq = icmp eq <8 x i8> %wide.load570, splat (i8 127)
  %i.fr = or <8 x i1> %i.fp, %i.fq
  %i.fs = icmp ne <8 x i8> %wide.load570, splat (i8 9)
  %i.ft = and <8 x i1> %i.fr, %i.fs
  %i.fu = or <8 x i1> %vec.phi568, %i.ft          ; 2 uses
  %index.next571 = add nuw i64 %index567, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next571, %n.vec565
  br i1 %i.fv, label %vec.epilog.middle.block572, label %vec.epilog.vector.body566, !llvm.loop !66496

vec.epilog.middle.block572:                       ; preds = %vec.epilog.vector.body566
  %i.fw = bitcast <8 x i1> %i.fu to i8
  %i.fx = icmp ne i8 %i.fw, 0                     ; 2 uses
  %cmp.n573 = icmp eq i64 %.val92, %n.vec565
  br i1 %cmp.n573, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check560, %vec.epilog.iter.check562, %vec.epilog.middle.block572
  %.sroa.0.08.i.i.ph = phi i1 [ false, %iter.check560 ], [ %i.fm, %vec.epilog.iter.check562 ], [ %i.fx, %vec.epilog.middle.block572 ]
  %.sroa.02.07.i.i.ph = phi ptr [ %.val91, %iter.check560 ], [ %i.ew, %vec.epilog.iter.check562 ], [ %i.fn, %vec.epilog.middle.block572 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.l
  %.sroa.0.08.i.i = phi i1 [ %.sroa.04.0.i.i, %bb.l ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i = phi ptr [ %i.fy, %bb.l ], [ %.sroa.02.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 1 ; 2 uses
  %i.fz = load i8, ptr %.sroa.02.07.i.i, align 1, !alias.scope !66937, !noalias !66938, !noundef !178 ; 3 uses
  %i.ga = icmp ult i8 %i.fz, 32
  %i.gb = icmp eq i8 %i.fz, 127
  %or.cond.i.i = or i1 %i.ga, %i.gb
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.l, %vec.epilog.middle.block572, %middle.block555
  %.sroa.04.0.i.i.lcssa = phi i1 [ %i.fx, %vec.epilog.middle.block572 ], [ %i.fm, %middle.block555 ], [ %.sroa.04.0.i.i, %bb.l ]
  br i1 %.sroa.04.0.i.i.lcssa, label %bb.m, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.gc = icmp ne i8 %i.fz, 9
  %i.gd = or i1 %.sroa.0.08.i.i, %i.gc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.04.0.i.i = phi i1 [ %i.gd, %bb.k ], [ %.sroa.0.08.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ge = icmp eq ptr %i.fy, %i.et
  br i1 %i.ge, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !66497

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.v

bb.n:                                             ; preds = %._crit_edge.i.i, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val91, i64 noundef %.val92) #53
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !66938, !noalias !66937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false)
  %.sroa.7197.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.bx, i64 33
  %.sroa.7197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7197.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7197.0..sroa_idx198, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %bb.n
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i8 0, ptr %.sroa.5188.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call fastcc void @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap6insertReECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.bv, ptr noalias nofree noundef align 8 dereferenceable(96) %i.cs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.bw) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !66939)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.gg = load i8, ptr %i.gf, align 8, !range !199, !alias.scope !66939, !noundef !178
  %i.gh = icmp eq i8 %i.gg, 2
  br i1 %i.gh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !66940)
  call void @llvm.experimental.noalias.scope.decl(metadata !66941)
  call void @llvm.experimental.noalias.scope.decl(metadata !66942)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !66943, !noundef !178
  %i.gk = load ptr, ptr %i.bv, align 8, !alias.scope !66943, !nonnull !178, !align !186, !noundef !178
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !66943, !nonnull !178, !noundef !178
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !66943, !noundef !178
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !66943, !noundef !178
  call void %i.gm(ptr noundef %i.gj, ptr noundef %i.go, i64 noundef %i.gq) #53, !noalias !66943, !inline_history !149
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.thread

bb.q:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.gr = getelementptr i8, ptr %1, i64 704
  %.val93 = load ptr, ptr %i.gr, align 16, !noundef !178
  %.val94 = load i64, ptr %i.cu, align 8, !noundef !178
  %i.gs = call { ptr, i64 } @_RNvNtNtCs7ewmRfXve8r_4http3uri9authority4host(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val93, i64 noundef %.val94) #53 ; 2 uses
  %i.gt = extractvalue { ptr, i64 } %i.gs, 0      ; 7 uses
  %i.gu = extractvalue { ptr, i64 } %i.gs, 1      ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66944)
  call void @llvm.experimental.noalias.scope.decl(metadata !66945)
  call void @llvm.experimental.noalias.scope.decl(metadata !66946)
  call void @llvm.experimental.noalias.scope.decl(metadata !66947)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gu
  %i.gw = icmp samesign eq i64 %i.gu, 0
  br i1 %i.gw, label %bb.u, label %iter.check

iter.check:                                       ; preds = %bb.q
  %min.iters.check = icmp ult i64 %i.gu, 8
  br i1 %min.iters.check, label %.lr.ph.i.i110.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check530 = icmp ult i64 %i.gu, 32
  br i1 %min.iters.check530, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i64 %i.gu, 24
  %n.vec = and i64 %i.gu, -32                     ; 4 uses
  %i.gy = getelementptr i8, ptr %i.gt, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.hj, %vector.body ]
  %vec.phi531 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.hl, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.gt, i64 %index ; 2 uses
  %i.gz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !66948, !noalias !66949 ; 3 uses
  %wide.load532 = load <16 x i8>, ptr %i.gz, align 1, !alias.scope !66948, !noalias !66949 ; 3 uses
  %i.ha = icmp ult <16 x i8> %wide.load, splat (i8 32)
  %i.hb = icmp ult <16 x i8> %wide.load532, splat (i8 32)
  %i.hc = icmp eq <16 x i8> %wide.load, splat (i8 127)
  %i.hd = icmp eq <16 x i8> %wide.load532, splat (i8 127)
  %i.he = or <16 x i1> %i.ha, %i.hc
  %i.hf = or <16 x i1> %i.hb, %i.hd
  %i.hg = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.hh = icmp ne <16 x i8> %wide.load532, splat (i8 9)
  %i.hi = and <16 x i1> %i.he, %i.hg
  %i.hj = or <16 x i1> %vec.phi, %i.hi            ; 2 uses
  %i.hk = and <16 x i1> %i.hf, %i.hh
  %i.hl = or <16 x i1> %vec.phi531, %i.hk         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !66512

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.hl, %i.hj
  %i.hn = bitcast <16 x i1> %bin.rdx to i16
  %i.ho = icmp ne i16 %i.hn, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.gu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i115, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i110.preheader, label %vec.epilog.ph, !prof !334

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ho, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec533 = and i64 %i.gu, -8                   ; 3 uses
  %i.hp = getelementptr i8, ptr %i.gt, i64 %n.vec533
  %i.hq = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index534 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next538, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi535 = phi <8 x i1> [ %i.hq, %vec.epilog.ph ], [ %i.hw, %vec.epilog.vector.body ]
  %next.gep536 = getelementptr i8, ptr %i.gt, i64 %index534
  %wide.load537 = load <8 x i8>, ptr %next.gep536, align 1, !alias.scope !66948, !noalias !66949 ; 3 uses
  %i.hr = icmp ult <8 x i8> %wide.load537, splat (i8 32)
  %i.hs = icmp eq <8 x i8> %wide.load537, splat (i8 127)
  %i.ht = or <8 x i1> %i.hr, %i.hs
  %i.hu = icmp ne <8 x i8> %wide.load537, splat (i8 9)
  %i.hv = and <8 x i1> %i.ht, %i.hu
  %i.hw = or <8 x i1> %vec.phi535, %i.hv          ; 2 uses
  %index.next538 = add nuw i64 %index534, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next538, %n.vec533
  br i1 %i.hx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66513

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hy = bitcast <8 x i1> %i.hw to i8
  %i.hz = icmp ne i8 %i.hy, 0                     ; 2 uses
  %cmp.n539 = icmp eq i64 %i.gu, %n.vec533
  br i1 %cmp.n539, label %._crit_edge.i.i115, label %.lr.ph.i.i110.preheader

.lr.ph.i.i110.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i111.ph = phi i1 [ false, %iter.check ], [ %i.ho, %vec.epilog.iter.check ], [ %i.hz, %vec.epilog.middle.block ]
  %.sroa.02.07.i.i112.ph = phi ptr [ %i.gt, %iter.check ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %.lr.ph.i.i110.preheader, %bb.s
  %.sroa.0.08.i.i111 = phi i1 [ %.sroa.04.0.i.i114, %bb.s ], [ %.sroa.0.08.i.i111.ph, %.lr.ph.i.i110.preheader ] ; 2 uses
  %.sroa.02.07.i.i112 = phi ptr [ %i.ia, %bb.s ], [ %.sroa.02.07.i.i112.ph, %.lr.ph.i.i110.preheader ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i112, i64 1 ; 2 uses
  %i.ib = load i8, ptr %.sroa.02.07.i.i112, align 1, !alias.scope !66948, !noalias !66949, !noundef !178 ; 3 uses
  %i.ic = icmp ult i8 %i.ib, 32
  %i.id = icmp eq i8 %i.ib, 127
  %or.cond.i.i113 = or i1 %i.ic, %i.id
  br i1 %or.cond.i.i113, label %bb.r, label %bb.s

._crit_edge.i.i115:                               ; preds = %bb.s, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.i.i114.lcssa = phi i1 [ %i.hz, %vec.epilog.middle.block ], [ %i.ho, %middle.block ], [ %.sroa.04.0.i.i114, %bb.s ]
  br i1 %.sroa.04.0.i.i114.lcssa, label %bb.t, label %bb.u

bb.r:                                             ; preds = %.lr.ph.i.i110
  %i.ie = icmp ne i8 %i.ib, 9
  %i.if = or i1 %.sroa.0.08.i.i111, %i.ie
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i110
  %.sroa.04.0.i.i114 = phi i1 [ %i.if, %bb.r ], [ %.sroa.0.08.i.i111, %.lr.ph.i.i110 ] ; 2 uses
  %i.ig = icmp eq ptr %i.ia, %i.gv
  br i1 %i.ig, label %._crit_edge.i.i115, label %.lr.ph.i.i110, !llvm.loop !66514

bb.t:                                             ; preds = %._crit_edge.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i115, %bb.q
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gt, i64 noundef %i.gu) #53
  %.sroa.4.0..sroa_idx.i.i118 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i118, align 8, !alias.scope !66949, !noalias !66948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false)
  %.sroa.7191.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %i.by, i64 33
  %.sroa.7191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7191.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7191.0..sroa_idx192, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.o

bb.v:                                             ; preds = %bb.m, %bb.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.14329.0 = phi i8 [ %.sroa.14329.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ 3, %bb.t ], [ 3, %bb.m ] ; 2 uses
  %.sroa.21.0 = phi i8 [ %.sroa.21.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ undef, %bb.t ], [ undef, %bb.m ] ; 2 uses
  %.sroa.26.0 = phi i8 [ %.sroa.26.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ undef, %bb.t ], [ undef, %bb.m ] ; 2 uses
  %.sroa.30.0 = phi ptr [ %.sroa.30.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ undef, %bb.t ], [ undef, %bb.m ] ; 2 uses
  %.sroa.0326.sroa.0.0 = phi i8 [ %.sroa.0326.sroa.0.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ -1, %bb.t ], [ -1, %bb.m ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %.sroa.14.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.5.0.copyload, %bb.t ], [ %.sroa.5.0.copyload, %bb.m ] ; 2 uses
  %.sroa.0171.0 = phi i64 [ %.sroa.0171.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.4181.0.copyload, %bb.t ], [ %.sroa.4181.0.copyload, %bb.m ] ; 2 uses
  %.sroa.0326.sroa.10.0 = phi i8 [ %.sroa.0326.sroa.10.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ -1, %bb.t ], [ -1, %bb.m ] ; 2 uses
  %.sroa.0326.sroa.12.sroa.0.0 = phi i48 [ %.sroa.0326.sroa.12.sroa.0.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEECsgZAIVb0XKpv_9ssservice.exit ], [ -1, %bb.t ], [ -1, %bb.m ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 1082 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 2, !range !181, !noundef !178
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = icmp ne i64 %.sroa.0171.0, 0
  %or.cond411.not = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %or.cond411.not, label %bb.jn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit

.thread:                                          ; preds = %bb.e, %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit
  store i8 0, ptr %i.ce, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.il, ptr noundef nonnull align 8 dereferenceable(224) %i.cs, i64 224, i1 false)
  store i8 0, ptr %i.cf, align 2
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store i64 %.sroa.4181.0.copyload, ptr %i.im, align 8, !alias.scope !66950, !noalias !66951
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4200.0..sroa_idx, align 16, !alias.scope !66950, !noalias !66951
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i64 %.sroa.6182.0.copyload, ptr %.sroa.5201.0..sroa_idx, align 8, !alias.scope !66950, !noalias !66951
  store i8 1, ptr %i.cg, align 1
  %i.in = load ptr, ptr %i.ch, align 16, !nonnull !178, !align !186, !noundef !178
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store ptr %i.in, ptr %i.io, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1096
  store ptr %i.cr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0208)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1088
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1232
  br label %bb.y

bb.w:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %.pre = load i8, ptr %.phi.trans.insert, align 16, !range !233, !noalias !66952
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0208)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 1232 ; 2 uses
  switch i8 %.pre, label %bb.x [
    i8 0, label %bb.y
    i8 1, label %bb.aa
    i8 3, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %.thread, %bb.w
  %i.it = phi ptr [ %i.iq, %.thread ], [ %i.is, %bb.w ]
  %i.iu = phi ptr [ %i.ip, %.thread ], [ %i.ir, %bb.w ] ; 2 uses
  %.sroa.0171.1487 = phi i64 [ %.sroa.4181.0.copyload, %.thread ], [ undef, %bb.w ]
  %.sroa.14.1483 = phi ptr [ %.sroa.5.0.copyload, %.thread ], [ undef, %bb.w ]
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !66952, !nonnull !178, !align !186, !noundef !178
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !66952, !nonnull !178, !align !186, !noundef !178
  store ptr %i.iy, ptr %i.iw, align 16, !noalias !66952, !captures !231
  %.val13.i = load ptr, ptr %i.iv, align 8, !noalias !66952, !nonnull !178, !noundef !178
  %i.iz = getelementptr inbounds nuw i8, ptr %.val13.i, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 1112
  store ptr %i.iz, ptr %i.ja, align 8, !noalias !66952
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !66952
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.jb = phi ptr [ %i.it, %bb.y ], [ %i.is, %bb.w ] ; 3 uses
  %i.jc = phi ptr [ %i.iu, %bb.y ], [ %i.ir, %bb.w ]
  %.sroa.0171.1486 = phi i64 [ %.sroa.0171.1487, %bb.y ], [ undef, %bb.w ] ; 3 uses
  %.sroa.14.1482 = phi ptr [ %.sroa.14.1483, %bb.y ], [ undef, %bb.w ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.je = call fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtB7_5MutexINtCshXcoQFZsaxY_14lru_time_cache8LruCacheNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB2x_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE4lock0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.jd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !66953 ; 6 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtCsgCecv3eZDcN_5alloc6string6StringE21get_cached_connection0CsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.ab

_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtCsgCecv3eZDcN_5alloc6string6StringE21get_cached_connection0CsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.z
  store i8 3, ptr %i.jb, align 8, !noalias !66952
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
end_hunk_0
begin_hunk_1_@_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingE12send_request0CsgZAIVb0XKpv_9ssservice:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1131 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1130 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1129 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i32 0, ptr %i.ch, align 1
  %i.ck = load <2 x ptr>, ptr %i.cj, align 8
  store <2 x ptr> %i.ck, ptr %i.ci, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.cl, ptr noundef nonnull align 16 dereferenceable(264) %1, i64 264, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.co = load ptr, ptr %i.cn, align 8, !align !186, !noundef !178
  store ptr %i.co, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http5utils9host_addr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cc, ptr noundef nonnull align 8 %i.cp) #53
  %i.cq = load i16, ptr %i.cc, align 8, !range !239, !noundef !178
  %.not = icmp eq i16 %i.cq, 2
  br i1 %.not, label %bb.g, label %bb.f, !prof !187

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0206)
  br label %bb.at

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  br label %bb.jg

bb.f:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1132
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i64 40, i1 false)
  store i8 1, ptr %i.cr, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 528
  store i8 1, ptr %i.cf, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cu, ptr noundef nonnull align 16 dereferenceable(224) %i.cl, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i8 1, ptr %i.cg, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 16 dereferenceable(40) %i.ct, i64 40, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 744       ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !178
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  br i1 %i.cy, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store ptr %i.cp, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr %i.cb, ptr %i.ca, align 8
  %.sroa.4.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs7ewmRfXve8r_4http3uri3UriNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4.0..sroa_idx162, align 8
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1528, ptr noundef nonnull %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1529) #63
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !67971
  call fastcc void @_RINvXs4_NtNtNtCs7ewmRfXve8r_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.az, ptr @1530, i64 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cu) #61
  %i.da = load i64, ptr %i.az, align 8, !range !182, !noalias !67971, !noundef !178
  %.not380 = icmp eq i64 %i.da, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !67971
  br i1 %.not380, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.db = load i8, ptr %i.cv, align 8, !range !199, !noundef !178 ; 2 uses
  switch i8 %i.db, label %default.unreachable [
    i8 0, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
    i8 2, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit
    i8 1, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread329
  ], !prof !332

default.unreachable:                              ; preds = %bb.hu, %bb.gd, %bb.ev, %bb.i
  unreachable

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread329: ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 713
  %i.dd = load i8, ptr %i.dc, align 1, !range !181, !noundef !178
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread339, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit: ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.dg = load ptr, ptr %i.df, align 16, !nonnull !178, !noundef !178 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noundef !178 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !178
  %.not.i = icmp ne ptr %i.di, null
  %i.dl = icmp eq i64 %i.dk, 4
  %or.cond = and i1 %.not.i, %i.dl
  br i1 %or.cond, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread329
  %.sroa.0.0.i97334365 = phi ptr [ %i.di, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit ], [ @1531, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread329 ]
  %i.dm = load i32, ptr %.sroa.0.0.i97334365, align 1
  %i.dn = icmp ne i32 %i.dm, 1886680168
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.j, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread

bb.j:                                             ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit
  %i.dq = call { i16, i16 } @_RNvMNtNtCs7ewmRfXve8r_4http3uri9authorityNtB2_9Authority8port_u16(ptr noundef nonnull align 8 %i.cz) #53 ; 2 uses
  %i.dr = extractvalue { i16, i16 } %i.dq, 0
  %i.ds = trunc i16 %i.dr to i1
  %i.dt = extractvalue { i16, i16 } %i.dq, 1
  %i.du = icmp ne i16 %i.dt, 80
  %.sroa.02.0.not = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %.sroa.02.0.not, label %._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge, label %bb.r

._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge: ; preds = %bb.j
  %.pr.pre = load i8, ptr %i.cv, align 8
  br label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit
  %.pr = phi i8 [ %.pr.pre, %._RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.db, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit ]
  switch i8 %.pr, label %default.unreachable3.i102 [
    i8 0, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
    i8 2, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103
    i8 1, label %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread339
  ], !prof !333

default.unreachable3.i102:                        ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread
  unreachable

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread339: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit.thread329, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 713
  %i.dw = load i8, ptr %i.dv, align 1, !range !181, !noundef !178
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread

_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.dz = load ptr, ptr %i.dy, align 16, !nonnull !178, !noundef !178 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !178 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !178
  %.not.i104 = icmp ne ptr %i.eb, null
  %i.ee = icmp eq i64 %i.ed, 5
  %or.cond379 = and i1 %.not.i104, %i.ee
  br i1 %or.cond379, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread339
  %.sroa.0.0.i101344374 = phi ptr [ %i.eb, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103 ], [ @1532, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread339 ] ; 2 uses
  %i.ef = load i32, ptr %.sroa.0.0.i101344374, align 1
  %i.eg = xor i32 %i.ef, 1886680168
  %i.eh = getelementptr i8, ptr %.sroa.0.0.i101344374, i64 4
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i32
  %i.ek = xor i32 %i.ej, 115
  %i.el = or i32 %i.eg, %i.ek
  %i.em = icmp ne i32 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.k, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread

bb.k:                                             ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109
  %i.ep = call { i16, i16 } @_RNvMNtNtCs7ewmRfXve8r_4http3uri9authorityNtB2_9Authority8port_u16(ptr noundef nonnull align 8 %i.cz) #53 ; 2 uses
  %i.eq = extractvalue { i16, i16 } %i.ep, 0
  %i.er = trunc i16 %i.eq to i1
  %i.es = extractvalue { i16, i16 } %i.ep, 1
  %i.et = icmp ne i16 %i.es, 443
  %.sroa.05.0.not = select i1 %i.er, i1 %i.et, i1 false
  br i1 %.sroa.05.0.not, label %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread, label %bb.r

_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread: ; preds = %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103.thread339, %bb.i, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit.thread, %_RNvMNtCs7ewmRfXve8r_4http3uriNtB2_3Uri10scheme_str.exit103, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.eu = getelementptr i8, ptr %1, i64 736
  %.val91 = load ptr, ptr %i.eu, align 16, !noundef !178 ; 7 uses
  %.val92 = load i64, ptr %i.cw, align 8, !noundef !178 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67972)
  call void @llvm.experimental.noalias.scope.decl(metadata !67973)
  call void @llvm.experimental.noalias.scope.decl(metadata !67974)
  call void @llvm.experimental.noalias.scope.decl(metadata !67975)
  %i.ev = getelementptr inbounds nuw i8, ptr %.val91, i64 %.val92
  %i.ew = icmp samesign eq i64 %.val92, 0
  br i1 %i.ew, label %bb.o, label %iter.check488

iter.check488:                                    ; preds = %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
  %min.iters.check470 = icmp ult i64 %.val92, 8
  br i1 %min.iters.check470, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check471

vector.main.loop.iter.check471:                   ; preds = %iter.check488
  %min.iters.check472 = icmp ult i64 %.val92, 32
  br i1 %min.iters.check472, label %vec.epilog.ph492, label %vector.ph473

vector.ph473:                                     ; preds = %vector.main.loop.iter.check471
  %i.ex = and i64 %.val92, 24
  %n.vec474 = and i64 %.val92, -32                ; 4 uses
  %i.ey = getelementptr i8, ptr %.val91, i64 %n.vec474
  br label %vector.body475

vector.body475:                                   ; preds = %vector.body475, %vector.ph473
  %index476 = phi i64 [ 0, %vector.ph473 ], [ %index.next482, %vector.body475 ] ; 2 uses
  %vec.phi477 = phi <16 x i1> [ zeroinitializer, %vector.ph473 ], [ %i.fj, %vector.body475 ]
  %vec.phi478 = phi <16 x i1> [ zeroinitializer, %vector.ph473 ], [ %i.fl, %vector.body475 ]
  %next.gep479 = getelementptr i8, ptr %.val91, i64 %index476 ; 2 uses
  %i.ez = getelementptr i8, ptr %next.gep479, i64 16
  %wide.load480 = load <16 x i8>, ptr %next.gep479, align 1, !alias.scope !67976, !noalias !67977 ; 3 uses
  %wide.load481 = load <16 x i8>, ptr %i.ez, align 1, !alias.scope !67976, !noalias !67977 ; 3 uses
  %i.fa = icmp ult <16 x i8> %wide.load480, splat (i8 32)
  %i.fb = icmp ult <16 x i8> %wide.load481, splat (i8 32)
  %i.fc = icmp eq <16 x i8> %wide.load480, splat (i8 127)
  %i.fd = icmp eq <16 x i8> %wide.load481, splat (i8 127)
  %i.fe = or <16 x i1> %i.fa, %i.fc
  %i.ff = or <16 x i1> %i.fb, %i.fd
  %i.fg = icmp ne <16 x i8> %wide.load480, splat (i8 9)
  %i.fh = icmp ne <16 x i8> %wide.load481, splat (i8 9)
  %i.fi = and <16 x i1> %i.fe, %i.fg
  %i.fj = or <16 x i1> %vec.phi477, %i.fi         ; 2 uses
  %i.fk = and <16 x i1> %i.ff, %i.fh
  %i.fl = or <16 x i1> %vec.phi478, %i.fk         ; 2 uses
  %index.next482 = add nuw i64 %index476, 32      ; 2 uses
  %i.fm = icmp eq i64 %index.next482, %n.vec474
  br i1 %i.fm, label %middle.block483, label %vector.body475, !llvm.loop !67562

middle.block483:                                  ; preds = %vector.body475
  %bin.rdx484 = or <16 x i1> %i.fl, %i.fj
  %i.fn = bitcast <16 x i1> %bin.rdx484 to i16
  %i.fo = icmp ne i16 %i.fn, 0                    ; 3 uses
  %cmp.n485 = icmp eq i64 %.val92, %n.vec474
  br i1 %cmp.n485, label %._crit_edge.i.i, label %vec.epilog.iter.check490

vec.epilog.iter.check490:                         ; preds = %middle.block483
  %min.epilog.iters.check491 = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check491, label %.lr.ph.i.i.preheader, label %vec.epilog.ph492, !prof !334

vec.epilog.ph492:                                 ; preds = %vector.main.loop.iter.check471, %vec.epilog.iter.check490
  %vec.epilog.resume.val486 = phi i64 [ %n.vec474, %vec.epilog.iter.check490 ], [ 0, %vector.main.loop.iter.check471 ]
  %bc.merge.rdx487 = phi i1 [ %i.fo, %vec.epilog.iter.check490 ], [ false, %vector.main.loop.iter.check471 ]
  %n.vec493 = and i64 %.val92, -8                 ; 3 uses
  %i.fp = getelementptr i8, ptr %.val91, i64 %n.vec493
  %i.fq = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx487, i64 0
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph492
  %index495 = phi i64 [ %vec.epilog.resume.val486, %vec.epilog.ph492 ], [ %index.next499, %vec.epilog.vector.body494 ] ; 2 uses
  %vec.phi496 = phi <8 x i1> [ %i.fq, %vec.epilog.ph492 ], [ %i.fw, %vec.epilog.vector.body494 ]
  %next.gep497 = getelementptr i8, ptr %.val91, i64 %index495
  %wide.load498 = load <8 x i8>, ptr %next.gep497, align 1, !alias.scope !67976, !noalias !67977 ; 3 uses
  %i.fr = icmp ult <8 x i8> %wide.load498, splat (i8 32)
  %i.fs = icmp eq <8 x i8> %wide.load498, splat (i8 127)
  %i.ft = or <8 x i1> %i.fr, %i.fs
  %i.fu = icmp ne <8 x i8> %wide.load498, splat (i8 9)
  %i.fv = and <8 x i1> %i.ft, %i.fu
  %i.fw = or <8 x i1> %vec.phi496, %i.fv          ; 2 uses
  %index.next499 = add nuw i64 %index495, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next499, %n.vec493
  br i1 %i.fx, label %vec.epilog.middle.block500, label %vec.epilog.vector.body494, !llvm.loop !67563

vec.epilog.middle.block500:                       ; preds = %vec.epilog.vector.body494
  %i.fy = bitcast <8 x i1> %i.fw to i8
  %i.fz = icmp ne i8 %i.fy, 0                     ; 2 uses
  %cmp.n501 = icmp eq i64 %.val92, %n.vec493
  br i1 %cmp.n501, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check488, %vec.epilog.iter.check490, %vec.epilog.middle.block500
  %.sroa.0.08.i.i.ph = phi i1 [ false, %iter.check488 ], [ %i.fo, %vec.epilog.iter.check490 ], [ %i.fz, %vec.epilog.middle.block500 ]
  %.sroa.02.07.i.i.ph = phi ptr [ %.val91, %iter.check488 ], [ %i.ey, %vec.epilog.iter.check490 ], [ %i.fp, %vec.epilog.middle.block500 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.m
  %.sroa.0.08.i.i = phi i1 [ %.sroa.04.0.i.i, %bb.m ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i = phi ptr [ %i.ga, %bb.m ], [ %.sroa.02.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 1 ; 2 uses
  %i.gb = load i8, ptr %.sroa.02.07.i.i, align 1, !alias.scope !67976, !noalias !67977, !noundef !178 ; 3 uses
  %i.gc = icmp ult i8 %i.gb, 32
  %i.gd = icmp eq i8 %i.gb, 127
  %or.cond.i.i = or i1 %i.gc, %i.gd
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

._crit_edge.i.i:                                  ; preds = %bb.m, %vec.epilog.middle.block500, %middle.block483
  %.sroa.04.0.i.i.lcssa = phi i1 [ %i.fz, %vec.epilog.middle.block500 ], [ %i.fo, %middle.block483 ], [ %.sroa.04.0.i.i, %bb.m ]
  br i1 %.sroa.04.0.i.i.lcssa, label %bb.n, label %bb.o

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ge = icmp ne i8 %i.gb, 9
  %i.gf = or i1 %.sroa.0.08.i.i, %i.ge
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.04.0.i.i = phi i1 [ %i.gf, %bb.l ], [ %.sroa.0.08.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.gg = icmp eq ptr %i.ga, %i.ev
  br i1 %i.gg, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !67564

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.w

bb.o:                                             ; preds = %._crit_edge.i.i, %_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionReENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice.exit109.thread
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.bx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val91, i64 noundef %.val92) #53
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !67977, !noalias !67976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false)
  %.sroa.7177.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %i.bx, i64 33
  %.sroa.7177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7177.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7177.0..sroa_idx178, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %bb.o
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i8 0, ptr %.sroa.5168.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call fastcc void @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap6insertReECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.bv, ptr noalias nofree noundef align 8 dereferenceable(96) %i.cu, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.bw) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !67978)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.gi = load i8, ptr %i.gh, align 8, !range !199, !alias.scope !67978, !noundef !178
  %i.gj = icmp eq i8 %i.gi, 2
  br i1 %i.gj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !67979)
  call void @llvm.experimental.noalias.scope.decl(metadata !67980)
  call void @llvm.experimental.noalias.scope.decl(metadata !67981)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !67982, !noundef !178
  %i.gm = load ptr, ptr %i.bv, align 8, !alias.scope !67982, !nonnull !178, !align !186, !noundef !178
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !67982, !nonnull !178, !noundef !178
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !67982, !noundef !178
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !67982, !noundef !178
  call void %i.go(ptr noundef %i.gl, ptr noundef %i.gq, i64 noundef %i.gs) #53, !noalias !67982, !inline_history !149
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.thread

bb.r:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.gt = getelementptr i8, ptr %1, i64 736
  %.val93 = load ptr, ptr %i.gt, align 16, !noundef !178
  %.val94 = load i64, ptr %i.cw, align 8, !noundef !178
  %i.gu = call { ptr, i64 } @_RNvNtNtCs7ewmRfXve8r_4http3uri9authority4host(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val93, i64 noundef %.val94) #53 ; 2 uses
  %i.gv = extractvalue { ptr, i64 } %i.gu, 0      ; 7 uses
  %i.gw = extractvalue { ptr, i64 } %i.gu, 1      ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67983)
  call void @llvm.experimental.noalias.scope.decl(metadata !67984)
  call void @llvm.experimental.noalias.scope.decl(metadata !67985)
  call void @llvm.experimental.noalias.scope.decl(metadata !67986)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw
  %i.gy = icmp samesign eq i64 %i.gw, 0
  br i1 %i.gy, label %bb.v, label %iter.check

iter.check:                                       ; preds = %bb.r
  %min.iters.check = icmp ult i64 %i.gw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i110.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check458 = icmp ult i64 %i.gw, 32
  br i1 %min.iters.check458, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gz = and i64 %i.gw, 24
  %n.vec = and i64 %i.gw, -32                     ; 4 uses
  %i.ha = getelementptr i8, ptr %i.gv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.hl, %vector.body ]
  %vec.phi459 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.hn, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.gv, i64 %index ; 2 uses
  %i.hb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !67987, !noalias !67988 ; 3 uses
  %wide.load460 = load <16 x i8>, ptr %i.hb, align 1, !alias.scope !67987, !noalias !67988 ; 3 uses
  %i.hc = icmp ult <16 x i8> %wide.load, splat (i8 32)
  %i.hd = icmp ult <16 x i8> %wide.load460, splat (i8 32)
  %i.he = icmp eq <16 x i8> %wide.load, splat (i8 127)
  %i.hf = icmp eq <16 x i8> %wide.load460, splat (i8 127)
  %i.hg = or <16 x i1> %i.hc, %i.he
  %i.hh = or <16 x i1> %i.hd, %i.hf
  %i.hi = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.hj = icmp ne <16 x i8> %wide.load460, splat (i8 9)
  %i.hk = and <16 x i1> %i.hg, %i.hi
  %i.hl = or <16 x i1> %vec.phi, %i.hk            ; 2 uses
  %i.hm = and <16 x i1> %i.hh, %i.hj
  %i.hn = or <16 x i1> %vec.phi459, %i.hm         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !67579

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.hn, %i.hl
  %i.hp = bitcast <16 x i1> %bin.rdx to i16
  %i.hq = icmp ne i16 %i.hp, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.gw, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i115, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i110.preheader, label %vec.epilog.ph, !prof !334

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.hq, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec461 = and i64 %i.gw, -8                   ; 3 uses
  %i.hr = getelementptr i8, ptr %i.gv, i64 %n.vec461
  %i.hs = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index462 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next466, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi463 = phi <8 x i1> [ %i.hs, %vec.epilog.ph ], [ %i.hy, %vec.epilog.vector.body ]
  %next.gep464 = getelementptr i8, ptr %i.gv, i64 %index462
  %wide.load465 = load <8 x i8>, ptr %next.gep464, align 1, !alias.scope !67987, !noalias !67988 ; 3 uses
  %i.ht = icmp ult <8 x i8> %wide.load465, splat (i8 32)
  %i.hu = icmp eq <8 x i8> %wide.load465, splat (i8 127)
  %i.hv = or <8 x i1> %i.ht, %i.hu
  %i.hw = icmp ne <8 x i8> %wide.load465, splat (i8 9)
  %i.hx = and <8 x i1> %i.hv, %i.hw
  %i.hy = or <8 x i1> %vec.phi463, %i.hx          ; 2 uses
  %index.next466 = add nuw i64 %index462, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next466, %n.vec461
  br i1 %i.hz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67580

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ia = bitcast <8 x i1> %i.hy to i8
  %i.ib = icmp ne i8 %i.ia, 0                     ; 2 uses
  %cmp.n467 = icmp eq i64 %i.gw, %n.vec461
  br i1 %cmp.n467, label %._crit_edge.i.i115, label %.lr.ph.i.i110.preheader

.lr.ph.i.i110.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i111.ph = phi i1 [ false, %iter.check ], [ %i.hq, %vec.epilog.iter.check ], [ %i.ib, %vec.epilog.middle.block ]
  %.sroa.02.07.i.i112.ph = phi ptr [ %i.gv, %iter.check ], [ %i.ha, %vec.epilog.iter.check ], [ %i.hr, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %.lr.ph.i.i110.preheader, %bb.t
  %.sroa.0.08.i.i111 = phi i1 [ %.sroa.04.0.i.i114, %bb.t ], [ %.sroa.0.08.i.i111.ph, %.lr.ph.i.i110.preheader ] ; 2 uses
  %.sroa.02.07.i.i112 = phi ptr [ %i.ic, %bb.t ], [ %.sroa.02.07.i.i112.ph, %.lr.ph.i.i110.preheader ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i112, i64 1 ; 2 uses
  %i.id = load i8, ptr %.sroa.02.07.i.i112, align 1, !alias.scope !67987, !noalias !67988, !noundef !178 ; 3 uses
  %i.ie = icmp ult i8 %i.id, 32
  %i.if = icmp eq i8 %i.id, 127
  %or.cond.i.i113 = or i1 %i.ie, %i.if
  br i1 %or.cond.i.i113, label %bb.s, label %bb.t

._crit_edge.i.i115:                               ; preds = %bb.t, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.i.i114.lcssa = phi i1 [ %i.ib, %vec.epilog.middle.block ], [ %i.hq, %middle.block ], [ %.sroa.04.0.i.i114, %bb.t ]
  br i1 %.sroa.04.0.i.i114.lcssa, label %bb.u, label %bb.v

bb.s:                                             ; preds = %.lr.ph.i.i110
  %i.ig = icmp ne i8 %i.id, 9
  %i.ih = or i1 %.sroa.0.08.i.i111, %i.ig
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i110
  %.sroa.04.0.i.i114 = phi i1 [ %i.ih, %bb.s ], [ %.sroa.0.08.i.i111, %.lr.ph.i.i110 ] ; 2 uses
  %i.ii = icmp eq ptr %i.ic, %i.gx
  br i1 %i.ii, label %._crit_edge.i.i115, label %.lr.ph.i.i110, !llvm.loop !67581

bb.u:                                             ; preds = %._crit_edge.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i115, %bb.r
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gv, i64 noundef %i.gw) #53
  %.sroa.4.0..sroa_idx.i.i118 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i118, align 8, !alias.scope !67988, !noalias !67987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false)
  %.sroa.7171.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.by, i64 33
  %.sroa.7171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7171.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7171.0..sroa_idx172, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.p

bb.w:                                             ; preds = %bb.n, %bb.u, %bb.jl
  %.sroa.14305.0 = phi i8 [ %.sroa.14305.2, %bb.jl ], [ 3, %bb.u ], [ 3, %bb.n ] ; 2 uses
  %.sroa.21.0 = phi i8 [ %.sroa.21.2, %bb.jl ], [ undef, %bb.u ], [ undef, %bb.n ] ; 2 uses
  %.sroa.26.0 = phi i8 [ %.sroa.26.2, %bb.jl ], [ undef, %bb.u ], [ undef, %bb.n ] ; 2 uses
  %.sroa.30.0 = phi ptr [ %.sroa.30.2, %bb.jl ], [ undef, %bb.u ], [ undef, %bb.n ] ; 2 uses
  %.sroa.0302.sroa.0.0 = phi i8 [ %.sroa.0302.sroa.0.2, %bb.jl ], [ -1, %bb.u ], [ -1, %bb.n ] ; 2 uses
  %.sroa.0302.sroa.10.0 = phi i8 [ %.sroa.0302.sroa.10.2, %bb.jl ], [ -1, %bb.u ], [ -1, %bb.n ] ; 2 uses
  %.sroa.0302.sroa.12.sroa.0.0 = phi i48 [ %.sroa.0302.sroa.12.sroa.0.2, %bb.jl ], [ -1, %bb.u ], [ -1, %bb.n ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 1130 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 2, !range !181, !noundef !178
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.jo, label %bb.jn

.thread:                                          ; preds = %bb.f, %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueEECsgZAIVb0XKpv_9ssservice.exit
  store i8 0, ptr %i.cf, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.im, ptr noundef nonnull align 8 dereferenceable(224) %i.cu, i64 224, i1 false)
  store i8 0, ptr %i.cg, align 2
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.in, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false)
  store i8 1, ptr %i.ch, align 1
  %i.io = load ptr, ptr %i.ci, align 16, !nonnull !178, !align !186, !noundef !178
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store ptr %i.io, ptr %i.ip, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1144
  store ptr %i.cs, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0185)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1136
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 1280
  br label %bb.z

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %.pre = load i8, ptr %.phi.trans.insert, align 16, !range !233, !noalias !67989
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0185)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  switch i8 %.pre, label %bb.y [
    i8 0, label %bb.z
    i8 1, label %bb.ab
    i8 3, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %.thread, %bb.x
  %i.iu = phi ptr [ %i.ir, %.thread ], [ %i.it, %bb.x ]
  %i.iv = phi ptr [ %i.iq, %.thread ], [ %i.is, %bb.x ] ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !67989, !nonnull !178, !align !186, !noundef !178
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !67989, !nonnull !178, !align !186, !noundef !178
  store ptr %i.iz, ptr %i.ix, align 16, !noalias !67989, !captures !231
  %.val13.i = load ptr, ptr %i.iw, align 8, !noalias !67989, !nonnull !178, !noundef !178
  %i.ja = getelementptr inbounds nuw i8, ptr %.val13.i, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 1160
  store ptr %i.ja, ptr %i.jb, align 8, !noalias !67989
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !67989
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.jc = phi ptr [ %i.iu, %bb.z ], [ %i.it, %bb.x ] ; 3 uses
  %i.jd = phi ptr [ %i.iv, %bb.z ], [ %i.is, %bb.x ]
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.jf = call fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsczhfDQ1qNkX_5tokio4sync5mutexINtB7_5MutexINtCshXcoQFZsaxY_14lru_time_cache8LruCacheNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE4lock0CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.je, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #61, !noalias !67990 ; 6 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingE21get_cached_connection0CsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.ac

_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingE21get_cached_connection0CsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.aa
  store i8 3, ptr %i.jc, align 8, !noalias !67989
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  br label %bb.an

bb.ab:                                            ; preds = %bb.x
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1549) #63, !noalias !67989
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.ji = load i8, ptr %i.jh, align 8, !range !233, !noalias !67989, !noundef !178
  %cond.i.i = icmp eq i8 %i.ji, 3
end_hunk_1
begin_hunk_2_@_RNCNvMs_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_configNtB6_19OnlineConfigService8run_once0CsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.15280.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr null, ptr %.sroa.15280.0..sroa_idx.i.i, align 8, !noalias !73344
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store i8 0, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !noalias !73344
  br label %bb.s

bb.s:                                             ; preds = %_RNvXsu_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !73344
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call fastcc void @_RNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtB7_10HttpClientNtNtCsgCecv3eZDcN_5alloc6string6StringE12send_request0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %i.bp, ptr noundef nonnull align 16 %i.fc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #61
  %i.fd = load i64, ptr %i.bp, align 8, !range !242, !noalias !73344, !noundef !178 ; 3 uses
  %i.fe = icmp eq i64 %i.fd, -2
  br i1 %i.fe, label %bb.w, label %bb.x

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.thread.i.i: ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.thread453.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodReECsgZAIVb0XKpv_9ssservice.exit.i.thread33.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodReECsgZAIVb0XKpv_9ssservice.exit.i.thread.i
  %.sroa.6.1.i.i137452.i.i = phi i8 [ 2, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.thread453.i.i ], [ 1, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodReECsgZAIVb0XKpv_9ssservice.exit.i.thread33.i ], [ %.sroa.6.0.copyload.i.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodReECsgZAIVb0XKpv_9ssservice.exit.i.thread.i ] ; 2 uses
  %.sroa.7.1.i.i450.i.i = phi i8 [ %i.dq, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.thread453.i.i ], [ %.sroa.7.i.i.sroa.0.0.copyload.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodReECsgZAIVb0XKpv_9ssservice.exit.i.thread33.i ], [ %.sroa.7.i.i.sroa.0.0.copyload.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodReECsgZAIVb0XKpv_9ssservice.exit.i.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !73344
  store i8 %.sroa.6.1.i.i137452.i.i, ptr %i.br, align 1, !noalias !73344
  %i.ff = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %.sroa.7.1.i.i450.i.i, ptr %i.ff, align 1, !noalias !73344
  %i.fg = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !73344 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 6
  call void @llvm.assume(i1 %i.fh)
  %.not488.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not488.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.thread.i.i
  %i.fi = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCs7ewmRfXve8r_4http5error5ErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef 42, i8 noundef range(i8 0, 7) %.sroa.6.1.i.i137452.i.i, i8 %.sroa.7.1.i.i450.i.i) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !73344
  br label %bb.dm

bb.u:                                             ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !73344
  store ptr %i.br, ptr %i.bq, align 8, !noalias !73344
  %.sroa.4255.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @_RNvXs_NtCs7ewmRfXve8r_4http5errorNtB4_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4255.0..sroa_idx.i.i, align 8, !noalias !73344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !73390
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 1, ptr %i.fj, align 8, !noalias !73390
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr @1642, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !73390
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 41, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !73390
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr @1641, ptr %i.fk, align 8, !noalias !73390
  %i.fl = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr %i.bq, ptr %i.fl, align 8, !noalias !73390
  store i64 0, ptr %i.l, align 8, !noalias !73390
  %.sroa.428.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @1642, ptr %.sroa.428.0..sroa_idx.i.i.i.i, align 8, !noalias !73390
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 41, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8, !noalias !73390
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.fm, align 8, !noalias !73390
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr @969, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !73390
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 57, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !73390
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i32 1, ptr %i.fn, align 8, !noalias !73390
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  store i32 118, ptr %i.fo, align 4, !noalias !73390
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l) #53, !noalias !73391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !73390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !73344
  br label %bb.t

bb.v:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECsgZAIVb0XKpv_9ssservice.exit.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1643) #63
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !73344
  store i8 3, ptr %i.cs, align 1, !noalias !73344
  br label %_RNCNvMs_NtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_configNtB6_19OnlineConfigService13run_once_impl0CsgZAIVb0XKpv_9ssservice.exit.i

bb.x:                                             ; preds = %bb.s
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i, i64 16, i1 false), !noalias !73344
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.0..sroa_idx.i.i, i64 128, i1 false), !noalias !73344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !73344
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs4_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_clientINtBJ_10HttpClientNtNtCsgCecv3eZDcN_5alloc6string6StringE12send_request0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.fc) #53
  %i.fp = icmp eq i64 %i.fd, -1
  br i1 %i.fp, label %bb.bh, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.412.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.i, i64 16, i1 false), !noalias !73344
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.i.i, i64 128, i1 false), !noalias !73344
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  store i64 %i.fd, ptr %i.fq, align 8, !noalias !73344
  %i.fr = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !73344 ; 2 uses
  %i.fs = icmp ult i64 %i.fr, 6
  call void @llvm.assume(i1 %i.fs)
  %i.ft = icmp samesign ugt i64 %i.fr, 4
  br i1 %i.ft, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fv = call { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now() #53 ; 2 uses
  %i.fw = extractvalue { i64, i32 } %i.fv, 0
  %i.fx = extractvalue { i64, i32 } %i.fv, 1
  store i64 %i.fw, ptr %i.fu, align 16, !noalias !73344
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.fx, ptr %i.fy, align 8, !noalias !73344
  %i.fz = getelementptr i8, ptr %0, i64 256       ; 2 uses
  %.val113.i.i = load i16, ptr %i.fz, align 16, !range !337, !noalias !73344, !noundef !178 ; 3 uses
  %.not.i.i = icmp eq i16 %.val113.i.i, 200
  br i1 %.not.i.i, label %bb.ab, label %bb.bf

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !73344
  store ptr %i.fq, ptr %i.bm, align 8, !noalias !73344
  %.sroa.4291.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_RNvXs1_NtCs7ewmRfXve8r_4http8responseINtB5_8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4291.0..sroa_idx.i.i, align 8, !noalias !73344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !73392
  %i.ga = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 5, ptr %i.ga, align 8, !noalias !73392
  %.sroa.422.0..sroa_idx.i.i143.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @1642, ptr %.sroa.422.0..sroa_idx.i.i143.i.i, align 8, !noalias !73392
  %.sroa.523.0..sroa_idx.i.i144.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 41, ptr %.sroa.523.0..sroa_idx.i.i144.i.i, align 8, !noalias !73392
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr @1644, ptr %i.gb, align 8, !noalias !73392
  %i.gc = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %i.bm, ptr %i.gc, align 8, !noalias !73392
  store i64 0, ptr %i.k, align 8, !noalias !73392
  %.sroa.428.0..sroa_idx.i.i145.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1642, ptr %.sroa.428.0..sroa_idx.i.i145.i.i, align 8, !noalias !73392
  %.sroa.529.0..sroa_idx.i.i146.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 41, ptr %.sroa.529.0..sroa_idx.i.i146.i.i, align 8, !noalias !73392
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.gd, align 8, !noalias !73392
  %.sroa.434.0..sroa_idx.i.i147.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr @969, ptr %.sroa.434.0..sroa_idx.i.i147.i.i, align 8, !noalias !73392
  %.sroa.535.0..sroa_idx.i.i148.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 57, ptr %.sroa.535.0..sroa_idx.i.i148.i.i, align 8, !noalias !73392
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i32 1, ptr %i.ge, align 8, !noalias !73392
  %i.gf = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store i32 131, ptr %i.gf, align 4, !noalias !73392
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k) #53, !noalias !73393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !73392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !73344
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !73394)
  call void @llvm.experimental.noalias.scope.decl(metadata !73395)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !73396
  call fastcc void @_RINvXs4_NtNtNtCs7ewmRfXve8r_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr readonly @1645, i64 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fq) #61
  %i.gg = load i64, ptr %i.j, align 8, !range !182, !noalias !73396, !noundef !178
  %i.gh = trunc nuw i64 %i.gg to i1
  br i1 %i.gh, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !73396, !noundef !178 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gl = load i64, ptr %i.gk, align 16, !alias.scope !73397, !noalias !73344, !noundef !178 ; 2 uses
  %i.gm = icmp ult i64 %i.gj, %i.gl
  br i1 %i.gm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef %i.gl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #63, !noalias !73397
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !73397, !noalias !73344, !nonnull !178, !noundef !178
  %i.gp = getelementptr inbounds nuw [104 x i8], ptr %i.go, i64 %i.gj ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !73344
  store ptr %i.gq, ptr %i.bg, align 8, !noalias !73344
  %i.gr = getelementptr i8, ptr %i.gp, i64 32
  %.val115.i.i = load ptr, ptr %i.gr, align 8, !nonnull !178, !noundef !178 ; 7 uses
  %i.gs = getelementptr i8, ptr %i.gp, i64 40
  %.val116.i.i = load i64, ptr %i.gs, align 8, !noundef !178 ; 10 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val115.i.i, i64 %.val116.i.i
  %i.gu = icmp samesign eq i64 %.val116.i.i, 0
  br i1 %i.gu, label %bb.aj, label %iter.check

iter.check:                                       ; preds = %bb.ae
  %min.iters.check = icmp ult i64 %.val116.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check74 = icmp ult i64 %.val116.i.i, 32
  br i1 %min.iters.check74, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gv = and i64 %.val116.i.i, 24
  %n.vec = and i64 %.val116.i.i, -32              ; 4 uses
  %i.gw = getelementptr i8, ptr %.val115.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi75 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi77, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val115.i.i, i64 %index ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 2 uses
  %wide.load76 = load <16 x i8>, ptr %i.gx, align 1 ; 2 uses
  %i.gy = add <16 x i8> %wide.load, splat (i8 -127)
  %i.gz = icmp ult <16 x i8> %i.gy, splat (i8 -95)
  %i.ha = add <16 x i8> %wide.load76, splat (i8 -127)
  %i.hb = icmp ult <16 x i8> %i.ha, splat (i8 -95)
  %i.hc = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.hd = icmp ne <16 x i8> %wide.load76, splat (i8 9)
  %i.he = and <16 x i1> %i.gz, %i.hc
  %predphi = or <16 x i1> %vec.phi, %i.he         ; 2 uses
  %i.hf = and <16 x i1> %i.hb, %i.hd
  %predphi77 = or <16 x i1> %vec.phi75, %i.hf     ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !73157

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %predphi77, %predphi
  %i.hh = bitcast <16 x i1> %bin.rdx to i16
  %i.hi = icmp ne i16 %i.hh, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.val116.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !334

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.hi, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec78 = and i64 %.val116.i.i, -8             ; 3 uses
  %i.hj = getelementptr i8, ptr %.val115.i.i, i64 %n.vec78
  %i.hk = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi80 = phi <8 x i1> [ %i.hk, %vec.epilog.ph ], [ %predphi83, %vec.epilog.vector.body ]
  %next.gep81 = getelementptr i8, ptr %.val115.i.i, i64 %index79
  %wide.load82 = load <8 x i8>, ptr %next.gep81, align 1 ; 2 uses
  %i.hl = add <8 x i8> %wide.load82, splat (i8 -127)
  %i.hm = icmp ult <8 x i8> %i.hl, splat (i8 -95)
  %i.hn = icmp ne <8 x i8> %wide.load82, splat (i8 9)
  %i.ho = and <8 x i1> %i.hm, %i.hn
  %predphi83 = or <8 x i1> %vec.phi80, %i.ho      ; 2 uses
  %index.next84 = add nuw i64 %index79, 8         ; 2 uses
  %i.hp = icmp eq i64 %index.next84, %n.vec78
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73158

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hq = bitcast <8 x i1> %predphi83 to i8
  %i.hr = icmp ne i8 %i.hq, 0                     ; 2 uses
  %cmp.n85 = icmp eq i64 %.val116.i.i, %n.vec78
  br i1 %cmp.n85, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.02.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.hi, %vec.epilog.iter.check ], [ %i.hr, %vec.epilog.middle.block ]
  %.sroa.03.01.i.i.i.ph = phi ptr [ %.val115.i.i, %iter.check ], [ %i.gw, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.ag
  %.sroa.01.02.i.i.i = phi i1 [ %.sroa.06.0.i.i.i, %bb.ag ], [ %.sroa.01.02.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.03.01.i.i.i = phi ptr [ %i.hs, %bb.ag ], [ %.sroa.03.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.ht = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noundef !178 ; 2 uses
  %i.hu = add i8 %i.ht, -32
  %or.cond.i.i.i = icmp ult i8 %i.hu, 95
  br i1 %or.cond.i.i.i, label %bb.ag, label %bb.af

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ag, %vec.epilog.middle.block, %middle.block
  %.sroa.06.0.i.i.i.lcssa = phi i1 [ %i.hr, %vec.epilog.middle.block ], [ %i.hi, %middle.block ], [ %.sroa.06.0.i.i.i, %bb.ag ]
  br i1 %.sroa.06.0.i.i.i.lcssa, label %bb.aw, label %bb.aj

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.hv = icmp ne i8 %i.ht, 9
  %i.hw = or i1 %.sroa.01.02.i.i.i, %i.hv
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = phi i1 [ %i.hw, %bb.af ], [ %.sroa.01.02.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.hx = icmp eq ptr %i.hs, %i.gt
  br i1 %i.hx, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !73159

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !73396
  %i.hy = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !73344 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 6
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp samesign ugt i64 %i.hy, 1
  br i1 %i.ia, label %bb.ai, label %_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ic = load ptr, ptr %i.ib, align 16, !noalias !73344, !nonnull !178, !align !186, !noundef !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !73344
  store ptr %i.ic, ptr %i.as, align 8, !noalias !73344
  %.sroa.4327.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4327.0..sroa_idx.i.i, align 8, !noalias !73344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !73344
  store ptr @1642, ptr %i.ar, align 8, !noalias !73344
  %i.id = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 41, ptr %i.id, align 8, !noalias !73344
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr @1642, ptr %i.ie, align 8, !noalias !73344
  %i.if = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 41, ptr %i.if, align 8, !noalias !73344
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr @1647, ptr %i.ig, align 8, !noalias !73344
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull @1646, ptr noundef nonnull %i.as, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !73344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !73344
  br label %_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.av, %bb.ai, %bb.ah
  %i.ih = call fastcc noundef align 8 ptr @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(32) @1664) #53 ; 3 uses
  %.not38.i.i = icmp eq ptr %i.ih, null
  br i1 %.not38.i.i, label %bb.az, label %bb.ay

bb.aj:                                            ; preds = %._crit_edge.loopexit.i.i.i, %bb.ae
  call void @_RNvXsa_Cse61XOjpEG4u_4mimeNtB5_4MimeNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val115.i.i, i64 noundef %.val116.i.i) #53
  %i.ii = load i64, ptr %i.bf, align 8, !range !191, !noalias !73344, !noundef !178
  %i.ij = icmp eq i64 %i.ii, 2
  br i1 %i.ij, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !73344
  call fastcc void @_RNvMs2_Cse61XOjpEG4u_4mimeNtB5_4Mime5type_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bf) #61
  %i.ik = call fastcc noundef zeroext i1 @_RNvXsu_Cse61XOjpEG4u_4mimeNtB5_4NameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1649) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !73344
  br i1 %i.ik, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !73344
  call fastcc void @_RNvMs2_Cse61XOjpEG4u_4mimeNtB5_4Mime7subtype(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bf) #61
  %i.il = call fastcc noundef zeroext i1 @_RNvXsu_Cse61XOjpEG4u_4mimeNtB5_4NameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1651) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !73344
  br i1 %i.il, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !73344
  call fastcc void @_RINvMs2_Cse61XOjpEG4u_4mimeNtB6_4Mime9get_paramNtB6_4NameECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) @1653) #53
  %i.im = call fastcc noundef zeroext i1 @_RNvXsf_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtCse61XOjpEG4u_4mime4NameENtNtB7_3cmp9PartialEq2eqCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !73344
  br i1 %i.im, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.in = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !73344 ; 2 uses
  %i.io = icmp ult i64 %i.in, 6
  call void @llvm.assume(i1 %i.io)
  %i.ip = icmp samesign ugt i64 %i.in, 1
  br i1 %i.ip, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !73344
  store ptr %i.bg, ptr %i.az, align 8, !noalias !73344
  %.sroa.4313.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4313.0..sroa_idx.i.i, align 8, !noalias !73344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !73344
  store ptr @1642, ptr %i.ay, align 8, !noalias !73344
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 41, ptr %i.iq, align 8, !noalias !73344
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr @1642, ptr %i.ir, align 8, !noalias !73344
  %i.is = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 41, ptr %i.is, align 8, !noalias !73344
  %i.it = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr @1657, ptr %i.it, align 8, !noalias !73344
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull @1656, ptr noundef nonnull %i.az, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !73344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !73344
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCse61XOjpEG4u_4mime4MimeECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(88) %i.bf) #53
  br label %bb.av

bb.aq:                                            ; preds = %bb.am
  %i.iu = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !73344 ; 2 uses
  %i.iv = icmp ult i64 %i.iu, 6
  call void @llvm.assume(i1 %i.iv)
  %i.iw = icmp samesign ugt i64 %i.iu, 4
  br i1 %i.iw, label %bb.ar, label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !73344
  store ptr %i.bg, ptr %i.bb, align 8, !noalias !73344
  %.sroa.4309.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4309.0..sroa_idx.i.i, align 8, !noalias !73344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !73344
  store ptr @1642, ptr %i.ba, align 8, !noalias !73344
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 41, ptr %i.ix, align 8, !noalias !73344
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr @1642, ptr %i.iy, align 8, !noalias !73344
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
end_hunk_2
begin_hunk_3_@_RNCNvNCNvMs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11associationINtBb_21UdpAssociationContextpE15dispatch_packet025receive_from_bypassed_opt0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !76340, !noundef !178 ; 2 uses
  %i.bj = icmp ugt i64 %.sroa.09.0.copyload.i, %i.bi
  br i1 %i.bj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.714.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.511.i, i64 30, i1 false)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !76339
  store i64 %.sroa.09.0.copyload.i, ptr %i.d, align 8, !noalias !76339
  store i64 %i.bi, ptr %i.c, align 8, !noalias !76339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76339
  store ptr %i.d, ptr %i.a, align 8, !noalias !76339
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !76339
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.bk, align 8, !noalias !76339
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !76339
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @2383, ptr noundef nonnull %i.a) #53, !noalias !76341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76339
  %i.bl = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtB7_6string6StringECs5cGWJDriNjd_6notify(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #60, !noalias !76340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !76339
  %i.bm = ptrtoint ptr %i.bl to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1762) #63
  unreachable

common.ret:                                       ; preds = %bb.y, %bb.x, %bb.w
  %.sink = phi i8 [ 4, %bb.y ], [ 1, %bb.x ], [ 3, %bb.w ]
  store i8 %.sink, ptr %i.f, align 8
  ret void

bb.w:                                             ; preds = %bb.a, %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.bn, align 8
  br label %common.ret

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBG_9UdpSocket9recv_from0ECsgZAIVb0XKpv_9ssservice.exit.i, %bb.t, %bb.u
  %.sroa.012.0.i = phi i64 [ %.sroa.09.0.copyload.i, %bb.t ], [ %i.bm, %bb.u ], [ %.sroa.09.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBG_9UdpSocket9recv_from0ECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.413.0.i = phi i16 [ %i.al, %bb.t ], [ 2, %bb.u ], [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBG_9UdpSocket9recv_from0ECsgZAIVb0XKpv_9ssservice.exit.i ]
  store i8 1, ptr %i.ai, align 8, !noalias !76339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i)
  store i64 %.sroa.012.0.i, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.413.0.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.714.i, i64 30, i1 false)
  br label %common.ret

bb.y:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !76339
  store i8 3, ptr %i.ai, align 8, !noalias !76339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.bo, align 8
  br label %common.ret
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvNtCs8UFHSMUhzWe_19shadowsocks_service3dns18build_dns_resolver0CsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(312) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 16 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.53.i99 = alloca [30 x i8], align 2       ; 4 uses
  %.sroa.516.i.sroa.4 = alloca [288 x i8], align 8 ; 2 uses
  %.sroa.5.i.sroa.4 = alloca [288 x i8], align 8  ; 6 uses
  %i.g = alloca [312 x i8], align 8               ; 8 uses
  %.sroa.05.i = alloca [472 x i8], align 8        ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.53.i74 = alloca [30 x i8], align 2       ; 2 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [224 x i8], align 8               ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [224 x i8], align 8               ; 8 uses
  %i.n = alloca [1 x i8], align 1                 ; 3 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.53.i.i = alloca [30 x i8], align 2       ; 4 uses
  %.sroa.024.i = alloca [344 x i8], align 8       ; 5 uses
  %.sroa.520.i = alloca [296 x i8], align 8       ; 7 uses
  %i.q = alloca [312 x i8], align 8               ; 7 uses
  %i.r = alloca [216 x i8], align 8               ; 4 uses
  %.sroa.06.sroa.0.sroa.26.i = alloca [30 x i8], align 2 ; 7 uses
  %.sroa.06.sroa.9.i = alloca [216 x i8], align 8 ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.53.i = alloca [30 x i8], align 2         ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.9.sroa.4 = alloca [288 x i8], align 8    ; 2 uses
  %i.u = alloca [296 x i8], align 8               ; 4 uses
  %i.v = alloca [128 x i8], align 16              ; 17 uses
  %i.w = alloca [296 x i8], align 8               ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [216 x i8], align 8              ; 2 uses
  %.sroa.633 = alloca [32 x i8], align 8          ; 2 uses
  %.sroa.734 = alloca [88 x i8], align 8          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ad = alloca [216 x i8], align 8              ; 3 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [216 x i8], align 8              ; 4 uses
  %.sroa.07.sroa.25 = alloca [30 x i8], align 2   ; 6 uses
  %.sroa.07.sroa.26 = alloca [216 x i8], align 8  ; 6 uses
  %i.aj = alloca [216 x i8], align 8              ; 3 uses
  %i.ak = alloca [32 x i8], align 8               ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 153 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !range !230, !noundef !178
  switch i8 %i.am, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.cq
    i8 3, label %bb.u
    i8 4, label %bb.cb
  ]

bb.b:                                             ; preds = %bb.c, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.an, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !range !181, !noundef !178
  %i.aq = load i64, ptr %1, align 8, !range !182, !noundef !178 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !178, !align !186, !noundef !178 ; 39 uses
  %i.av = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = xor i64 %.sroa.0.0.copyload, -9223372036854775808
  %i.ax = icmp slt i64 %.sroa.0.0.copyload, 0
  %i.ay = select i1 %i.ax, i64 %i.aw, i64 1
  switch i64 %i.ay, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.cj
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvNvNtCs5Xr050g3D4S_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1766, i64 noundef 36) #53
  %i.az = load i64, ptr %i.ak, align 8, !range !182, !noundef !178
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.734, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.0..sroa_idx, i64 88, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  store i64 -1, ptr %i.bb, align 8
  %i.bc = trunc nuw i64 %i.aq to i1
  br i1 %i.bc, label %bb.br, label %bb.bx

bb.f:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0.0.copyload1 = load i64, ptr %i.bd, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !nonnull !178, !noundef !178 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 10 uses
  %.not.i = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %.not.i, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.sroa.8.0.copyload, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check142 = icmp ult i64 %.sroa.8.0.copyload, 32
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %.sroa.8.0.copyload, 24
  %n.vec = and i64 %.sroa.8.0.copyload, -32       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 %index ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !76503 ; 2 uses
  %wide.load143 = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !76503 ; 2 uses
  %i.bh = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bi = add <16 x i8> %wide.load143, splat (i8 -65)
  %i.bj = icmp ult <16 x i8> %i.bh, splat (i8 26)
  %i.bk = icmp ult <16 x i8> %i.bi, splat (i8 26)
  %i.bl = select <16 x i1> %i.bj, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bm = select <16 x i1> %i.bk, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bn = or <16 x i8> %i.bl, %wide.load
  %i.bo = or <16 x i8> %i.bm, %wide.load143
  store <16 x i8> %i.bn, ptr %i.bf, align 1, !alias.scope !76503
  store <16 x i8> %i.bo, ptr %i.bg, align 1, !alias.scope !76503
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !76344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.8.0.copyload, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !334

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec144 = and i64 %.sroa.8.0.copyload, -8     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 %index145 ; 2 uses
  %wide.load146 = load <8 x i8>, ptr %i.bq, align 1, !alias.scope !76503 ; 2 uses
  %i.br = add <8 x i8> %wide.load146, splat (i8 -65)
  %i.bs = icmp ult <8 x i8> %i.br, splat (i8 26)
  %i.bt = select <8 x i1> %i.bs, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.bu = or <8 x i8> %i.bt, %wide.load146
  store <8 x i8> %i.bu, ptr %i.bq, align 1, !alias.scope !76503
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next147, %n.vec144
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76345

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %.sroa.8.0.copyload, %n.vec144
  br i1 %cmp.n148, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec144, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.05.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.sroa.0.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 %.sroa.0.05.i ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !76503, !noundef !178 ; 2 uses
  %i.by = add i8 %i.bx, -65
  %i.bz = icmp ult i8 %i.by, 26
  %i.ca = select i1 %i.bz, i8 32, i8 0
  %.sroa.03.0.i = or i8 %i.ca, %i.bx
  store i8 %.sroa.03.0.i, ptr %i.bw, align 1, !alias.scope !76503
  %i.cb = add nuw i64 %.sroa.0.05.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %.sroa.8.0.copyload
  br i1 %exitcond.not.i, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit, label %.lr.ph.i, !llvm.loop !76346

_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  switch i64 %.sroa.8.0.copyload, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60 [
    i64 1, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit
    i64 4, label %bb.g
  ]

_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit
  %lhsc = load i8, ptr %.sroa.42.0.copyload, align 1
  %i.cc = icmp eq i8 %lhsc, 49
  br label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60

bb.g:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit
  %i.cd = load i32, ptr %.sroa.42.0.copyload, align 1
  %i.ce = icmp ne i32 %i.cd, 1702195828
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60

_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60: ; preds = %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit, %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit, %bb.f, %bb.g
  %.sroa.010.0 = phi i1 [ %i.cc, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit ], [ %i.cg, %bb.g ], [ false, %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit ], [ false, %bb.f ]
  %i.ch = icmp eq i64 %.sroa.0.0.copyload1, 0
  br i1 %i.ch, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload, i64 noundef %.sroa.0.0.copyload1, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !76504
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76505)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val.i = load i64, ptr %i.ci, align 8, !range !190, !alias.scope !76505, !noundef !178 ; 2 uses
  %i.cj = icmp sgt i64 %.val.i, 0
  br i1 %i.cj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i: ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val1.i = load ptr, ptr %i.ck, align 8, !alias.scope !76505, !nonnull !178, !noundef !178
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !76505
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.h, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %.sroa.010.0, label %bb.bp, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsgZAIVb0XKpv_9ssservice.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  store i64 -1, ptr %i.cl, align 8
  %i.cm = trunc nuw i64 %i.aq to i1
  br i1 %i.cm, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @_RNvXs4_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_12ResolverOptsNtNtCsf3Ta7LF998c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.aj) #53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  store i64 %i.as, ptr %i.cn, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76506)
  %i.co = load i64, ptr %i.cl, align 8, !range !190, !alias.scope !76506, !noundef !178
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsgZAIVb0XKpv_9ssservice.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76507)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76509)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !76510, !nonnull !178, !noundef !178
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !76510
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEE9drop_slowCs8AjStw0eGtC_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.m, %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76511)
  %i.cv = load i64, ptr %i.cu, align 8, !range !190, !alias.scope !76512, !noundef !178 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val1.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !76512, !nonnull !178, !noundef !178
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !76513
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsgZAIVb0XKpv_9ssservice.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76514)
  %.val.i.i.i61 = load i64, ptr %i.cl, align 8, !alias.scope !76515 ; 2 uses
  %i.cy = icmp eq i64 %.val.i.i.i61, 0
  br i1 %i.cy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val1.i1.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !76515, !nonnull !178, !noundef !178
  %i.da = mul nuw i64 %.val.i.i.i61, 18
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !76514
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76516)
  %.val.i2.i.i = load i64, ptr %i.db, align 8, !alias.scope !76517 ; 2 uses
  %i.dc = icmp eq i64 %.val.i2.i.i, 0
  br i1 %i.dc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsgZAIVb0XKpv_9ssservice.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val1.i3.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !76517, !nonnull !178, !noundef !178
  %i.de = mul nuw i64 %.val.i2.i.i, 18
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3.i.i, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !76516
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.cl, ptr noundef nonnull align 8 dereferenceable(216) %i.aj, i64 216, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsgZAIVb0XKpv_9ssservice.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.sroa.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.sroa.26)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ai, ptr noundef nonnull align 8 dereferenceable(216) %i.cl, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.df = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !range !196, !alias.scope !76518, !noalias !76519, !noundef !178 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.di = load i32, ptr %i.dh, align 4, !alias.scope !76518, !noalias !76519
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i)
end_hunk_3
begin_hunk_4_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0CsgZAIVb0XKpv_9ssservice:bb.a
_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i3.i.i.i, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx.i, i64 87, i1 false), !noalias !77804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.0..sroa.5.0..sroa_idx.i.i.sroa_idx.i, i64 7, i1 false), !noalias !77804
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i.i, i8 7, i64 7, i1 false), !noalias !77789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.12.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, i64 16, i1 false), !noalias !77804
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.ab
  %.sroa.5.sroa.10.0.i.i.i = phi i64 [ 0, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.10.0.copyload.i.i.i, %bb.ab ] ; 3 uses
  %.sroa.5.sroa.8.0.i.i.i = phi ptr [ null, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.8.0.copyload.i.i.i, %bb.ab ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i = phi i8 [ 7, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i, %bb.ab ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4159.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i, i64 87, i1 false), !noalias !77806
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.6.i.i16.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.i, i64 7, i1 false), !noalias !77789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i.i, i64 7, i1 false), !noalias !77806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.12.i.i.i, i64 16, i1 false), !noalias !77806
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i.i15.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.11.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4159.sroa.5.i, i64 87, i1 false), !noalias !77807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, i64 7, i1 false), !noalias !77807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, i64 16, i1 false), !noalias !77807
  br i1 %i.es, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsgZAIVb0XKpv_9ssservice.exit.i
  %switch.i.i.i.i.i.i.i = icmp samesign ult i8 %i.em, 2
  br i1 %switch.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7133.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77808)
  call void @llvm.experimental.noalias.scope.decl(metadata !77809)
  call void @llvm.experimental.noalias.scope.decl(metadata !77810)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.7133.0.copyload.i, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !77811, !noalias !77812, !noundef !178
  %i.ew = load ptr, ptr %.sroa.7133.0.copyload.i, align 8, !alias.scope !77811, !noalias !77812, !nonnull !178, !align !186, !noundef !178
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !77813, !nonnull !178, !noundef !178
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.7133.0.copyload.i, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !77811, !noalias !77812, !noundef !178
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.7133.0.copyload.i, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !77811, !noalias !77812, !noundef !178
  call void %i.ey(ptr noundef %i.ev, ptr noundef %i.fa, i64 noundef %i.fc) #53, !noalias !77813, !inline_history !77374
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7133.0.copyload.i, i64 noundef 32, i64 noundef 8) #53, !noalias !77812
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0.copyload.i) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0.copyload.i, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !77814, !nonnull !178, !noundef !178
  call void %i.fe(ptr noundef %.sroa.10.sroa.6.0.copyload.i, ptr noundef %.sroa.10.sroa.4.0.copyload.i, i64 noundef %.sroa.10.sroa.5.0.copyload.i) #53, !noalias !77814, !inline_history !77383
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.7.0.copyload.i) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.7.0.copyload.i, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !77815, !nonnull !178, !noundef !178
  call void %i.fg(ptr noundef %.sroa.10.sroa.10.0.copyload.i, ptr noundef %.sroa.10.sroa.8.0.copyload.i, i64 noundef %.sroa.10.sroa.9.0.copyload.i) #53, !noalias !77815, !inline_history !77392
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i

bb.af:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsgZAIVb0XKpv_9ssservice.exit.i
  %switch.i.i.i.i2.i.i.i = icmp samesign ult i8 %.sroa.5.sroa.0.i.i.sroa.5.0.copyload.i, 2
  br i1 %switch.i.i.i.i2.i.i.i, label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77816)
  call void @llvm.experimental.noalias.scope.decl(metadata !77817)
  call void @llvm.experimental.noalias.scope.decl(metadata !77818)
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !77819, !noalias !77820, !noundef !178
  %i.fj = load ptr, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, align 8, !alias.scope !77819, !noalias !77820, !nonnull !178, !align !186, !noundef !178
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !77821, !nonnull !178, !noundef !178
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !77819, !noalias !77820, !noundef !178
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !77819, !noalias !77820, !noundef !178
  call void %i.fl(ptr noundef %i.fi, ptr noundef %i.fn, i64 noundef %i.fp) #53, !noalias !77821, !inline_history !77405
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 noundef 32, i64 noundef 8) #53, !noalias !77820
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i) ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !77822, !nonnull !178, !noundef !178
  call void %i.fr(ptr noundef %.sroa.5.sroa.0.i.i.sroa.11.0.copyload.i, ptr noundef %.sroa.5.sroa.0.i.i.sroa.9.0.copyload.i, i64 noundef %.sroa.5.sroa.0.i.i.sroa.10.0.copyload.i) #53, !noalias !77822, !inline_history !77414
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !77823, !nonnull !178, !noundef !178
  call void %i.ft(ptr noundef %.sroa.5.sroa.0.i.i.sroa.15.0.copyload.i, ptr noundef %.sroa.5.sroa.0.i.i.sroa.13.0.copyload.i, i64 noundef %.sroa.5.sroa.0.i.i.sroa.14.0.copyload.i) #53, !noalias !77823, !inline_history !77423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4159.sroa.5.i, i64 87, i1 false), !noalias !77807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.i, i64 7, i1 false), !noalias !77824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, i64 7, i1 false), !noalias !77807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, i64 16, i1 false), !noalias !77807
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.5.sroa.26.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.16.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.11.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.24.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.15.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.10.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.22.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.14.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.9.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.20.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.13.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.8.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.18.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.7.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.16.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.11.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.6.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.14.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.10.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.5.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.12.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.9.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.4.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.10.0.i.i27.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.sroa.0.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.8.0.i.i28.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.7133.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i29.i = phi i8 [ %.sroa.5.sroa.0.i.i.sroa.5.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.em, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6140.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, i64 87, i1 false), !noalias !77825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, i64 7, i1 false), !noalias !77825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, i64 7, i1 false), !noalias !77825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, i64 16, i1 false), !noalias !77825
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i15.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6.i.i16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4159.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !77826)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6140.i, i64 87, i1 false), !noalias !77827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, i64 7, i1 false), !noalias !77827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, i64 7, i1 false), !noalias !77827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, i64 16, i1 false), !noalias !77827
  br i1 %i.es, label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !77828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.526.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6140.i, i64 87, i1 false), !noalias !77827
  %.sroa.8141.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 96 ; 2 uses
  store i8 %.sroa.5.sroa.4.0.i.i29.i, ptr %.sroa.8141.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 97 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, i64 7, i1 false), !noalias !77827
  %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 104 ; 2 uses
  store ptr %.sroa.5.sroa.8.0.i.i28.i, ptr %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.11144.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 112 ; 2 uses
  store ptr %.sroa.5.sroa.10.0.i.i27.i, ptr %.sroa.11144.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.12146.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 120 ; 2 uses
  store ptr %.sroa.5.sroa.12.0.i.i.i, ptr %.sroa.12146.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.13148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 128 ; 2 uses
  store i64 %.sroa.5.sroa.14.0.i.i.i, ptr %.sroa.13148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.14150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 136 ; 2 uses
  store ptr %.sroa.5.sroa.16.0.i.i.i, ptr %.sroa.14150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.15152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 144 ; 2 uses
  store ptr %.sroa.5.sroa.18.0.i.i.i, ptr %.sroa.15152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 152 ; 2 uses
  store ptr %.sroa.5.sroa.20.0.i.i.i, ptr %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 160 ; 2 uses
  store i64 %.sroa.5.sroa.22.0.i.i.i, ptr %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 168 ; 2 uses
  store ptr %.sroa.5.sroa.24.0.i.i.i, ptr %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 176 ; 2 uses
  store i64 %.sroa.5.sroa.26.0.i.i.i, ptr %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 184 ; 2 uses
  store i8 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !77827
  %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 185 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, i64 7, i1 false), !noalias !77827
  %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 192 ; 2 uses
  store ptr %.sroa.5.sroa.8.0.i.i.i, ptr %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !noalias !77827
  %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 200 ; 2 uses
  store i64 %.sroa.5.sroa.10.0.i.i.i, ptr %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !noalias !77827
  %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 208 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, i64 16, i1 false), !noalias !77827
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ao, align 8, !noalias !77828
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i8 %.sroa.5.sroa.0.i.i.sroa.0.sroa.0.0.copyload.i, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !noalias !77828
  call void @llvm.experimental.noalias.scope.decl(metadata !77829)
  call void @llvm.experimental.noalias.scope.decl(metadata !77830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !77828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !77828
  %i.fu = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.al, i64 33
  %.val.i.i.i.i4 = load ptr, ptr %i.ek, align 8, !alias.scope !77826, !noalias !77831, !nonnull !178, !noundef !178 ; 7 uses
  %.val35.i.i.i.i = load i64, ptr %i.el, align 8, !alias.scope !77826, !noalias !77831, !noundef !178 ; 10 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4, i64 %.val35.i.i.i.i
  %i.fx = icmp samesign eq i64 %.val35.i.i.i.i, 0
  br i1 %i.fx, label %bb.ak, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %min.iters.check = icmp ult i64 %.val35.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check170 = icmp ult i64 %.val35.i.i.i.i, 32
  br i1 %min.iters.check170, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fy = and i64 %.val35.i.i.i.i, 24
  %n.vec = and i64 %.val35.i.i.i.i, -32           ; 4 uses
  %i.fz = getelementptr i8, ptr %.val.i.i.i.i4, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.gk, %vector.body ]
  %vec.phi171 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.gm, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val.i.i.i.i4, i64 %index ; 2 uses
  %i.ga = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !77832, !noalias !77833 ; 3 uses
  %wide.load172 = load <16 x i8>, ptr %i.ga, align 1, !alias.scope !77832, !noalias !77833 ; 3 uses
  %i.gb = icmp ult <16 x i8> %wide.load, splat (i8 32)
  %i.gc = icmp ult <16 x i8> %wide.load172, splat (i8 32)
  %i.gd = icmp eq <16 x i8> %wide.load, splat (i8 127)
  %i.ge = icmp eq <16 x i8> %wide.load172, splat (i8 127)
  %i.gf = or <16 x i1> %i.gb, %i.gd
  %i.gg = or <16 x i1> %i.gc, %i.ge
  %i.gh = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.gi = icmp ne <16 x i8> %wide.load172, splat (i8 9)
  %i.gj = and <16 x i1> %i.gf, %i.gh
  %i.gk = or <16 x i1> %vec.phi, %i.gj            ; 2 uses
  %i.gl = and <16 x i1> %i.gg, %i.gi
  %i.gm = or <16 x i1> %vec.phi171, %i.gl         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !77444

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.gm, %i.gk
  %i.go = bitcast <16 x i1> %bin.rdx to i16
  %i.gp = icmp ne i16 %i.go, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.val35.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !334

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.gp, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec173 = and i64 %.val35.i.i.i.i, -8         ; 3 uses
  %i.gq = getelementptr i8, ptr %.val.i.i.i.i4, i64 %n.vec173
  %i.gr = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index174 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next178, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi175 = phi <8 x i1> [ %i.gr, %vec.epilog.ph ], [ %i.gx, %vec.epilog.vector.body ]
  %next.gep176 = getelementptr i8, ptr %.val.i.i.i.i4, i64 %index174
  %wide.load177 = load <8 x i8>, ptr %next.gep176, align 1, !alias.scope !77832, !noalias !77833 ; 3 uses
  %i.gs = icmp ult <8 x i8> %wide.load177, splat (i8 32)
  %i.gt = icmp eq <8 x i8> %wide.load177, splat (i8 127)
  %i.gu = or <8 x i1> %i.gs, %i.gt
  %i.gv = icmp ne <8 x i8> %wide.load177, splat (i8 9)
  %i.gw = and <8 x i1> %i.gu, %i.gv
  %i.gx = or <8 x i1> %vec.phi175, %i.gw          ; 2 uses
  %index.next178 = add nuw i64 %index174, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.gy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77445

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gz = bitcast <8 x i1> %i.gx to i8
  %i.ha = icmp ne i8 %i.gz, 0                     ; 2 uses
  %cmp.n179 = icmp eq i64 %.val35.i.i.i.i, %n.vec173
  br i1 %cmp.n179, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.i.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.gp, %vec.epilog.iter.check ], [ %i.ha, %vec.epilog.middle.block ]
  %.sroa.02.07.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i.i4, %iter.check ], [ %i.fz, %vec.epilog.iter.check ], [ %i.gq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.aj
  %.sroa.0.08.i.i.i.i.i.i.i = phi i1 [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.aj ], [ %.sroa.0.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i.i.i.i.i.i = phi ptr [ %i.hb, %bb.aj ], [ %.sroa.02.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.hc = load i8, ptr %.sroa.02.07.i.i.i.i.i.i.i, align 1, !alias.scope !77832, !noalias !77833, !noundef !178 ; 3 uses
  %i.hd = icmp ult i8 %i.hc, 32
  %i.he = icmp eq i8 %i.hc, 127
  %or.cond.i.i.i.i.i.i.i = or i1 %i.hd, %i.he
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ai, label %bb.aj

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aj, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.i.i.i.i.i.i.i.lcssa = phi i1 [ %i.ha, %vec.epilog.middle.block ], [ %i.gp, %middle.block ], [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.aj ]
  br i1 %.sroa.04.0.i.i.i.i.i.i.i.lcssa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.hf = icmp ne i8 %i.hc, 9
  %i.hg = or i1 %.sroa.0.08.i.i.i.i.i.i.i, %i.hf
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i1 [ %i.hg, %bb.ai ], [ %.sroa.0.08.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.hh = icmp eq ptr %i.hb, %i.fw
  br i1 %i.hh, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !77446

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.ah
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i4, i64 noundef range(i64 0, -9223372036854775808) %.val35.i.i.i.i) #53, !noalias !77834
  %.sroa.029.0.copyload.i.i.i.i = load i8, ptr %i.al, align 8, !noalias !77835
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !77835
  store i8 %.sroa.029.0.copyload.i.i.i.i, ptr %i.an, align 8, !noalias !77835
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx7.i.i.i.i, align 1, !noalias !77835
  %.sroa.9.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9.0..sroa_idx9.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %i.fu, i64 30, i1 false), !noalias !77835
  %.sroa.910.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i8 0, ptr %.sroa.910.0..sroa_idx11.i.i.i.i, align 8, !noalias !77835
  %.sroa.10.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx13.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.fv, i64 7, i1 false), !noalias !77835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !77835
  store ptr null, ptr %i.am, align 8, !noalias !77835
  %.sroa.6.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 38 to ptr), ptr %.sroa.6.0..sroa_idx38.i.i.i.i, align 8, !noalias !77835
  %.sroa.7.0..sroa_idx40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx40.i.i.i.i, i8 0, i64 16, i1 false), !noalias !77789
  %i.hi = call fastcc noundef i8 @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ao, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.am, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.an) #61, !noalias !77836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !77835
  %i.hj = icmp eq i8 %i.hi, 2
  br i1 %i.hj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload3.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.7.0.copyload9.i.i.i = load i8, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !alias.scope !77837, !noalias !77838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.526.0..sroa_idx.i.i.i, i64 87, i1 false), !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.5.0.copyload.i = load i8, ptr %.sroa.8141.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, i64 7, i1 false), !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.7.0.copyload.i = load ptr, ptr %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.8.0.copyload.i = load ptr, ptr %.sroa.11144.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.9.0.copyload.i = load ptr, ptr %.sroa.12146.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.13148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.11.0.copyload.i = load ptr, ptr %.sroa.14150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.12.0.copyload.i = load ptr, ptr %.sroa.15152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.13.0.copyload.i = load ptr, ptr %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.14.0.copyload.i = load i64, ptr %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.15.0.copyload.i = load ptr, ptr %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.16.0.copyload.i = load i64, ptr %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.17.0.copyload.i = load i8, ptr %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, i64 7, i1 false), !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.19.0.copyload.i = load ptr, ptr %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  %.sroa.9.i.i.sroa.20.0.copyload.i = load i64, ptr %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !alias.scope !77837, !noalias !77838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, i64 16, i1 false), !alias.scope !77837, !noalias !77838
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.ak, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.7.1.i.i.i = phi i8 [ 6, %bb.ak ], [ 5, %._crit_edge.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http7request5PartsECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ao) #53, !noalias !77836
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.al
  %.sroa.9.i.i.sroa.5.0.i = phi i8 [ %.sroa.5.sroa.4.0.i.i29.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.5.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.7.0.i = phi ptr [ %.sroa.5.sroa.8.0.i.i28.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.7.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.8.0.i = phi ptr [ %.sroa.5.sroa.10.0.i.i27.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.8.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.9.0.i = phi ptr [ %.sroa.5.sroa.12.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.9.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.10.0.i = phi i64 [ %.sroa.5.sroa.14.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.10.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.11.0.i = phi ptr [ %.sroa.5.sroa.16.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.11.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.12.0.i = phi ptr [ %.sroa.5.sroa.18.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.12.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.13.0.i = phi ptr [ %.sroa.5.sroa.20.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.13.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.14.0.i = phi i64 [ %.sroa.5.sroa.22.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.14.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.15.0.i = phi ptr [ %.sroa.5.sroa.24.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.15.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.16.0.i = phi i64 [ %.sroa.5.sroa.26.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.16.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.17.0.i = phi i8 [ %.sroa.5.sroa.4.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.17.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.19.0.i = phi ptr [ %.sroa.5.sroa.8.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.19.0.copyload.i, %bb.al ]
  %.sroa.9.i.i.sroa.20.0.i = phi i64 [ %.sroa.5.sroa.10.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.20.0.copyload.i, %bb.al ]
  %.sroa.7.2.i.i.i = phi i8 [ %.sroa.7.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.7.0.copyload9.i.i.i, %bb.al ]
  %.sroa.0.2.i.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.0.0.copyload3.i.i.i, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !77828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !77828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !77828
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.9.i.i.sroa.5.1.i = phi i8 [ %.sroa.9.i.i.sroa.5.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.4.0.i.i29.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.7.1.i = phi ptr [ %.sroa.9.i.i.sroa.7.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i.i28.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.8.1.i = phi ptr [ %.sroa.9.i.i.sroa.8.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.10.0.i.i27.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.9.1.i = phi ptr [ %.sroa.9.i.i.sroa.9.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.12.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.10.1.i = phi i64 [ %.sroa.9.i.i.sroa.10.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.14.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.11.1.i = phi ptr [ %.sroa.9.i.i.sroa.11.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.16.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.12.1.i = phi ptr [ %.sroa.9.i.i.sroa.12.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.18.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.13.1.i = phi ptr [ %.sroa.9.i.i.sroa.13.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.20.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.14.1.i = phi i64 [ %.sroa.9.i.i.sroa.14.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.22.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.15.1.i = phi ptr [ %.sroa.9.i.i.sroa.15.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.24.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.16.1.i = phi i64 [ %.sroa.9.i.i.sroa.16.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.26.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.17.1.i = phi i8 [ %.sroa.9.i.i.sroa.17.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.4.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.19.1.i = phi ptr [ %.sroa.9.i.i.sroa.19.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.9.i.i.sroa.20.1.i = phi i64 [ %.sroa.9.i.i.sroa.20.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.10.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.7.0.i.i.i = phi i8 [ %.sroa.7.2.i.i.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.5.sroa.0.i.i.sroa.0.sroa.0.0.copyload.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.2.i.i.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ -1, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsgZAIVb0XKpv_9ssservice.exit.i ] ; 5 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.ax, align 8, !noalias !77789
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store i8 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 8, !noalias !77789
  %.sroa.9.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 9 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.0..sroa_idx11.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, i64 87, i1 false), !noalias !77789
  %.sroa.9.i.i.sroa.5.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i8 %.sroa.9.i.i.sroa.5.1.i, ptr %.sroa.9.i.i.sroa.5.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !77789
  %.sroa.9.i.i.sroa.6.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, i64 7, i1 false), !noalias !77789
  %.sroa.9.i.i.sroa.7.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %.sroa.9.i.i.sroa.7.1.i, ptr %.sroa.9.i.i.sroa.7.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !77789
  %.sroa.9.i.i.sroa.8.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store ptr %.sroa.9.i.i.sroa.8.1.i, ptr %.sroa.9.i.i.sroa.8.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !77789
  %.sroa.9.i.i.sroa.9.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  store ptr %.sroa.9.i.i.sroa.9.1.i, ptr %.sroa.9.i.i.sroa.9.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !77789
  %.sroa.9.i.i.sroa.10.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
end_hunk_4
begin_hunk_5_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0CsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.9.i.i.sroa.19.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  store ptr %.sroa.9.i.i.sroa.19.1.i, ptr %.sroa.9.i.i.sroa.19.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !77789
  %.sroa.9.i.i.sroa.20.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  store i64 %.sroa.9.i.i.sroa.20.1.i, ptr %.sroa.9.i.i.sroa.20.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !77789
  %.sroa.9.i.i.sroa.21.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.sroa.21.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, i64 16, i1 false), !noalias !77789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.21.i)
  store i8 1, ptr %i.ec, align 1, !noalias !77789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.8.i)
  %i.hk = load i64, ptr %i.ei, align 8, !range !190, !noalias !77791, !noundef !178
  %.not.i = icmp eq i64 %i.hk, -1
  br i1 %.not.i, label %bb.az, label %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i

_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i:     ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !77789
  store ptr %i.ei, ptr %i.bf, align 8, !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !77789
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store ptr %i.hl, ptr %i.be, align 8, !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !77789
  store ptr %i.bf, ptr %i.bb, align 8, !noalias !77789
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4183.0..sroa_idx.i, align 8, !noalias !77789
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.be, ptr %i.hm, align 8, !noalias !77789
  %.sroa.4185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4185.0..sroa_idx.i, align 8, !noalias !77789
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, ptr noundef nonnull @555, ptr noundef nonnull %i.bb) #53, !noalias !77839
  %.sroa.0180.0.copyload.pr.i = load i64, ptr %i.bc, align 8, !alias.scope !77840, !noalias !77789 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !77789
  %.sroa.4181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.4181.0.copyload.i = load ptr, ptr %.sroa.4181.0..sroa_idx.i, align 8, !alias.scope !77840, !noalias !77789, !nonnull !178, !noundef !178 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !77840, !noalias !77789 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !77789
  call void @llvm.experimental.noalias.scope.decl(metadata !77841)
  call void @llvm.experimental.noalias.scope.decl(metadata !77842)
  %i.hn = udiv i64 %.sroa.5.0.copyload.i, 3
  %i.ho = shl nuw i64 %i.hn, 2                    ; 2 uses
  %i.hp = urem i64 %.sroa.5.0.copyload.i, 3
  %.not.i.i.i.i = icmp eq i64 %i.hp, 0
  %i.hq = add nuw i64 %i.ho, 4
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.ho, i64 %i.hq ; 15 uses
  %.not.i.i.i.i.i = icmp slt i64 %.sroa.7.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %bb.am, !prof !189

bb.am:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i
  %i.hr = icmp eq i64 %.sroa.7.0.i.i.i.i, 0
  br i1 %i.hr, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !77843
  %i.hs = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.7.0.i.i.i.i, i64 noundef range(i64 1, 17) 1) #53, !noalias !77843 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hu = ptrtoint ptr %i.hs to i64
  br label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ap:                                            ; preds = %bb.an, %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.an ], [ 0, %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.7.0.i.i.i.i) #62, !noalias !77844
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ao, %bb.am
  %.sroa.10.0.i.i.i.i = phi i64 [ %i.hu, %bb.ao ], [ 1, %bb.am ] ; 2 uses
  %i.hv = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr ; 4 uses
  %i.hw = call noundef i64 @_RNvXs_NtNtCs8xUA7ZdjTE9_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324) @556, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4181.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull %i.hv, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i) #53, !noalias !77845 ; 6 uses
  %i.hx = icmp ugt i64 %i.hw, %.sroa.7.0.i.i.i.i
  br i1 %i.hx, label %bb.ar, label %bb.aq, !prof !187

bb.aq:                                            ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.hy = sub nuw nsw i64 %.sroa.7.0.i.i.i.i, %i.hw ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hw ; 3 uses
  %i.ia = sub nsw i64 0, %i.hw
  %i.ib = and i64 %i.ia, 3                        ; 3 uses
  %.not.i2.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i2.i.i.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.ar:                                            ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.hw, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #63, !noalias !77845
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.7.0.i.i.i.i, %i.hw
  br i1 %exitcond.not.i.i.i.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i
  store i8 61, ptr %i.hz, align 1, !alias.scope !77846, !noalias !77847
  %exitcond4.not.i.i.i.i = icmp eq i64 %i.ib, 1
  br i1 %exitcond4.not.i.i.i.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.as
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.hy, 1
  br i1 %exitcond.not.i.i.i.i.1, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  store i8 61, ptr %i.ic, align 1, !alias.scope !77846, !noalias !77847
  %exitcond4.not.i.i.i.i.1 = icmp eq i64 %i.ib, 2
  br i1 %exitcond4.not.i.i.i.i.1, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.at
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %i.hy, 2
  br i1 %exitcond.not.i.i.i.i.2, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.2
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  store i8 61, ptr %i.id, align 1, !alias.scope !77846, !noalias !77847
  br label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hy, i64 noundef %i.hy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @352) #63, !noalias !77845
  unreachable

_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.as, %bb.at, %bb.au, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !77848
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hv, i64 noundef %.sroa.7.0.i.i.i.i) #53, !noalias !77849
  %i.ie = load i64, ptr %i.ak, align 8, !range !182, !noalias !77848, !noundef !178
  %i.if = trunc nuw i64 %i.ie to i1
  br i1 %i.if, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i, label %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.821.24.copyload.i.i.i = load i64, ptr %i.ig, align 8, !noalias !77848
  %.sroa.1022.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.1022.24.copyload.i.i.i = load i64, ptr %.sroa.1022.24..sroa_idx.i.i.i, align 8, !noalias !77848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !77848
  call void @llvm.experimental.noalias.scope.decl(metadata !77850)
  call void @llvm.experimental.noalias.scope.decl(metadata !77851)
  %i.ih = inttoptr i64 %.sroa.7.0.i.i.i.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !77852
  store i64 %.sroa.7.0.i.i.i.i, ptr %i.aj, align 8, !noalias !77853
  %.sroa.6.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.10.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx10.i.i.i, align 8, !noalias !77853
  %.sroa.812.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ih, ptr %.sroa.812.0..sroa_idx13.i.i.i, align 8, !noalias !77853
  %.sroa.9.0..sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.sroa.821.24.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx15.i.i.i, align 8, !noalias !77853
  %.sroa.10.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %.sroa.1022.24.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx17.i.i.i, align 8, !noalias !77853
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @519, i64 noundef 12, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1975, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @520) #63, !noalias !77854
  unreachable

_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !77848
  store i64 %.sroa.7.0.i.i.i.i, ptr %i.bd, align 8, !alias.scope !77855, !noalias !77856
  %.sroa.812.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  store ptr %i.hv, ptr %.sroa.812.8..sroa_idx.i.i.i, align 8, !alias.scope !77855, !noalias !77856
  %.sroa.9.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.9.8..sroa_idx.i.i.i, align 8, !alias.scope !77855, !noalias !77856
  %i.ii = icmp eq i64 %.sroa.0180.0.copyload.pr.i, 0
  br i1 %i.ii, label %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4181.0.copyload.i, i64 noundef %.sroa.0180.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !77857
  br label %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i

_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.aw, %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !77789
  store ptr %i.bd, ptr %i.ay, align 8, !noalias !77789
  %.sroa.4203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4203.0..sroa_idx.i, align 8, !noalias !77789
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noundef nonnull @557, ptr noundef nonnull %i.ay) #53, !noalias !77858
  %.sroa.0199.0.copyload.pr.i = load i64, ptr %i.az, align 8, !alias.scope !77859, !noalias !77789 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !77789
  %.sroa.6200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.6200.0.copyload.i = load ptr, ptr %.sroa.6200.0..sroa_idx.i, align 8, !alias.scope !77859, !noalias !77789, !nonnull !178, !noundef !178 ; 9 uses
  %.sroa.9201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.9201.0.copyload.i = load i64, ptr %.sroa.9201.0..sroa_idx.i, align 8, !alias.scope !77859, !noalias !77789 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !77789
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.6200.0.copyload.i, i64 %.sroa.9201.0.copyload.i
  %i.ik = icmp samesign eq i64 %.sroa.9201.0.copyload.i, 0
  br i1 %i.ik, label %bb.bd, label %iter.check200

iter.check200:                                    ; preds = %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i
  %min.iters.check182 = icmp ult i64 %.sroa.9201.0.copyload.i, 8
  br i1 %min.iters.check182, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check183

vector.main.loop.iter.check183:                   ; preds = %iter.check200
  %min.iters.check184 = icmp ult i64 %.sroa.9201.0.copyload.i, 32
  br i1 %min.iters.check184, label %vec.epilog.ph204, label %vector.ph185

vector.ph185:                                     ; preds = %vector.main.loop.iter.check183
  %i.il = and i64 %.sroa.9201.0.copyload.i, 24
  %n.vec186 = and i64 %.sroa.9201.0.copyload.i, -32 ; 4 uses
  %i.im = getelementptr i8, ptr %.sroa.6200.0.copyload.i, i64 %n.vec186
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next194, %vector.body187 ] ; 2 uses
  %vec.phi189 = phi <16 x i1> [ zeroinitializer, %vector.ph185 ], [ %i.ix, %vector.body187 ]
  %vec.phi190 = phi <16 x i1> [ zeroinitializer, %vector.ph185 ], [ %i.iz, %vector.body187 ]
  %next.gep191 = getelementptr i8, ptr %.sroa.6200.0.copyload.i, i64 %index188 ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <16 x i8>, ptr %next.gep191, align 1, !alias.scope !77860, !noalias !77861 ; 3 uses
  %wide.load193 = load <16 x i8>, ptr %i.in, align 1, !alias.scope !77860, !noalias !77861 ; 3 uses
  %i.io = icmp ult <16 x i8> %wide.load192, splat (i8 32)
  %i.ip = icmp ult <16 x i8> %wide.load193, splat (i8 32)
  %i.iq = icmp eq <16 x i8> %wide.load192, splat (i8 127)
  %i.ir = icmp eq <16 x i8> %wide.load193, splat (i8 127)
  %i.is = or <16 x i1> %i.io, %i.iq
  %i.it = or <16 x i1> %i.ip, %i.ir
  %i.iu = icmp ne <16 x i8> %wide.load192, splat (i8 9)
  %i.iv = icmp ne <16 x i8> %wide.load193, splat (i8 9)
  %i.iw = and <16 x i1> %i.is, %i.iu
  %i.ix = or <16 x i1> %vec.phi189, %i.iw         ; 2 uses
  %i.iy = and <16 x i1> %i.it, %i.iv
  %i.iz = or <16 x i1> %vec.phi190, %i.iy         ; 2 uses
  %index.next194 = add nuw i64 %index188, 32      ; 2 uses
  %i.ja = icmp eq i64 %index.next194, %n.vec186
  br i1 %i.ja, label %middle.block195, label %vector.body187, !llvm.loop !77486

middle.block195:                                  ; preds = %vector.body187
  %bin.rdx196 = or <16 x i1> %i.iz, %i.ix
  %i.jb = bitcast <16 x i1> %bin.rdx196 to i16
  %i.jc = icmp ne i16 %i.jb, 0                    ; 3 uses
  %cmp.n197 = icmp eq i64 %.sroa.9201.0.copyload.i, %n.vec186
  br i1 %cmp.n197, label %._crit_edge.i.i.i, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block195
  %min.epilog.iters.check203 = icmp eq i64 %i.il, 0
  br i1 %min.epilog.iters.check203, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph204, !prof !334

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check183, %vec.epilog.iter.check202
  %vec.epilog.resume.val198 = phi i64 [ %n.vec186, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check183 ]
  %bc.merge.rdx199 = phi i1 [ %i.jc, %vec.epilog.iter.check202 ], [ false, %vector.main.loop.iter.check183 ]
  %n.vec205 = and i64 %.sroa.9201.0.copyload.i, -8 ; 3 uses
  %i.jd = getelementptr i8, ptr %.sroa.6200.0.copyload.i, i64 %n.vec205
  %i.je = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx199, i64 0
  br label %vec.epilog.vector.body206

vec.epilog.vector.body206:                        ; preds = %vec.epilog.vector.body206, %vec.epilog.ph204
  %index207 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph204 ], [ %index.next211, %vec.epilog.vector.body206 ] ; 2 uses
  %vec.phi208 = phi <8 x i1> [ %i.je, %vec.epilog.ph204 ], [ %i.jk, %vec.epilog.vector.body206 ]
  %next.gep209 = getelementptr i8, ptr %.sroa.6200.0.copyload.i, i64 %index207
  %wide.load210 = load <8 x i8>, ptr %next.gep209, align 1, !alias.scope !77860, !noalias !77861 ; 3 uses
  %i.jf = icmp ult <8 x i8> %wide.load210, splat (i8 32)
  %i.jg = icmp eq <8 x i8> %wide.load210, splat (i8 127)
  %i.jh = or <8 x i1> %i.jf, %i.jg
  %i.ji = icmp ne <8 x i8> %wide.load210, splat (i8 9)
  %i.jj = and <8 x i1> %i.jh, %i.ji
  %i.jk = or <8 x i1> %vec.phi208, %i.jj          ; 2 uses
  %index.next211 = add nuw i64 %index207, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.jl, label %vec.epilog.middle.block212, label %vec.epilog.vector.body206, !llvm.loop !77487

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body206
  %i.jm = bitcast <8 x i1> %i.jk to i8
  %i.jn = icmp ne i8 %i.jm, 0                     ; 2 uses
  %cmp.n213 = icmp eq i64 %.sroa.9201.0.copyload.i, %n.vec205
  br i1 %cmp.n213, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block212
  %.sroa.0.08.i.i.i.ph = phi i1 [ false, %iter.check200 ], [ %i.jc, %vec.epilog.iter.check202 ], [ %i.jn, %vec.epilog.middle.block212 ]
  %.sroa.02.07.i.i.i.ph = phi ptr [ %.sroa.6200.0.copyload.i, %iter.check200 ], [ %i.im, %vec.epilog.iter.check202 ], [ %i.jd, %vec.epilog.middle.block212 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.ay
  %.sroa.0.08.i.i.i = phi i1 [ %.sroa.04.0.i.i.i, %bb.ay ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i.i = phi ptr [ %i.jo, %bb.ay ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %i.jp = load i8, ptr %.sroa.02.07.i.i.i, align 1, !alias.scope !77860, !noalias !77861, !noundef !178 ; 3 uses
  %i.jq = icmp ult i8 %i.jp, 32
  %i.jr = icmp eq i8 %i.jp, 127
  %or.cond.i.i.i = or i1 %i.jq, %i.jr
  br i1 %or.cond.i.i.i, label %bb.ax, label %bb.ay

._crit_edge.i.i.i:                                ; preds = %bb.ay, %vec.epilog.middle.block212, %middle.block195
  %.sroa.04.0.i.i.i.lcssa = phi i1 [ %i.jn, %vec.epilog.middle.block212 ], [ %i.jc, %middle.block195 ], [ %.sroa.04.0.i.i.i, %bb.ay ]
  br i1 %.sroa.04.0.i.i.i.lcssa, label %bb.ba, label %bb.bd

bb.ax:                                            ; preds = %.lr.ph.i.i.i
  %i.js = icmp ne i8 %i.jp, 9
  %i.jt = or i1 %.sroa.0.08.i.i.i, %i.js
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i.i.i
  %.sroa.04.0.i.i.i = phi i1 [ %i.jt, %bb.ax ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ju = icmp eq ptr %i.jo, %i.ij
  br i1 %i.ju, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !77488

bb.az:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit66.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.7.0.i.i245.i = phi i8 [ %.sroa.7.0.i.i60.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit66.i ], [ %.sroa.7.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %.sroa.0.0.i.i244.i = phi i64 [ %.sroa.0.0.i.i61.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit66.i ], [ %.sroa.0.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i ] ; 3 uses
  store i8 0, ptr %i.ec, align 1, !noalias !77789
  %.sroa.5233.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 1, !noalias !77789 ; 2 uses
  %i.jv = icmp eq i64 %.sroa.0.0.i.i244.i, -1
  br i1 %i.jv, label %bb.bm, label %.thread.i

bb.ba:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !77862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !77862
  store ptr %i.a, ptr %i.ah, align 8, !noalias !77862
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsa_NtNtCs7ewmRfXve8r_4http6header5valueNtB5_18InvalidHeaderValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !77862
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @762, ptr noundef nonnull %i.ah) #53, !noalias !77863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !77862
  %i.jw = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtB7_6string6StringECs5cGWJDriNjd_6notify(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai) #60, !noalias !77864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !77862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !77789
  %i.jx = icmp eq i64 %.sroa.0199.0.copyload.pr.i, 0
  br i1 %i.jx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6200.0.copyload.i, i64 noundef %.sroa.0199.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !77865
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !77866)
  call void @llvm.experimental.noalias.scope.decl(metadata !77867)
  %.val.i.i45.i = load i64, ptr %i.bd, align 8, !alias.scope !77868, !noalias !77789 ; 2 uses
  %i.jy = icmp eq i64 %.val.i.i45.i, 0
  br i1 %i.jy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit47.i, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i
  %.val1.i.i46.i = load ptr, ptr %.sroa.812.8..sroa_idx.i.i.i, align 8, !alias.scope !77868, !noalias !77789, !nonnull !178, !noundef !178
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i46.i, i64 noundef %.val.i.i45.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !77869
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit47.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit47.i: ; preds = %bb.bc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !77789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !77789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !77789
  br label %bb.cf

bb.bd:                                            ; preds = %._crit_edge.i.i.i, %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit.i
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6200.0.copyload.i, i64 noundef %.sroa.9201.0.copyload.i) #53, !noalias !77791
  call void @llvm.experimental.noalias.scope.decl(metadata !77870)
  call void @llvm.experimental.noalias.scope.decl(metadata !77871)
  %.sroa.0195.0.copyload.i = load ptr, ptr %i.ba, align 8, !alias.scope !77872, !noalias !77789 ; 4 uses
  %.sroa.6196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.6196.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6196.0..sroa_idx.i, align 8, !alias.scope !77872, !noalias !77789 ; 3 uses
  %.sroa.6196.sroa.4.0..sroa.6196.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.6196.sroa.4.0.copyload.i = load i64, ptr %.sroa.6196.sroa.4.0..sroa.6196.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !77872, !noalias !77789 ; 3 uses
  %.sroa.6196.sroa.5.0..sroa.6196.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.6196.sroa.5.0.copyload.i = load ptr, ptr %.sroa.6196.sroa.5.0..sroa.6196.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !77872, !noalias !77789 ; 3 uses
  %.sroa.10198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 33
  %.sroa.10198.sroa.0.0.copyload.i = load i56, ptr %.sroa.10198.0..sroa_idx.i, align 1, !alias.scope !77872, !noalias !77789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !77789
  %i.jz = icmp eq i64 %.sroa.0199.0.copyload.pr.i, 0
  br i1 %i.jz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit50.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6200.0.copyload.i, i64 noundef %.sroa.0199.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !77873
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit50.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit50.i: ; preds = %bb.be, %bb.bd
  store i8 0, ptr %i.ec, align 1, !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i51.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.i.i51.i, ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.0..sroa_idx11.i.i.i, i64 215, i1 false), !noalias !77789
  %i.ka = icmp eq i64 %.sroa.0.0.i.i.i, -1
  br i1 %i.ka, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit50.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0195.0.copyload.i) ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0195.0.copyload.i, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !77874, !nonnull !178, !noundef !178
  call void %i.kc(ptr noundef %.sroa.6196.sroa.5.0.copyload.i, ptr noundef %.sroa.6196.sroa.0.0.copyload.i, i64 noundef %.sroa.6196.sroa.4.0.copyload.i) #53, !noalias !77874, !inline_history !77522
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerReNtNtNtB8_6header5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.i

bb.bg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsgZAIVb0XKpv_9ssservice.exit50.i
  %.sroa.8209.32.insert.ext.i = zext i56 %.sroa.10198.sroa.0.0.copyload.i to i64
  %.sroa.8209.32.insert.shift.i = shl nuw i64 %.sroa.8209.32.insert.ext.i, 8
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !77875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(215) %.sroa.527.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.0..sroa_idx11.i.i.i, i64 215, i1 false), !noalias !77789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !77875
  store ptr @558, ptr %i.ad, align 8, !noalias !77876
  %.sroa.4.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 19, ptr %.sroa.4.0..sroa_idx.i56.i, align 8, !noalias !77876
  %.sroa.4.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store ptr %.sroa.0195.0.copyload.i, ptr %.sroa.4.0..sroa_idx14.i.i.i, align 8, !noalias !77875
  %.sroa.5.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.sroa.6196.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx16.i.i.i, align 8, !noalias !77875
  %.sroa.6.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %.sroa.6196.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx18.i.i.i, align 8, !noalias !77875
  %.sroa.720.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %.sroa.6196.sroa.5.0.copyload.i, ptr %.sroa.720.0..sroa_idx21.i.i.i, align 8, !noalias !77875
  %.sroa.8.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %.sroa.8209.32.insert.shift.i, ptr %.sroa.8.0..sroa_idx23.i.i.i, align 8, !noalias !77875
  store i64 %.sroa.0.0.i.i.i, ptr %i.ac, align 8, !noalias !77875
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i8 %.sroa.7.0.i.i.i, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !77875
  call void @llvm.experimental.noalias.scope.decl(metadata !77877)
  call void @llvm.experimental.noalias.scope.decl(metadata !77878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !77875
  call void @_RNvMs_NtNtCs7ewmRfXve8r_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 19) #53, !noalias !77879
  %i.kd = load i64, ptr %i.ab, align 8, !range !182, !noalias !77880, !noundef !178
  %i.ke = trunc nuw i64 %i.kd to i1
end_hunk_5
begin_hunk_6_@_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB2_10DispatcherINtB2_6ServerINtNtNtB8_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1X_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtB8_4body8incoming8IncomingEB4z_EINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB8_5error5ErrorEINtNtB1Z_8tokio_rt7TokioIoB3F_ENtNtB4_4role6ServerE10poll_writeCsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.10188.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.13194.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.18.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.sroa.3.sroa.243.sroa.2.0..sroa.3.sroa.243.0..sroa.3.0..sroa_idx38.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.3.sroa.243.sroa.3.0..sroa.3.sroa.243.0..sroa.3.0..sroa_idx38.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %.sroa.3.sroa.243.sroa.4.0..sroa.3.sroa.243.0..sroa.3.0..sroa_idx38.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.sroa.366.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.sroa.366.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.366.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.366.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.366.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.ib = load ptr, ptr %i.ch, align 8, !nonnull !178, !noundef !178 ; 9 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !noundef !178 ; 4 uses
  %.not = icmp eq ptr %i.ic, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.c, %bb.h, %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit, %bb.b
  %i.id = load i8, ptr %i.hu, align 8, !range !181, !noundef !178
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.el, label %bb.ej

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !85528)
  %i.if = load i64, ptr %i.ci, align 8, !range !217, !alias.scope !85528, !noundef !178 ; 2 uses
  %i.ig = icmp ne i64 %i.if, -9223372036854775805
  call void @llvm.assume(i1 %i.ig)
  %i.ih = icmp eq i64 %i.if, -9223372036854775806
  br i1 %i.ih, label %bb.d, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !85529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !85530
  call void @llvm.experimental.noalias.scope.decl(metadata !85531)
  call void @llvm.experimental.noalias.scope.decl(metadata !85532)
  %i.ii = load i64, ptr %i.ck, align 8, !alias.scope !85533, !noalias !85531, !noundef !178 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !85533, !noalias !85531 ; 4 uses
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val2.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !85533, !noalias !85531 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.val2.i.i.i, %.val.i.i.i
  %i.ik = select i1 %.not.i.i.i.i, i64 0, i64 %.val.i.i.i
  %.sroa.04.0.i.i.i.i = sub nuw i64 %.val2.i.i.i, %i.ik ; 4 uses
  %i.il = sub i64 %.val.i.i.i, %.sroa.04.0.i.i.i.i ; 2 uses
  %.not11.i.i.i.i = icmp ult i64 %i.il, %i.ii
  br i1 %.not11.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.im = sub nuw i64 %i.ii, %i.il
  br label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.e
  %i.in = add i64 %.sroa.04.0.i.i.i.i, %i.ii
  br label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i, %bb.g ], [ %.sroa.04.0.i.i.i.i, %bb.f ], [ 0, %bb.d ]
  %.sroa.5.0.i.i.i = phi i64 [ %i.in, %bb.g ], [ %.val.i.i.i, %bb.f ], [ 0, %bb.d ]
  %.sroa.11.0.i.i.i = phi i64 [ 0, %bb.g ], [ %i.im, %bb.f ], [ 0, %bb.d ]
  %i.io = load ptr, ptr %i.cm, align 8, !alias.scope !85533, !noalias !85531, !nonnull !178, !noundef !178 ; 4 uses
  %i.ip = getelementptr inbounds nuw [80 x i8], ptr %i.io, i64 %.sroa.0.0.i.i.i
  %i.iq = getelementptr inbounds nuw [80 x i8], ptr %i.io, i64 %.sroa.5.0.i.i.i
  %i.ir = getelementptr inbounds nuw [80 x i8], ptr %i.io, i64 %.sroa.11.0.i.i.i
  store ptr %i.ip, ptr %i.by, align 8, !alias.scope !85531, !noalias !85533
  store ptr %i.iq, ptr %i.cn, align 8, !alias.scope !85531, !noalias !85533
  store ptr %i.io, ptr %i.co, align 8, !alias.scope !85531, !noalias !85533
  store ptr %i.ir, ptr %i.cp, align 8, !alias.scope !85531, !noalias !85533
  %i.is = call fastcc noundef i64 @_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2M_8adapters3map8map_foldRB19_jjNCNvXs_NtNtB1i_6common3bufINtB4u_7BufListB19_ENtNtNtB28_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2K_5accumjNtB5S_3Sum3sumINtB3M_3MapBY_B4n_EE0E0ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.by) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !85530
  %.not.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.i.i, label %bb.h, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit.thread

bb.h:                                             ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit
  %.val107 = load ptr, ptr %i.cq, align 8, !nonnull !178, !noundef !178 ; 104 uses
  %i.it = load i128, ptr %.val107, align 16, !range !238, !noundef !178
  %.not249 = icmp eq i128 %i.it, 0
  br i1 %.not249, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8334.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10339.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11340.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !85534
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.iu = getelementptr inbounds nuw i8, ptr %.val107, i64 712 ; 3 uses
  %i.iv = load i8, ptr %i.iu, align 8, !range !230, !noalias !85535, !noundef !178
  switch i8 %i.iv, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.bf
    i8 3, label %bb.ba
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.cq, %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !85535
  br label %bb.aw

bb.l:                                             ; preds = %bb.i
  %i.iw = getelementptr inbounds nuw i8, ptr %.val107, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %.val107, i64 714 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val107, i64 713 ; 3 uses
  store i8 0, ptr %i.iy, align 1, !noalias !85535
  %i.iz = getelementptr inbounds nuw i8, ptr %.val107, i64 715 ; 3 uses
  store i8 1, ptr %i.iz, align 1, !noalias !85535
  %i.ja = getelementptr inbounds nuw i8, ptr %.val107, i64 344 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val107, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ja, ptr noundef nonnull align 8 dereferenceable(64) %i.jb, i64 64, i1 false), !noalias !85535
  store i8 1, ptr %i.ix, align 2, !noalias !85535
  %i.jc = getelementptr inbounds nuw i8, ptr %.val107, i64 408 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.jc, ptr noundef nonnull align 16 dereferenceable(264) %i.iw, i64 264, i1 false), !noalias !85535
  %i.jd = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !85535 ; 2 uses
  %i.je = icmp ult i64 %i.jd, 6
  call void @llvm.assume(i1 %i.je)
  %i.jf = icmp samesign ugt i64 %i.jd, 4
  br i1 %i.jf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.jg = getelementptr inbounds nuw i8, ptr %.val107, i64 400 ; 2 uses
  %.val136.i.i = load ptr, ptr %i.jg, align 16, !noalias !85535, !nonnull !178, !noundef !178
  %i.jh = getelementptr i8, ptr %.val136.i.i, i64 40
  %.val137.i.i = load i64, ptr %i.jh, align 8, !noalias !85536, !noundef !178
  %.not438.i.i = icmp eq i64 %.val137.i.i, 0
  br i1 %.not438.i.i, label %bb.o, label %_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !85535
  store ptr %i.ja, ptr %i.bx, align 8, !noalias !85535
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !85535
  store ptr %i.jc, ptr %i.cr, align 8, !noalias !85535
  store ptr @_RNvXs1_NtCs7ewmRfXve8r_4http7requestINtB5_7RequestNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4244.0..sroa_idx.i.i, align 8, !noalias !85535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !85537
  store i64 5, ptr %i.cs, align 8, !noalias !85537
  store ptr @801, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !85537
  store i64 46, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !85537
  store ptr @1048, ptr %i.ct, align 8, !noalias !85537
  store ptr %i.bx, ptr %i.cu, align 8, !noalias !85537
  store i64 0, ptr %i.ad, align 8, !noalias !85537
  store ptr @801, ptr %.sroa.428.0..sroa_idx.i.i.i.i, align 8, !noalias !85537
  store i64 46, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8, !noalias !85537
  store i64 0, ptr %i.cv, align 8, !noalias !85537
  store ptr @798, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !85537
  store i64 57, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !85537
  store i32 1, ptr %i.cw, align 8, !noalias !85537
  store i32 58, ptr %i.cx, align 4, !noalias !85537
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ad) #53, !noalias !85538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !85537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !85535
  br label %bb.m

_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.m
  %i.ji = call fastcc noundef align 8 ptr @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.jc, ptr noundef nonnull readonly align 8 dereferenceable(32) @1049) #53, !noalias !85536 ; 4 uses
  %.not.i.i127 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i127, label %bb.s, label %bb.p

bb.o:                                             ; preds = %bb.w, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !85535
  %i.jj = getelementptr inbounds nuw i8, ptr %.val107, i64 504 ; 3 uses
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http5utils9host_addr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bl, ptr noundef nonnull align 8 %i.jj) #53, !noalias !85536
  %i.jk = load i16, ptr %i.bl, align 8, !range !239, !noalias !85535, !noundef !178
  %.not58.i.i = icmp eq i16 %i.jk, 2
  br i1 %.not58.i.i, label %bb.ac, label %bb.ab

bb.p:                                             ; preds = %_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !85535
  store ptr %i.ji, ptr %i.bw, align 8, !noalias !85535
  %i.jl = getelementptr i8, ptr %i.ji, i64 8
  %.val133.i.i = load ptr, ptr %i.jl, align 8, !noalias !85536, !nonnull !178, !noundef !178 ; 8 uses
  %i.jm = getelementptr i8, ptr %i.ji, i64 16
  %.val134.i.i = load i64, ptr %i.jm, align 8, !noalias !85536, !noundef !178 ; 11 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.val133.i.i, i64 %.val134.i.i
  %i.jo = icmp samesign eq i64 %.val134.i.i, 0
  br i1 %i.jo, label %bb.v, label %iter.check

iter.check:                                       ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.val134.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check645 = icmp ult i64 %.val134.i.i, 32
  br i1 %min.iters.check645, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jp = and i64 %.val134.i.i, 24
  %n.vec = and i64 %.val134.i.i, -32              ; 4 uses
  %i.jq = getelementptr i8, ptr %.val133.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi646 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi648, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val133.i.i, i64 %index ; 2 uses
  %i.jr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !85536 ; 2 uses
  %wide.load647 = load <16 x i8>, ptr %i.jr, align 1, !noalias !85536 ; 2 uses
  %i.js = add <16 x i8> %wide.load, splat (i8 -127)
  %i.jt = icmp ult <16 x i8> %i.js, splat (i8 -95)
  %i.ju = add <16 x i8> %wide.load647, splat (i8 -127)
  %i.jv = icmp ult <16 x i8> %i.ju, splat (i8 -95)
  %i.jw = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.jx = icmp ne <16 x i8> %wide.load647, splat (i8 9)
  %i.jy = and <16 x i1> %i.jt, %i.jw
  %predphi = or <16 x i1> %vec.phi, %i.jy         ; 2 uses
  %i.jz = and <16 x i1> %i.jv, %i.jx
  %predphi648 = or <16 x i1> %vec.phi646, %i.jz   ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ka = icmp eq i64 %index.next, %n.vec
  br i1 %i.ka, label %middle.block, label %vector.body, !llvm.loop !85246

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %predphi648, %predphi
  %i.kb = bitcast <16 x i1> %bin.rdx to i16
  %i.kc = icmp ne i16 %i.kb, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.val134.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !334

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.kc, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec649 = and i64 %.val134.i.i, -8            ; 3 uses
  %i.kd = getelementptr i8, ptr %.val133.i.i, i64 %n.vec649
  %i.ke = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index650 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next655, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi651 = phi <8 x i1> [ %i.ke, %vec.epilog.ph ], [ %predphi654, %vec.epilog.vector.body ]
  %next.gep652 = getelementptr i8, ptr %.val133.i.i, i64 %index650
  %wide.load653 = load <8 x i8>, ptr %next.gep652, align 1, !noalias !85536 ; 2 uses
  %i.kf = add <8 x i8> %wide.load653, splat (i8 -127)
  %i.kg = icmp ult <8 x i8> %i.kf, splat (i8 -95)
  %i.kh = icmp ne <8 x i8> %wide.load653, splat (i8 9)
  %i.ki = and <8 x i1> %i.kg, %i.kh
  %predphi654 = or <8 x i1> %vec.phi651, %i.ki    ; 2 uses
  %index.next655 = add nuw i64 %index650, 8       ; 2 uses
  %i.kj = icmp eq i64 %index.next655, %n.vec649
  br i1 %i.kj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.kk = bitcast <8 x i1> %predphi654 to i8
  %i.kl = icmp ne i8 %i.kk, 0                     ; 2 uses
  %cmp.n656 = icmp eq i64 %.val134.i.i, %n.vec649
  br i1 %cmp.n656, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.02.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.kc, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ]
  %.sroa.03.01.i.i.i.ph = phi ptr [ %.val133.i.i, %iter.check ], [ %i.jq, %vec.epilog.iter.check ], [ %i.kd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.r
  %.sroa.01.02.i.i.i = phi i1 [ %.sroa.06.0.i.i.i, %bb.r ], [ %.sroa.01.02.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.03.01.i.i.i = phi ptr [ %i.km, %bb.r ], [ %.sroa.03.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.kn = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noalias !85536, !noundef !178 ; 2 uses
  %i.ko = add i8 %i.kn, -32
  %or.cond.i.i.i = icmp ult i8 %i.ko, 95
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.q

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.r, %vec.epilog.middle.block, %middle.block
  %.sroa.06.0.i.i.i.lcssa = phi i1 [ %i.kl, %vec.epilog.middle.block ], [ %i.kc, %middle.block ], [ %.sroa.06.0.i.i.i, %bb.r ]
  br i1 %.sroa.06.0.i.i.i.lcssa, label %bb.bb, label %bb.v

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.kp = icmp ne i8 %i.kn, 9
  %i.kq = or i1 %.sroa.01.02.i.i.i, %i.kp
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = phi i1 [ %i.kq, %bb.q ], [ %.sroa.01.02.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.kr = icmp eq ptr %i.km, %i.jn
  br i1 %i.kr, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !85248

bb.s:                                             ; preds = %_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ks = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !85535 ; 2 uses
  %i.kt = icmp ult i64 %i.ks, 6
  call void @llvm.assume(i1 %i.kt)
  %.not448.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not448.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_service34make_proxy_authentication_required(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ae) #53, !noalias !85536
  br label %bb.be

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !85535
  %i.ku = getelementptr inbounds nuw i8, ptr %.val107, i64 592
  store ptr %i.ku, ptr %i.bo, align 8, !noalias !85535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !85535
  %i.kv = getelementptr inbounds nuw i8, ptr %.val107, i64 504
  store ptr %i.kv, ptr %i.bn, align 8, !noalias !85535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !85535
  store ptr %i.bo, ptr %i.bm, align 8, !noalias !85535
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs7ewmRfXve8r_4http6method6MethodNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4268.0..sroa_idx.i.i, align 8, !noalias !85535
  store ptr %i.bn, ptr %i.dp, align 8, !noalias !85535
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs7ewmRfXve8r_4http3uri3UriNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4270.0..sroa_idx.i.i, align 8, !noalias !85535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !85539
  store i64 1, ptr %i.dq, align 8, !noalias !85539
  store ptr @801, ptr %.sroa.422.0..sroa_idx.i.i125.i, align 8, !noalias !85539
  store i64 46, ptr %.sroa.523.0..sroa_idx.i.i126.i, align 8, !noalias !85539
  store ptr @1050, ptr %i.dr, align 8, !noalias !85539
  store ptr %i.bm, ptr %i.ds, align 8, !noalias !85539
  store i64 0, ptr %i.j, align 8, !noalias !85539
  store ptr @801, ptr %.sroa.428.0..sroa_idx.i.i127.i, align 8, !noalias !85539
  store i64 46, ptr %.sroa.529.0..sroa_idx.i.i128.i, align 8, !noalias !85539
  store i64 0, ptr %i.dt, align 8, !noalias !85539
  store ptr @798, ptr %.sroa.434.0..sroa_idx.i.i129.i, align 8, !noalias !85539
  store i64 57, ptr %.sroa.535.0..sroa_idx.i.i130.i, align 8, !noalias !85539
  store i32 1, ptr %i.du, align 8, !noalias !85539
  store i32 85, ptr %i.dv, align 4, !noalias !85539
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j) #53, !noalias !85540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !85539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !85535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !85535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !85535
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.loopexit.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !85535
  store ptr %.val133.i.i, ptr %i.bv, align 8, !noalias !85535, !captures !231
  store i64 %.val134.i.i, ptr %i.dg, align 8, !noalias !85535
  %.val135.i.i = load ptr, ptr %i.jg, align 16, !noalias !85535, !nonnull !178, !noundef !178
  %i.kw = getelementptr inbounds nuw i8, ptr %.val135.i.i, i64 16
  %i.kx = call noundef zeroext i1 @_RNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6configNtB2_14HttpAuthConfig17verify_basic_auth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val133.i.i, i64 noundef %.val134.i.i) #53, !noalias !85536
  br i1 %i.kx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !85535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !85535
  br label %bb.o

bb.x:                                             ; preds = %bb.v
  %i.ky = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !85535 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 6
  call void @llvm.assume(i1 %i.kz)
  %.not440.i.i = icmp eq i64 %i.ky, 0
  br i1 %.not440.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_service34make_proxy_authentication_required(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ae) #53, !noalias !85536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !85535
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !85535
  %i.la = getelementptr inbounds nuw i8, ptr %.val107, i64 592
  store ptr %i.la, ptr %i.bu, align 8, !noalias !85535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !85535
  %i.lb = getelementptr inbounds nuw i8, ptr %.val107, i64 504
  store ptr %i.lb, ptr %i.bt, align 8, !noalias !85535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !85535
  store ptr %i.bu, ptr %i.bs, align 8, !noalias !85535
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs7ewmRfXve8r_4http6method6MethodNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4252.0..sroa_idx.i.i, align 8, !noalias !85535
  store ptr %i.bt, ptr %i.dh, align 8, !noalias !85535
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs7ewmRfXve8r_4http3uri3UriNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4254.0..sroa_idx.i.i, align 8, !noalias !85535
  store ptr %i.bv, ptr %i.di, align 8, !noalias !85535
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4256.0..sroa_idx.i.i, align 8, !noalias !85535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !85541
  store i64 1, ptr %i.dj, align 8, !noalias !85541
  store ptr @801, ptr %.sroa.422.0..sroa_idx.i.i119.i, align 8, !noalias !85541
  store i64 46, ptr %.sroa.523.0..sroa_idx.i.i120.i, align 8, !noalias !85541
  store ptr @1051, ptr %i.dk, align 8, !noalias !85541
  store ptr %i.bs, ptr %i.dl, align 8, !noalias !85541
  store i64 0, ptr %i.k, align 8, !noalias !85541
  store ptr @801, ptr %.sroa.428.0..sroa_idx.i.i121.i, align 8, !noalias !85541
  store i64 46, ptr %.sroa.529.0..sroa_idx.i.i122.i, align 8, !noalias !85541
  store i64 0, ptr %i.dm, align 8, !noalias !85541
  store ptr @798, ptr %.sroa.434.0..sroa_idx.i.i123.i, align 8, !noalias !85541
  store i64 57, ptr %.sroa.535.0..sroa_idx.i.i124.i, align 8, !noalias !85541
  store i32 1, ptr %i.dn, align 8, !noalias !85541
  store i32 66, ptr %i.do, align 4, !noalias !85541
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k) #53, !noalias !85542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !85541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !85535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !85535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !85535
  br label %bb.y

bb.aa:                                            ; preds = %bb.bc, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !85535
  br label %bb.be

bb.ab:                                            ; preds = %bb.o
  %i.lc = getelementptr inbounds nuw i8, ptr %.val107, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.lc, ptr noundef nonnull align 8 dereferenceable(40) %i.bl, i64 40, i1 false), !noalias !85535
end_hunk_6
