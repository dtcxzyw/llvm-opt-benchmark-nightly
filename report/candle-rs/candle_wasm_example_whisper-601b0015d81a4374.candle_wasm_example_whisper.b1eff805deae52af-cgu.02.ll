Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.02?download=true
inline.NumInlined: 763
inline.NumDeleted: 330
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB2s_23PrecompiledDeserializerNtB1j_11Deserialize11deserialize9___VisitorECsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a

bb.am:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !639
  store i64 17, ptr %i.ab, align 8, !noalias !639
  %i.ei = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc25.i:                                       ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !639
  br label %.loopexit95.i

.loopexit.i.i.i53:                                ; preds = %.lr.ph.i7.i.i.i.i, %bb.ag
  %i.ej = phi i64 [ %i.dr, %bb.ag ], [ %i.ea, %.lr.ph.i7.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.as, align 8, !alias.scope !651, !noalias !652
  store i64 0, ptr %i.dm, align 8, !alias.scope !653, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !654
  invoke void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !640

.noexc26.i:                                       ; preds = %.loopexit.i.i.i53
  %i.el = load i64, ptr %i.w, align 8, !range !7, !noalias !654, !noundef !5
  %i.em = icmp eq i64 %i.el, 2
  %i.en = load ptr, ptr %i.dn, align 8, !noalias !654 ; 5 uses
  br i1 %i.em, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc26.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !654
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  %i.eo = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 20
  br i1 %i.eo, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess8next_keyNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB22_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess8next_keyNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB22_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread74.i

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess8next_keyNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB22_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread74.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !654
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !654
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  br label %.loopexit95.i

.loopexit.split-lp.i:                             ; preds = %.body.i, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i54
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.i, %.loopexit.i54 ], [ %lpad.loopexit89.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp90.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %i.ep = load i64, ptr %i.ae, align 8, !range !4, !noalias !630, !noundef !5
  %.not17.i = icmp eq i64 %i.ep, -1
  br i1 %.not17.i, label %common.resume, label %bb.dn

.loopexit.i54:                                    ; preds = %bb.cm, %bb.bx, %bb.bt, %bb.bs, %bb.br
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.db, %.loopexit.i.i.i53
  %lpad.loopexit89.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.dj, %bb.dc, %bb.da, %.loopexit.i.i.i55.i, %bb.cv, %.invoke.i, %bb.cs, %.loopexit124.i.i.i.i.i.i.i, %bb.cn, %.loopexit125.i.i.i.i.i.i.i, %bb.cc, %bb.bw, %.loopexit232.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, %.loopexit239.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i.i.i, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i, %bb.as, %.loopexit.i.i.i28.i, %bb.am, %bb.al, %bb.ak, %.loopexit.i.i.i.i, %bb.aj, %.loopexit22.i.i.i.i49
  %lpad.loopexit.split-lp90.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess8next_keyNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB22_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.an
  %i.eq = load i128, ptr %i.en, align 1
  %i.er = xor i128 %i.eq, 152037761558467603950745042428551852656
  %i.es = getelementptr i8, ptr %i.en, i64 16
  %i.et = load i32, ptr %i.es, align 1
  %i.eu = zext i32 %i.et to i128
  %i.ev = xor i128 %i.eu, 1885433203
  %i.ew = or i128 %i.er, %i.ev
  %i.ex = icmp ne i128 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %.not.i = icmp eq i32 %i.ey, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !654
  br i1 %.not.i, label %bb.cw, label %bb.ap

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess8next_keyNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB22_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread69.i: ; preds = %bb.ac
  %i.ez = load i64, ptr %i.ae, align 8, !range !4, !noalias !630, !noundef !5 ; 2 uses
  %.not14.i = icmp eq i64 %i.ez, -1
  br i1 %.not14.i, label %bb.dj, label %bb.di, !prof !17

bb.ap:                                            ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess8next_keyNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB22_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess8next_keyNtNvXNvCslUjavNzuXCV_15spm_precompileds0_1__NtB22_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread74.i
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.fa = load i64, ptr %i.at, align 8, !alias.scope !657, !noalias !658, !noundef !5 ; 4 uses
  %.promoted.i.i.i.i27.i = load i64, ptr %i.as, align 8, !alias.scope !659, !noalias !660 ; 2 uses
  %i.fb = icmp ult i64 %.promoted.i.i.i.i27.i, %i.fa
  br i1 %i.fb, label %.lr.ph.i.i.i.i29.i, label %.loopexit.i.i.i28.i

.lr.ph.i.i.i.i29.i:                               ; preds = %bb.ap
  %i.fc = load ptr, ptr %i.aw, align 8, !alias.scope !657, !noalias !658, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i29.i
  %i.fd = phi i64 [ %.promoted.i.i.i.i27.i, %.lr.ph.i.i.i.i29.i ], [ %i.fg, %bb.ar ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !663, !noundef !5
  switch i8 %i.ff, label %bb.as [
    i8 32, label %bb.ar
    i8 10, label %bb.ar
    i8 9, label %bb.ar
    i8 13, label %bb.ar
    i8 58, label %bb.at
  ], !prof !21

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %i.fg = add i64 %i.fd, 1                        ; 3 uses
  store i64 %i.fg, ptr %i.as, align 8, !alias.scope !664, !noalias !660
  %exitcond.not.i.i.i.i30.i = icmp eq i64 %i.fg, %i.fa
  br i1 %exitcond.not.i.i.i.i30.i, label %.loopexit.i.i.i28.i, label %bb.aq

.loopexit.i.i.i28.i:                              ; preds = %bb.ap, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !665
  store i64 3, ptr %i.u, align 8, !noalias !665
  %i.fh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc31.i:                                       ; preds = %.loopexit.i.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !665
  br label %.loopexit95.i

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !665
  store i64 6, ptr %i.v, align 8, !noalias !665
  %i.fi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc32.i:                                       ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !665
  br label %.loopexit95.i

bb.at:                                            ; preds = %bb.aq
  %i.fj = add i64 %i.fd, 1                        ; 3 uses
  store i64 %i.fj, ptr %i.as, align 8, !alias.scope !666, !noalias !640
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  store i64 0, ptr %i.dm, align 8, !alias.scope !671, !noalias !640
  %i.fk = icmp ult i64 %i.fj, %i.fa
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.at, %bb.ct
  %i.fl = phi ptr [ %i.jm, %bb.ct ], [ %i.fc, %bb.at ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %bb.ct ], [ %i.fj, %bb.at ]
  %i.fm = phi i64 [ %i.jl, %bb.ct ], [ %i.fa, %bb.at ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.ct ], [ undef, %bb.at ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i = phi i1 [ true, %bb.ct ], [ false, %bb.at ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i.i.i
  %i.fn = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fq, %bb.av ] ; 17 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !673, !noundef !5 ; 3 uses
  switch i8 %i.fp, label %bb.aw [
    i8 32, label %bb.av
    i8 10, label %bb.av
    i8 9, label %bb.av
    i8 13, label %bb.av
    i8 110, label %bb.ax
    i8 116, label %bb.bd
    i8 102, label %bb.bj
    i8 45, label %bb.br
    i8 34, label %bb.bs
    i8 91, label %bb.bt
    i8 123, label %bb.bt
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au
  %i.fq = add i64 %i.fn, 1                        ; 3 uses
  store i64 %i.fq, ptr %i.as, align 8, !alias.scope !674, !noalias !675
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fq, %i.fm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.au

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.at, %bb.ct, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !676
  store i64 5, ptr %i.t, align 8, !noalias !676
  %i.fr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc33.i:                                       ; preds = %.loopexit130.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !676
  br label %.loopexit95.i

bb.aw:                                            ; preds = %bb.au
  %i.fs = add i8 %i.fp, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.fs, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw, !prof !16

bb.ax:                                            ; preds = %bb.au
  %i.ft = add i64 %i.fn, 1                        ; 4 uses
  store i64 %i.ft, ptr %i.as, align 8, !alias.scope !677, !noalias !640
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ft, i64 %i.fm) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.ft, %i.fm
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.ay, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !noalias !681, !noundef !5
  %i.fw = add i64 %i.fn, 2                        ; 3 uses
  store i64 %i.fw, ptr %i.as, align 8, !alias.scope !682, !noalias !683
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fv, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.az, label %.loopexit246.i.i.i.i.i.i.i, !prof !22

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.fw, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !noalias !686, !noundef !5
  %i.fz = add i64 %i.fn, 3                        ; 3 uses
  store i64 %i.fz, ptr %i.as, align 8, !alias.scope !687, !noalias !683
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.fy, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.bb, label %.loopexit246.i.i.i.i.i.i.i, !prof !22

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.fz, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !690, !noundef !5
  %i.gc = add i64 %i.fn, 4
  store i64 %i.gc, ptr %i.as, align 8, !alias.scope !691, !noalias !683
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.gb, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, !prof !22

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.az, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !692
  store i64 5, ptr %i.l, align 8, !noalias !692
  %i.gd = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc34.i:                                       ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !692
  br label %.loopexit95.i

.loopexit246.i.i.i.i.i.i.i:                       ; preds = %bb.bc, %bb.ba, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !692
  store i64 9, ptr %i.k, align 8, !noalias !692
  %i.ge = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc35.i:                                       ; preds = %.loopexit246.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !692
  br label %.loopexit95.i

bb.bd:                                            ; preds = %bb.au
  %i.gf = add i64 %i.fn, 1                        ; 4 uses
  store i64 %i.gf, ptr %i.as, align 8, !alias.scope !693, !noalias !640
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gf, i64 %i.fm) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.gf, %i.fm
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.be, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !noalias !697, !noundef !5
  %i.gi = add i64 %i.fn, 2                        ; 3 uses
  store i64 %i.gi, ptr %i.as, align 8, !alias.scope !698, !noalias !699
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.gh, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.bf, label %.loopexit239.i.i.i.i.i.i.i, !prof !22

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.gi, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !702, !noundef !5
  %i.gl = add i64 %i.fn, 3                        ; 3 uses
  store i64 %i.gl, ptr %i.as, align 8, !alias.scope !703, !noalias !699
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.gk, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.bh, label %.loopexit239.i.i.i.i.i.i.i, !prof !22

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.gl, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !noalias !706, !noundef !5
  %i.go = add i64 %i.fn, 4
  store i64 %i.go, ptr %i.as, align 8, !alias.scope !707, !noalias !699
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.gn, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !22

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bf, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !708
  store i64 5, ptr %i.j, align 8, !noalias !708
  %i.gp = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc36.i:                                       ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !708
  br label %.loopexit95.i

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.bi, %bb.bg, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !708
  store i64 9, ptr %i.i, align 8, !noalias !708
  %i.gq = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc37.i:                                       ; preds = %.loopexit239.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !708
  br label %.loopexit95.i

bb.bj:                                            ; preds = %bb.au
  %i.gr = add i64 %i.fn, 1                        ; 4 uses
  store i64 %i.gr, ptr %i.as, align 8, !alias.scope !709, !noalias !640
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gr, i64 %i.fm) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.gr, %i.fm
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.bk, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !713, !noundef !5
  %i.gu = add i64 %i.fn, 2                        ; 3 uses
  store i64 %i.gu, ptr %i.as, align 8, !alias.scope !714, !noalias !715
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.gt, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.bl, label %.loopexit232.i.i.i.i.i.i.i, !prof !22

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.gu, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !718, !noundef !5
  %i.gx = add i64 %i.fn, 3                        ; 3 uses
  store i64 %i.gx, ptr %i.as, align 8, !alias.scope !719, !noalias !715
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.gw, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.bn, label %.loopexit232.i.i.i.i.i.i.i, !prof !22

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.gx, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !noalias !722, !noundef !5
  %i.ha = add i64 %i.fn, 4                        ; 3 uses
  store i64 %i.ha, ptr %i.as, align 8, !alias.scope !723, !noalias !715
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.gz, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.bp, label %.loopexit232.i.i.i.i.i.i.i, !prof !22

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.ha, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !noalias !726, !noundef !5
  %i.hd = add i64 %i.fn, 5
  store i64 %i.hd, ptr %i.as, align 8, !alias.scope !727, !noalias !715
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.hc, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i, label %.loopexit232.i.i.i.i.i.i.i, !prof !22

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bn, %bb.bl, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !728
  store i64 5, ptr %i.h, align 8, !noalias !728
  %i.he = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc38.i:                                       ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !728
  br label %.loopexit95.i

.loopexit232.i.i.i.i.i.i.i:                       ; preds = %bb.bq, %bb.bo, %bb.bm, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !728
  store i64 9, ptr %i.g, align 8, !noalias !728
  %i.hf = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc39.i:                                       ; preds = %.loopexit232.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !728
  br label %.loopexit95.i

bb.br:                                            ; preds = %bb.au
  %i.hg = add i64 %i.fn, 1
  store i64 %i.hg, ptr %i.as, align 8, !alias.scope !729, !noalias !640
  %i.hh = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc40.i unwind label %.loopexit.i54, !noalias !640 ; 2 uses

.noexc40.i:                                       ; preds = %bb.br
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i, label %.loopexit95.i

bb.bs:                                            ; preds = %bb.au
  %i.hi = add i64 %i.fn, 1
  store i64 %i.hi, ptr %i.as, align 8, !alias.scope !730, !noalias !640
  %i.hj = invoke noundef align 8 ptr @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.noexc41.i unwind label %.loopexit.i54, !noalias !640 ; 2 uses

.noexc41.i:                                       ; preds = %bb.bs
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i, label %.loopexit95.i

bb.bt:                                            ; preds = %bb.au, %bb.au
  invoke void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i.i.i)
          to label %.noexc42.i unwind label %.loopexit.i54, !noalias !640

