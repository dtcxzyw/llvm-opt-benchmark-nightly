Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvNtCshTCYgcDtIbU_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtCskXtk6F4WjxZ_4just7request7RequestEB17_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6601
  invoke void @_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %.noexc23 unwind label %bb.bd

.noexc23:                                         ; preds = %bb.u
  %i.cu = load i64, ptr %i.h, align 8, !range !27, !noalias !6601, !noundef !28 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !6601 ; 11 uses
  br i1 %i.cv, label %.noexc25, label %bb.v

bb.v:                                             ; preds = %.noexc23
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i16.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i15.i.i, align 8, !noalias !6601 ; 3 uses
  %i.cy = trunc nuw i64 %i.cu to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  br i1 %i.cy, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i16.i.i, label %.sink.split.i.i.i.i.i [
    i64 20, label %bb.x
    i64 6, label %bb.y
  ], !prof !78

bb.x:                                             ; preds = %bb.w
  %i.cz = load i128, ptr %i.cx, align 1
  %i.da = xor i128 %i.cz, 140162838156011450068130631549806079589
  %i.db = getelementptr i8, ptr %i.cx, i64 16
  %i.dc = load i32, ptr %i.db, align 1
  %i.dd = zext i32 %i.dc to i128
  %i.de = xor i128 %i.dd, 1701601889
  %i.df = or i128 %i.da, %i.de
  %i.dg = icmp ne i128 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ad, label %.sink.split.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dj = load i32, ptr %i.cx, align 1
  %i.dk = xor i32 %i.dj, 1852270963
  %i.dl = getelementptr i8, ptr %i.cx, i64 4
  %i.dm = load i16, ptr %i.dl, align 1
  %i.dn = zext i16 %i.dm to i32
  %i.do = xor i32 %i.dn, 27745
  %i.dp = or i32 %i.dk, %i.do
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ad, label %.sink.split.i.i.i.i.i, !prof !29

bb.z:                                             ; preds = %bb.v
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i16.i.i, label %.sink.split.i.i.i.i.i [
    i64 20, label %bb.aa
    i64 6, label %bb.ab
  ], !prof !78

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i128, ptr %i.cx, align 1
  %i.du = xor i128 %i.dt, 140162838156011450068130631549806079589
  %i.dv = getelementptr i8, ptr %i.cx, i64 16
  %i.dw = load i32, ptr %i.dv, align 1
  %i.dx = zext i32 %i.dw to i128
  %i.dy = xor i128 %i.dx, 1701601889
  %i.dz = or i128 %i.du, %i.dy
  %i.ea = icmp ne i128 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ad, label %.sink.split.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ed = load i32, ptr %i.cx, align 1
  %i.ee = xor i32 %i.ed, 1852270963
  %i.ef = getelementptr i8, ptr %i.cx, i64 4
  %i.eg = load i16, ptr %i.ef, align 1
  %i.eh = zext i16 %i.eg to i32
  %i.ei = xor i32 %i.eh, 27745
  %i.ej = or i32 %i.ee, %i.ei
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ad, label %.sink.split.i.i.i.i.i, !prof !29

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6593
  store i64 10, ptr %i.k, align 8, !noalias !6593
  %i.en = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc24 unwind label %bb.bd

.noexc24:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6593
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.eo = invoke fastcc noundef nonnull align 8 ptr @_RNvYNtNtCshTCYgcDtIbU_10serde_json5error5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error15unknown_variantCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i16.i.i)
          to label %.noexc25 unwind label %bb.bd

.noexc25:                                         ; preds = %.sink.split.i.i.i.i.i, %.noexc23
  %.sroa.108.0.i.i.i.i.i = phi ptr [ %i.cx, %.noexc23 ], [ %i.eo, %.sink.split.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6601
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.108.0.i.i.i.i.i) ]
  br label %.noexc32.invoke

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x
  %cond.i.i.i = phi i1 [ false, %bb.ab ], [ false, %bb.y ], [ true, %bb.x ], [ true, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6601
  call void @llvm.experimental.noalias.scope.decl(metadata !6602)
  call void @llvm.experimental.noalias.scope.decl(metadata !6603)
  %i.ep = load i64, ptr %i.x, align 8, !alias.scope !6604, !noalias !6605, !noundef !28 ; 7 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !6606, !noalias !6607 ; 2 uses
  %i.eq = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.ep
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i5.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ad
  %i.er = load ptr, ptr %i.u, align 8, !alias.scope !6604, !noalias !6605, !nonnull !28, !noundef !28 ; 5 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i
  %i.es = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ev, %bb.af ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6608)
  call void @llvm.experimental.noalias.scope.decl(metadata !6609)
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !noalias !6610, !noundef !28
  switch i8 %i.eu, label %bb.ag [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 58, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de10EnumAccess7variantNtNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB29_7RequestNtB1d_11Deserialize11deserialize7___FieldEB2b_.exit.i.i.i
  ], !prof !77

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.ev = add i64 %i.es, 1                        ; 3 uses
  store i64 %i.ev, ptr %i.w, align 8, !alias.scope !6611, !noalias !6607
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ev, %i.ep
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i5.i.i.i.i.i, label %bb.ae

.loopexit.i5.i.i.i.i.i:                           ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6612
  store i64 3, ptr %i.f, align 8, !noalias !6612
  %i.ew = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc27 unwind label %bb.bd

.noexc27:                                         ; preds = %.loopexit.i5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6612
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6612
  store i64 6, ptr %i.g, align 8, !noalias !6612
  %i.ex = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc28 unwind label %bb.bd

.noexc28:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6612
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

_RINvYINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de10EnumAccess7variantNtNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB29_7RequestNtB1d_11Deserialize11deserialize7___FieldEB2b_.exit.i.i.i: ; preds = %bb.ae
  %i.ey = add i64 %i.es, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.w, align 8, !alias.scope !6613, !noalias !6614
  br i1 %cond.i.i.i, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de10EnumAccess7variantNtNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB29_7RequestNtB1d_11Deserialize11deserialize7___FieldEB2b_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6615)
  call void @llvm.experimental.noalias.scope.decl(metadata !6616)
  call void @llvm.experimental.noalias.scope.decl(metadata !6617)
  %i.ez = icmp ult i64 %i.ey, %i.ep
  br i1 %i.ez, label %.lr.ph.i.i.i6.i.i.i, label %.loopexit.i.i5.i.i.i

.lr.ph.i.i.i6.i.i.i:                              ; preds = %bb.ah, %bb.ai
  %i.fa = phi i64 [ %i.fd, %bb.ai ], [ %i.ey, %bb.ah ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !6618, !noundef !28
  switch i8 %i.fc, label %bb.aq [
    i8 32, label %bb.ai
    i8 10, label %bb.ai
    i8 9, label %bb.ai
    i8 13, label %bb.ai
    i8 110, label %bb.aj
  ], !prof !77

bb.ai:                                            ; preds = %.lr.ph.i.i.i6.i.i.i, %.lr.ph.i.i.i6.i.i.i, %.lr.ph.i.i.i6.i.i.i, %.lr.ph.i.i.i6.i.i.i
  %i.fd = add i64 %i.fa, 1                        ; 3 uses
  store i64 %i.fd, ptr %i.w, align 8, !alias.scope !6619, !noalias !6620
  %exitcond.not.i.i.i7.i.i.i = icmp eq i64 %i.fd, %i.ep
  br i1 %exitcond.not.i.i.i7.i.i.i, label %.loopexit.i.i5.i.i.i, label %.lr.ph.i.i.i6.i.i.i

.loopexit.i.i5.i.i.i:                             ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6621
  store i64 5, ptr %i.e, align 8, !noalias !6621
  %i.fe = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc29 unwind label %bb.bd

.noexc29:                                         ; preds = %.loopexit.i.i5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6621
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i6.i.i.i
  %i.ff = add i64 %i.fa, 1                        ; 4 uses
  store i64 %i.ff, ptr %i.w, align 8, !alias.scope !6622, !noalias !6623
  call void @llvm.experimental.noalias.scope.decl(metadata !6624)
  %umax.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 %i.ep) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6625)
  call void @llvm.experimental.noalias.scope.decl(metadata !6626)
  %exitcond.not.i9.not.i.i.i.i.i = icmp ult i64 %i.ff, %i.ep
  br i1 %exitcond.not.i9.not.i.i.i.i.i, label %bb.ak, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !6627, !noundef !28
  %i.fi = add i64 %i.fa, 2                        ; 3 uses
  store i64 %i.fi, ptr %i.w, align 8, !alias.scope !6628, !noalias !6629
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fh, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %bb.ap, !prof !64

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !6630)
  call void @llvm.experimental.noalias.scope.decl(metadata !6631)
  %exitcond.not.i9.1.i.i.i.i.i = icmp eq i64 %i.fi, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i9.1.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !6632, !noundef !28
  %i.fl = add i64 %i.fa, 3                        ; 3 uses
  store i64 %i.fl, ptr %i.w, align 8, !alias.scope !6633, !noalias !6629
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.fk, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.an, label %bb.ap, !prof !64

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !6634)
  call void @llvm.experimental.noalias.scope.decl(metadata !6635)
  %exitcond.not.i9.2.i.i.i.i.i = icmp eq i64 %i.fl, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i9.2.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !6636, !noundef !28
  %i.fo = add i64 %i.fa, 4                        ; 2 uses
  store i64 %i.fo, ptr %i.w, align 8, !alias.scope !6637, !noalias !6629
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.fn, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread17.i.i, label %bb.ap, !prof !64

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.an, %bb.al, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6638
  store i64 5, ptr %i.d, align 8, !noalias !6638
  %i.fp = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc30 unwind label %bb.bd

.noexc30:                                         ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6638
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6638
  store i64 9, ptr %i.c, align 8, !noalias !6638
  %i.fq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc31 unwind label %bb.bd

.noexc31:                                         ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6638
  br label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i6.i.i.i
  %i.fr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @535)
          to label %.noexc32.invoke unwind label %bb.bd

