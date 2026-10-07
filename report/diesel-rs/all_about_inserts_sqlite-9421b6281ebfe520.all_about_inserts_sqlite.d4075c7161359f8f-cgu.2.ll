Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/all_about_inserts_sqlite-9421b6281ebfe520.all_about_inserts_sqlite.d4075c7161359f8f-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs5_NtCsc61CYD6Y1ak_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtB2t_8UserFormNtB1j_11Deserialize11deserialize9___VisitorEB2t_:bb.a
.loopexit.i.i.i:                                  ; preds = %.lr.ph.i7.i.i.i.i, %bb.ak
  %i.el = phi i64 [ %i.dt, %bb.ak ], [ %i.ec, %.lr.ph.i7.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.aq, align 8, !alias.scope !459, !noalias !460
  store i64 0, ptr %i.dl, align 8, !alias.scope !461, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !462
  call void @_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !460
  %i.en = load i64, ptr %i.y, align 8, !range !11, !noalias !462, !noundef !4 ; 2 uses
  %i.eo = icmp eq i64 %i.en, -1
  %i.ep = load ptr, ptr %i.dm, align 8, !noalias !462 ; 9 uses
  br i1 %i.eo, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %.loopexit.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !462 ; 2 uses
  %i.eq = trunc nuw i64 %i.en to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  br i1 %i.eq, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bc [
    i64 4, label %bb.at
    i64 10, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.er = load i32, ptr %i.ep, align 1
  %i.es = icmp ne i32 %i.er, 1701667182
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ba, label %bb.bc

bb.au:                                            ; preds = %bb.as
  %i.ev = load i64, ptr %i.ep, align 1
  %i.ew = xor i64 %i.ev, 7813573140103651688
  %i.ex = getelementptr i8, ptr %i.ep, i64 8
  %i.ey = load i16, ptr %i.ex, align 1
  %i.ez = zext i16 %i.ey to i64
  %i.fa = xor i64 %i.ez, 29295
  %i.fb = or i64 %i.ew, %i.fa
  %i.fc = icmp ne i64 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.bb, label %bb.bc

bb.av:                                            ; preds = %bb.ar
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bc [
    i64 4, label %bb.aw
    i64 10, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ff = load i32, ptr %i.ep, align 1
  %i.fg = icmp ne i32 %i.ff, 1701667182
  %i.fh = zext i1 %i.fg to i32
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.ba, label %bb.bc

bb.ax:                                            ; preds = %bb.av
  %i.fj = load i64, ptr %i.ep, align 1
  %i.fk = xor i64 %i.fj, 7813573140103651688
  %i.fl = getelementptr i8, ptr %i.ep, i64 8
  %i.fm = load i16, ptr %i.fl, align 1
  %i.fn = zext i16 %i.fm to i64
  %i.fo = xor i64 %i.fn, 29295
  %i.fp = or i64 %i.fk, %i.fo
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bb, label %bb.bc

bb.ay:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !462
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.az:                                            ; preds = %bb.ag
  %.not35.i = icmp eq ptr %.sroa.04.0398.i, null
  br i1 %.not35.i, label %bb.dx, label %bb.ea

bb.ba:                                            ; preds = %bb.aw, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !462
  %.not37.i = icmp eq ptr %.sroa.04.0398.i, null
  br i1 %.not37.i, label %bb.dm, label %bb.dl, !prof !8

bb.bb:                                            ; preds = %bb.ax, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !462
  %i.ft = icmp eq i64 %.sroa.011.0396.i, 1
  br i1 %i.ft, label %bb.dr, label %bb.ds, !prof !10

bb.bc:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !462
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.fu = load i64, ptr %i.ar, align 8, !alias.scope !465, !noalias !466, !noundef !4 ; 4 uses
  %.promoted.i.i.i.i40.i = load i64, ptr %i.aq, align 8, !alias.scope !467, !noalias !468 ; 2 uses
  %i.fv = icmp ult i64 %.promoted.i.i.i.i40.i, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i.i.i42.i, label %.loopexit.i.i.i41.i

.lr.ph.i.i.i.i42.i:                               ; preds = %bb.bc
  %i.fw = load ptr, ptr %i.au, align 8, !alias.scope !465, !noalias !466, !nonnull !4, !noundef !4 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %.lr.ph.i.i.i.i42.i
  %i.fx = phi i64 [ %.promoted.i.i.i.i40.i, %.lr.ph.i.i.i.i42.i ], [ %i.ga, %bb.be ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !noalias !471, !noundef !4
  switch i8 %i.fz, label %bb.bf [
    i8 32, label %bb.be
    i8 10, label %bb.be
    i8 9, label %bb.be
    i8 13, label %bb.be
    i8 58, label %bb.bg
  ], !prof !9

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd, %bb.bd
  %i.ga = add i64 %i.fx, 1                        ; 3 uses
  store i64 %i.ga, ptr %i.aq, align 8, !alias.scope !472, !noalias !468
  %exitcond.not.i.i.i.i43.i = icmp eq i64 %i.ga, %i.fu
  br i1 %exitcond.not.i.i.i.i43.i, label %.loopexit.i.i.i41.i, label %bb.bd

.loopexit.i.i.i41.i:                              ; preds = %bb.bc, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !473
  store i64 3, ptr %i.w, align 8, !noalias !473
  %i.gb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !473
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !473
  store i64 6, ptr %i.x, align 8, !noalias !473
  %i.gc = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !473
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.bg:                                            ; preds = %bb.bd
  %i.gd = add i64 %i.fx, 1                        ; 3 uses
  store i64 %i.gd, ptr %i.aq, align 8, !alias.scope !475, !noalias !474
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  store i64 0, ptr %i.dl, align 8, !alias.scope !480, !noalias !474
  %i.ge = icmp ult i64 %i.gd, %i.fu
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bg, %bb.dh
  %i.gf = phi ptr [ %i.kg, %bb.dh ], [ %i.fw, %bb.bg ] ; 11 uses
  %.promoted.i171.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %bb.dh ], [ %i.gd, %bb.bg ]
  %i.gg = phi i64 [ %i.kf, %bb.dh ], [ %i.fu, %bb.bg ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.dh ], [ undef, %bb.bg ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i.i.i = phi i1 [ true, %bb.dh ], [ false, %bb.bg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gh = phi i64 [ %.promoted.i171.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gk, %bb.bi ] ; 17 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !noalias !482, !noundef !4 ; 3 uses
  switch i8 %i.gj, label %bb.bj [
    i8 32, label %bb.bi
    i8 10, label %bb.bi
    i8 9, label %bb.bi
    i8 13, label %bb.bi
    i8 110, label %bb.bk
    i8 116, label %bb.bq
    i8 102, label %bb.bw
    i8 45, label %bb.ce
    i8 34, label %bb.cf
    i8 91, label %bb.cg
    i8 123, label %bb.cg
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.gk = add i64 %i.gh, 1                        ; 3 uses
  store i64 %i.gk, ptr %i.aq, align 8, !alias.scope !483, !noalias !484
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gk, %i.gg
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.bh

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.bg, %bb.dh, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !485
  store i64 5, ptr %i.v, align 8, !noalias !485
  %i.gl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !485
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.gm = add i8 %i.gj, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.gm, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ck, label %bb.cj, !prof !14

bb.bk:                                            ; preds = %bb.bh
  %i.gn = add i64 %i.gh, 1                        ; 4 uses
  store i64 %i.gn, ptr %i.aq, align 8, !alias.scope !486, !noalias !474
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gg, i64 %i.gn) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.gn, %i.gg
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.bl, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !490, !noundef !4
  %i.gq = add i64 %i.gh, 2                        ; 3 uses
  store i64 %i.gq, ptr %i.aq, align 8, !alias.scope !491, !noalias !492
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bm, label %.loopexit233.i.i.i.i.i.i.i, !prof !15

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.gq, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !495, !noundef !4
  %i.gt = add i64 %i.gh, 3                        ; 3 uses
  store i64 %i.gt, ptr %i.aq, align 8, !alias.scope !496, !noalias !492
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.gs, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.bo, label %.loopexit233.i.i.i.i.i.i.i, !prof !15

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.gt, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !noalias !499, !noundef !4
  %i.gw = add i64 %i.gh, 4
  store i64 %i.gw, ptr %i.aq, align 8, !alias.scope !500, !noalias !492
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.gv, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i, label %.loopexit233.i.i.i.i.i.i.i, !prof !15

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bm, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !501
  store i64 5, ptr %i.n, align 8, !noalias !501
  %i.gx = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !501
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

.loopexit233.i.i.i.i.i.i.i:                       ; preds = %bb.bp, %bb.bn, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !501
  store i64 9, ptr %i.m, align 8, !noalias !501
  %i.gy = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !501
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.bq:                                            ; preds = %bb.bh
  %i.gz = add i64 %i.gh, 1                        ; 4 uses
  store i64 %i.gz, ptr %i.aq, align 8, !alias.scope !503, !noalias !474
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gg, i64 %i.gz) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.gz, %i.gg
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.br, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !noalias !507, !noundef !4
  %i.hc = add i64 %i.gh, 2                        ; 3 uses
  store i64 %i.hc, ptr %i.aq, align 8, !alias.scope !508, !noalias !509
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.bs, label %.loopexit226.i.i.i.i.i.i.i, !prof !15

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.hc, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !noalias !512, !noundef !4
  %i.hf = add i64 %i.gh, 3                        ; 3 uses
  store i64 %i.hf, ptr %i.aq, align 8, !alias.scope !513, !noalias !509
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.he, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.bu, label %.loopexit226.i.i.i.i.i.i.i, !prof !15

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.hf, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !noalias !516, !noundef !4
  %i.hi = add i64 %i.gh, 4
  store i64 %i.hi, ptr %i.aq, align 8, !alias.scope !517, !noalias !509
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.hh, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i, label %.loopexit226.i.i.i.i.i.i.i, !prof !15

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.bu, %bb.bs, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !518
  store i64 5, ptr %i.l, align 8, !noalias !518
  %i.hj = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !518
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

.loopexit226.i.i.i.i.i.i.i:                       ; preds = %bb.bv, %bb.bt, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !518
  store i64 9, ptr %i.k, align 8, !noalias !518
  %i.hk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !518
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.bw:                                            ; preds = %bb.bh
  %i.hl = add i64 %i.gh, 1                        ; 4 uses
  store i64 %i.hl, ptr %i.aq, align 8, !alias.scope !520, !noalias !474
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gg, i64 %i.hl) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.hl, %i.gg
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.bx, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !noalias !524, !noundef !4
  %i.ho = add i64 %i.gh, 2                        ; 3 uses
  store i64 %i.ho, ptr %i.aq, align 8, !alias.scope !525, !noalias !526
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.hn, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.by, label %.loopexit219.i.i.i.i.i.i.i, !prof !15

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !noalias !529, !noundef !4
  %i.hr = add i64 %i.gh, 3                        ; 3 uses
  store i64 %i.hr, ptr %i.aq, align 8, !alias.scope !530, !noalias !526
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.hq, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.ca, label %.loopexit219.i.i.i.i.i.i.i, !prof !15

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.hr, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !533, !noundef !4
  %i.hu = add i64 %i.gh, 4                        ; 3 uses
  store i64 %i.hu, ptr %i.aq, align 8, !alias.scope !534, !noalias !526
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.ht, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.cc, label %.loopexit219.i.i.i.i.i.i.i, !prof !15

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.hu, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !537, !noundef !4
  %i.hx = add i64 %i.gh, 5
  store i64 %i.hx, ptr %i.aq, align 8, !alias.scope !538, !noalias !526
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.hw, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i, label %.loopexit219.i.i.i.i.i.i.i, !prof !15

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.cc, %bb.ca, %bb.by, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !539
  store i64 5, ptr %i.j, align 8, !noalias !539
  %i.hy = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !539
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

.loopexit219.i.i.i.i.i.i.i:                       ; preds = %bb.cd, %bb.cb, %bb.bz, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !539
  store i64 9, ptr %i.i, align 8, !noalias !539
  %i.hz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !539
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.ce:                                            ; preds = %bb.bh
  %i.ia = add i64 %i.gh, 1
  store i64 %i.ia, ptr %i.aq, align 8, !alias.scope !541, !noalias !474
  %i.ib = call fastcc noundef align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !474 ; 2 uses
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.cf:                                            ; preds = %bb.bh
  %i.ic = add i64 %i.gh, 1
  store i64 %i.ic, ptr %i.aq, align 8, !alias.scope !542, !noalias !474
  %i.id = call noundef align 8 ptr @_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au), !noalias !474 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.cg:                                            ; preds = %bb.bh, %bb.bh
  call void @_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %.sroa.039.0169.i.i.i.i.i.i.i, i8 %.sroa.7.0170.i.i.i.i.i.i.i), !noalias !474
  %i.ie = load i64, ptr %i.aq, align 8, !alias.scope !543, !noalias !474, !noundef !4
  %i.if = add i64 %i.ie, 1
  store i64 %i.if, ptr %i.aq, align 8, !alias.scope !543, !noalias !474
  br label %bb.ci

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cf, %bb.ce, %bb.cd, %bb.bv, %bb.bp
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i
  %i.ig = load i64, ptr %i.dl, align 8, !alias.scope !480, !noalias !474, !noundef !4 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %_RINvYINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseMV7gzmhUlG_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i, label %bb.cl

bb.ci:                                            ; preds = %bb.cl, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i, %bb.cg
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.gj, %bb.cg ], [ %i.is, %bb.cl ], [ %.sroa.7.0170.i.i.i.i.i.i.i, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %bb.cg ], [ true, %bb.cl ], [ true, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i ]
  %i.ii = load i64, ptr %i.ar, align 8, !alias.scope !544, !noalias !545, !noundef !4 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !546, !noalias !547 ; 2 uses
  %i.ij = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.ii
  br i1 %i.ij, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.ci
  %i.ik = load ptr, ptr %i.au, align 8, !alias.scope !544, !noalias !545, !nonnull !4, !noundef !4 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !485
  store i64 10, ptr %i.u, align 8, !noalias !485
  %i.il = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !485
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.ck:                                            ; preds = %bb.bj
  %i.im = call fastcc noundef align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !474 ; 2 uses
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.im, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