.noexc42.i:                                       ; preds = %bb.bt
  %i.hk = load i64, ptr %i.as, align 8, !alias.scope !731, !noalias !640, !noundef !5
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.as, align 8, !alias.scope !731, !noalias !640
  br label %bb.bv

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i: ; preds = %.noexc44.i, %.noexc41.i, %.noexc40.i, %bb.bq, %bb.bi, %bb.bc
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i
  %i.hm = load i64, ptr %i.dm, align 8, !alias.scope !671, !noalias !640, !noundef !5 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, label %bb.by

bb.bv:                                            ; preds = %bb.by, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i, %.noexc42.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.fp, %.noexc42.i ], [ %i.ia, %bb.by ], [ %.sroa.7.0178.i.i.i.i.i.i.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc42.i ], [ true, %bb.by ], [ true, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i ]
  %i.ho = load i64, ptr %i.at, align 8, !alias.scope !732, !noalias !733, !noundef !5 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !734, !noalias !735 ; 2 uses
  %i.hp = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.ho
  br i1 %i.hp, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.bv
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !671, !noalias !640
  %i.hq = load ptr, ptr %i.aw, align 8, !alias.scope !732, !noalias !733, !nonnull !5, !noundef !5 ; 3 uses
  %i.hr = load i64, ptr %1, align 8, !range !23, !alias.scope !671, !noalias !640
  %i.hs = load ptr, ptr %i.do, align 8, !alias.scope !671, !noalias !640, !nonnull !5
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !676
  store i64 10, ptr %i.s, align 8, !noalias !676
  %i.ht = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !640