.noexc32.invoke:                                  ; preds = %bb.aq, %.noexc25
  %i.fs = phi ptr [ %.sroa.108.0.i.i.i.i.i, %.noexc25 ], [ %i.fr, %bb.aq ]
  %i.ft = invoke fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskXtk6F4WjxZ_4just(ptr noalias noundef nonnull align 8 %i.fs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i unwind label %bb.bd

bb.ar:                                            ; preds = %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de10EnumAccess7variantNtNvXNvNtCskXtk6F4WjxZ_4just7request1__NtB29_7RequestNtB1d_11Deserialize11deserialize7___FieldEB2b_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6639
  invoke fastcc void @_RINvXs5_NtCshTCYgcDtIbU_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %.noexc34 unwind label %bb.bd

.noexc34:                                         ; preds = %bb.ar
  %i.fu = load i64, ptr %i.l, align 8, !range !37, !noalias !6639, !noundef !28
  %i.fv = icmp eq i64 %i.fu, -1
  br i1 %i.fv, label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread18.i.i, label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.i.i

_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread18.i.i: ; preds = %.noexc34
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !6639, !nonnull !28, !align !35, !noundef !28
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fx, ptr %i.fy, align 8, !alias.scope !6623, !noalias !6640
  store i64 -2, ptr %0, align 8, !alias.scope !6623, !noalias !6640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6639
  %i.fz = load i8, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565, !noundef !28
  %i.ga = add i8 %i.fz, 1
  store i8 %i.ga, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request7RequestEBF_.exit39

_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread17.i.i: ; preds = %bb.ao
  store i64 -1, ptr %0, align 8, !alias.scope !6623, !noalias !6640
  %i.gb = load i8, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565, !noundef !28
  %i.gc = add i8 %i.gb, 1
  store i8 %i.gc, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565
  br label %bb.as

_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread.i.i: ; preds = %.noexc32.invoke, %.noexc31, %.noexc30, %.noexc29, %.noexc28, %.noexc27, %.noexc24, %.noexc22, %.noexc21
  %.sroa.108.013.i.sink.i.i = phi ptr [ %i.cr, %.noexc21 ], [ %i.cs, %.noexc22 ], [ %i.ex, %.noexc28 ], [ %i.ew, %.noexc27 ], [ %i.en, %.noexc24 ], [ %i.fe, %.noexc29 ], [ %i.fp, %.noexc30 ], [ %i.ft, %.noexc32.invoke ], [ %i.fq, %.noexc31 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.108.013.i.sink.i.i, ptr %i.gd, align 8, !alias.scope !6623, !noalias !6640
  store i64 -2, ptr %0, align 8, !alias.scope !6623, !noalias !6640
  %i.ge = load i8, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565, !noundef !28
  %i.gf = add i8 %i.ge, 1
  store i8 %i.gf, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request7RequestEBF_.exit39

_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.i.i: ; preds = %.noexc34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !6640
  %.pr.pr.i.i = load i64, ptr %0, align 8, !alias.scope !6565, !noalias !6566 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6639
  %i.gg = load i8, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565, !noundef !28
  %i.gh = add i8 %i.gg, 1
  store i8 %i.gh, ptr %i.v, align 8, !alias.scope !6566, !noalias !6565
  %i.gi = icmp eq i64 %.pr.pr.i.i, -2
  br i1 %i.gi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request7RequestEBF_.exit39, label %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit._crit_edge.i.i

_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit._crit_edge.i.i: ; preds = %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.i.i
  %.pre.i.i = load i64, ptr %i.x, align 8, !alias.scope !6641, !noalias !6642
  %.promoted.i21.pre.i.i = load i64, ptr %i.w, align 8, !alias.scope !6643, !noalias !6644
  br label %bb.as

bb.as:                                            ; preds = %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit._crit_edge.i.i, %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread17.i.i
  %.promoted.i21.i.i = phi i64 [ %i.fo, %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread17.i.i ], [ %.promoted.i21.pre.i.i, %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit._crit_edge.i.i ] ; 2 uses
  %i.gj = phi i64 [ %i.ep, %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread17.i.i ], [ %.pre.i.i, %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit._crit_edge.i.i ] ; 2 uses
  %i.gk = phi i64 [ -1, %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit.thread17.i.i ], [ %.pr.pr.i.i, %_RINvXs0_NvXNvNtCskXtk6F4WjxZ_4just7request1__NtBb_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor10visit_enumINtNtCshTCYgcDtIbU_10serde_json2de13VariantAccessNtNtB2B_4read7StrReadEEBd_.exit._crit_edge.i.i ] ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !6565, !noalias !6566 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6645)
  %i.gl = icmp ult i64 %.promoted.i21.i.i, %i.gj
  br i1 %i.gl, label %.lr.ph.i23.i.i, label %.loopexit.i.i

.lr.ph.i23.i.i:                                   ; preds = %bb.as
  %i.gm = load ptr, ptr %i.u, align 8, !alias.scope !6641, !noalias !6642, !nonnull !28, !noundef !28
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.lr.ph.i23.i.i
  %i.gn = phi i64 [ %.promoted.i21.i.i, %.lr.ph.i23.i.i ], [ %i.gq, %bb.au ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6646)
  call void @llvm.experimental.noalias.scope.decl(metadata !6647)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !6648, !noundef !28
  switch i8 %i.gp, label %bb.ba [
    i8 32, label %bb.au
    i8 10, label %bb.au
    i8 9, label %bb.au
    i8 13, label %bb.au
    i8 125, label %_RINvXNvNtCskXtk6F4WjxZ_4just7request1__NtB5_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1R_4read7StrReadEEB7_.exit.thread102
  ], !prof !77

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at
  %i.gq = add i64 %i.gn, 1                        ; 3 uses
  store i64 %i.gq, ptr %i.w, align 8, !alias.scope !6649, !noalias !6644
  %exitcond.not.i24.i.i = icmp eq i64 %i.gq, %i.gj
  br i1 %exitcond.not.i24.i.i, label %.loopexit.i.i, label %bb.at

.loopexit.i.i:                                    ; preds = %bb.au, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6564
  store i64 3, ptr %i.r, align 8, !noalias !6564
  %i.gr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ax unwind label %bb.av, !noalias !6565

bb.av:                                            ; preds = %bb.ba, %.loopexit.i.i
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i31.i.i = add i64 %i.gk, -1
  %switch.i32.i.i = icmp ult i64 %.0.val.off.i31.i.i, -2
  br i1 %switch.i32.i.i, label %bb.aw, label %.body

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.gk, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !6650
  br label %.body

bb.ax:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6564
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %bb.ax
  %storemerge.i.i = phi ptr [ %i.gr, %bb.ax ], [ %i.gt, %bb.bb ]
  store ptr %storemerge.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !6565, !noalias !6566
  store i64 -2, ptr %0, align 8, !alias.scope !6565, !noalias !6566
  %.0.val.off.i34.i.i = add i64 %i.gk, -1
  %switch.i35.i.i = icmp ult i64 %.0.val.off.i34.i.i, -2
  br i1 %switch.i35.i.i, label %bb.az, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request7RequestEBF_.exit39

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.gk, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !6651
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request7RequestEBF_.exit39

bb.ba:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6564
  store i64 10, ptr %i.s, align 8, !noalias !6564
  %i.gt = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.bb unwind label %bb.av, !noalias !6565

_RINvXNvNtCskXtk6F4WjxZ_4just7request1__NtB5_7RequestNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1R_4read7StrReadEEB7_.exit.thread102: ; preds = %bb.at
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCskXtk6F4WjxZ_4just:bb.a
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !63254, !noundef !28
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !63255
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63256)
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
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCshTCYgcDtIbU_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !63257, !noundef !28 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !44

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63257
  store i64 14, ptr %i.a, align 8, !noalias !63257
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !63256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63257
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !63256, !noalias !63258
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskXtk6F4WjxZ_4just.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !63256, !noalias !63258
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !44

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63257
  store i64 14, ptr %i.b, align 8, !noalias !63257
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !63256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63257
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !63256, !noalias !63258
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskXtk6F4WjxZ_4just.exit

