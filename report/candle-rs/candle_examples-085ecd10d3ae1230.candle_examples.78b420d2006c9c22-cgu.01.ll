Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_examples-085ecd10d3ae1230.candle_examples.78b420d2006c9c22-cgu.01?download=true
inline.NumInlined: 343
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsamv9RYRPgRi_15candle_examples13chat_templates0_1__NtB2s_11TokenConfigNtB1j_11Deserialize11deserialize9___VisitorEB2u_:bb.a
  %i.hk = xor i64 %i.hj, 110
  %i.hl = or i64 %i.hg, %i.hk
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.bs, label %bb.bu

bb.bm:                                            ; preds = %bb.bh
  %i.hp = load i64, ptr %i.ga, align 1
  %i.hq = xor i64 %i.hp, 7882834676105177187
  %i.hr = getelementptr i8, ptr %i.ga, i64 5
  %i.hs = load i64, ptr %i.hr, align 1
  %i.ht = xor i64 %i.hs, 7310575213499737460
  %i.hu = or i64 %i.hq, %i.ht
  %i.hv = icmp ne i64 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bt, label %bb.bu

bb.bn:                                            ; preds = %.noexc173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  br label %.loopexit288.i

.loopexit.split-lp.i:                             ; preds = %bb.fg, %bb.ey, %bb.eq, %bb.ei, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i46
  %.pn.ph.i = phi { ptr, i32 } [ %i.ph, %bb.fg ], [ %i.or, %bb.ey ], [ %i.ob, %bb.eq ], [ %i.nl, %bb.ei ], [ %lpad.loopexit.i, %.loopexit.i46 ], [ %lpad.loopexit294.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp295.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.ai, align 8, !noalias !796
  %.not155.i = icmp eq i64 %.pr.i, -1
  br i1 %.not155.i, label %bb.fz, label %bb.gl

.loopexit.i46:                                    ; preds = %bb.dr, %bb.dc, %bb.cy, %bb.cx, %bb.cw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.fl, %bb.fd, %bb.ev, %bb.en, %bb.ef, %bb.bg, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i
  %lpad.loopexit294.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %bb.fk, %.loopexit.i.i.i239.i, %bb.fc, %.loopexit.i.i.i228.i, %bb.eu, %.loopexit.i.i.i217.i, %bb.em, %.loopexit.i.i.i206.i, %bb.ee, %.loopexit.i.i.i198.i, %bb.ea, %.invoke.i, %bb.dx, %.loopexit124.i.i.i.i.i.i.i, %bb.ds, %.loopexit125.i.i.i.i.i.i.i, %bb.dh, %bb.db, %.loopexit232.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, %.loopexit239.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i, %bb.bx, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp295.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bo:                                            ; preds = %bb.bf
  %i.hy = load i64, ptr %i.am, align 8, !range !10, !noalias !796, !noundef !5 ; 2 uses
  %.not143.i = icmp eq i64 %i.hy, -1
  br i1 %.not143.i, label %bb.fq, label %bb.fp

bb.bp:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.hz = load i64, ptr %i.am, align 8, !range !10, !noalias !796, !noundef !5
  %.not153.i = icmp eq i64 %i.hz, -1
  br i1 %.not153.i, label %bb.eb, label %.invoke, !prof !16

bb.bq:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.ia = load i64, ptr %i.al, align 8, !range !10, !noalias !796, !noundef !5
  %.not152.i = icmp eq i64 %i.ia, -1
  br i1 %.not152.i, label %bb.ej, label %.invoke, !prof !16

bb.br:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.ib = load i64, ptr %i.ak, align 8, !range !10, !noalias !796, !noundef !5
  %.not151.i = icmp eq i64 %i.ib, -1
  br i1 %.not151.i, label %bb.er, label %.invoke, !prof !16

bb.bs:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.ic = load i64, ptr %i.aj, align 8, !range !10, !noalias !796, !noundef !5
  %.not150.i = icmp eq i64 %i.ic, -1
  br i1 %.not150.i, label %bb.ez, label %.invoke, !prof !16

bb.bt:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  %i.id = load i64, ptr %i.ai, align 8, !range !10, !noalias !796, !noundef !5
  %.not149.i = icmp eq i64 %i.id, -1
  br i1 %.not149.i, label %bb.fh, label %.invoke, !prof !16

bb.bu:                                            ; preds = %bb.bm, %bb.bl, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !810
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !813, !noalias !814, !noundef !5 ; 4 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !815, !noalias !816 ; 2 uses
  %i.ig = icmp ult i64 %.promoted.i.i.i.i.i, %i.if
  br i1 %i.ig, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bu
  %i.ih = load ptr, ptr %i.ft, align 8, !alias.scope !813, !noalias !814, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph.i.i.i.i.i
  %i.ii = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.il, %bb.bw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !819, !noundef !5
  switch i8 %i.ik, label %bb.bx [
    i8 32, label %bb.bw
    i8 10, label %bb.bw
    i8 9, label %bb.bw
    i8 13, label %bb.bw
    i8 58, label %bb.by
  ], !prof !25

bb.bw:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv
  %i.il = add i64 %i.ii, 1                        ; 3 uses
  store i64 %i.il, ptr %i.fu, align 8, !alias.scope !820, !noalias !816
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.il, %i.if
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bv

.loopexit.i.i.i.i:                                ; preds = %bb.bu, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !821
  store i64 3, ptr %i.z, align 8, !noalias !821
  %i.im = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc174.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc174.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !821
  br label %.loopexit288.i

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !821
  store i64 6, ptr %i.aa, align 8, !noalias !821
  %i.in = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc175.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc175.i:                                      ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !821
  br label %.loopexit288.i

bb.by:                                            ; preds = %bb.bv
  %i.io = add i64 %i.ii, 1                        ; 3 uses
  store i64 %i.io, ptr %i.fu, align 8, !alias.scope !822, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  store i64 0, ptr %i.fx, align 8, !alias.scope !827, !noalias !800
  %i.ip = icmp ult i64 %i.io, %i.if
  br i1 %i.ip, label %.lr.ph.i.lr.ph.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i.i.i:                     ; preds = %bb.by
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.dy, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i
  %i.ir = phi ptr [ %i.ih, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.ms, %bb.dy ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i = phi i64 [ %i.io, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.dy ]
  %i.is = phi i64 [ %i.if, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.mr, %bb.dy ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.dy ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.dy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %.lr.ph.i.i.i.i.i.i.i.i
  %i.it = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.iw, %bb.ca ] ; 17 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !829, !noundef !5 ; 3 uses
  switch i8 %i.iv, label %bb.cb [
    i8 32, label %bb.ca
    i8 10, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 110, label %bb.cc
    i8 116, label %bb.ci
    i8 102, label %bb.co
    i8 45, label %bb.cw
    i8 34, label %bb.cx
    i8 91, label %bb.cy
    i8 123, label %bb.cy
  ]

bb.ca:                                            ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz
  %i.iw = add i64 %i.it, 1                        ; 3 uses
  store i64 %i.iw, ptr %i.fu, align 8, !alias.scope !830, !noalias !831
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.iw, %i.is
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.bz

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.by, %bb.dy, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !832
  store i64 5, ptr %i.y, align 8, !noalias !832
  %i.ix = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc176.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc176.i:                                      ; preds = %.loopexit130.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !832
  br label %.loopexit288.i

bb.cb:                                            ; preds = %bb.bz
  %i.iy = add i8 %i.iv, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.iy, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.dc, label %bb.db, !prof !20

bb.cc:                                            ; preds = %bb.bz
  %i.iz = add i64 %i.it, 1                        ; 4 uses
  store i64 %i.iz, ptr %i.fu, align 8, !alias.scope !833, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.is, i64 %i.iz) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.iz, %i.is
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.cd, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !837, !noundef !5
  %i.jc = add i64 %i.it, 2                        ; 3 uses
  store i64 %i.jc, ptr %i.fu, align 8, !alias.scope !838, !noalias !839
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.jb, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ce, label %.loopexit246.i.i.i.i.i.i.i, !prof !26

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.jc, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !noalias !842, !noundef !5
  %i.jf = add i64 %i.it, 3                        ; 3 uses
  store i64 %i.jf, ptr %i.fu, align 8, !alias.scope !843, !noalias !839
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.je, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.cg, label %.loopexit246.i.i.i.i.i.i.i, !prof !26

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.jf, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !noalias !846, !noundef !5
  %i.ji = add i64 %i.it, 4
  store i64 %i.ji, ptr %i.fu, align 8, !alias.scope !847, !noalias !839
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.jh, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.ce, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !848
  store i64 5, ptr %i.q, align 8, !noalias !848
  %i.jj = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc177.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc177.i:                                      ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !848
  br label %.loopexit288.i

.loopexit246.i.i.i.i.i.i.i:                       ; preds = %bb.ch, %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !848
  store i64 9, ptr %i.p, align 8, !noalias !848
  %i.jk = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc178.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc178.i:                                      ; preds = %.loopexit246.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !848
  br label %.loopexit288.i

bb.ci:                                            ; preds = %bb.bz
  %i.jl = add i64 %i.it, 1                        ; 4 uses
  store i64 %i.jl, ptr %i.fu, align 8, !alias.scope !849, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.is, i64 %i.jl) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.jl, %i.is
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.cj, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !noalias !853, !noundef !5
  %i.jo = add i64 %i.it, 2                        ; 3 uses
  store i64 %i.jo, ptr %i.fu, align 8, !alias.scope !854, !noalias !855
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.jn, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.ck, label %.loopexit239.i.i.i.i.i.i.i, !prof !26

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.jo, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !noalias !858, !noundef !5
  %i.jr = add i64 %i.it, 3                        ; 3 uses
  store i64 %i.jr, ptr %i.fu, align 8, !alias.scope !859, !noalias !855
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.jq, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.cm, label %.loopexit239.i.i.i.i.i.i.i, !prof !26

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.jr, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.js = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !noalias !862, !noundef !5
  %i.ju = add i64 %i.it, 4
  store i64 %i.ju, ptr %i.fu, align 8, !alias.scope !863, !noalias !855
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.jt, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.cm, %bb.ck, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !864
  store i64 5, ptr %i.o, align 8, !noalias !864
  %i.jv = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc179.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc179.i:                                      ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !864
  br label %.loopexit288.i

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.cn, %bb.cl, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !864
  store i64 9, ptr %i.n, align 8, !noalias !864
  %i.jw = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc180.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc180.i:                                      ; preds = %.loopexit239.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !864
  br label %.loopexit288.i