bb.cl:                                            ; preds = %bb.ch
  %i.in = add i64 %i.ig, -1                       ; 3 uses
  store i64 %i.in, ptr %i.dl, align 8, !alias.scope !480, !noalias !474
  %i.io = load i64, ptr %1, align 8, !range !6, !alias.scope !480, !noalias !474, !noundef !4
  %i.ip = icmp ult i64 %i.in, %i.io
  call void @llvm.assume(i1 %i.ip)
  %i.iq = load ptr, ptr %i.dq, align 8, !alias.scope !480, !noalias !474, !nonnull !4, !noundef !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.in
  %i.is = load i8, ptr %i.ir, align 1, !noalias !474, !noundef !4
  br label %bb.ci

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.cw, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.jc, %bb.cw ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.cw ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.jk, %bb.cw ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.it = phi i64 [ %.promoted.i73165.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.iw, %bb.cn ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !551, !noundef !4
  switch i8 %i.iv, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.cn
    i8 10, label %bb.cn
    i8 9, label %bb.cn
    i8 13, label %bb.cn
    i8 44, label %bb.cr
    i8 93, label %bb.cs
    i8 125, label %bb.ct
  ]

bb.cn:                                            ; preds = %bb.cm, %bb.cm, %bb.cm, %bb.cm
  %i.iw = add i64 %i.it, 1                        ; 3 uses
  store i64 %i.iw, ptr %i.aq, align 8, !alias.scope !552, !noalias !547
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.iw, %i.ii
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.cm

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.ci, %bb.cw, %bb.cn
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.jk, %bb.cw ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.cn ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.ci ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !485
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %bb.co [
    i8 91, label %bb.cq
    i8 123, label %bb.cp
  ]