_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskXtk6F4WjxZ_4just.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !63256, !noalias !63258
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskXtk6F4WjxZ_4just.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !46

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #73
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #5 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63317)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !63318, !noalias !63319, !noundef !28 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !63318, !noalias !63319, !noundef !28 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !63318, !noalias !63319, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !63320, !noundef !28 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !63321

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !64

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !63322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63323)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !63323, !noalias !63324, !nonnull !28 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63326)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !63327, !noundef !28
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !63328, !noalias !63329
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !64

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63331)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !63332, !noundef !28
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !63333, !noalias !63329
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !64

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63335)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !63336, !noundef !28
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !63337, !noalias !63329
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit, label %bb.j, !prof !64

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63338
  store i64 5, ptr %i.f, align 8, !noalias !63338
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !63324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63338
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63338
  store i64 9, ptr %i.e, align 8, !noalias !63338
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !63324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63338
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !63339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63340)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !63340, !noalias !63341, !nonnull !28 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63343)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !63344, !noundef !28
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !63345, !noalias !63346
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !64

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63348)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !63349, !noundef !28
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !63350, !noalias !63346
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !64

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63352)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !63353, !noundef !28
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !63354, !noalias !63346
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit30, label %bb.q, !prof !64

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !63355
  store i64 5, ptr %i.d, align 8, !noalias !63355
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !63341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63355
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63355
  store i64 9, ptr %i.c, align 8, !noalias !63355
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !63341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63355
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !63356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63357)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !63357, !noalias !63358, !nonnull !28 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63360)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !63361, !noundef !28
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !63362, !noalias !63363
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !64

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63365)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !63366, !noundef !28
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !63367, !noalias !63363
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !64

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63369)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !63370, !noundef !28
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !63371, !noalias !63363
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !64

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63373)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !63374, !noundef !28
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !63375, !noalias !63363
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit38, label %bb.z, !prof !64

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63376
  store i64 5, ptr %i.b, align 8, !noalias !63376
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !63358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63376
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63376
  store i64 9, ptr %i.a, align 8, !noalias !63376
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !63358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63376
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !63377
  call fastcc void @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !59, !noundef !28
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !29

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !63378
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !27, !noundef !28
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !28, !noundef !28 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !29

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit38, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit30, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit ], [ %i.ce, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit30 ], [ %i.cg, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskXtk6F4WjxZ_4just(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !28, !align !35, !noundef !28
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCshTCYgcDtIbU_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5ErrorNtNtCsfxuqquxiU4q_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !59, !noundef !28
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !28, !align !35, !noundef !28
  br label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCshTCYgcDtIbU_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.thread: ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_1
begin_hunk_2_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand5clean:bb.a

.noexc60.i.i.i.i:                                 ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !67110
  br label %.loopexit136.i.i.i.i

.loopexit.i.i.i57.i.i.i:                          ; preds = %.lr.ph.i7.i.i.i.i.i.i.i, %bb.dq
  %i.kp = phi i64 [ %i.jw, %bb.dq ], [ %i.kg, %.lr.ph.i7.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !67118)
  call void @llvm.experimental.noalias.scope.decl(metadata !67119)
  call void @llvm.experimental.noalias.scope.decl(metadata !67120)
  call void @llvm.experimental.noalias.scope.decl(metadata !67121)
  %i.kq = add i64 %i.kp, 1
  store i64 %i.kq, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67122, !noalias !67123
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67124, !noalias !67123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !67125
  invoke void @_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %.noexc61.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !67111

.noexc61.i.i.i.i:                                 ; preds = %.loopexit.i.i.i57.i.i.i
  %i.kr = load i64, ptr %i.ac, align 8, !range !27, !noalias !67125, !noundef !28
  %i.ks = icmp eq i64 %i.kr, 2
  %i.kt = load ptr, ptr %i.el, align 8, !noalias !67125 ; 5 uses
  br i1 %i.ks, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.noexc61.i.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !67125
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  %i.ku = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %i.ku, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess8next_keyNtNvXNvNtCskXtk6F4WjxZ_4just11cache_entry1__NtB23_10CacheEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i.i.i.i, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess8next_keyNtNvXNvNtCskXtk6F4WjxZ_4just11cache_entry1__NtB23_10CacheEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread117.i.i.i.i

_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess8next_keyNtNvXNvNtCskXtk6F4WjxZ_4just11cache_entry1__NtB23_10CacheEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread117.i.i.i.i: ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !67125
  br label %bb.dz

bb.dy:                                            ; preds = %.noexc61.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !67125
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  br label %.loopexit136.i.i.i.i

.loopexit.i58.i.i.i:                              ; preds = %bb.fx, %bb.fi, %bb.fe, %bb.fc, %bb.fb
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %bb.gm, %.loopexit.i.i.i57.i.i.i
  %.lcssa486.i.i.i.i = phi i64 [ %i.ju, %.loopexit.i.i.i57.i.i.i ], [ -1, %bb.gm ]
  %lpad.loopexit144.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit: ; preds = %.loopexit22.i.i.i.i47.i.i.i, %bb.dt, %.loopexit.i.i.i.i.i.i.i, %bb.du, %bb.dv, %bb.dw, %.loopexit.i.i.i63.i.i.i.i, %bb.ec, %.loopexit130.i.i.i.i.i.i.i.i.i.i, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i.i.i.i.i.i, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i, %.loopexit239.i.i.i.i.i.i.i.i.i.i, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i, %.loopexit232.i.i.i.i.i.i.i.i.i.i, %bb.fh, %bb.fn, %.loopexit125.i.i.i.i.i.i.i.i.i.i, %bb.fy, %.loopexit124.i.i.i.i.i.i.i.i.i.i, %bb.gd, %bb.gg, %.loopexit.i.i.i90.i.i.i.i, %bb.gl
  %.ph = phi i64 [ -1, %bb.gl ], [ -1, %.loopexit.i.i.i90.i.i.i.i ], [ %i.ju, %bb.gg ], [ %i.ju, %bb.gd ], [ %i.ju, %.loopexit124.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %bb.fy ], [ %i.ju, %.loopexit125.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %bb.fn ], [ %i.ju, %bb.fh ], [ %i.ju, %.loopexit232.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %.loopexit239.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %.loopexit246.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %.loopexit130.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %bb.ec ], [ %i.ju, %.loopexit.i.i.i63.i.i.i.i ], [ %i.ju, %bb.dw ], [ %i.ju, %bb.dv ], [ %i.ju, %bb.du ], [ %i.ju, %.loopexit.i.i.i.i.i.i.i ], [ %i.ju, %bb.dt ], [ %i.ka, %.loopexit22.i.i.i.i47.i.i.i ]
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.i.i.i, %.loopexit.i58.i.i.i
  %i.kv = phi i64 [ %i.ju, %.loopexit.i58.i.i.i ], [ %.lcssa486.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %.ph, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit ], [ %i.ju, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp ]
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i58.i.i.i ], [ %lpad.loopexit144.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit208, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit ], [ %lpad.loopexit.split-lp209, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp ] ; 2 uses
  %.not52.i.i.i.i = icmp eq i64 %i.kv, -1
  br i1 %.not52.i.i.i.i, label %.body.i, label %.thread125.i.i.i.i

_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess8next_keyNtNvXNvNtCskXtk6F4WjxZ_4just11cache_entry1__NtB23_10CacheEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i.i.i.i: ; preds = %bb.dx
  %i.kw = load i32, ptr %i.kt, align 1
  %i.kx = xor i32 %i.kw, 1768121714
  %i.ky = getelementptr i8, ptr %i.kt, i64 4
  %i.kz = load i16, ptr %i.ky, align 1
  %i.la = zext i16 %i.kz to i32
  %i.lb = xor i32 %i.la, 25968
  %i.lc = or i32 %i.kx, %i.lb
  %i.ld = icmp ne i32 %i.lc, 0
  %i.le = zext i1 %i.ld to i32
  %.not.i60.i.i.i = icmp eq i32 %i.le, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !67125
  br i1 %.not.i60.i.i.i, label %bb.gh, label %bb.dz

_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess8next_keyNtNvXNvNtCskXtk6F4WjxZ_4just11cache_entry1__NtB23_10CacheEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread112.i.i.i.i: ; preds = %bb.dm
  %.not49.i.i.i.i = icmp eq i64 %i.ju, -1
  br i1 %.not49.i.i.i.i, label %.thread.i.i.i.i, label %bb.go

bb.dz:                                            ; preds = %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess8next_keyNtNvXNvNtCskXtk6F4WjxZ_4just11cache_entry1__NtB23_10CacheEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.i.i.i.i, %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess8next_keyNtNvXNvNtCskXtk6F4WjxZ_4just11cache_entry1__NtB23_10CacheEntryNtB18_11Deserialize11deserialize7___FieldEB25_.exit.thread117.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !67126)
  call void @llvm.experimental.noalias.scope.decl(metadata !67127)
  %i.lf = load i64, ptr %.sroa.467.0..sroa_idx, align 8, !alias.scope !67128, !noalias !67129, !noundef !28 ; 4 uses
  %.promoted.i.i.i.i62.i.i.i.i = load i64, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67130, !noalias !67131 ; 2 uses
  %i.lg = icmp ult i64 %.promoted.i.i.i.i62.i.i.i.i, %i.lf
  br i1 %i.lg, label %.lr.ph.i.i.i.i64.i.i.i.i, label %.loopexit.i.i.i63.i.i.i.i

.lr.ph.i.i.i.i64.i.i.i.i:                         ; preds = %bb.dz
  %i.lh = load ptr, ptr %i.ej, align 8, !alias.scope !67128, !noalias !67129, !nonnull !28, !noundef !28 ; 2 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.eb, %.lr.ph.i.i.i.i64.i.i.i.i
  %i.li = phi i64 [ %.promoted.i.i.i.i62.i.i.i.i, %.lr.ph.i.i.i.i64.i.i.i.i ], [ %i.ll, %bb.eb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67132)
  call void @llvm.experimental.noalias.scope.decl(metadata !67133)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !noalias !67134, !noundef !28
  switch i8 %i.lk, label %bb.ec [
    i8 32, label %bb.eb
    i8 10, label %bb.eb
    i8 9, label %bb.eb
    i8 13, label %bb.eb
    i8 58, label %bb.ed
  ], !prof !77

bb.eb:                                            ; preds = %bb.ea, %bb.ea, %bb.ea, %bb.ea
  %i.ll = add i64 %i.li, 1                        ; 3 uses
  store i64 %i.ll, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67135, !noalias !67131
  %exitcond.not.i.i.i.i65.i.i.i.i = icmp eq i64 %i.ll, %i.lf
  br i1 %exitcond.not.i.i.i.i65.i.i.i.i, label %.loopexit.i.i.i63.i.i.i.i, label %bb.ea

.loopexit.i.i.i63.i.i.i.i:                        ; preds = %bb.dz, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !67136
  store i64 3, ptr %i.aa, align 8, !noalias !67136
  %i.lm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc66.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc66.i.i.i.i:                                 ; preds = %.loopexit.i.i.i63.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !67136
  br label %.loopexit136.i.i.i.i

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !67136
  store i64 6, ptr %i.ab, align 8, !noalias !67136
  %i.ln = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab)
          to label %.noexc67.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc67.i.i.i.i:                                 ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !67136
  br label %.loopexit136.i.i.i.i

bb.ed:                                            ; preds = %bb.ea
  %i.lo = add i64 %i.li, 1                        ; 3 uses
  store i64 %i.lo, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67137, !noalias !67111
  call void @llvm.experimental.noalias.scope.decl(metadata !67138)
  call void @llvm.experimental.noalias.scope.decl(metadata !67139)
  call void @llvm.experimental.noalias.scope.decl(metadata !67140)
  call void @llvm.experimental.noalias.scope.decl(metadata !67141)
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67142, !noalias !67111
  %i.lp = icmp ult i64 %i.lo, %i.lf
  br i1 %i.lp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ed, %bb.ge
  %i.lq = phi ptr [ %i.qb, %bb.ge ], [ %i.lh, %bb.ed ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ %i.lo, %bb.ed ]
  %i.lr = phi i64 [ %i.qa, %bb.ge ], [ %i.lf, %bb.ed ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i, %bb.ge ], [ undef, %bb.ed ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.ge ], [ false, %bb.ed ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67143)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ls = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lv, %bb.ef ] ; 17 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !noalias !67144, !noundef !28 ; 3 uses
  switch i8 %i.lu, label %bb.eg [
    i8 32, label %bb.ef
    i8 10, label %bb.ef
    i8 9, label %bb.ef
    i8 13, label %bb.ef
    i8 110, label %bb.eh
    i8 116, label %bb.en
    i8 102, label %bb.et
    i8 45, label %bb.fb
    i8 34, label %bb.fc
    i8 91, label %bb.fd
    i8 123, label %bb.fd
  ]

bb.ef:                                            ; preds = %bb.ee, %bb.ee, %bb.ee, %bb.ee
  %i.lv = add i64 %i.ls, 1                        ; 3 uses
  store i64 %i.lv, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67145, !noalias !67146
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.lv, %i.lr
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i, label %bb.ee

.loopexit130.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ed, %bb.ge, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !67147
  store i64 5, ptr %i.z, align 8, !noalias !67147
  %i.lw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc68.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc68.i.i.i.i:                                 ; preds = %.loopexit130.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !67147
  br label %.loopexit136.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.lx = add i8 %i.lu, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.lx, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.fi, label %bb.fh, !prof !75

