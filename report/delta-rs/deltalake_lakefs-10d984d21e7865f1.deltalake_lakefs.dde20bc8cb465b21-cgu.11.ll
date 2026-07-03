inline.NumInlined: 364
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB2C_12LakeFSClient11has_changes01__NtB2v_12DiffResponseNtB1l_11Deserialize11deserialize9___VisitorEB2E_:bb.a
.noexc66.i:                                       ; preds = %.loopexit246.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !886
  br label %.loopexit115.i

.loopexit247.i.i.i.i.i.i.i:                       ; preds = %bb.au, %bb.as, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !886
  store i64 9, ptr %i.h, align 8, !noalias !886
  %i.et = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc67.i:                                       ; preds = %.loopexit247.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !886
  br label %.loopexit115.i

bb.av:                                            ; preds = %bb.am
  %i.eu = add i64 %i.ec, 1                        ; 4 uses
  store i64 %i.eu, ptr %i.cw, align 8, !alias.scope !887, !noalias !790
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %umax.i57.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.eb) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %exitcond.not.i59.not.i.i.i.i.i.i.i = icmp ult i64 %i.eu, %i.eb
  br i1 %exitcond.not.i59.not.i.i.i.i.i.i.i, label %bb.aw, label %.loopexit238.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !noalias !896, !noundef !3
  %i.ex = add i64 %i.ec, 2                        ; 3 uses
  store i64 %i.ex, ptr %i.cw, align 8, !alias.scope !899, !noalias !900
  %.not.i60.i.i.i.i.i.i.i = icmp eq i8 %i.ew, 114
  br i1 %.not.i60.i.i.i.i.i.i.i, label %bb.ax, label %.loopexit239.i.i.i.i.i.i.i, !prof !248

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %exitcond.not.i59.1.i.i.i.i.i.i.i = icmp eq i64 %i.ex, %umax.i57.i.i.i.i.i.i.i
  br i1 %exitcond.not.i59.1.i.i.i.i.i.i.i, label %.loopexit238.i.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !903, !noundef !3
  %i.fa = add i64 %i.ec, 3                        ; 3 uses
  store i64 %i.fa, ptr %i.cw, align 8, !alias.scope !904, !noalias !900
  %.not.i60.1.i.i.i.i.i.i.i = icmp eq i8 %i.ez, 117
  br i1 %.not.i60.1.i.i.i.i.i.i.i, label %bb.az, label %.loopexit239.i.i.i.i.i.i.i, !prof !248

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %exitcond.not.i59.2.i.i.i.i.i.i.i = icmp eq i64 %i.fa, %umax.i57.i.i.i.i.i.i.i
  br i1 %exitcond.not.i59.2.i.i.i.i.i.i.i, label %.loopexit238.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !907, !noundef !3
  %i.fd = add i64 %i.ec, 4
  store i64 %i.fd, ptr %i.cw, align 8, !alias.scope !908, !noalias !900
  %.not.i60.2.i.i.i.i.i.i.i = icmp eq i8 %i.fc, 101
  br i1 %.not.i60.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !248

.loopexit238.i.i.i.i.i.i.i:                       ; preds = %bb.az, %bb.ax, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !909
  store i64 5, ptr %i.g, align 8, !noalias !909
  %i.fe = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc68.i:                                       ; preds = %.loopexit238.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !909
  br label %.loopexit115.i

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.ba, %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !909
  store i64 9, ptr %i.f, align 8, !noalias !909
  %i.ff = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc69.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc69.i:                                       ; preds = %.loopexit239.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !909
  br label %.loopexit115.i

bb.bb:                                            ; preds = %bb.am
  %i.fg = add i64 %i.ec, 1                        ; 4 uses
  store i64 %i.fg, ptr %i.cw, align 8, !alias.scope !910, !noalias !790
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fg, i64 %i.eb) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.fg, %i.eb
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.bc, label %.loopexit230.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !919, !noundef !3
  %i.fj = add i64 %i.ec, 2                        ; 3 uses
  store i64 %i.fj, ptr %i.cw, align 8, !alias.scope !922, !noalias !923
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.fi, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.bd, label %.loopexit231.i.i.i.i.i.i.i, !prof !248

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.fj, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %.loopexit230.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !noalias !926, !noundef !3
  %i.fm = add i64 %i.ec, 3                        ; 3 uses
  store i64 %i.fm, ptr %i.cw, align 8, !alias.scope !927, !noalias !923
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.fl, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.bf, label %.loopexit231.i.i.i.i.i.i.i, !prof !248

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.fm, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %.loopexit230.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !noalias !930, !noundef !3
  %i.fp = add i64 %i.ec, 4                        ; 3 uses
  store i64 %i.fp, ptr %i.cw, align 8, !alias.scope !931, !noalias !923
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.fo, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.bh, label %.loopexit231.i.i.i.i.i.i.i, !prof !248

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.fp, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %.loopexit230.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !934, !noundef !3
  %i.fs = add i64 %i.ec, 5
  store i64 %i.fs, ptr %i.cw, align 8, !alias.scope !935, !noalias !923
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.fr, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i, label %.loopexit231.i.i.i.i.i.i.i, !prof !248