bb.co:                                            ; preds = %bb.bz
  %i.jx = add i64 %i.it, 1                        ; 4 uses
  store i64 %i.jx, ptr %i.fu, align 8, !alias.scope !865, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.is, i64 %i.jx) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.jx, %i.is
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.cp, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !noalias !869, !noundef !5
  %i.ka = add i64 %i.it, 2                        ; 3 uses
  store i64 %i.ka, ptr %i.fu, align 8, !alias.scope !870, !noalias !871
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.jz, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.cq, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.ka, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !874, !noundef !5
  %i.kd = add i64 %i.it, 3                        ; 3 uses
  store i64 %i.kd, ptr %i.fu, align 8, !alias.scope !875, !noalias !871
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.kc, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.cs, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.kd, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !noalias !878, !noundef !5
  %i.kg = add i64 %i.it, 4                        ; 3 uses
  store i64 %i.kg, ptr %i.fu, align 8, !alias.scope !879, !noalias !871
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.kf, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.cu, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.kg, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !noalias !882, !noundef !5
  %i.kj = add i64 %i.it, 5
  store i64 %i.kj, ptr %i.fu, align 8, !alias.scope !883, !noalias !871
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.ki, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit232.i.i.i.i.i.i.i, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.cu, %bb.cs, %bb.cq, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !884
  store i64 5, ptr %i.m, align 8, !noalias !884
  %i.kk = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc181.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc181.i:                                      ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !884
  br label %.loopexit288.i