bb.eh:                                            ; preds = %bb.ee
  %i.ly = add i64 %i.ls, 1                        ; 4 uses
  store i64 %i.ly, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67148, !noalias !67111
  call void @llvm.experimental.noalias.scope.decl(metadata !67149)
  %umax.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ly, i64 %i.lr) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67150)
  call void @llvm.experimental.noalias.scope.decl(metadata !67151)
  %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ly, %i.lr
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i, label %bb.ei, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !67152, !noundef !28
  %i.mb = add i64 %i.ls, 2                        ; 3 uses
  store i64 %i.mb, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67153, !noalias !67154
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ma, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej, label %.loopexit246.i.i.i.i.i.i.i.i.i.i, !prof !64

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.experimental.noalias.scope.decl(metadata !67155)
  call void @llvm.experimental.noalias.scope.decl(metadata !67156)
  %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mb, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !noalias !67157, !noundef !28
  %i.me = add i64 %i.ls, 3                        ; 3 uses
  store i64 %i.me, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67158, !noalias !67154
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.md, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %bb.el, label %.loopexit246.i.i.i.i.i.i.i.i.i.i, !prof !64

bb.el:                                            ; preds = %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !67159)
  call void @llvm.experimental.noalias.scope.decl(metadata !67160)
  %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.me, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !noalias !67161, !noundef !28
  %i.mh = add i64 %i.ls, 4
  store i64 %i.mh, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67162, !noalias !67154
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mg, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i.i.i.i, !prof !64

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.el, %bb.ej, %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !67163
  store i64 5, ptr %i.r, align 8, !noalias !67163
  %i.mi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc69.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc69.i.i.i.i:                                 ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !67163
  br label %.loopexit136.i.i.i.i

.loopexit246.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.em, %bb.ek, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !67163
  store i64 9, ptr %i.q, align 8, !noalias !67163
  %i.mj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc70.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc70.i.i.i.i:                                 ; preds = %.loopexit246.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !67163
  br label %.loopexit136.i.i.i.i

bb.en:                                            ; preds = %bb.ee
  %i.mk = add i64 %i.ls, 1                        ; 4 uses
  store i64 %i.mk, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67164, !noalias !67111
  call void @llvm.experimental.noalias.scope.decl(metadata !67165)
  %umax.i56.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mk, i64 %i.lr) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67166)
  call void @llvm.experimental.noalias.scope.decl(metadata !67167)
  %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.mk, %i.lr
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i, label %bb.eo, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !67168, !noundef !28
  %i.mn = add i64 %i.ls, 2                        ; 3 uses
  store i64 %i.mn, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67169, !noalias !67170
  %.not.i59.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mm, 114
  br i1 %.not.i59.i.i.i.i.i.i.i.i.i.i, label %bb.ep, label %.loopexit239.i.i.i.i.i.i.i.i.i.i, !prof !64

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.experimental.noalias.scope.decl(metadata !67171)
  call void @llvm.experimental.noalias.scope.decl(metadata !67172)
  %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mn, %umax.i56.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !noalias !67173, !noundef !28
  %i.mq = add i64 %i.ls, 3                        ; 3 uses
  store i64 %i.mq, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67174, !noalias !67170
  %.not.i59.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mp, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i.i.i.i, label %bb.er, label %.loopexit239.i.i.i.i.i.i.i.i.i.i, !prof !64

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !67175)
  call void @llvm.experimental.noalias.scope.decl(metadata !67176)
  %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mq, %umax.i56.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !67177, !noundef !28
  %i.mt = add i64 %i.ls, 4
  store i64 %i.mt, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67178, !noalias !67170
  %.not.i59.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ms, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i.i.i.i, !prof !64

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.er, %bb.ep, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !67179
  store i64 5, ptr %i.p, align 8, !noalias !67179
  %i.mu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc71.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc71.i.i.i.i:                                 ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !67179
  br label %.loopexit136.i.i.i.i

.loopexit239.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.es, %bb.eq, %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !67179
  store i64 9, ptr %i.o, align 8, !noalias !67179
  %i.mv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc72.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc72.i.i.i.i:                                 ; preds = %.loopexit239.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !67179
  br label %.loopexit136.i.i.i.i

bb.et:                                            ; preds = %bb.ee
  %i.mw = add i64 %i.ls, 1                        ; 4 uses
  store i64 %i.mw, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67180, !noalias !67111
  call void @llvm.experimental.noalias.scope.decl(metadata !67181)
  %umax.i65.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mw, i64 %i.lr) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67182)
  call void @llvm.experimental.noalias.scope.decl(metadata !67183)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.mw, %i.lr
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i, label %bb.eu, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i

bb.eu:                                            ; preds = %bb.et
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !noalias !67184, !noundef !28
  %i.mz = add i64 %i.ls, 2                        ; 3 uses
  store i64 %i.mz, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67185, !noalias !67186
  %.not.i68.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.my, 97
  br i1 %.not.i68.i.i.i.i.i.i.i.i.i.i, label %bb.ev, label %.loopexit232.i.i.i.i.i.i.i.i.i.i, !prof !64

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !67187)
  call void @llvm.experimental.noalias.scope.decl(metadata !67188)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mz, %umax.i65.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.na = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !noalias !67189, !noundef !28
  %i.nc = add i64 %i.ls, 3                        ; 3 uses
  store i64 %i.nc, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67190, !noalias !67186
  %.not.i68.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nb, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i.i.i.i, label %bb.ex, label %.loopexit232.i.i.i.i.i.i.i.i.i.i, !prof !64

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.experimental.noalias.scope.decl(metadata !67191)
  call void @llvm.experimental.noalias.scope.decl(metadata !67192)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nc, %umax.i65.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !noalias !67193, !noundef !28
  %i.nf = add i64 %i.ls, 4                        ; 3 uses
  store i64 %i.nf, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67194, !noalias !67186
  %.not.i68.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ne, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i.i.i.i, label %bb.ez, label %.loopexit232.i.i.i.i.i.i.i.i.i.i, !prof !64

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !67195)
  call void @llvm.experimental.noalias.scope.decl(metadata !67196)
  %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nf, %umax.i65.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i, label %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !noalias !67197, !noundef !28
  %i.ni = add i64 %i.ls, 5
  store i64 %i.ni, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67198, !noalias !67186
  %.not.i68.3.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nh, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit232.i.i.i.i.i.i.i.i.i.i, !prof !64

_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ez, %bb.ex, %bb.ev, %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !67199
  store i64 5, ptr %i.n, align 8, !noalias !67199
  %i.nj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc73.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc73.i.i.i.i:                                 ; preds = %_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !67199
  br label %.loopexit136.i.i.i.i

.loopexit232.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.fa, %bb.ey, %bb.ew, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !67199
  store i64 9, ptr %i.m, align 8, !noalias !67199
  %i.nk = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc74.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc74.i.i.i.i:                                 ; preds = %.loopexit232.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !67199
  br label %.loopexit136.i.i.i.i

bb.fb:                                            ; preds = %bb.ee
  %i.nl = add i64 %i.ls, 1
  store i64 %i.nl, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67200, !noalias !67111
  %i.nm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %.noexc75.i.i.i.i unwind label %.loopexit.i58.i.i.i, !noalias !67111 ; 2 uses

.noexc75.i.i.i.i:                                 ; preds = %bb.fb
  %.not45.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nm, null
  br i1 %.not45.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit136.i.i.i.i

bb.fc:                                            ; preds = %bb.ee
  %i.nn = add i64 %i.ls, 1
  store i64 %i.nn, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67201, !noalias !67111
  %i.no = invoke noundef align 8 ptr @_RNvXs8_NtCshTCYgcDtIbU_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %.noexc76.i.i.i.i unwind label %.loopexit.i58.i.i.i, !noalias !67111 ; 2 uses

.noexc76.i.i.i.i:                                 ; preds = %bb.fc
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit136.i.i.i.i

bb.fd:                                            ; preds = %bb.ee, %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !67202)
  %i.np = zext i1 %.sroa.039.0177.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.nq = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67203, !noalias !67111, !noundef !28 ; 3 uses
  %i.nr = load i64, ptr %i.au, align 8, !range !43, !alias.scope !67203, !noalias !67111, !noundef !28
  %i.ns = sub i64 %i.nr, %i.nq
  %i.nt = icmp ult i64 %i.ns, %i.np
  br i1 %i.nt, label %bb.fe, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.fe:                                            ; preds = %bb.fd
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.au, i64 noundef %i.nq, i64 noundef %i.np, i64 noundef 1, i64 noundef 1)
          to label %.noexc77.i.i.i.i unwind label %.loopexit.i58.i.i.i, !noalias !67111

.noexc77.i.i.i.i:                                 ; preds = %bb.fe
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67204, !noalias !67111
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc77.i.i.i.i, %bb.fd
  %i.nu = phi i64 [ %i.nq, %bb.fd ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc77.i.i.i.i ] ; 3 uses
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsj6eKBz9Db1c_4core6option8IntoIterhEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.nv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !67204, !noalias !67111, !nonnull !28, !noundef !28
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nu
  store i8 %.sroa.7.0178.i.i.i.i.i.i.i.i.i.i, ptr %i.nw, align 1, !noalias !67205
  %i.nx = add i64 %i.nu, 1
  br label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsj6eKBz9Db1c_4core6option8IntoIterhEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsj6eKBz9Db1c_4core6option8IntoIterhEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67204, !noalias !67206
  %i.ny = load i64, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67207, !noalias !67111, !noundef !28
  %i.nz = add i64 %i.ny, 1
  store i64 %i.nz, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67207, !noalias !67111
  br label %bb.fg

_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc79.i.i.i.i, %.noexc76.i.i.i.i, %.noexc75.i.i.i.i, %bb.fa, %bb.es, %bb.em
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i.i.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  %i.oa = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67142, !noalias !67111, !noundef !28 ; 2 uses
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %bb.fj