bb.co:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !474
  unreachable

bb.cp:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.cp ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !485
  %i.ix = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !485
  br label %_RINvXs0_NvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtBb_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor9visit_mapINtNtCsc61CYD6Y1ak_10serde_json2de9MapAccessNtNtB2M_4read7StrReadEEBb_.exit

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ct, %bb.cs, %bb.cm
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.cx, label %.critedge.i.i.i.i.i.i.i, !prof !10

bb.cr:                                            ; preds = %bb.cm
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.cu, label %.critedge.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cm
  %i.iy = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 91
  br i1 %i.iy, label %bb.cv, label %.loopexit.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cm
  %i.iz = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.iz, label %bb.cv, label %.loopexit.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cr
  %i.ja = add i64 %i.it, 1                        ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsc61CYD6Y1ak_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseMV7gzmhUlG_10serde_core2de12Deserializer18deserialize_structNtNvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtB2t_8UserFormNtB1j_11Deserialize11deserialize9___VisitorEB2t_:bb.a
    i8 44, label %bb.eh
  ], !prof !13

bb.ef:                                            ; preds = %bb.ee, %bb.ee, %bb.ee, %bb.ee
  %i.mg = add i64 %i.md, 1                        ; 3 uses
  store i64 %i.mg, ptr %i.aq, align 8, !alias.scope !608, !noalias !604
  %exitcond.not.i.i = icmp eq i64 %i.mg, %i.ma
  br i1 %exitcond.not.i.i, label %.loopexit.i38, label %bb.ee