.loopexit232.i.i.i.i.i.i.i:                       ; preds = %bb.cv, %bb.ct, %bb.cr, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !884
  store i64 9, ptr %i.l, align 8, !noalias !884
  %i.kl = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc182.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc182.i:                                      ; preds = %.loopexit232.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !884
  br label %.loopexit288.i

bb.cw:                                            ; preds = %bb.bz
  %i.km = add i64 %i.it, 1
  store i64 %i.km, ptr %i.fu, align 8, !alias.scope !885, !noalias !800
  %i.kn = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %.noexc183.i unwind label %.loopexit.i46, !noalias !800 ; 2 uses

.noexc183.i:                                      ; preds = %bb.cw
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit288.i

bb.cx:                                            ; preds = %bb.bz
  %i.ko = add i64 %i.it, 1
  store i64 %i.ko, ptr %i.fu, align 8, !alias.scope !886, !noalias !800
  %i.kp = invoke noundef align 8 ptr @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %.noexc184.i unwind label %.loopexit.i46, !noalias !800 ; 2 uses

.noexc184.i:                                      ; preds = %bb.cx
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit288.i

bb.cy:                                            ; preds = %bb.bz, %bb.bz
  invoke void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i.i.i)
          to label %.noexc185.i unwind label %.loopexit.i46, !noalias !800