.noexc43.i:                                       ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !676
  br label %.loopexit95.i

bb.bx:                                            ; preds = %bb.aw
  %i.hu = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc44.i unwind label %.loopexit.i54, !noalias !640 ; 2 uses

.noexc44.i:                                       ; preds = %bb.bx
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i.i.i, label %.loopexit95.i

bb.by:                                            ; preds = %bb.bu
  %i.hv = add i64 %i.hm, -1                       ; 3 uses
  store i64 %i.hv, ptr %i.dm, align 8, !alias.scope !671, !noalias !640
  %i.hw = load i64, ptr %1, align 8, !range !23, !alias.scope !671, !noalias !640, !noundef !5
  %i.hx = icmp ult i64 %i.hv, %i.hw
  call void @llvm.assume(i1 %i.hx)
  %i.hy = load ptr, ptr %i.do, align 8, !alias.scope !671, !noalias !640, !nonnull !5, !noundef !5
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hv
  %i.ia = load i8, ptr %i.hz, align 1, !noalias !640, !noundef !5
  br label %bb.bv

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.ci, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.il, %bb.ci ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.ci ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.iq, %bb.ci ] ; 6 uses
  %i.ib = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.in, %bb.ci ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.ic = phi i64 [ %.promoted.i73170.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.if, %bb.ca ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !noalias !739, !noundef !5
  switch i8 %i.ie, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.ca
    i8 10, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 44, label %bb.cd
    i8 93, label %bb.ce
    i8 125, label %bb.cf
  ]