bb.fg:                                            ; preds = %bb.fj, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsj6eKBz9Db1c_4core6option8IntoIterhEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.lu, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsj6eKBz9Db1c_4core6option8IntoIterhEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.oo, %bb.fj ], [ %.sroa.7.0178.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsj6eKBz9Db1c_4core6option8IntoIterhEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.fj ], [ true, %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.oc = load i64, ptr %.sroa.467.0..sroa_idx, align 8, !alias.scope !67208, !noalias !67209, !noundef !28 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !67210, !noalias !67211 ; 2 uses
  %i.od = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i.i.i.i, %i.oc
  br i1 %i.od, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.fg
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67142, !noalias !67111
  %i.oe = load ptr, ptr %i.ej, align 8, !alias.scope !67208, !noalias !67209, !nonnull !28, !noundef !28 ; 3 uses
  %i.of = load i64, ptr %i.au, align 8, !range !43, !alias.scope !67142, !noalias !67111
  %i.og = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !67142, !noalias !67111, !nonnull !28
  br label %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i

bb.fh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !67147
  store i64 10, ptr %i.y, align 8, !noalias !67147
  %i.oh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc78.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit, !noalias !67111

.noexc78.i.i.i.i:                                 ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !67147
  br label %.loopexit136.i.i.i.i

bb.fi:                                            ; preds = %bb.eg
  %i.oi = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %.noexc79.i.i.i.i unwind label %.loopexit.i58.i.i.i, !noalias !67111 ; 2 uses

.noexc79.i.i.i.i:                                 ; preds = %bb.fi
  %.not49.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not49.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCshTCYgcDtIbU_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit136.i.i.i.i

bb.fj:                                            ; preds = %bb.ff
  %i.oj = add i64 %i.oa, -1                       ; 3 uses
  store i64 %i.oj, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !67142, !noalias !67111
  %i.ok = load i64, ptr %i.au, align 8, !range !43, !alias.scope !67142, !noalias !67111, !noundef !28
  %i.ol = icmp ult i64 %i.oj, %i.ok
  call void @llvm.assume(i1 %i.ol)
  %i.om = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !67142, !noalias !67111, !nonnull !28, !noundef !28
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.oj
  %i.oo = load i8, ptr %i.on, align 1, !noalias !67111, !noundef !28
  br label %bb.fg

.lr.ph.i75.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ft, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.pa, %bb.ft ]
  %.sroa.042.2164.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ft ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.pf, %bb.ft ] ; 6 uses
  %i.op = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.pc, %bb.ft ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67212)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fl, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i
  %i.oq = phi i64 [ %.promoted.i73170.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i ], [ %i.ot, %bb.fl ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67213)
  call void @llvm.experimental.noalias.scope.decl(metadata !67214)
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !noalias !67215, !noundef !28
  switch i8 %i.os, label %.loopexit.i.i.i.i.i.i.i.i.i.i [
    i8 32, label %bb.fl
    i8 10, label %bb.fl
end_hunk_2
begin_hunk_3_@_RNvNtCskXtk6F4WjxZ_4just8function6choose:bb.a
  %i.et = or disjoint i32 %i.es, %i.eo
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i, %bb.n, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i = phi ptr [ %i.ds, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i ], [ %i.eb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i ], [ %i.el, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i ], [ %i.dm, %bb.n ] ; 3 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.dx, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i ], [ %i.ei, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i ], [ %i.et, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i ], [ %i.dz, %bb.n ]
  %i.eu = icmp samesign ult i64 %i.dl, 2305843009213693952
  call void @llvm.assume(i1 %i.eu)
  %i.ev = load i64, ptr %i.d, align 8, !range !43, !alias.scope !78287, !noalias !78281, !noundef !28
  %i.ew = icmp eq i64 %i.dl, %i.ev
  br i1 %i.ew, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, label %.noexc.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.o
  %i.ex = ptrtoint ptr %.sroa.0.1.ph.i.i.i to i64
  %i.ey = sub nuw i64 %i.cx, %i.ex                ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = and i64 %i.ey, 3
  %.not.i4.i.i.i = icmp ne i64 %i.fa, 0
  %i.fb = zext i1 %.not.i4.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.ez, 1
  %i.fc = add nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.fb
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.dl, i64 noundef range(i64 1, 0) %i.fc, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i unwind label %bb.p, !noalias !78281

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78287, !noalias !78281
  br label %.noexc.i

.noexc.i:                                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i, %bb.o
  %i.fd = phi ptr [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc_crit_edge.i ], [ %i.dk, %bb.o ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.dl
  store i32 %spec.select.i.ph.i.i.i, ptr %i.fe, align 4, !noalias !78288
  %i.ff = add nuw nsw i64 %i.dl, 1                ; 3 uses
  store i64 %i.ff, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !78287, !noalias !78281
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i, %i.ac
  br i1 %.not.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit, label %.lr.ph.i.i.i

bb.p:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VeccE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !noalias !78281 ; 2 uses
  %i.fh = icmp eq i64 %.val.i, 0
  br i1 %i.fh, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !78281, !nonnull !28, !noundef !28
  %i.fi = shl nuw i64 %.val.i, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 4) #69, !noalias !78281
  br label %.body

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit: ; preds = %.noexc.i
  %.sroa.0.0.copyload.pre = load i64, ptr %i.d, align 8
  %.sroa.8.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i
  %.sroa.13.0.copyload = phi i64 [ %i.ff, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 9 uses
  %.sroa.8.0.copyload = phi ptr [ %.sroa.8.0.copyload.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 7 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ %.sroa.4.0.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78281
  switch i64 %3, label %thread-pre-split.i [
    i64 0, label %.loopexit96
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i
  %i.fj = load i8, ptr %2, align 1, !alias.scope !78289, !noalias !78290, !noundef !28 ; 2 uses
  switch i8 %i.fj, label %bb.s [
    i8 43, label %.loopexit96
    i8 45, label %.loopexit96
  ]

thread-pre-split.i:                               ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i
  %.pr.i = load i8, ptr %2, align 1, !alias.scope !78289, !noalias !78290
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i, %bb.r
  %i.fk = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.fj, %bb.r ]
  %cond.i = icmp eq i8 %i.fk, 43                  ; 2 uses
  %i.fl = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %3, %i.fl           ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i59 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.fm = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.fm, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.s
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.v
  %.not52.i = icmp eq i64 %i.fo, 0
  br i1 %.not52.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.s, %.preheader56.i
  %.sroa.0.1.i165 = phi ptr [ %i.fn, %.preheader56.i ], [ %.sroa.0.0.i59, %bb.s ] ; 2 uses
  %.sroa.15.1.i164 = phi i64 [ %i.fo, %.preheader56.i ], [ %.sroa.15.0.i, %bb.s ]
  %.sroa.042.0.i163 = phi i64 [ %i.fz, %.preheader56.i ], [ 0, %bb.s ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i165, i64 1
  %i.fo = add nsw i64 %.sroa.15.1.i164, -1        ; 2 uses
  %i.fp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i163, i64 10) ; 2 uses
  %i.fq = extractvalue { i64, i1 } %i.fp, 0       ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fp, 1
  %i.fs = load i8, ptr %.sroa.0.1.i165, align 1, !alias.scope !78289, !noalias !78290, !noundef !28 ; 2 uses
  br i1 %i.fr, label %bb.u, label %bb.t, !prof !44

bb.t:                                             ; preds = %.preheader56.i.preheader
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nsw i32 %i.ft, -48                  ; 2 uses
  %i.fv = icmp ult i32 %i.fu, 10
  br i1 %i.fv, label %bb.v, label %.loopexit96

bb.u:                                             ; preds = %.preheader56.i.preheader
  %i.fw = add i8 %i.fs, -48
  %i.fx = icmp ult i8 %i.fw, 10
  %spec.select = select i1 %i.fx, i8 2, i8 1
  br label %.loopexit96

bb.v:                                             ; preds = %bb.t
  %i.fy = zext nneg i32 %i.fu to i64
  %i.fz = add i64 %i.fq, %i.fy                    ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.fq
  br i1 %i.ga, label %.loopexit96, label %.preheader56.i, !prof !44

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.w
  %.sroa.0.269.i = phi ptr [ %i.gh, %bb.w ], [ %.sroa.0.0.i59, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.gg, %bb.w ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.gj, %bb.w ], [ 0, %.preheader.i ]
  %i.gb = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !78289, !noalias !78290, !noundef !28
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, 10
  br i1 %i.ge, label %bb.w, label %.loopexit96

bb.w:                                             ; preds = %.lr.ph.i
  %i.gf = mul i64 %.sroa.042.267.i, 10
  %i.gg = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.gi = zext nneg i32 %i.gd to i64
  %i.gj = add i64 %i.gf, %i.gi                    ; 2 uses
  %.not53.i = icmp eq i64 %i.gg, 0
  br i1 %.not53.i, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit: ; preds = %.body63, %bb.bc, %bb.y
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.y ], [ %lpad.phi.i, %bb.bc ], [ %lpad.phi.i, %.body63 ] ; 2 uses
  %i.gk = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.gk, label %.body, label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit
  %i.gl = shl nuw i64 %.sroa.0.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.gl, i64 noundef range(i64 1, -9223372036854775807) 4) #69
  br label %.body

bb.y:                                             ; preds = %bb.bd, %.loopexit96, %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit

.loopexit96:                                      ; preds = %bb.t, %bb.v, %.lr.ph.i, %bb.u, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i, %bb.r, %bb.r
  %.sroa.5.0.ph = phi i8 [ 1, %bb.r ], [ %spec.select, %bb.u ], [ 1, %bb.r ], [ 0, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCsj6eKBz9Db1c_4core3str4iter5CharsE11spec_extendCskXtk6F4WjxZ_4just.exit.i ], [ 1, %.lr.ph.i ], [ 1, %bb.t ], [ 2, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.sroa.5.0.ph, ptr %i.c, align 1, !noalias !78291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78291
  store ptr %i.l, ptr %i.b, align 8, !noalias !78291
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !78291
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.gn, align 8, !noalias !78291
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !78291
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @656, ptr noundef nonnull %i.b)
          to label %bb.bh unwind label %bb.y

_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.w, %.preheader.i
  %.sroa.1275.0 = phi i64 [ %i.gj, %bb.w ], [ 0, %.preheader.i ], [ %i.fz, %.preheader56.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.go = invoke noundef nonnull ptr @_RNvNtNtCs3R0z6j4fLAW_4rand4rngs6thread3rng()
          to label %bb.z unwind label %bb.y       ; 2 uses

bb.z:                                             ; preds = %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit
  store ptr %i.go, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78292
  store i64 0, ptr %i.a, align 8, !noalias !78292
  %.sroa.4.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i61, align 8, !noalias !78292
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !78292
  call void @llvm.experimental.noalias.scope.decl(metadata !78293)
  call void @llvm.experimental.noalias.scope.decl(metadata !78294)
  %.not.not.i.not = icmp eq i64 %.sroa.1275.0, 0
  br i1 %.not.not.i.not, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.aa, !prof !29

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.1275.0, i64 noundef 1, i64 noundef 1)
          to label %.lr.ph.i.i.i.i.i.i.i.preheader106 unwind label %.loopexit.split-lp.i, !noalias !78292