.loopexit230.i.i.i.i.i.i.i:                       ; preds = %bb.bh, %bb.bf, %bb.bd, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !936
  store i64 5, ptr %i.e, align 8, !noalias !936
  %i.ft = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc70.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc70.i:                                       ; preds = %.loopexit230.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !936
  br label %.loopexit115.i

.loopexit231.i.i.i.i.i.i.i:                       ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !936
  store i64 9, ptr %i.d, align 8, !noalias !936
  %i.fu = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc71.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc71.i:                                       ; preds = %.loopexit231.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !936
  br label %.loopexit115.i

bb.bj:                                            ; preds = %bb.am
  %i.fv = add i64 %i.ec, 1
  store i64 %i.fv, ptr %i.cw, align 8, !alias.scope !937, !noalias !790
  %i.fw = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %.noexc72.i unwind label %.loopexit.i46, !noalias !790 ; 2 uses

.noexc72.i:                                       ; preds = %bb.bj
  %.not46.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not46.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i, label %.loopexit115.i

bb.bk:                                            ; preds = %bb.am
  %i.fx = add i64 %i.ec, 1
  store i64 %i.fx, ptr %i.cw, align 8, !alias.scope !940, !noalias !790
  %i.fy = invoke noundef align 8 ptr @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cv)
          to label %.noexc73.i unwind label %.loopexit.i46, !noalias !790 ; 2 uses

.noexc73.i:                                       ; preds = %bb.bk
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i, label %.loopexit115.i

bb.bl:                                            ; preds = %bb.am, %bb.am
  invoke void @_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterhEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu, i1 noundef zeroext %.sroa.039.0175.i.i.i.i.i.i.i, i8 %.sroa.7.0176.i.i.i.i.i.i.i)
          to label %.noexc74.i unwind label %.loopexit.i46, !noalias !790

.noexc74.i:                                       ; preds = %bb.bl
  %i.fz = load i64, ptr %i.cw, align 8, !alias.scope !943, !noalias !790, !noundef !3
  %i.ga = add i64 %i.fz, 1
  store i64 %i.ga, ptr %i.cw, align 8, !alias.scope !943, !noalias !790
  br label %bb.bn

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i: ; preds = %.noexc76.i, %.noexc73.i, %.noexc72.i, %bb.bi, %bb.ba, %bb.au
  br i1 %.sroa.039.0175.i.i.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i
  %i.gb = load i64, ptr %i.cz, align 8, !alias.scope !850, !noalias !790, !noundef !3 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsj34PGqTgg0L_16deltalake_lakefs.exit.i.backedge, label %bb.bq

bb.bn:                                            ; preds = %bb.bq, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i, %.noexc74.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.ee, %.noexc74.i ], [ %i.gn, %bb.bq ], [ %.sroa.7.0176.i.i.i.i.i.i.i, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc74.i ], [ true, %bb.bq ], [ true, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i ]
  %i.gd = load i64, ptr %i.dn, align 8, !alias.scope !946, !noalias !951, !noundef !3 ; 6 uses
  %.promoted.i72162.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !alias.scope !954, !noalias !956 ; 2 uses
  %i.ge = icmp ult i64 %.promoted.i72162.i.i.i.i.i.i.i, %i.gd
  br i1 %i.ge, label %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i74.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.bn
  %i.gf = load ptr, ptr %i.cv, align 8, !alias.scope !946, !noalias !951, !nonnull !3, !noundef !3 ; 3 uses
  br label %.lr.ph.i74.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !863
  store i64 10, ptr %i.p, align 8, !noalias !863
  %i.gg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc75.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc75.i:                                       ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !863
  br label %.loopexit115.i