bb.ca:                                            ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz
  %i.if = add i64 %i.ic, 1                        ; 3 uses
  store i64 %i.if, ptr %i.as, align 8, !alias.scope !740, !noalias !735
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.if, %i.ho
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.bz

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.bv, %bb.ci, %bb.ca
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.iq, %bb.ci ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.ca ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !676
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.cc
    i8 123, label %bb.cb
  ]

bb.cb:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.cb ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_RINvXse_NtCsaPlfBUY5LAj_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de10EnumAccess12variant_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers5utils7paddings_1__NtB38_16PaddingDirectionNtB1p_11Deserialize11deserialize7___FieldEECsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a

bb.i:                                             ; preds = %bb.h, %_RINvXs3_NtCseZbltJ5Yqe_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNvXNvNtNtCshBhMCGs0DAb_10tokenizers5utils7paddings_1__NtB1p_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB3U_4read9SliceReadEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsf_NtCsaPlfBUY5LAj_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatajEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @56, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.b, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2585, !noalias !2583, !noundef !5
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !2585, !noalias !2583
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !2584, !noalias !2583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2586
  call void @_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !2583
  %i.g = load i64, ptr %i.a, align 8, !range !7, !noalias !2586, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2586 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !2583, !noalias !2584
  store i8 -1, ptr %0, align 8, !alias.scope !2583, !noalias !2584
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2586 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !2587, !noalias !2588
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !2587, !noalias !2588
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2587, !noalias !2588
  br label %_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RINvXsh_NtCsaPlfBUY5LAj_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2586
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2689, !noalias !2690, !noundef !5 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2691, !noalias !2692 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2689, !noalias !2690, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !2694, !noundef !5
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !21

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !2695, !noalias !2692
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2687
  store i64 3, ptr %i.o, align 8, !noalias !2687
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2687
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2687
  store i64 6, ptr %i.p, align 8, !noalias !2687
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2687
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !2696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !2701
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2702)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2703, !noundef !5 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !2704, !noalias !2705
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2701
  store i64 5, ptr %i.n, align 8, !noalias !2701
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2701
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !16

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !2706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2708)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2709, !noundef !5
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !2710, !noalias !2711
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !22

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2713, !noundef !5
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !2714, !noalias !2711
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !22

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2716, !noundef !5
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !2717, !noalias !2711
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2718
  store i64 5, ptr %i.f, align 8, !noalias !2718
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2718
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2718
  store i64 9, ptr %i.e, align 8, !noalias !2718
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2718
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !2720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2723, !noundef !5
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !2724, !noalias !2725
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !22

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2727, !noundef !5
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !2728, !noalias !2725
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !22

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2730, !noundef !5
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !2731, !noalias !2725
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2732
  store i64 5, ptr %i.d, align 8, !noalias !2732
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2732
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2732
  store i64 9, ptr %i.c, align 8, !noalias !2732
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2732
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !2734
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2737, !noundef !5
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !2738, !noalias !2739
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !22

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2741, !noundef !5
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !2742, !noalias !2739
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !22

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !2744, !noundef !5
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !2745, !noalias !2739
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !22

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2746)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !2747, !noundef !5
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !2748, !noalias !2739
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2749
  store i64 5, ptr %i.b, align 8, !noalias !2749
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2749
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2749
  store i64 9, ptr %i.a, align 8, !noalias !2749
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2749
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !2751
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !2752
  %i.ce = tail call noundef align 8 ptr @_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !2753, !noundef !5
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !2753
  br label %bb.ag

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !2701, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !2754, !noalias !2755, !noundef !5 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2756, !noalias !2757 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !2701
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !2754, !noalias !2755, !nonnull !5, !noundef !5 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !2701
  %i.cn = load ptr, ptr %i.af, align 8, !alias.scope !2701, !nonnull !5
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2701
  store i64 10, ptr %i.m, align 8, !noalias !2701
  %i.co = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2701
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i.i.i.i.i, label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cq, ptr %i.ad, align 8, !alias.scope !2701
  %i.cr = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !2701, !noundef !5
  %i.cs = icmp ult i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %i.af, align 8, !alias.scope !2701, !nonnull !5, !noundef !5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !5
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !2760, !noundef !5
  switch i8 %i.cz, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.da = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !2761, !noalias !2757
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2701
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #19
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !2701
  %i.db = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2701
  br label %_RINvXs9_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !17

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.dc, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.dd, label %bb.at, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.de = add i64 %i.cx, 1                        ; 2 uses
  store i64 %i.de, ptr %i.q, align 8, !alias.scope !2762