.lr.ph.i.i.i.i.i.i.i.preheader106:                ; preds = %bb.aa
  %i.gp = icmp samesign ugt i64 %.sroa.13.0.copyload, 4294967295
  %i.gq = trunc nuw i64 %.sroa.13.0.copyload to i32
  %i.gr = sub i32 0, %i.gq                        ; 2 uses
  %i.gs = zext nneg i64 %.sroa.13.0.copyload to i128 ; 2 uses
  %i.gt = sub nsw i64 0, %.sroa.13.0.copyload
  br label %.lr.ph.i.i.i.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !78295)
  call void @llvm.experimental.noalias.scope.decl(metadata !78296)
  call void @llvm.experimental.noalias.scope.decl(metadata !78297)
  br label %.loopexit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader106, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.gu, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader106 ]
  %i.gu = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !78298, !nonnull !28, !noundef !28 ; 13 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16 ; 18 uses
  %i.gw = load i32, ptr %i.gv, align 4, !noalias !78299, !noundef !28 ; 7 uses
  br i1 %i.gp, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gx = icmp ugt i32 %i.gw, 63
  br i1 %i.gx, label %bb.ac, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.ha = load i64, ptr %i.gz, align 4, !alias.scope !78300, !noalias !78301
  %i.hb = icmp ugt i64 %i.ha, 1023
  br i1 %i.hb, label %bb.ad, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread, !prof !44

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.gy) #73
          to label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread unwind label %.loopexit.i62, !noalias !78292

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.hc = zext nneg i32 %i.gw to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hc
  %i.he = add nuw nsw i32 %i.gw, 1                ; 2 uses
  %i.hf = load i32, ptr %i.hd, align 4, !alias.scope !78302, !noalias !78303, !noundef !28
  store i32 %i.he, ptr %i.gv, align 4, !alias.scope !78302, !noalias !78303
  %i.hg = zext i32 %i.hf to i64
  %i.hh = mul nuw i64 %.sroa.13.0.copyload, %i.hg ; 2 uses
  %i.hi = lshr i64 %i.hh, 32                      ; 3 uses
  %i.hj = trunc i64 %i.hh to i32                  ; 3 uses
  %i.hk = icmp ult i32 %i.gr, %i.hj
  br i1 %i.hk, label %bb.ae, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread: ; preds = %bb.ac, %bb.ad
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.gy, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78303
  %i.hl = load i32, ptr %i.gv, align 4, !alias.scope !78302, !noalias !78303, !noundef !28
  store i32 1, ptr %i.gv, align 4, !alias.scope !78302, !noalias !78303
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %.sroa.13.0.copyload, %i.hm ; 2 uses
  %i.ho = lshr i64 %i.hn, 32                      ; 2 uses
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  %i.hq = icmp ult i32 %i.gr, %i.hp
  br i1 %i.hq, label %.thread, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = icmp eq i32 %i.gw, 63
  br i1 %i.hr, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.hs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.hu = load i64, ptr %i.ht, align 4, !alias.scope !78304, !noalias !78305
  %i.hv = icmp ugt i64 %i.hu, 1023
  br i1 %i.hv, label %bb.ag, label %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.hs) #73
          to label %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78292

.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.ag, %bb.af
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.hs, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78306
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread:                                          ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread, %bb.ae
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i144146 = phi i32 [ %i.he, %bb.ae ], [ 1, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ] ; 2 uses
  %i.hw = phi i64 [ %i.hi, %bb.ae ], [ %i.ho, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ]
  %i.hx = phi i32 [ %i.hj, %bb.ae ], [ %i.hp, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ]
  %i.hy = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i144146 to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hy
  %i.ia = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i144146, 1
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ib = phi i64 [ %i.hi, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hw, %.thread ]
  %i.ic = phi i32 [ %i.hj, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hx, %.thread ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ia, %.thread ]
  %.in.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %.thread.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hz, %.thread ]
  %i.id = load i32, ptr %.in.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !78307, !noalias !78306, !noundef !28
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gv, align 4, !alias.scope !78307, !noalias !78306
  %6 = zext i32 %i.id to i64
  %7 = mul nuw i64 %.sroa.13.0.copyload, %6
  %8 = lshr i64 %7, 32
  %9 = trunc nuw i64 %8 to i32
  %i.ie = xor i32 %i.ic, -1
  %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ie, %9
  %i.if = zext i1 %.not9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ig = add nuw nsw i64 %i.ib, %i.if
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ih = icmp ult i32 %i.gw, 63
  br i1 %i.ih, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ii = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 268
  %i.ij = load i32, ptr %i.ii, align 4, !alias.scope !78308, !noalias !78309, !noundef !28
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.im = load i64, ptr %i.il, align 4, !alias.scope !78310, !noalias !78311
  %i.in = icmp ugt i64 %i.im, 1023
  br i1 %i.in, label %bb.aj, label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ik) #73
          to label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78292

_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ik, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78309
  %i.io = load i32, ptr %i.gv, align 4, !alias.scope !78308, !noalias !78309, !noundef !28 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gw, 63 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 20
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !78308, !noalias !78309
  %.sroa.03.0.ph.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.io, i32 %i.iq
  %.sroa.02.0.ph.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.ij, i32 %i.io
  %.sroa.0.0.ph.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.ir = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !alias.scope !78308, !noalias !78309, !noundef !28
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !alias.scope !78308, !noalias !78309, !noundef !28
  %i.iw = shl nuw nsw i64 %i.ir, 32
  %i.ix = add nuw nsw i64 %i.iw, 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ix, %bb.ak ] ; 3 uses
  %.sroa.02.017.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.it, %bb.ak ]
  %.sroa.03.016.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %bb.ak ]
  %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %.sroa.6.0.extract.trunc.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gv, align 4, !alias.scope !78308, !noalias !78309
  %i.iy = zext i32 %.sroa.03.016.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.iz = shl nuw i64 %i.iy, 32
  %i.ja = zext i32 %.sroa.02.017.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.jb = or disjoint i64 %i.iz, %i.ja
  %i.jc = zext i64 %i.jb to i128
  %i.jd = mul nuw nsw i128 %i.jc, %i.gs           ; 2 uses
  %i.je = lshr i128 %i.jd, 64
  %i.jf = trunc nuw nsw i128 %i.je to i64         ; 2 uses
  %i.jg = trunc i128 %i.jd to i64                 ; 2 uses
  %i.jh = icmp ult i64 %i.gt, %i.jg
  br i1 %i.jh, label %bb.al, label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = icmp samesign ult i64 %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 270582939648
  br i1 %i.ji, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 268
  %i.jk = load i32, ptr %i.jj, align 4, !alias.scope !78312, !noalias !78313, !noundef !28
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 320
  %i.jn = load i64, ptr %i.jm, align 4, !alias.scope !78314, !noalias !78315
  %i.jo = icmp ugt i64 %i.jn, 1023
  br i1 %i.jo, label %bb.an, label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs_NtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.jl) #73
          to label %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78292

_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  call fastcc void @_RNvXs_NtCskpFEDU8Hp5a_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generateCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.jl, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.gv), !noalias !78313
  %i.jp = load i32, ptr %i.gv, align 4, !alias.scope !78312, !noalias !78313, !noundef !28 ; 2 uses
  %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 63 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 20
  %i.jr = load i32, ptr %i.jq, align 4, !alias.scope !78312, !noalias !78313
  %.sroa.03.0.ph.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.jp, i32 %i.jr
  %.sroa.02.0.ph.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.jk, i32 %i.jp
  %.sroa.0.0.ph.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4294967808, i64 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.al
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.sroa.6.0.extract.shift.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !alias.scope !78312, !noalias !78313, !noundef !28
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !alias.scope !78312, !noalias !78313, !noundef !28
  %i.jw = and i64 %.sroa.0.018.i.i.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 270582939648
  %i.jx = add nuw nsw i64 %i.jw, 8589935104
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jx, %bb.ao ]
  %.sroa.02.017.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jt, %bb.ao ]
  %.sroa.03.016.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXNtNtCs3R0z6j4fLAW_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs9ILO0rivZwZ_9rand_core5block9Generator8generate.exit.i.i.i.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jv, %bb.ao ]
  %.sroa.6.0.extract.shift.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.018.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gv, align 4, !alias.scope !78312, !noalias !78313
  %i.jy = zext i32 %.sroa.03.016.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.jz = shl nuw i64 %i.jy, 32
  %i.ka = zext i32 %.sroa.02.017.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.kb = or disjoint i64 %i.jz, %i.ka
  %10 = zext i64 %i.kb to i128
  %11 = mul nuw nsw i128 %10, %i.gs
  %12 = lshr i128 %11, 64
  %13 = trunc nuw nsw i128 %12 to i64
  %i.kc = xor i64 %i.jg, -1
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.kc, %13
  %i.kd = zext i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ke = add nuw nsw i64 %i.kd, %i.jf
  br label %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hi, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ig, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ke, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jf, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskXtk6F4WjxZ_4just.exit19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ho, %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECskXtk6F4WjxZ_4just.exit15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.thread ] ; 3 uses
  %i.kf = icmp samesign ult i64 %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i, %.sroa.13.0.copyload
  br i1 %i.kf, label %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.13.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @554) #74
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !78292

.noexc7.i:                                        ; preds = %bb.ap
  unreachable

_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.sroa.62.0.i.i.i.i.i.i.i.i.i.i.i
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.kg, align 4, !range !52, !alias.scope !78316, !noalias !78298, !noundef !28 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78317)
  %i.kh = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !78318, !noalias !78319, !noundef !28 ; 5 uses
  %i.ki = icmp sgt i64 %i.kh, -1
  call void @llvm.assume(i1 %i.ki)
  %i.kj = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 128 ; 2 uses
  br i1 %i.kj, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i
  %i.kk = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 2048
  br i1 %i.kk, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kl = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.kl, i64 3, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.aq ], [ %..i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ], [ 1, %_RNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0B5_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.km = load i64, ptr %i.a, align 8, !range !43, !alias.scope !78320, !noalias !78319, !noundef !28
  %i.kn = sub nsw i64 %i.km, %i.kh
  %i.ko = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.kn
  br i1 %i.ko, label %bb.at, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !44

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.kh, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i62, !noalias !78292

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.kp = load ptr, ptr %.sroa.4.0..sroa_idx.i61, align 8, !alias.scope !78318, !noalias !78319, !nonnull !28, !noundef !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kh ; 10 uses
  br i1 %i.kj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kr = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 2048
  %i.ks = trunc i32 %.val3.i.i.i.i.i.i.i.i to i8
  %i.kt = and i8 %i.ks, 63
  %i.ku = or disjoint i8 %i.kt, -128              ; 3 uses
  %i.kv = lshr i32 %.val3.i.i.i.i.i.i.i.i, 6
  %i.kw = trunc i32 %i.kv to i8                   ; 2 uses
  %i.kx = and i8 %i.kw, 63
  %i.ky = or disjoint i8 %i.kx, -128              ; 2 uses
  %i.kz = lshr i32 %.val3.i.i.i.i.i.i.i.i, 12
  %i.la = trunc i32 %i.kz to i8                   ; 2 uses
  %i.lb = and i8 %i.la, 63
  %i.lc = or disjoint i8 %i.lb, -128
  %i.ld = lshr i32 %.val3.i.i.i.i.i.i.i.i, 18
  %i.le = trunc nuw nsw i32 %i.ld to i8
  %i.lf = or disjoint i8 %i.le, -16
  br i1 %i.kr, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lg = trunc nuw nsw i32 %.val3.i.i.i.i.i.i.i.i to i8
  store i8 %i.lg, ptr %i.kq, align 1, !noalias !78321
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.lh = or disjoint i8 %i.kw, -64
  store i8 %i.lh, ptr %i.kq, align 1, !noalias !78321
  %i.li = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %i.ku, ptr %i.li, align 1, !noalias !78321
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.au
  %i.lj = icmp samesign ult i32 %.val3.i.i.i.i.i.i.i.i, 65536
  br i1 %i.lj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lk = or disjoint i8 %i.la, -32
  store i8 %i.lk, ptr %i.kq, align 1, !noalias !78321
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %i.ky, ptr %i.ll, align 1, !noalias !78321
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i8 %i.ku, ptr %i.lm, align 1, !noalias !78321
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  store i8 %i.lf, ptr %i.kq, align 1, !noalias !78321
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  store i8 %i.lc, ptr %i.ln, align 1, !noalias !78321
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i8 %i.ky, ptr %i.lo, align 1, !noalias !78321
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  store i8 %i.ku, ptr %i.lp, align 1, !noalias !78321
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.aw, %bb.av
  %i.lq = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.kh
  store i64 %i.lq, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !78318, !noalias !78319
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.gu, %.sroa.1275.0
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i62:                                    ; preds = %bb.at, %bb.an, %bb.aj, %bb.ag, %bb.ad
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp.i:                             ; preds = %bb.ap, %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i62
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i62 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78322)
  call void @llvm.experimental.noalias.scope.decl(metadata !78323)
  %.val.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !78324, !noalias !78292 ; 2 uses
  %i.lr = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.lr, label %.body63, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i61, align 8, !alias.scope !78324, !noalias !78292, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !78325
  br label %.body63