.noexc185.i:                                      ; preds = %bb.cy
  %i.kq = load i64, ptr %i.fu, align 8, !alias.scope !887, !noalias !800, !noundef !5
  %i.kr = add i64 %i.kq, 1
  store i64 %i.kr, ptr %i.fu, align 8, !alias.scope !887, !noalias !800
  br label %bb.da

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i: ; preds = %.noexc187.i, %.noexc184.i, %.noexc183.i, %bb.cv, %bb.cn, %bb.ch
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i
  %i.ks = load i64, ptr %i.fx, align 8, !alias.scope !827, !noalias !800, !noundef !5 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsamv9RYRPgRi_15candle_examples.exit.i.backedge, label %bb.dd

bb.da:                                            ; preds = %bb.dd, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, %.noexc185.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.iv, %.noexc185.i ], [ %i.lg, %bb.dd ], [ %.sroa.7.0178.i.i.i.i.i.i.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc185.i ], [ true, %bb.dd ], [ true, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i ]
  %i.ku = load i64, ptr %i.ie, align 8, !alias.scope !888, !noalias !889, !noundef !5 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.fu, align 8, !alias.scope !890, !noalias !891 ; 2 uses
  %i.kv = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.ku
  br i1 %i.kv, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.da
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !827, !noalias !800
  %i.kw = load ptr, ptr %i.ft, align 8, !alias.scope !888, !noalias !889, !nonnull !5, !noundef !5 ; 3 uses
  %i.kx = load i64, ptr %i.fs, align 8, !range !22, !alias.scope !827, !noalias !800
  %i.ky = load ptr, ptr %i.iq, align 8, !alias.scope !827, !noalias !800, !nonnull !5
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !832
  store i64 10, ptr %i.x, align 8, !noalias !832
  %i.kz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc186.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !800

.noexc186.i:                                      ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !832
  br label %.loopexit288.i

bb.dc:                                            ; preds = %bb.cb
  %i.la = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %.noexc187.i unwind label %.loopexit.i46, !noalias !800 ; 2 uses

.noexc187.i:                                      ; preds = %bb.dc
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i.i.i.i.i.i.i, label %.loopexit288.i

bb.dd:                                            ; preds = %bb.cz
  %i.lb = add i64 %i.ks, -1                       ; 3 uses
  store i64 %i.lb, ptr %i.fx, align 8, !alias.scope !827, !noalias !800
  %i.lc = load i64, ptr %i.fs, align 8, !range !22, !alias.scope !827, !noalias !800, !noundef !5
  %i.ld = icmp ult i64 %i.lb, %i.lc
  call void @llvm.assume(i1 %i.ld)
  %i.le = load ptr, ptr %i.iq, align 8, !alias.scope !827, !noalias !800, !nonnull !5, !noundef !5
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lb
  %i.lg = load i8, ptr %i.lf, align 1, !noalias !800, !noundef !5
  br label %bb.da

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.dn, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.lr, %bb.dn ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.dn ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.lw, %bb.dn ] ; 6 uses
  %i.lh = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.lt, %bb.dn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  br label %bb.de

bb.de:                                            ; preds = %bb.df, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.li = phi i64 [ %.promoted.i73170.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.ll, %bb.df ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !noalias !895, !noundef !5
  switch i8 %i.lk, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.df
    i8 10, label %bb.df
    i8 9, label %bb.df
    i8 13, label %bb.df
    i8 44, label %bb.di
    i8 93, label %bb.dj
    i8 125, label %bb.dk
  ]