end_hunk_1
begin_hunk_2_@_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsfh9HxMbthk9_27candle_wasm_example_whisper
define internal fastcc void @_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2783
  call fastcc void @_RINvNvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9SeqAccesspENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2781
  %i.c = load i8, ptr %i.b, align 8, !range !13, !noalias !2783, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !2783, !nonnull !5, !align !12, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !2781, !noalias !2782
  store i64 -2, ptr %0, align 8, !alias.scope !2781, !noalias !2782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2783
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !13, !noalias !2783, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2783
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !alias.scope !2781, !noalias !2782
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2783
  %i.k = load ptr, ptr %1, align 8, !alias.scope !2782, !noalias !2781, !nonnull !5, !align !12, !noundef !5
  call void @_RINvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecmENtB8_11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB1S_4read9SliceReadEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k), !noalias !2783
  %i.l = load i64, ptr %i.a, align 8, !range !4, !noalias !2783, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2783, !nonnull !5, !align !12, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !2781, !noalias !2782
  store i64 -2, ptr %0, align 8, !alias.scope !2781, !noalias !2782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2783
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2783
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtCsgCecv3eZDcN_5alloc3vec3VecmEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementjECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2789
  call fastcc void @_RINvNvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB8_9SeqAccesspENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2787
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noalias !2789, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2789, !nonnull !5, !align !12, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !2787, !noalias !2788
  store i64 2, ptr %0, align 8, !alias.scope !2787, !noalias !2788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2789
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatajEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !13, !noalias !2789, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2789
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !2787, !noalias !2788
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatajEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !alias.scope !2788, !noalias !2787, !nonnull !5, !align !12, !noundef !5
  %i.k = tail call { i64, ptr } @_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_u64NtNvXs1a_NtB1l_5implsjNtB1l_11Deserialize11deserialize16PrimitiveVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.j), !noalias !2789 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8, !alias.scope !2787, !noalias !2788
  store i64 2, ptr %0, align 8, !alias.scope !2787, !noalias !2788
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatajEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.g:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.m to i64
  store i64 1, ptr %0, align 8, !alias.scope !2787, !noalias !2788
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !alias.scope !2787, !noalias !2788
  br label %_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatajEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatajEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2858, !noalias !2859, !noundef !5 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !2860, !noalias !2861 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2858, !noalias !2859, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2862)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !2863, !noundef !5 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !2864, !noalias !2861
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2865
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2865
  store i64 5, ptr %i.r, align 8, !noalias !2865
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !2855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2865
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !2855, !noalias !2856
  store i8 -1, ptr %0, align 8, !alias.scope !2855, !noalias !2856
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !prof !16