.body63:                                          ; preds = %bb.ba, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !78326)
  call void @llvm.experimental.noalias.scope.decl(metadata !78327)
  call void @llvm.experimental.noalias.scope.decl(metadata !78328)
  %i.ls = load ptr, ptr %i.g, align 8, !alias.scope !78329, !nonnull !28, !noundef !28 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !noalias !78329, !noundef !28
  %i.lu = add i64 %i.lt, -1                       ; 2 uses
  store i64 %i.lu, ptr %i.ls, align 8, !noalias !78329
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit

bb.bc:                                            ; preds = %.body63
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCs9ILO0rivZwZ_9rand_core5block8BlockRngNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #73
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit unwind label %bb.bg

.loopexit.loopexit:                               ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjRcuNCNvNtCskXtk6F4WjxZ_4just8function6chooses_0NCIB2_BV_cuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3n_6StringINtNtB2v_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtNtBa_3ops5range5RangejEBY_EEE0E0E0E0B14_.exit.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !78330
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.lw = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.go, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78292
  store i64 0, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !78331)
  call void @llvm.experimental.noalias.scope.decl(metadata !78332)
  call void @llvm.experimental.noalias.scope.decl(metadata !78333)
  %i.ly = load i64, ptr %i.lw, align 8, !noalias !78330, !noundef !28
  %i.lz = add i64 %i.ly, -1                       ; 2 uses
  store i64 %i.lz, ptr %i.lw, align 8, !noalias !78330
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %bb.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67

bb.bd:                                            ; preds = %.loopexit
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCs9ILO0rivZwZ_9rand_core5block8BlockRngNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #73
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67 unwind label %bb.y

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67: ; preds = %.loopexit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.mb = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.mb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68, label %bb.be

bb.be:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67
  %i.mc = shl nuw i64 %.sroa.0.0.copyload, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 4) #69
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68: ; preds = %bb.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread9ThreadRngECskXtk6F4WjxZ_4just.exit67
  %.val54 = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val55 = load i64, ptr %i.md, align 8, !noundef !28 ; 4 uses
  %i.me = icmp eq i64 %.val55, 0
  br i1 %i.me, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetcEECskXtk6F4WjxZ_4just.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VeccEECskXtk6F4WjxZ_4just.exit68
  %i.mf = shl i64 %.val55, 2
  %i.mg = icmp slt i64 %.val55, 4611686018427387900
  call void @llvm.assume(i1 %i.mg)
  %i.mh = and i64 %i.mf, -16                      ; 2 uses
  %i.mi = add i64 %i.mh, 16                       ; 2 uses
  %i.mj = add nsw i64 %.val55, 17
  %i.mk = add i64 %i.mj, %i.mi                    ; 4 uses
  %i.ml = icmp uge i64 %i.mk, %i.mi
  %i.mm = icmp ult i64 %i.mk, 9223372036854775793
  call void @llvm.assume(i1 %i.ml)
end_hunk_3
begin_hunk_4_@_RNvXs_NtCskXtk6F4WjxZ_4just7warningNtB4_7WarningNtNtB6_13color_display12ColorDisplay3fmt:bb.a
    i8 2, label %bb.c
  ]

default.unreachable128:                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127, %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.19.0 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 255, %bb.c ]
  %.sroa.03.0 = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i8 %.sroa.03.0, ptr %i.k, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 49
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 1
  store i32 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 61
  store i32 255, ptr %.sroa.21.0..sroa_idx, align 1
  store i64 -1, ptr %i.e, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr @2817, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 8, ptr %.sroa.570.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store i64 -3, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  switch i8 %i.j, label %default.unreachable128 [
    i8 0, label %bb.g
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.073.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ]
  store i8 %.sroa.073.0, ptr %i.d, align 1
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.2182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i64 0, ptr %.sroa.574.0..sroa_idx, align 1
  store i8 -1, ptr %.sroa.2182.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 -1, ptr %.sroa.25.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtCsaBFuFXHOo0Z_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.m, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs2_NtCsaBFuFXHOo0Z_12nu_ansi_term4ansiNtB5_6PrefixNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.490.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.q = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @2818, ptr noundef nonnull %i.c)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #71
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.q, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104628)
  %.val.i = load i64, ptr %i.e, align 8, !range !37, !alias.scope !104628, !noundef !28 ; 2 uses
  %i.s = icmp sgt i64 %.val.i, 0
  br i1 %i.s, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i

bb.k:                                             ; preds = %bb.j
  %.val1.i = load ptr, ptr %.sroa.469.0..sroa_idx, align 8, !alias.scope !104628, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !104629
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.k, %bb.j
  %.val2.i = load i64, ptr %i.l, align 8, !range !82, !alias.scope !104628, !noundef !28 ; 2 uses
  %i.t = icmp sgt i64 %.val2.i, 0
  br i1 %i.t, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !104628, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !104630
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.m:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104631)
  %.val.i122 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !104631, !noundef !28 ; 2 uses
  %i.v = icmp sgt i64 %.val.i122, 0
  br i1 %i.v, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i123

bb.n:                                             ; preds = %bb.m
  %.val1.i126 = load ptr, ptr %.sroa.469.0..sroa_idx, align 8, !alias.scope !104631, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i126, i64 noundef %.val.i122, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !104632
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i123: ; preds = %bb.n, %bb.m
  %.val2.i124 = load i64, ptr %i.l, align 8, !range !82, !alias.scope !104631, !noundef !28 ; 2 uses
  %i.w = icmp sgt i64 %.val2.i124, 0
  br i1 %i.w, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i123
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.val3.i125 = load ptr, ptr %i.x, align 8, !alias.scope !104631, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i125, i64 noundef %.val2.i124, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !104633
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit.i123, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i8 %i.j, label %default.unreachable128 [
    i8 0, label %bb.r
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127
  br i1 %i.h, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127, %bb.p, %bb.q
  %.sroa.041.0 = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit127 ], [ 1, %bb.p ], [ 0, %bb.q ]
  store i8 %.sroa.041.0, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.20.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i64 0, ptr %.sroa.4.0..sroa_idx43, align 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx60, align 1
  %.sroa.24.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 -1, ptr %.sroa.24.0..sroa_idx64, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtCsaBFuFXHOo0Z_12nu_ansi_term4ansiNtB5_6SuffixNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4106.0..sroa_idx, align 8
  %i.y = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @85, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaBFuFXHOo0Z_12nu_ansi_term7display17AnsiGenericStringeEECskXtk6F4WjxZ_4just.exit ], [ %i.y, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCskXtk6F4WjxZ_4just8justfileNtB4_8JustfileNtNtB6_13color_display12ColorDisplay3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(904) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.preheader354:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.i = load i64, ptr %i.h, align 8, !noundef !28 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load i64, ptr %i.k, align 8, !noundef !28 ; 3 uses
  %i.m = add i64 %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.p = load i64, ptr %i.o, align 8, !noundef !28 ; 5 uses
  %i.q = add i64 %i.m, %i.p                       ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !noundef !28 ; 2 uses
  %.not = icmp ne ptr %i.r, null
  %i.s = icmp ne i64 %i.l, 0
  %.not401 = and i1 %i.s, %.not
  br i1 %.not401, label %.lr.ph, label %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1a_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1a_.exit.thread

.lr.ph:                                           ; preds = %.preheader354
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.u = load i64, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = load ptr, ptr %1, align 8, !nonnull !28  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !28, !align !35 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = add i64 %i.i, %i.p
  br label %bb.a

bb.a:                                             ; preds = %bb.ah, %.lr.ph
  %.sroa.01.0378 = phi i64 [ %i.q, %.lr.ph ], [ %i.hj, %bb.ah ]
  %.sroa.6.0326376 = phi ptr [ null, %.lr.ph ], [ %.sroa.07.0.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.15.0375 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.78.0.i.i.i, %bb.ah ] ; 6 uses
  %.sroa.23.0374 = phi i64 [ %i.l, %.lr.ph ], [ %i.ac, %bb.ah ]
  %.sroa.10.0373 = phi i64 [ %i.v, %.lr.ph ], [ 0, %bb.ah ] ; 2 uses
  %i.ac = add i64 %.sroa.23.0374, -1              ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.6.0326376, null
  br i1 %.not.i.i, label %bb.b, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ad = inttoptr i64 %.sroa.10.0373 to ptr      ; 3 uses
  %i.ae = icmp eq i64 %.sroa.15.0375, 0
  br i1 %i.ae, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %.sroa.15.0375, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ad, %.lr.ph.i.i.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.prol ], [ %.sroa.15.0375, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 2832
  %i.ag = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.af, align 8, !noalias !104691, !nonnull !28, !noundef !28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !104638

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %.sroa.15.0375, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %.sroa.15.0375, 8
  br i1 %i.ah, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 2832
  %.sroa.013.0.i.i = load ptr, ptr %i.ai, align 8, !noalias !104691, !nonnull !28, !noundef !28
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 2832
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.aj, align 8, !noalias !104691, !nonnull !28, !noundef !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 2832
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.ak, align 8, !noalias !104691, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 2832
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.al, align 8, !noalias !104691, !nonnull !28, !noundef !28
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 2832
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.am, align 8, !noalias !104691, !nonnull !28, !noundef !28
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 2832
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.an, align 8, !noalias !104691, !nonnull !28, !noundef !28
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 2832
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ao, align 8, !noalias !104691, !nonnull !28, !noundef !28
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 2832
  %i.aq = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ap, align 8, !noalias !104691, !nonnull !28, !noundef !28 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, label %.lr.ph.i.i

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b, %bb.a
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.15.0375, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.10.0373, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %.sroa.6.0326376, %bb.a ], [ %i.ad, %bb.b ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 2826
  %i.at = load i16, ptr %i.as, align 2, !noalias !104692, !noundef !28
  %i.au = zext i16 %i.at to i64
  %i.av = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.au
  br i1 %i.av, label %bb.e, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i, %bb.c
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.ax, %bb.c ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.az, %bb.c ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 2816
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !104693, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.c
  %i.ay = zext i16 %i.bb to i64
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = add i64 %.sroa.5.021.i.i.i.i, 1         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 2824
  %i.bb = load i16, ptr %i.ba, align 8, !noalias !104693 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 2826
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !104692, !noundef !28
  %i.be = icmp ult i16 %i.bb, %i.bd
  br i1 %i.be, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #74
          to label %.noexc.i.i unwind label %bb.h, !noalias !104694

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.ay, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.az, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.ax, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1Q_10expression10ExpressionEE10init_frontB1Q_.exit.i ] ; 4 uses
  %i.bf = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.loopexit431