bb.df:                                            ; preds = %bb.de, %bb.de, %bb.de, %bb.de
  %i.ll = add i64 %i.li, 1                        ; 3 uses
  store i64 %i.ll, ptr %i.fu, align 8, !alias.scope !896, !noalias !891
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.ll, %i.ku
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.de

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.da, %bb.dn, %bb.df
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.lw, %bb.dn ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.da ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !832
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.dh
    i8 123, label %bb.dg
  ]

bb.dg:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.dg ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples:bb.a
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1032
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !1042
  tail call void @_RINvXsi_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de15DeserializeSeed11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1053, !noalias !1051, !noundef !5
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !1053, !noalias !1051
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !1052, !noalias !1051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1054
  call void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1051
  %i.g = load i64, ptr %i.a, align 8, !range !11, !noalias !1054, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1054 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1051, !noalias !1052
  store i8 -1, ptr %0, align 8, !alias.scope !1051, !noalias !1052
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1054 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1055, !noalias !1056
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1054
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYNtNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtBa_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor18visit_borrowed_strNtNtBc_5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1061
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1061
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noalias !1061, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !24, !noalias !1061, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !1061
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #20, !noalias !1061
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !1061, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1061
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !1060
  br label %_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit

_RINvXNvXNtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.c, %bb.d
  store i8 3, ptr %0, align 8, !alias.scope !1060, !noalias !1062
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !1060, !noalias !1062
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !1060, !noalias !1062
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.67.0..sroa_idx.i, align 8, !alias.scope !1060, !noalias !1062
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 29 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1150, !noalias !1151, !noundef !5 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !1152, !noalias !1153 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1150, !noalias !1151, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !1156, !noundef !5 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !1157, !noalias !1153
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1158
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1158
  store i64 5, ptr %i.r, align 8, !noalias !1158
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1158
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !20

bb.e:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !1159, !noalias !1147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.af) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !1163, !noundef !5
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !1164, !noalias !1165
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !26

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !1168, !noundef !5
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !1169, !noalias !1165
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !26

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !1172, !noundef !5
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !1173, !noalias !1165
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i, label %bb.k, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1174
  store i64 5, ptr %i.f, align 8, !noalias !1174
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1174
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1174
  store i64 9, ptr %i.e, align 8, !noalias !1174
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1174
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !1176, !noalias !1147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ar) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1180, !noundef !5
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !1181, !noalias !1182
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !26

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1185, !noundef !5
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !1186, !noalias !1182
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !26

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !1189, !noundef !5
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !1190, !noalias !1182
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit50.i, label %bb.r, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1191
  store i64 5, ptr %i.d, align 8, !noalias !1191
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1191
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1191
  store i64 9, ptr %i.c, align 8, !noalias !1191
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1191
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !1193, !noalias !1147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1197, !noundef !5
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !1198, !noalias !1199
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !26

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1202, !noundef !5
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !1203, !noalias !1199
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !26

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1206, !noundef !5
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !1207, !noalias !1199
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !26

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1210, !noundef !5
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !1211, !noalias !1199
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit59.i, label %bb.aa, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1212
  store i64 5, ptr %i.b, align 8, !noalias !1212
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1212
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1212
  store i64 9, ptr %i.a, align 8, !noalias !1212
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1212
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !1214, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1158
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !1147
  %i.bt = load i64, ptr %i.p, align 8, !range !10, !noalias !1158, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !1215, !noalias !1147
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !1148, !noalias !1147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1158
  call void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1147
  %i.by = load i64, ptr %i.n, align 8, !range !11, !noalias !1158, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1158 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !1148, !noalias !1147, !noundef !5
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !1148, !noalias !1147
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !21