bb.e:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !2866, !noalias !2855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  %exitcond.not.i40.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i40.not.i, label %bb.f, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !2869, !noundef !5
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !2870, !noalias !2871
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !22

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  %exitcond.not.i40.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i40.1.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2873, !noundef !5
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !2874, !noalias !2871
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !22

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  %exitcond.not.i40.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i40.2.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !2876, !noundef !5
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !2877, !noalias !2871
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i, label %bb.k, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2878
  store i64 5, ptr %i.f, align 8, !noalias !2878
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2878
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2878
  store i64 9, ptr %i.e, align 8, !noalias !2878
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2878
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !2880, !noalias !2855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  %umax.i43.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %exitcond.not.i45.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i45.not.i, label %bb.m, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2883, !noundef !5
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !2884, !noalias !2885
  %.not.i46.i = icmp eq i8 %i.at, 114
  br i1 %.not.i46.i, label %bb.n, label %bb.r, !prof !22

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  %exitcond.not.i45.1.i = icmp eq i64 %i.au, %umax.i43.i
  br i1 %exitcond.not.i45.1.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2887, !noundef !5
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !2888, !noalias !2885
  %.not.i46.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !22

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !2890, !noundef !5
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !2891, !noalias !2885
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit50.i, label %bb.r, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2892
  store i64 5, ptr %i.d, align 8, !noalias !2892
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2892
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2892
  store i64 9, ptr %i.c, align 8, !noalias !2892
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2892
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !2894, !noalias !2855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.u) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2896)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2897, !noundef !5
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !2898, !noalias !2899
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !22

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2900)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2901, !noundef !5
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !2902, !noalias !2899
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !22

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !2904, !noundef !5
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !2905, !noalias !2899
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !22

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2907, !noundef !5
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !2908, !noalias !2899
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit59.i, label %bb.aa, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2909
  store i64 5, ptr %i.b, align 8, !noalias !2909
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2909
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2909
  store i64 9, ptr %i.a, align 8, !noalias !2909
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2909
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !2911, !noalias !2855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2865
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !2855
  %i.bt = load i64, ptr %i.p, align 8, !range !6, !noalias !2865, !noundef !5 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !2912, !noalias !2855
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !2856, !noalias !2855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2865
  call void @_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !2855
  %i.by = load i64, ptr %i.n, align 8, !range !7, !noalias !2865, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !2865 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !2856, !noalias !2855, !noundef !5
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !2856, !noalias !2855
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !17

bb.ae:                                            ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !2856, !noalias !2855, !noundef !5
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !2856, !noalias !2855
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !17

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !2855, !noalias !2856
  store i8 -1, ptr %0, align 8, !alias.scope !2855, !noalias !2856
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !2913, !noalias !2865
  br label %.thread.i

bb.ag:                                            ; preds = %.thread90.i, %.thread87.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !2865
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !2914

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !2865
  br label %bb.bj

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2865
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsiOg657KYfD4_5serde7private2de7content14ContentVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !2855, !noalias !2856
  store i8 -1, ptr %0, align 8, !alias.scope !2855, !noalias !2856
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !2915, !noalias !2865
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !2915, !noalias !2865
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !2855, !noalias !2856
  store i8 -1, ptr %0, align 8, !alias.scope !2855, !noalias !2856
  br label %bb.ah

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !2916, !noalias !2865
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !2916, !noalias !2865
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !2865, !nonnull !5, !align !12, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !2855, !noalias !2856
  store i8 -1, ptr %0, align 8, !alias.scope !2855, !noalias !2856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2865
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !2865
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !2917, !noalias !2918
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !2917, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2865
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !2855, !noalias !2856
  store i8 -1, ptr %0, align 8, !alias.scope !2855, !noalias !2856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2865
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2865 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCsiOg657KYfD4_5serde7private2de7contentNtB6_14ContentVisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_strNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !2855
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !2919, !noalias !2920
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !2919, !noalias !2920
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2919, !noalias !2920
  br label %bb.ap
end_hunk_2
begin_hunk_3_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !3150, !noundef !5
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !3151
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

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
  %i.aq = load double, ptr %i.ap, align 8, !noalias !3153, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3153
  store i64 14, ptr %i.a, align 8, !noalias !3153
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3153
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !3152, !noalias !3154
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !3152, !noalias !3154
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !17

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3153
  store i64 14, ptr %i.b, align 8, !noalias !3153
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3153
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3152, !noalias !3154
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3152, !noalias !3154
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !18

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #18
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3214, !noalias !3215, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3214, !noalias !3215, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !3214, !noalias !3215, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !3216, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !29

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !22

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !3217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !3218, !noalias !3219, !nonnull !5 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !3222, !noundef !5
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !3223, !noalias !3224
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !3227, !noundef !5
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !3228, !noalias !3224
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !3231, !noundef !5
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !3232, !noalias !3224
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.j, !prof !22

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3233
  store i64 5, ptr %i.f, align 8, !noalias !3233
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3233
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3233
  store i64 9, ptr %i.e, align 8, !noalias !3233
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3233
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !3234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !3235, !noalias !3236, !nonnull !5 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3239, !noundef !5
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !3240, !noalias !3241
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !22

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3243)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3244, !noundef !5
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !3245, !noalias !3241
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !22

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3247)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3248, !noundef !5
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !3249, !noalias !3241
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30, label %bb.q, !prof !22

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3250
  store i64 5, ptr %i.d, align 8, !noalias !3250
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3250
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3250
  store i64 9, ptr %i.c, align 8, !noalias !3250
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3250
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !3251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3252)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !3252, !noalias !3253, !nonnull !5 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !3256, !noundef !5
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !3257, !noalias !3258
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !22

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3260)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !3261, !noundef !5
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !3262, !noalias !3258
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !22

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3264)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !3265, !noundef !5
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !3266, !noalias !3258
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !22

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3268)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !3269, !noundef !5
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !3270, !noalias !3258
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38, label %bb.z, !prof !22