.loopexit.i38:                                    ; preds = %bb.ef, %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !599
  store i64 3, ptr %i.b, align 8, !noalias !599
  %i.mh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.ei

.noexc:                                           ; preds = %.loopexit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !599
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !599
  store i64 22, ptr %i.c, align 8, !noalias !599
  %i.mi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc39 unwind label %bb.ei

.noexc39:                                         ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !599
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.eh:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !599
  store i64 21, ptr %i.d, align 8, !noalias !599
  %i.mj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc40 unwind label %bb.ei

.noexc40:                                         ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !599
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %.loopexit.i38
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorEEBZ_(ptr %.sroa.054.0, ptr %.sroa.1255.0) #14
          to label %common.resume unwind label %bb.ab

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %.noexc40, %.noexc39, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.mi, %.noexc39 ], [ %i.mh, %.noexc ], [ %i.mj, %.noexc40 ] ; 4 uses
  %i.ml = icmp eq ptr %.sroa.054.0, null
  br i1 %i.ml, label %bb.ej, label %.thread78

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread: ; preds = %bb.ee
  %i.mm = add i64 %i.md, 1
  store i64 %i.mm, ptr %i.aq, align 8, !alias.scope !609
  %i.mn = icmp eq ptr %.sroa.054.0, null
  br i1 %i.mn, label %.thread117, label %.thread83