bb.bp:                                            ; preds = %bb.ao
  %i.gh = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cu)
          to label %.noexc76.i unwind label %.loopexit.i46, !noalias !790 ; 2 uses

.noexc76.i:                                       ; preds = %bb.bp
  %.not50.i.i.i.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not50.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i.i, label %.loopexit115.i

bb.bq:                                            ; preds = %bb.bm
  %i.gi = add i64 %i.gb, -1                       ; 3 uses
  store i64 %i.gi, ptr %i.cz, align 8, !alias.scope !850, !noalias !790
  %i.gj = load i64, ptr %i.cu, align 8, !range !8, !alias.scope !850, !noalias !790, !noundef !3
  %i.gk = icmp ult i64 %i.gi, %i.gj
  call void @llvm.assume(i1 %i.gk)
  %i.gl = load ptr, ptr %i.dz, align 8, !alias.scope !850, !noalias !790, !nonnull !3, !noundef !3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gi
  %i.gn = load i8, ptr %i.gm, align 1, !noalias !790, !noundef !3
  br label %bb.bn

.lr.ph.i74.i.i.i.i.i.i.i:                         ; preds = %bb.ca, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i
  %i.go = phi i64 [ %.promoted.i72162.i.i.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i ], [ %i.gz, %bb.ca ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.ca ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i ], [ %i.he, %bb.ca ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %.lr.ph.i74.i.i.i.i.i.i.i
  %i.gp = phi i64 [ %i.go, %.lr.ph.i74.i.i.i.i.i.i.i ], [ %i.gs, %bb.bs ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !noalias !959, !noundef !3
  switch i8 %i.gr, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.bs
    i8 10, label %bb.bs
    i8 9, label %bb.bs
    i8 13, label %bb.bs
    i8 44, label %bb.bv
    i8 93, label %bb.bw
    i8 125, label %bb.bx
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.br, %bb.br
  %i.gs = add i64 %i.gp, 1                        ; 3 uses
  store i64 %i.gs, ptr %i.cw, align 8, !alias.scope !960, !noalias !956
  %exitcond.not.i75.i.i.i.i.i.i.i = icmp eq i64 %i.gs, %i.gd
  br i1 %exitcond.not.i75.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.br

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.bn, %bb.ca, %bb.bs
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.he, %bb.ca ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.bs ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !863
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.bu
    i8 123, label %bb.bt
  ]

.invoke.i:                                        ; preds = %bb.cb, %.loopexit123.i.i.i.i.i.i.i
  %i.gt = phi ptr [ @17, %.loopexit123.i.i.i.i.i.i.i ], [ @18, %bb.cb ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt) #17
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bt:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.bt ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.n, align 8, !noalias !863
  %i.gu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc78.i:                                       ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !863
  br label %.loopexit115.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bx, %bb.bw, %bb.br
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.cb, label %.critedge.i.i.i.i.i.i.i, !prof !341

bb.bv:                                            ; preds = %bb.br
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.by, label %.critedge.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.br
  %i.gv = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 91
  br i1 %i.gv, label %bb.bz, label %.loopexit.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %bb.br
  %i.gw = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.gw, label %bb.bz, label %.loopexit.i.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bv
  %i.gx = add i64 %i.gp, 1                        ; 2 uses
  store i64 %i.gx, ptr %i.cw, align 8, !alias.scope !963, !noalias !790
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.by, %bb.bv, %.loopexit.i.i.i.i.i.i.i
  %.promoted.i79.i.i.i.i.i.i.i = phi i64 [ %i.gp, %bb.bv ], [ %i.gp, %.loopexit.i.i.i.i.i.i.i ], [ %i.gx, %bb.by ] ; 3 uses
  %i.gy = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.gy, label %bb.cc, label %bb.cl

bb.bz:                                            ; preds = %bb.bx, %bb.bw
  %i.gz = add i64 %i.gp, 1                        ; 3 uses
  store i64 %i.gz, ptr %i.cw, align 8, !alias.scope !966, !noalias !790
  %6 = load i64, ptr %i.cz, align 8, !alias.scope !850, !noalias !790, !noundef !3 ; 2 uses
  %i.ha = icmp eq i64 %6, 0
  br i1 %i.ha, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsj34PGqTgg0L_16deltalake_lakefs.exit.i.backedge, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hb = add i64 %6, -1                          ; 3 uses
  store i64 %i.hb, ptr %i.cz, align 8, !alias.scope !850, !noalias !790
  %7 = load i64, ptr %i.cu, align 8, !range !8, !alias.scope !850, !noalias !790, !noundef !3
  %i.hc = icmp ult i64 %i.hb, %7
  call void @llvm.assume(i1 %i.hc)
  %8 = load ptr, ptr %i.dz, align 8, !alias.scope !850, !noalias !790, !nonnull !3, !noundef !3
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 %i.hb
  %i.he = load i8, ptr %i.hd, align 1, !noalias !790, !noundef !3 ; 2 uses
  %i.hf = icmp ult i64 %i.gz, %i.gd
  br i1 %i.hf, label %.lr.ph.i74.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !863
  switch i8 %.sroa.027.2163.i.i.i.i.i.i.i, label %.invoke.i [
    i8 91, label %bb.cn
    i8 123, label %bb.cm
  ]

bb.cc:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.hg = icmp ult i64 %.promoted.i79.i.i.i.i.i.i.i, %i.gd
  br i1 %i.hg, label %.lr.ph.i81.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i

.lr.ph.i81.i.i.i.i.i.i.i:                         ; preds = %bb.cc, %bb.cd
  %i.hh = phi i64 [ %i.hk, %bb.cd ], [ %.promoted.i79.i.i.i.i.i.i.i, %bb.cc ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !972, !noundef !3
  switch i8 %i.hj, label %bb.cf [
    i8 32, label %bb.cd
    i8 10, label %bb.cd
    i8 9, label %bb.cd
    i8 13, label %bb.cd
    i8 34, label %bb.ce
  ], !prof !711

bb.cd:                                            ; preds = %.lr.ph.i81.i.i.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i.i.i
  %i.hk = add i64 %i.hh, 1                        ; 3 uses
  store i64 %i.hk, ptr %i.cw, align 8, !alias.scope !977, !noalias !980
  %exitcond.not.i82.i.i.i.i.i.i.i = icmp eq i64 %i.hk, %i.gd
  br i1 %exitcond.not.i82.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i, label %.lr.ph.i81.i.i.i.i.i.i.i

.loopexit125.i.i.i.i.i.i.i:                       ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !863
  store i64 3, ptr %i.l, align 8, !noalias !863
  %i.hl = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc79.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc79.i:                                       ; preds = %.loopexit125.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !863
  br label %.loopexit115.i

bb.ce:                                            ; preds = %.lr.ph.i81.i.i.i.i.i.i.i
  %i.hm = add i64 %i.hh, 1
  store i64 %i.hm, ptr %i.cw, align 8, !alias.scope !981, !noalias !790
  %i.hn = invoke noundef align 8 ptr @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cv)
          to label %.noexc80.i unwind label %.loopexit.i46, !noalias !790 ; 2 uses

.noexc80.i:                                       ; preds = %bb.ce
  %.not51.i.i.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not51.i.i.i.i.i.i.i, label %bb.cg, label %.loopexit115.i

bb.cf:                                            ; preds = %.lr.ph.i81.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !863
  store i64 17, ptr %i.m, align 8, !noalias !863
  %i.ho = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc81.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc81.i:                                       ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !863
  br label %.loopexit115.i

bb.cg:                                            ; preds = %.noexc80.i
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.hp = load i64, ptr %i.dn, align 8, !alias.scope !987, !noalias !990, !noundef !3 ; 3 uses
  %.promoted.i86.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !alias.scope !993, !noalias !994 ; 2 uses
  %i.hq = icmp ult i64 %.promoted.i86.i.i.i.i.i.i.i, %i.hp
  br i1 %i.hq, label %.lr.ph.i88.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i

.lr.ph.i88.i.i.i.i.i.i.i:                         ; preds = %bb.cg
  %i.hr = load ptr, ptr %i.cv, align 8, !alias.scope !987, !noalias !990, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.lr.ph.i88.i.i.i.i.i.i.i
  %i.hs = phi i64 [ %.promoted.i86.i.i.i.i.i.i.i, %.lr.ph.i88.i.i.i.i.i.i.i ], [ %i.hv, %bb.ci ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !noalias !996, !noundef !3
  switch i8 %i.hu, label %bb.ck [
    i8 32, label %bb.ci
    i8 10, label %bb.ci
    i8 9, label %bb.ci
    i8 13, label %bb.ci
    i8 58, label %bb.cj
  ], !prof !711

bb.ci:                                            ; preds = %bb.ch, %bb.ch, %bb.ch, %bb.ch
  %i.hv = add i64 %i.hs, 1                        ; 3 uses
  store i64 %i.hv, ptr %i.cw, align 8, !alias.scope !997, !noalias !994
  %exitcond.not.i89.i.i.i.i.i.i.i = icmp eq i64 %i.hv, %i.hp
  br i1 %exitcond.not.i89.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i, label %bb.ch

.loopexit124.i.i.i.i.i.i.i:                       ; preds = %bb.cg, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !863
  store i64 3, ptr %i.j, align 8, !noalias !863
  %i.hw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc82.i:                                       ; preds = %.loopexit124.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !863
  br label %.loopexit115.i

bb.cj:                                            ; preds = %bb.ch
  %i.hx = add i64 %i.hs, 1                        ; 2 uses
  store i64 %i.hx, ptr %i.cw, align 8, !alias.scope !1000, !noalias !790
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !863
  store i64 6, ptr %i.k, align 8, !noalias !863
  %i.hy = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc83.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc83.i:                                       ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !863
  br label %.loopexit115.i

bb.cl:                                            ; preds = %bb.cj, %.critedge.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i79.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i ], [ %i.hx, %bb.cj ] ; 2 uses
  %i.hz = phi i64 [ %i.gd, %.critedge.i.i.i.i.i.i.i ], [ %i.hp, %bb.cj ] ; 2 uses
  %i.ia = phi ptr [ %i.gf, %.critedge.i.i.i.i.i.i.i ], [ %i.hr, %bb.cj ]
  %i.ib = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.hz
  br i1 %i.ib, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cb
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cb
  %storemerge52.i.i.i.i.i.i.i = phi i64 [ 8, %bb.cm ], [ 7, %bb.cb ]
  store i64 %storemerge52.i.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !863
  %i.ic = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc85.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc85.i:                                       ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !863
  br label %.loopexit115.i

bb.co:                                            ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess8next_keyNtNvXNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB2c_12LakeFSClient11has_changes01__NtB25_12DiffResponseNtB1a_11Deserialize11deserialize7___FieldEB2e_.exit.i
  %i.id = load i64, ptr %i.x, align 8, !range !10, !noalias !777, !noundef !3
  %.not54.i = icmp eq i64 %i.id, -9223372036854775808
  br i1 %.not54.i, label %bb.cq, label %bb.cp, !prof !118

bb.cp:                                            ; preds = %bb.co
  %i.ie = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7)
          to label %.loopexit115.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.if = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !1009, !noalias !1012, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i86.i = load i64, ptr %i.cw, align 8, !alias.scope !1019, !noalias !1020 ; 2 uses
  %i.ih = icmp ult i64 %.promoted.i.i.i.i86.i, %i.ig
  br i1 %i.ih, label %.lr.ph.i.i.i.i88.i, label %.loopexit.i.i.i87.i