_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3271
  store i64 5, ptr %i.b, align 8, !noalias !3271
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3271
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3271
  store i64 9, ptr %i.a, align 8, !noalias !3271
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3271
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !3272
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !6, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !14

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !3273
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !7, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !14

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.ce, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30 ], [ %i.cg, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !12, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !6, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !12, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread: ; preds = %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
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
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #15
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
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
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorCodeECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #15
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
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
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.f)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3277)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !3278, !noundef !5
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !3277, !noalias !3279
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !5
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !14

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3290, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !3290
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3291, !noalias !3292, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3291, !noalias !3292, !nonnull !5, !noundef !5
  %i.m = trunc i64 %i.f to i32
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = trunc i64 %i.i to i32                    ; 2 uses
  %i.p = sub i32 %i.n, %i.o
  br label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.060 = phi i64 [ %3, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.059 = phi i32 [ 0, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !3293, !noundef !5 ; 2 uses
  %i.t = add i8 %i.s, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.059, 0
  br i1 %i.u, label %bb.d, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

.thread:                                          ; preds = %bb.o
  %i.v = icmp eq i32 %i.n, %i.o
  br i1 %i.v, label %.thread.thread, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4
  br label %bb.e

bb.c:                                             ; preds = %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64
  %i.y = icmp ugt i64 %.sroa.0.060, 1844674407370955160
  br i1 %i.y, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

.thread.thread:                                   ; preds = %bb.a, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 5, ptr %i.c, align 8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.059, %4               ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.e:                                             ; preds = %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %.sroa.0.056 = phi i64 [ %i.be, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread ], [ %.sroa.0.060, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread ], [ %i.ad, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.af = uitofp i64 %.sroa.0.056 to double       ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false) ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.022.i = phi i32 [ %i.ao, %bb.g ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.an, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ah = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.ah, label %.loopexit.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.sroa.04.0.lcssa.i = phi double [ %i.af, %bb.e ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %bb.g ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.e ], [ %.sroa.012.0.i, %bb.g ]
  %i.ai = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsaPlfBUY5LAj_10serde_json2de5POW10, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !noalias !3295, !noundef !5 ; 2 uses
  %i.al = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.al, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.am = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.am, label %bb.h, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.an = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.ao = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true) ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.ap, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3295
  store i64 14, ptr %i.a, align 8, !noalias !3295
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3295
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !3294, !noalias !3296
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.sroa.04.1.i = phi double [ %i.av, %bb.j ], [ %i.au, %bb.i ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.as = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.at, align 8, !alias.scope !3294, !noalias !3296
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.au = fdiv double %.sroa.04.0.lcssa.i, %i.ak
  br label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.av = fmul double %.sroa.04.0.lcssa.i, %i.ak  ; 2 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp oeq double %i.aw, +inf
  br i1 %i.ax, label %bb.k, label %.loopexit.i, !prof !17

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3295
  store i64 14, ptr %i.b, align 8, !noalias !3295
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3295
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !3294, !noalias !3296
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.h, %.loopexit.i, %bb.k
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3294, !noalias !3296
  br label %bb.m

end_hunk_3
begin_hunk_4_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

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
  %i.aq = load double, ptr %i.ap, align 8, !noalias !3447, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3447
  store i64 14, ptr %i.a, align 8, !noalias !3447
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3447
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !3446, !noalias !3448
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !3446, !noalias !3448
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !17

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3447
  store i64 14, ptr %i.b, align 8, !noalias !3447
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3447
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3446, !noalias !3448
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3446, !noalias !3448
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !18

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #18
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3454, !noalias !3455, !noundef !5 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3454, !noalias !3455, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !3455, !noalias !3454
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3455, !noalias !3454
  br label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !3455, !noalias !3454
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !3456, !noundef !5 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !3457
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3455, !noalias !3454
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3496)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3496, !noalias !3497, !noundef !5 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3496, !noalias !3497, !noundef !5 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !3496, !noalias !3497, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !3498, !noundef !5 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !29

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !22

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !3499
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !3500, !noalias !3501, !nonnull !5 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3502)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !3503, !noundef !5
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !3504, !noalias !3505
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3506)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !3507, !noundef !5
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !3508, !noalias !3505
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !3510, !noundef !5
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !3511, !noalias !3505
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.j, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3512
  store i64 5, ptr %i.f, align 8, !noalias !3512
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3512
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3512
  store i64 9, ptr %i.e, align 8, !noalias !3512
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3512
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !3513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3514)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !3514, !noalias !3515, !nonnull !5 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3517, !noundef !5
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !3518, !noalias !3519
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !22

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3520)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3521, !noundef !5
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !3522, !noalias !3519
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !22

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3524, !noundef !5
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !3525, !noalias !3519
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30, label %bb.q, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3526
  store i64 5, ptr %i.d, align 8, !noalias !3526
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3526
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3526
  store i64 9, ptr %i.c, align 8, !noalias !3526
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3526
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !3527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !3528, !noalias !3529, !nonnull !5 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3530)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !3531, !noundef !5
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !3532, !noalias !3533
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !22

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !3535, !noundef !5
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !3536, !noalias !3533
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !22

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3537)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !3538, !noundef !5
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !3539, !noalias !3533
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !22

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3540)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !3541, !noundef !5
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !3542, !noalias !3533
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38, label %bb.z, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3543
  store i64 5, ptr %i.b, align 8, !noalias !3543
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3543
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3543
  store i64 9, ptr %i.a, align 8, !noalias !3543
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3543
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !3544
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !6, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !14

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !3545
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !7, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !14

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.ce, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30 ], [ %i.cg, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !12, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !6, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !12, !noundef !5
  br label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsaPlfBUY5LAj_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.thread: ; preds = %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3554, !noalias !3555, !noundef !5 ; 3 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 3 uses
  %i.f = icmp ult i64 %.promoted, %i.e
  br i1 %i.f, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3554, !noalias !3555, !nonnull !5, !noundef !5
  %i.i = trunc i64 %i.e to i32
end_hunk_4
begin_hunk_5_@_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !15

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !3602, !noalias !3599
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !3603
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3624)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3625, !noalias !3626, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !3624, !noalias !3627 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3625, !noalias !3626, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3628)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !3629, !noundef !5
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !15

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !3630, !noalias !3627
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit17

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit17

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !3631
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit17

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !3632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3633)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !3634, !noundef !5
  switch i8 %i.v, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !3635, !noalias !3636
  %exitcond.not.i13 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i13, label %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit16.thread, label %.lr.ph.i12