.thread117:                                       ; preds = %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1255.0) ]
  br label %.thread78

bb.ej:                                            ; preds = %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1255.0) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorCodeECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sroa.0.0.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsicCGYGrxCr3_24all_about_inserts_sqlite.exit41 unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsicCGYGrxCr3_24all_about_inserts_sqlite.exit41: ; preds = %bb.ej
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i, i64 noundef 40, i64 noundef 8) #16
  br label %.thread78

.thread78:                                        ; preds = %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit, %.thread117, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsicCGYGrxCr3_24all_about_inserts_sqlite.exit41, %bb.z, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsicCGYGrxCr3_24all_about_inserts_sqlite.exit, %bb.d
  %.sroa.10.3 = phi ptr [ %i.da, %bb.z ], [ %i.bc, %bb.d ], [ %.sroa.7.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsicCGYGrxCr3_24all_about_inserts_sqlite.exit ], [ %.sroa.7.0, %bb.aa ], [ %.sroa.1255.0, %.thread117 ], [ %.sroa.0.0.i, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ], [ %.sroa.1255.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error5ErrorECsicCGYGrxCr3_24all_about_inserts_sqlite.exit41 ]
  %i.mp = call noundef nonnull align 8 ptr @_RINvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mp, ptr %i.mq, align 8
  store ptr null, ptr %0, align 8
  br label %bb.el

.thread83:                                        ; preds = %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread, %bb.z
  %.sroa.05.191 = phi ptr [ %.sroa.043.0, %bb.z ], [ %.sroa.054.0, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread ]
  %.sroa.10.190 = phi ptr [ %.sroa.7.0, %bb.z ], [ %.sroa.1255.0, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread ]
  %.sroa.14.sroa.0.189 = phi ptr [ %.sroa.10.064, %bb.z ], [ %.sroa.20.0, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread ]
  %.sroa.14.sroa.6.188 = phi i64 [ %.sroa.11.0, %bb.z ], [ %.sroa.21.0, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread ]
  store ptr %.sroa.05.191, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.190, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.sroa.0.189, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.14.sroa.6.188, ptr %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx, align 8
  br label %bb.el