bb.g:                                             ; preds = %bb.e
  %i.bh = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 2840
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter459 = and i64 %.sroa.7.0.ph.i.i.i, 7   ; 2 uses
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.bk, %.prol.preheader ], [ %i.bj, %bb.g ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.g ]
  %prol.iter461 = phi i64 [ %prol.iter461.next, %.prol.preheader ], [ 0, %bb.g ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !104695, !nonnull !28, !noundef !28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 2832 ; 2 uses
  %prol.iter461.next = add i64 %prol.iter461, 1   ; 2 uses
  %prol.iter461.cmp.not = icmp eq i64 %prol.iter461.next, %xtraiter459
  br i1 %prol.iter461.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !104652

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.bj, %bb.g ], [ %i.bk, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.g ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.bl = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.bl, label %.loopexit431, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.bu, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !104695, !nonnull !28, !noundef !28
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 2832
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.bm, align 8, !noalias !104695, !nonnull !28, !noundef !28
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 2832
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.bn, align 8, !noalias !104695, !nonnull !28, !noundef !28
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 2832
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.bo, align 8, !noalias !104695, !nonnull !28, !noundef !28
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 2832
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.bp, align 8, !noalias !104695, !nonnull !28, !noundef !28
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 2832
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.bq, align 8, !noalias !104695, !nonnull !28, !noundef !28
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 2832
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.br, align 8, !noalias !104695, !nonnull !28, !noundef !28
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 2832
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.bs, align 8, !noalias !104695, !nonnull !28, !noundef !28 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 2832
  br i1 %i.bt, label %.loopexit431, label %.new

bb.h:                                             ; preds = %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit431:                                     ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.78.0.i.i.i = phi i64 [ %i.bg, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.f ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.bw = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 176
  %i.by = getelementptr inbounds nuw [240 x i8], ptr %i.bx, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.bz, ptr %i.f, align 8, !captures !36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 233
  %i.cb = load i8, ptr %i.ca, align 1, !range !40, !noundef !28
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.af, label %bb.ae

_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1a_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1a_.exit.thread: ; preds = %bb.ah, %.preheader354
  %.sroa.01.0.lcssa = phi i64 [ %i.q, %.preheader354 ], [ %i.ab, %bb.ah ] ; 3 uses
  %i.cd = load ptr, ptr %i.n, align 8, !noundef !28 ; 2 uses
  %.not229 = icmp ne ptr %i.cd, null
  %i.ce = icmp ne i64 %i.p, 0
  %.not403 = and i1 %i.ce, %.not229
  br i1 %.not403, label %.lr.ph386, label %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterReINtNtCskXtk6F4WjxZ_4just5alias5AliasINtNtBb_4sync3ArcNtNtB1a_6recipe6RecipeEEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1a_.exit.thread

.lr.ph386:                                        ; preds = %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1a_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1a_.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.cd to i64
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ci = load ptr, ptr %1, align 8, !nonnull !28 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !28, !align !35 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
end_hunk_4
begin_hunk_5_@llvm.bswap.i64

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #57

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNtB5_13PathCompleter3dir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtNtCsgYJ0xFPoqCG_13clap_complete6engine6customNtB5_13PathCompleter4file(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs12_NtNtCsj6eKBz9Db1c_4core3num7nonzeroINtB6_7NonZeroyENtNtNtBa_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs10_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserhNtB6_18ValueParserFactory12value_parser(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9debug_set(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsi_NtNtNtCsaKJjC64KgbL_3std3sys2fs4unixNtB5_4File4read(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs3_NtNtCsk7w47U2izUG_14regex_automata4meta5regexNtB5_5RegexNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCscpDzAHcVcWB_4uuid3fmtNtB6_4UuidNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Csh2YIbNO2017_16percent_encodingNtB4_13PercentEncodeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_Csjcnq7zA68du_6caminoNtB5_11Utf8PathBufNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_Csjcnq7zA68du_6caminoNtB5_8Utf8PathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs2FJGJNE9lTN_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(640), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs2uF6e5yHHeh_6chrono6offset3utcNtB5_3UtcNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs2uF6e5yHHeh_6chrono6offset5fixedNtB5_11FixedOffsetNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtCsaKJjC64KgbL_3std6thread9lifecycle6PacketuEE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6scoped9ScopeDataE9drop_slowCslr9lKHiKfPO_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsj6eKBz9Db1c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsj6eKBz9Db1c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsfxuqquxiU4q_10serde_core2de5implsNtB2_11UnitVisitorNtB4_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsfxuqquxiU4q_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i8 } @_RNvNtCsl7tMOFksck4_7dotenvy4iter14eval_end_state(i8 noundef range(i8 0, 8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr17ends_with_newline(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsF_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsF_NtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parserNtB5_17FalseyValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(760), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBd_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBc_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse15body_to_tag_end(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse13item_to_event(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCs9ILO0rivZwZ_9rand_core5block8BlockRngNtNtNtCs3R0z6j4fLAW_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsc_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seek(ptr noalias nofree noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsb_NtCsaKJjC64KgbL_3std2fsNtB5_4FileNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs2_NtCsaKJjC64KgbL_3std7processNtB5_10ChildStdinNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsfxuqquxiU4q_10serde_core2deNtB5_5OneOfNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaKJjC64KgbL_3std3sys5stdio4unixNtB5_6StderrNtNtNtCsj6eKBz9Db1c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsg2HB1uAEQDf_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs8home_dir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCsj6eKBz9Db1c_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCsdftwklc2oBO_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #67

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #68

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #57

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #57

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #57

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #14 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #52 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #55 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #57 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #58 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #59 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #60 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #61 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #62 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #66 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #67 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #68 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #69 = { nounwind }
attributes #70 = { noreturn }
attributes #71 = { cold }
attributes #72 = { cold noreturn nounwind }
attributes #73 = { noinline }
attributes #74 = { noinline noreturn }
attributes #75 = { inlinehint }
attributes #76 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !{ptr @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCskXtk6F4WjxZ_4just, null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{!3, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEEB1e_"}
!4 = distinct !{!4, !3, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEEB1e_: argument 0"}
!5 = distinct !{null}
!6 = distinct !{!6, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just"}
!7 = distinct !{!7, !6, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just: argument 0"}
!8 = distinct !{null}
!9 = distinct !{!9, !53}
!10 = distinct !{null}
!11 = distinct !{ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB1c_, null, null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{!14, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just"}
!15 = distinct !{!15, !14, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just: argument 0"}
!16 = distinct !{!16, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just"}
!17 = distinct !{!17, !16, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just: argument 0"}
!18 = distinct !{!18, i1 false, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just"}
!19 = distinct !{!19, !18, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just: argument 0"}
!20 = distinct !{!20, !53}
!21 = distinct !{null}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 2, !"RtLibUseGOT", i32 1}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!26 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!27 = !{i64 0, i64 3}
!28 = !{}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!"branch_weights", i32 1073205, i32 2146410443}
!32 = !{!"branch_weights", i32 2146410443, i32 1073205}
!33 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!34 = !{i64 4}
!35 = !{i64 8}
!36 = !{!"address", !"read_provenance"}
!37 = !{i64 -1, i64 -9223372036854775808}
!38 = !{i8 0, i8 3}
!39 = !{i64 -1, i64 -9223372036854775792}
!40 = !{i8 0, i8 2}
!41 = !{i64 0, i64 2}
!42 = !{!"branch_weights", i32 2002, i32 2000}
!43 = !{i64 0, i64 -9223372036854775808}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{i8 -1, i8 42}
!46 = !{!"branch_weights", i32 4001, i32 4000000}
!47 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!48 = !{i64 1, i64 536870913}
!49 = !{i32 -1, i32 1114112}
!50 = !{i8 0, i8 7}
!51 = !{i8 0, i8 23}
!52 = !{i32 0, i32 1114112}
!53 = !{!"llvm.loop.peeled.count", i32 1}
!54 = !{i8 -1, i8 3}
!55 = !{i32 0, i32 3}
!56 = !{!"branch_weights", i32 1, i32 4001}
!57 = !{i8 0, i8 6}
!58 = !{i64 1, i64 0}
!59 = !{i64 -1, i64 3}
!60 = !{i64 0, i64 4}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"branch_weights", i32 8, i32 24}
!64 = !{!"branch_weights", i32 -2147483648, i32 0}
!65 = !{!"branch_weights", i32 1, i32 1999}
!66 = !{!"branch_weights", i32 0, i32 1}
!67 = !{i32 -1, i32 1000000000}
!68 = !{i32 0, i32 2}
!69 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!70 = !{ptr @_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind}
!71 = !{i8 0, i8 44}
!72 = !{i64 -1, i64 5}
!73 = !{!"branch_weights", !"expected", i32 2145766842, i32 1716806}
!74 = !{i32 0, i32 -1}
!75 = !{!"branch_weights", i32 4000000, i32 4001}
!76 = !{!"branch_weights", i32 1, i32 4001, i32 4001, i32 4001, i32 4001, i32 2000, i32 2000}
!77 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2001, i32 2000}
end_hunk_5