_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit16.thread: ; preds = %.lr.ph.i12, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit17

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit17

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit17: ; preds = %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit16.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfh9HxMbthk9_27candle_wasm_example_whisper.exit16.thread ], [ %i.y, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCsaPlfBUY5LAj_10serde_json2deINtB5_13VariantAccessNtNtB7_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de13VariantAccess12unit_variantCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3659, !noalias !3660, !noundef !5 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !3661, !noalias !3662 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3659, !noalias !3660, !nonnull !5, !noundef !5 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3663)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !3664, !noundef !5
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !21

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !3665, !noalias !3662
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3657
  store i64 5, ptr %i.d, align 8, !noalias !3657
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3657
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !3666
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  %exitcond.not.i9.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i9.not.i, label %bb.e, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !3669, !noundef !5
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !3670, !noalias !3671
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  %exitcond.not.i9.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i9.1.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !3673, !noundef !5
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !3674, !noalias !3671
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3675)
  %exitcond.not.i9.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i9.2.i, label %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !3676, !noundef !5
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !3677, !noalias !3671
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.j, !prof !22

_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3678
  store i64 5, ptr %i.c, align 8, !noalias !3678
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3678
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3678
  store i64 9, ptr %i.b, align 8, !noalias !3678
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3678
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias noundef nonnull align 8 %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs5_NtCsaPlfBUY5LAj_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs14_NtNtCseZbltJ5Yqe_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs1a_NtNtCseZbltJ5Yqe_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECsfh9HxMbthk9_27candle_wasm_example_whisper(double noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXs14_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNvXs1a_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCslUjavNzuXCV_15spm_precompileds_1__NtB5_11PrecompiledNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB1Z_4read7StrReadEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCshBhMCGs0DAb_10tokenizers9tokenizers_1__NtB5_9TokenizerNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB23_4read9SliceReadEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([1128 x i8]) align 8 captures(address) dereferenceable(1128), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs1dZk1kIfPhr_19candle_transformers6models7whisper1__NtB5_6ConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2e_4read9SliceReadEECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecBP_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template12SpecialTokenEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe4word4WordEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTTmmEBP_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableThINtNtNtNtCshBhMCGs0DAb_10tokenizers6models7unigram4trie4NodehEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB1i_EEENtNtNtBK_3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB1p_EEENtNtNtBR_3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_5