bb.ae:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !1148, !noalias !1147, !noundef !5
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !1148, !noalias !1147
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !21

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !1216, !noalias !1158
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !1158
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !1217

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1158
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1158
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsamv9RYRPgRi_15candle_examples.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !1218, !noalias !1158
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !1218, !noalias !1158
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !1219, !noalias !1158
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !1219, !noalias !1158
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !1158, !nonnull !5, !align !15, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1158
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !1158
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !1220, !noalias !1221
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !1220, !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1158
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !1147, !noalias !1148
  store i8 -1, ptr %0, align 8, !alias.scope !1147, !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1158
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1158 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !1147
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !1222, !noalias !1223
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE22parse_decimal_overflowCsamv9RYRPgRi_15candle_examples:bb.a
bb.m:                                             ; preds = %bb.l
  %i.am = fdiv double %.sroa.04.08.i, 1.000000e+308 ; 2 uses
  %i.an = add nsw i32 %.sroa.0.09.i, 308          ; 3 uses
  %.sroa.012.0.i = call i32 @llvm.abs.i32(i32 %i.an, i1 true) ; 2 uses
  %i.ao = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.ao, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1426
  store i64 14, ptr %i.a, align 8, !noalias !1426
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val, i64 noundef %.val12), !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1426
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !1426
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.p, %bb.o
  %.sroa.04.1.i = phi double [ %i.au, %bb.p ], [ %i.at, %bb.o ], [ %.sroa.04.08.i, %.lr.ph.i ] ; 2 uses
  %i.ar = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.as, align 8, !alias.scope !1426
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.at = fdiv double %.sroa.04.0.lcssa.i, %i.aj
  br label %.loopexit.i

bb.p:                                             ; preds = %._crit_edge.i
  %i.au = fmul double %.sroa.04.0.lcssa.i, %i.aj  ; 2 uses
  %i.av = call double @llvm.fabs.f64(double %i.au)
  %i.aw = fcmp oeq double %i.av, +inf
  br i1 %i.aw, label %bb.q, label %.loopexit.i, !prof !21

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1426
  store i64 14, ptr %i.b, align 8, !noalias !1426
  %i.ax = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val12), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1426
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !1426
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.n, %.loopexit.i, %bb.q
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.q ], [ 1, %bb.n ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1426
  br label %bb.s

bb.r:                                             ; preds = %bb.j, %bb.j
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE14parse_exponentCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4)
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit, %bb.r, %bb.i, %bb.d
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE23parse_exponent_overflowCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.not = xor i1 %4, true
  %brmerge = or i1 %3, %.not
  br i1 %brmerge, label %.preheader, label %bb.d, !prof !1437

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre = load i8, ptr %i.c, align 8, !range !6, !alias.scope !1438, !noalias !1439
  %i.g = trunc nuw i8 %.pre to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  br i1 %i.g, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread, label %bb.b

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread: ; preds = %.preheader
  %i.h = load i8, ptr %i.d, align 1, !alias.scope !1438, !noalias !1439, !noundef !5
  br label %bb.g

bb.b:                                             ; preds = %.critedge, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  call void @_RNvXs_NtCsaPlfBUY5LAj_10serde_json4iterINtB4_15LineColIteratorINtNtNtCsgCecv3eZDcN_5alloc2io4util5BytesRNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e), !noalias !1439
  %i.i = load i8, ptr %i.a, align 8, !range !7, !noalias !1440, !noundef !5
  switch i8 %i.i, label %bb.f [
    i8 2, label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread13
    i8 0, label %bb.c
  ], !prof !8

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.f, align 1, !noalias !1440, !noundef !5 ; 2 uses
  store i8 1, ptr %i.c, align 8, !alias.scope !1438, !noalias !1439
  store i8 %i.j, ptr %i.d, align 1, !alias.scope !1438, !noalias !1439
  br label %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread13

_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread13: ; preds = %bb.c, %bb.b
  %.sroa.10.0.ph = phi i8 [ undef, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.6.0.ph = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 14, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !1441, !noalias !1442, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i = load i64, ptr %i.l, align 8, !alias.scope !1441, !noalias !1442, !noundef !5
  %i.m = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val2.i), !noalias !1441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.f, %bb.d
  %.sink = phi i64 [ 0, %bb.h ], [ 1, %bb.f ], [ 1, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1440, !nonnull !5, !noundef !5
  %i.q = call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.p), !noalias !1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.e

bb.g:                                             ; preds = %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread13, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread
  %.sroa.6.112 = phi i1 [ true, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread ], [ %.sroa.6.0.ph, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread13 ]
  %.sroa.10.111 = phi i8 [ %i.h, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread ], [ %.sroa.10.0.ph, %_RNvXs2_NtCsaPlfBUY5LAj_10serde_json4readINtB5_6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileENtB5_4Read4peekCsamv9RYRPgRi_15candle_examples.exit.thread13 ]
  %i.s = add i8 %.sroa.10.111, -48
  %i.t = icmp ult i8 %i.s, 10
  %.sroa.03.0 = and i1 %.sroa.6.112, %i.t
  br i1 %.sroa.03.0, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %. = select i1 %2, double 0.000000e+00, double -0.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %., ptr %i.u, align 8
  br label %bb.e