.lr.ph.i.i.i.i88.i:                               ; preds = %bb.cq
  %i.ii = load ptr, ptr %i.cv, align 8, !alias.scope !1009, !noalias !1012, !nonnull !3, !noundef !3
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cs, %.lr.ph.i.i.i.i88.i
  %i.ij = phi i64 [ %.promoted.i.i.i.i86.i, %.lr.ph.i.i.i.i88.i ], [ %i.im, %bb.cs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !noalias !1022, !noundef !3
  switch i8 %i.il, label %bb.ct [
    i8 32, label %bb.cs
    i8 10, label %bb.cs
    i8 9, label %bb.cs
    i8 13, label %bb.cs
    i8 58, label %bb.cu
  ], !prof !711

bb.cs:                                            ; preds = %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.im = add i64 %i.ij, 1                        ; 3 uses
  store i64 %i.im, ptr %i.cw, align 8, !alias.scope !1023, !noalias !1020
  %exitcond.not.i.i.i.i89.i = icmp eq i64 %i.im, %i.ig
  br i1 %exitcond.not.i.i.i.i89.i, label %.loopexit.i.i.i87.i, label %bb.cr

.loopexit.i.i.i87.i:                              ; preds = %bb.cq, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1026
  store i64 3, ptr %i.b, align 8, !noalias !1026
  %i.in = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc90.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc90.i:                                       ; preds = %.loopexit.i.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1026
  br label %.loopexit127.i

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1026
  store i64 6, ptr %i.c, align 8, !noalias !1026
  %i.io = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc91.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !790

.noexc91.i:                                       ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1026
  br label %.loopexit127.i
end_hunk_0