bb.el:                                            ; preds = %.thread83, %.thread78, %.loopexit, %bb.u
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsc61CYD6Y1ak_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCseMV7gzmhUlG_10serde_core2de9SeqAccess17next_element_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtCsicCGYGrxCr3_24all_about_inserts_sqlite8UserFormEEB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCsc61CYD6Y1ak_10serde_json2deINtB8_9SeqAccesspENtNtCseMV7gzmhUlG_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4
  call void @_RINvXNvCsicCGYGrxCr3_24all_about_inserts_sqlite1__NtB5_8UserFormNtNtCseMV7gzmhUlG_10serde_core2de11Deserialize11deserializeQINtNtCsc61CYD6Y1ak_10serde_json2de12DeserializerNtNtB23_4read7StrReadEEB5_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load ptr, ptr %i.a, align 8, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !5, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc61CYD6Y1ak_10serde_json5error9ErrorCodeECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.promoted)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !618, !noundef !4
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !619, !noalias !620
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !4
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !8

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !645, !noalias !646, !noundef !4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !645, !noalias !646, !noundef !4 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !645, !noalias !646, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !647, !noundef !4
  switch i8 %i.o, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !650, !noalias !648
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !651, !noundef !4 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !652
  store i64 13, ptr %i.d, align 8, !noalias !652
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !652
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !648, !noalias !649
  store i64 1, ptr %i.f, align 8, !alias.scope !648, !noalias !649
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !652
  store i64 5, ptr %i.c, align 8, !noalias !652
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !652
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !648, !noalias !649
  store i64 1, ptr %i.f, align 8, !alias.scope !648, !noalias !649
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsc61CYD6Y1ak_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !654, !noundef !4 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !654
  store i64 14, ptr %i.a, align 8, !noalias !654
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !654
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !655, !noalias !656
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !655, !noalias !656
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsicCGYGrxCr3_24all_about_inserts_sqlite:bb.a

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsc61CYD6Y1ak_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !850, !noundef !4 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !850
  store i64 14, ptr %i.a, align 8, !noalias !850
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !850
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !849, !noalias !851
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !849, !noalias !851
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !10

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !850
  store i64 14, ptr %i.b, align 8, !noalias !850
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !850
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !849, !noalias !851
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !849, !noalias !851
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsicCGYGrxCr3_24all_about_inserts_sqlite.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !16

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !860, !noalias !861, !noundef !4 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !860, !noalias !861, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !861, !noalias !860
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !861, !noalias !860
  br label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %._RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !861, !noalias !860
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !866, !noundef !4 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !867
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !861, !noalias !860
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !927, !noalias !928, !noundef !4 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !927, !noalias !928, !noundef !4 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !927, !noalias !928, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !929, !noundef !4 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !930

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !15

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !932, !noalias !933, !nonnull !4 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !936, !noundef !4
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !937, !noalias !938
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !941, !noundef !4
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !942, !noalias !938
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !945, !noundef !4
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !946, !noalias !938
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit, label %bb.j, !prof !15

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !947
  store i64 5, ptr %i.f, align 8, !noalias !947
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !947
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !947
  store i64 9, ptr %i.e, align 8, !noalias !947
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !947
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !949, !noalias !950, !nonnull !4 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !953, !noundef !4
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !954, !noalias !955
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !15

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !958, !noundef !4
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !959, !noalias !955
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !15

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !962, !noundef !4
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !963, !noalias !955
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit30, label %bb.q, !prof !15

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !964
  store i64 5, ptr %i.d, align 8, !noalias !964
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !964
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !964
  store i64 9, ptr %i.c, align 8, !noalias !964
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !964
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !966, !noalias !967, !nonnull !4 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !970, !noundef !4
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !971, !noalias !972
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !15

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !975, !noundef !4
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !976, !noalias !972
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !15

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !979, !noundef !4
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !980, !noalias !972
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !15

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !983, !noundef !4
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !984, !noalias !972
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit38, label %bb.z, !prof !15

_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !985
  store i64 5, ptr %i.b, align 8, !noalias !985
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !985
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !985
  store i64 9, ptr %i.a, align 8, !noalias !985
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !985
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !986
  call fastcc void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !987, !noundef !4
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !8

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !988
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !11, !noundef !4
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !8

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit38, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit30, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit ], [ %i.ce, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit30 ], [ %i.cg, %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !4, !align !5, !noundef !4
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsc61CYD6Y1ak_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5ErrorNtNtCseMV7gzmhUlG_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !987, !noundef !4
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !8

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !align !5, !noundef !4
  br label %_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsc61CYD6Y1ak_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsicCGYGrxCr3_24all_about_inserts_sqlite.exit.thread: ; preds = %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsc61CYD6Y1ak_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsicCGYGrxCr3_24all_about_inserts_sqlite(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsc61CYD6Y1ak_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_2