.critedge:                                        ; preds = %bb.g
  store i8 0, ptr %i.c, align 8, !alias.scope !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  br label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRNtNtCs5Xr050g3D4S_3std2fs4FileEE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %.val, i64 noundef %.val2)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1452, !noundef !5
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !1453, !noalias !1454
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !5
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !16

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1479, !noalias !1480, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1479, !noalias !1480, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1479, !noalias !1480, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !1481, !noundef !5
  switch i8 %i.o, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1484, !noalias !1482
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !1485, !noundef !5 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1486
  store i64 13, ptr %i.d, align 8, !noalias !1486
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1486
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !1482, !noalias !1483
  store i64 1, ptr %i.f, align 8, !alias.scope !1482, !noalias !1483
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1486
  store i64 5, ptr %i.c, align 8, !noalias !1486
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1486
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !1482, !noalias !1483
  store i64 1, ptr %i.f, align 8, !alias.scope !1482, !noalias !1483
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsamv9RYRPgRi_15candle_examples.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsaPlfBUY5LAj_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !1488, !noundef !5 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1488
  store i64 14, ptr %i.a, align 8, !noalias !1488
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1488
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !1489, !noalias !1490
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !1489, !noalias !1490
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsamv9RYRPgRi_15candle_examples:bb.a

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
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsaPlfBUY5LAj_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !1683, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1683
  store i64 14, ptr %i.a, align 8, !noalias !1683
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1683
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !1682, !noalias !1684
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !1682, !noalias !1684
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !21

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1683
  store i64 14, ptr %i.b, align 8, !noalias !1683
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1683
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !1682, !noalias !1684
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1682, !noalias !1684
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsamv9RYRPgRi_15candle_examples.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !28

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #22
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsamv9RYRPgRi_15candle_examples(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1693, !noalias !1694, !noundef !5 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1693, !noalias !1694, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !1694, !noalias !1693
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !1694, !noalias !1693
  br label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %._RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !1694, !noalias !1693
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1699, !noundef !5 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !1700
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !1694, !noalias !1693
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #3 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1760, !noalias !1761, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1760, !noalias !1761, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread26

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !1760, !noalias !1761, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !1762, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !1763

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread26, !prof !26

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !1764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !1765, !noalias !1766, !nonnull !5 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1769, !noundef !5
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !1770, !noalias !1771
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !26

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1774, !noundef !5
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !1775, !noalias !1771
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !26

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !1778, !noundef !5
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !1779, !noalias !1771
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit, label %bb.j, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1780
  store i64 5, ptr %i.f, align 8, !noalias !1780
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1780
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1780
  store i64 9, ptr %i.e, align 8, !noalias !1780
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1780
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !1781
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !1782, !noalias !1783, !nonnull !5 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1786, !noundef !5
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !1787, !noalias !1788
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !26

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1791, !noundef !5
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !1792, !noalias !1788
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !26

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1795, !noundef !5
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !1796, !noalias !1788
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit30, label %bb.q, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1797
  store i64 5, ptr %i.d, align 8, !noalias !1797
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1797
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1797
  store i64 9, ptr %i.c, align 8, !noalias !1797
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1797
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !1798
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !1799, !noalias !1800, !nonnull !5 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1803, !noundef !5
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !1804, !noalias !1805
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !26

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !1808, !noundef !5
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !1809, !noalias !1805
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !26

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !1812, !noundef !5
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !1813, !noalias !1805
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !26

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !1816, !noundef !5
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !1817, !noalias !1805
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38, label %bb.z, !prof !26

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1818
  store i64 5, ptr %i.b, align 8, !noalias !1818
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1818
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1818
  store i64 9, ptr %i.a, align 8, !noalias !1818
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1818
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !1819
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !10, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !16

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !1820
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !11, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !16

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread26, %bb.ai, %bb.ag, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit30, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread26 ], [ %i.cb, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit ], [ %i.ce, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit30 ], [ %i.cg, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsamv9RYRPgRi_15candle_examples(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !15, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread26:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !10, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !15, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsamv9RYRPgRi_15candle_examples.exit.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_3
