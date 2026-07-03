inline.NumInlined: 699
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtB2t_21AzureCliTokenResponseNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  %i.jz = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc137.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc137.i:                                      ; preds = %.loopexit247.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !859
  br label %.loopexit234.i

bb.cj:                                            ; preds = %bb.ca
  %i.ka = add i64 %i.ji, 1                        ; 4 uses
  store i64 %i.ka, ptr %i.bi, align 8, !alias.scope !860, !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %umax.i57.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ka, i64 %i.jh) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %exitcond.not.i59.not.i.i.i.i.i.i.i = icmp ult i64 %i.ka, %i.jh
  br i1 %exitcond.not.i59.not.i.i.i.i.i.i.i, label %bb.ck, label %.loopexit238.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !872, !noundef !3
  %i.kd = add i64 %i.ji, 2                        ; 3 uses
  store i64 %i.kd, ptr %i.bi, align 8, !alias.scope !876, !noalias !877
  %.not.i60.i.i.i.i.i.i.i = icmp eq i8 %i.kc, 114
  br i1 %.not.i60.i.i.i.i.i.i.i, label %bb.cl, label %.loopexit239.i.i.i.i.i.i.i, !prof !846

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %exitcond.not.i59.1.i.i.i.i.i.i.i = icmp eq i64 %i.kd, %umax.i57.i.i.i.i.i.i.i
  br i1 %exitcond.not.i59.1.i.i.i.i.i.i.i, label %.loopexit238.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !noalias !882, !noundef !3
  %i.kg = add i64 %i.ji, 3                        ; 3 uses
  store i64 %i.kg, ptr %i.bi, align 8, !alias.scope !883, !noalias !877
  %.not.i60.1.i.i.i.i.i.i.i = icmp eq i8 %i.kf, 117
  br i1 %.not.i60.1.i.i.i.i.i.i.i, label %bb.cn, label %.loopexit239.i.i.i.i.i.i.i, !prof !846

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %exitcond.not.i59.2.i.i.i.i.i.i.i = icmp eq i64 %i.kg, %umax.i57.i.i.i.i.i.i.i
  br i1 %exitcond.not.i59.2.i.i.i.i.i.i.i, label %.loopexit238.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !noalias !888, !noundef !3
  %i.kj = add i64 %i.ji, 4
  store i64 %i.kj, ptr %i.bi, align 8, !alias.scope !889, !noalias !877
  %.not.i60.2.i.i.i.i.i.i.i = icmp eq i8 %i.ki, 101
  br i1 %.not.i60.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !846

.loopexit238.i.i.i.i.i.i.i:                       ; preds = %bb.cn, %bb.cl, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !890
  store i64 5, ptr %i.n, align 8, !noalias !890
  %i.kk = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc138.i:                                      ; preds = %.loopexit238.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !890
  br label %.loopexit234.i

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.co, %bb.cm, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !890
  store i64 9, ptr %i.m, align 8, !noalias !890
  %i.kl = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc139.i:                                      ; preds = %.loopexit239.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !890
  br label %.loopexit234.i

bb.cp:                                            ; preds = %bb.ca
  %i.km = add i64 %i.ji, 1                        ; 4 uses
  store i64 %i.km, ptr %i.bi, align 8, !alias.scope !891, !noalias !729
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.km, i64 %i.jh) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.km, %i.jh
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.cq, label %.loopexit230.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !noalias !903, !noundef !3
  %i.kp = add i64 %i.ji, 2                        ; 3 uses
  store i64 %i.kp, ptr %i.bi, align 8, !alias.scope !907, !noalias !908
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.ko, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.cr, label %.loopexit231.i.i.i.i.i.i.i, !prof !846

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.kp, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %.loopexit230.i.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !noalias !913, !noundef !3
  %i.ks = add i64 %i.ji, 3                        ; 3 uses
  store i64 %i.ks, ptr %i.bi, align 8, !alias.scope !914, !noalias !908
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.kr, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.ct, label %.loopexit231.i.i.i.i.i.i.i, !prof !846

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.ks, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %.loopexit230.i.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !noalias !919, !noundef !3
  %i.kv = add i64 %i.ji, 4                        ; 3 uses
  store i64 %i.kv, ptr %i.bi, align 8, !alias.scope !920, !noalias !908
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.ku, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.cv, label %.loopexit231.i.i.i.i.i.i.i, !prof !846

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.kv, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %.loopexit230.i.i.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !noalias !925, !noundef !3
  %i.ky = add i64 %i.ji, 5
  store i64 %i.ky, ptr %i.bi, align 8, !alias.scope !926, !noalias !908
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.kx, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, label %.loopexit231.i.i.i.i.i.i.i, !prof !846

.loopexit230.i.i.i.i.i.i.i:                       ; preds = %bb.cv, %bb.ct, %bb.cr, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !927
  store i64 5, ptr %i.l, align 8, !noalias !927
  %i.kz = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc140.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc140.i:                                      ; preds = %.loopexit230.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !927
  br label %.loopexit234.i

.loopexit231.i.i.i.i.i.i.i:                       ; preds = %bb.cw, %bb.cu, %bb.cs, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !927
  store i64 9, ptr %i.k, align 8, !noalias !927
  %i.la = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc141.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc141.i:                                      ; preds = %.loopexit231.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !927
  br label %.loopexit234.i

bb.cx:                                            ; preds = %bb.ca
  %i.lb = add i64 %i.ji, 1
  store i64 %i.lb, ptr %i.bi, align 8, !alias.scope !928, !noalias !729
  %i.lc = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc142.i unwind label %.loopexit.i50, !noalias !729 ; 2 uses

.noexc142.i:                                      ; preds = %bb.cx
  %.not46.i.i.i.i.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not46.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, label %.loopexit234.i

bb.cy:                                            ; preds = %bb.ca
  %i.ld = add i64 %i.ji, 1
  store i64 %i.ld, ptr %i.bi, align 8, !alias.scope !931, !noalias !729
  %i.le = invoke noundef align 8 ptr @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %.noexc143.i unwind label %.loopexit.i50, !noalias !729 ; 2 uses

.noexc143.i:                                      ; preds = %bb.cy
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, label %.loopexit234.i

bb.cz:                                            ; preds = %bb.ca, %bb.ca
  invoke void @_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterhEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %.sroa.039.0175.i.i.i.i.i.i.i, i8 %.sroa.7.0176.i.i.i.i.i.i.i)
          to label %.noexc144.i unwind label %.loopexit.i50, !noalias !729

.noexc144.i:                                      ; preds = %bb.cz
  %i.lf = load i64, ptr %i.bi, align 8, !alias.scope !934, !noalias !729, !noundef !3
  %i.lg = add i64 %i.lf, 1
  store i64 %i.lg, ptr %i.bi, align 8, !alias.scope !934, !noalias !729
  br label %bb.db

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i: ; preds = %.noexc146.i, %.noexc143.i, %.noexc142.i, %bb.cw, %bb.co, %bb.ci
  br i1 %.sroa.039.0175.i.i.i.i.i.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i
  %i.lh = load i64, ptr %i.fj, align 8, !alias.scope !811, !noalias !729, !noundef !3 ; 2 uses
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.de

bb.db:                                            ; preds = %bb.de, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %.noexc144.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.jk, %.noexc144.i ], [ %i.lt, %bb.de ], [ %.sroa.7.0176.i.i.i.i.i.i.i, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc144.i ], [ true, %bb.de ], [ true, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ]
  %i.lj = load i64, ptr %i.bj, align 8, !alias.scope !937, !noalias !944, !noundef !3 ; 6 uses
  %.promoted.i72162.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !948, !noalias !950 ; 2 uses
  %i.lk = icmp ult i64 %.promoted.i72162.i.i.i.i.i.i.i, %i.lj
  br i1 %i.lk, label %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i74.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.db
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !811, !noalias !729
  %i.ll = load ptr, ptr %i.bm, align 8, !alias.scope !937, !noalias !944, !nonnull !3, !noundef !3 ; 3 uses
  %6 = load i64, ptr %1, align 8, !range !162, !alias.scope !811, !noalias !729
  %7 = load ptr, ptr %i.fl, align 8, !alias.scope !811, !noalias !729, !nonnull !3
  br label %.lr.ph.i74.i.i.i.i.i.i.i

bb.dc:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !827
  store i64 10, ptr %i.w, align 8, !noalias !827
  %i.lm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc145.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc145.i:                                      ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !827
  br label %.loopexit234.i

bb.dd:                                            ; preds = %bb.cc
  %i.ln = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc146.i unwind label %.loopexit.i50, !noalias !729 ; 2 uses

.noexc146.i:                                      ; preds = %bb.dd
  %.not50.i.i.i.i.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not50.i.i.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, label %.loopexit234.i

bb.de:                                            ; preds = %bb.da
  %i.lo = add i64 %i.lh, -1                       ; 3 uses
  store i64 %i.lo, ptr %i.fj, align 8, !alias.scope !811, !noalias !729
  %i.lp = load i64, ptr %1, align 8, !range !162, !alias.scope !811, !noalias !729, !noundef !3
  %i.lq = icmp ult i64 %i.lo, %i.lp
  call void @llvm.assume(i1 %i.lq)
  %i.lr = load ptr, ptr %i.fl, align 8, !alias.scope !811, !noalias !729, !nonnull !3, !noundef !3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lo
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !729, !noundef !3
  br label %bb.db

.lr.ph.i74.i.i.i.i.i.i.i:                         ; preds = %bb.do, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i
  %i.lu = phi i64 [ %.promoted.i72162.i.i.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i ], [ %i.me, %bb.do ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.do ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i ], [ %i.mj, %bb.do ] ; 6 uses
  %8 = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i.i.i ], [ %i.mg, %bb.do ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %.lr.ph.i74.i.i.i.i.i.i.i
  %i.lv = phi i64 [ %i.lu, %.lr.ph.i74.i.i.i.i.i.i.i ], [ %i.ly, %bb.dg ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !954, !noundef !3
  switch i8 %i.lx, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.dg
    i8 10, label %bb.dg
    i8 9, label %bb.dg
    i8 13, label %bb.dg
    i8 44, label %bb.dj
    i8 93, label %bb.dk
    i8 125, label %bb.dl
  ]

bb.dg:                                            ; preds = %bb.df, %bb.df, %bb.df, %bb.df
  %i.ly = add i64 %i.lv, 1                        ; 3 uses
  store i64 %i.ly, ptr %i.bi, align 8, !alias.scope !955, !noalias !950
  %exitcond.not.i75.i.i.i.i.i.i.i = icmp eq i64 %i.ly, %i.lj
  br i1 %exitcond.not.i75.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.df

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.db, %bb.do, %bb.dg
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.mj, %bb.do ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.dg ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.db ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !827
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %.invoke.i51 [
    i8 91, label %bb.di
    i8 123, label %bb.dh
  ]

bb.dh:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.dh ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !827
  %i.lz = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc148.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc148.i:                                      ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !827
  br label %.loopexit234.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.dl, %bb.dk, %bb.df
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.dp, label %.critedge.i.i.i.i.i.i.i, !prof !4

bb.dj:                                            ; preds = %bb.df
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.dm, label %.critedge.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.df
  %i.ma = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 91
  br i1 %i.ma, label %bb.dn, label %.loopexit.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.df
  %i.mb = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.mb, label %bb.dn, label %.loopexit.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dj
  %i.mc = add i64 %i.lv, 1                        ; 2 uses
  store i64 %i.mc, ptr %i.bi, align 8, !alias.scope !958, !noalias !729
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.dm, %bb.dj, %.loopexit.i.i.i.i.i.i.i
  %.promoted.i79.i.i.i.i.i.i.i = phi i64 [ %i.lv, %bb.dj ], [ %i.lv, %.loopexit.i.i.i.i.i.i.i ], [ %i.mc, %bb.dm ] ; 3 uses
  %i.md = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
  br i1 %i.md, label %bb.dq, label %bb.dz

bb.dn:                                            ; preds = %bb.dl, %bb.dk
  %i.me = add i64 %i.lv, 1                        ; 3 uses
  store i64 %i.me, ptr %i.bi, align 8, !alias.scope !961, !noalias !729
  %i.mf = icmp eq i64 %8, 0
  br i1 %i.mf, label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mg = add i64 %8, -1                          ; 4 uses
  store i64 %i.mg, ptr %i.fj, align 8, !alias.scope !811, !noalias !729
  %i.mh = icmp ult i64 %i.mg, %6
  call void @llvm.assume(i1 %i.mh)
  %i.mi = getelementptr inbounds nuw i8, ptr %7, i64 %i.mg
  %i.mj = load i8, ptr %i.mi, align 1, !noalias !729, !noundef !3 ; 2 uses
  %i.mk = icmp ult i64 %i.me, %i.lj
  br i1 %i.mk, label %.lr.ph.i74.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !827
  switch i8 %.sroa.027.2163.i.i.i.i.i.i.i, label %.invoke.i51 [
    i8 91, label %bb.eb
    i8 123, label %bb.ea
  ]

bb.dq:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.ml = icmp ult i64 %.promoted.i79.i.i.i.i.i.i.i, %i.lj
  br i1 %i.ml, label %.lr.ph.i81.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i

.lr.ph.i81.i.i.i.i.i.i.i:                         ; preds = %bb.dq, %bb.dr
  %i.mm = phi i64 [ %i.mp, %bb.dr ], [ %.promoted.i79.i.i.i.i.i.i.i, %bb.dq ] ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !noalias !967, !noundef !3
  switch i8 %i.mo, label %bb.dt [
    i8 32, label %bb.dr
    i8 10, label %bb.dr
    i8 9, label %bb.dr
    i8 13, label %bb.dr
    i8 34, label %bb.ds
  ], !prof !791

bb.dr:                                            ; preds = %.lr.ph.i81.i.i.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i.i.i
  %i.mp = add i64 %i.mm, 1                        ; 3 uses
  store i64 %i.mp, ptr %i.bi, align 8, !alias.scope !975, !noalias !978
  %exitcond.not.i82.i.i.i.i.i.i.i = icmp eq i64 %i.mp, %i.lj
  br i1 %exitcond.not.i82.i.i.i.i.i.i.i, label %.loopexit125.i.i.i.i.i.i.i, label %.lr.ph.i81.i.i.i.i.i.i.i

.loopexit125.i.i.i.i.i.i.i:                       ; preds = %bb.dq, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !827
  store i64 3, ptr %i.s, align 8, !noalias !827
  %i.mq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %.noexc149.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc149.i:                                      ; preds = %.loopexit125.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !827
  br label %.loopexit234.i

bb.ds:                                            ; preds = %.lr.ph.i81.i.i.i.i.i.i.i
  %i.mr = add i64 %i.mm, 1
  store i64 %i.mr, ptr %i.bi, align 8, !alias.scope !979, !noalias !729
  %i.ms = invoke noundef align 8 ptr @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %.noexc150.i unwind label %.loopexit.i50, !noalias !729 ; 2 uses

.noexc150.i:                                      ; preds = %bb.ds
  %.not51.i.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not51.i.i.i.i.i.i.i, label %bb.du, label %.loopexit234.i

bb.dt:                                            ; preds = %.lr.ph.i81.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !827
  store i64 17, ptr %i.t, align 8, !noalias !827
  %i.mt = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc151.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc151.i:                                      ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !827
  br label %.loopexit234.i

bb.du:                                            ; preds = %.noexc150.i
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.mu = load i64, ptr %i.bj, align 8, !alias.scope !985, !noalias !990, !noundef !3 ; 3 uses
  %.promoted.i86.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !994, !noalias !995 ; 2 uses
  %i.mv = icmp ult i64 %.promoted.i86.i.i.i.i.i.i.i, %i.mu
  br i1 %i.mv, label %.lr.ph.i88.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i

.lr.ph.i88.i.i.i.i.i.i.i:                         ; preds = %bb.du
  %i.mw = load ptr, ptr %i.bm, align 8, !alias.scope !985, !noalias !990, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dw, %.lr.ph.i88.i.i.i.i.i.i.i
  %i.mx = phi i64 [ %.promoted.i86.i.i.i.i.i.i.i, %.lr.ph.i88.i.i.i.i.i.i.i ], [ %i.na, %bb.dw ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !noalias !998, !noundef !3
  switch i8 %i.mz, label %bb.dy [
    i8 32, label %bb.dw
    i8 10, label %bb.dw
    i8 9, label %bb.dw
    i8 13, label %bb.dw
    i8 58, label %bb.dx
  ], !prof !791

bb.dw:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.na = add i64 %i.mx, 1                        ; 3 uses
  store i64 %i.na, ptr %i.bi, align 8, !alias.scope !999, !noalias !995
  %exitcond.not.i89.i.i.i.i.i.i.i = icmp eq i64 %i.na, %i.mu
  br i1 %exitcond.not.i89.i.i.i.i.i.i.i, label %.loopexit124.i.i.i.i.i.i.i, label %bb.dv

.loopexit124.i.i.i.i.i.i.i:                       ; preds = %bb.du, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !827
  store i64 3, ptr %i.q, align 8, !noalias !827
  %i.nb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc152.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc152.i:                                      ; preds = %.loopexit124.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !827
  br label %.loopexit234.i

bb.dx:                                            ; preds = %bb.dv
  %i.nc = add i64 %i.mx, 1                        ; 2 uses
  store i64 %i.nc, ptr %i.bi, align 8, !alias.scope !1002, !noalias !729
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !827
  store i64 6, ptr %i.r, align 8, !noalias !827
  %i.nd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %.noexc153.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc153.i:                                      ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !827
  br label %.loopexit234.i

bb.dz:                                            ; preds = %bb.dx, %.critedge.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i79.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i ], [ %i.nc, %bb.dx ] ; 2 uses
  %i.ne = phi i64 [ %i.lj, %.critedge.i.i.i.i.i.i.i ], [ %i.mu, %bb.dx ] ; 2 uses
  %i.nf = phi ptr [ %i.ll, %.critedge.i.i.i.i.i.i.i ], [ %i.mw, %bb.dx ]
  %i.ng = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.ne
  br i1 %i.ng, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.invoke.i51:                                      ; preds = %bb.dp, %.loopexit123.i.i.i.i.i.i.i
  %i.nh = phi ptr [ @29, %.loopexit123.i.i.i.i.i.i.i ], [ @30, %bb.dp ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nh) #31
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.cont.i:                                          ; preds = %.invoke.i51
  unreachable

bb.ea:                                            ; preds = %bb.dp
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dp
  %storemerge52.i.i.i.i.i.i.i = phi i64 [ 8, %bb.ea ], [ 7, %bb.dp ]
  store i64 %storemerge52.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !827
  %i.ni = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc155.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc155.i:                                      ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !827
  br label %.loopexit234.i

bb.ec:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !698
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.nj = load i64, ptr %i.bj, align 8, !alias.scope !1011, !noalias !1016, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i156.i = load i64, ptr %i.bi, align 8, !alias.scope !1024, !noalias !1025 ; 2 uses
  %i.nk = icmp ult i64 %.promoted.i.i.i.i156.i, %i.nj
  br i1 %i.nk, label %.lr.ph.i.i.i.i158.i, label %.loopexit.i.i.i157.i

.lr.ph.i.i.i.i158.i:                              ; preds = %bb.ec
  %i.nl = load ptr, ptr %i.bm, align 8, !alias.scope !1011, !noalias !1016, !nonnull !3, !noundef !3
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ee, %.lr.ph.i.i.i.i158.i
  %i.nm = phi i64 [ %.promoted.i.i.i.i156.i, %.lr.ph.i.i.i.i158.i ], [ %i.np, %bb.ee ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !noalias !1028, !noundef !3
  switch i8 %i.no, label %bb.ef [
    i8 32, label %bb.ee
    i8 10, label %bb.ee
    i8 9, label %bb.ee
    i8 13, label %bb.ee
    i8 58, label %bb.eg
  ], !prof !791

bb.ee:                                            ; preds = %bb.ed, %bb.ed, %bb.ed, %bb.ed
  %i.np = add i64 %i.nm, 1                        ; 3 uses
  store i64 %i.np, ptr %i.bi, align 8, !alias.scope !1029, !noalias !1025
  %exitcond.not.i.i.i.i159.i = icmp eq i64 %i.np, %i.nj
  br i1 %exitcond.not.i.i.i.i159.i, label %.loopexit.i.i.i157.i, label %bb.ed

.loopexit.i.i.i157.i:                             ; preds = %bb.ec, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1032
  store i64 3, ptr %i.i, align 8, !noalias !1032
  %i.nq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc160.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc160.i:                                      ; preds = %.loopexit.i.i.i157.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1032
  br label %.loopexit250.i

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1032
  store i64 6, ptr %i.j, align 8, !noalias !1032
  %i.nr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc161.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !729

.noexc161.i:                                      ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1032
  br label %.loopexit250.i
end_hunk_0
begin_hunk_1_@_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1805, !noundef !3
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !1806, !noalias !1802
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit247.i.i.i.i.i, !prof !846

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  %exitcond.not.i54.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i54.2.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1809, !noundef !3
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !1810, !noalias !1802
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %.loopexit247.i.i.i.i.i, !prof !846

.loopexit246.i.i.i.i.i:                           ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1811
  store i64 5, ptr %i.f, align 8, !noalias !1811
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1811
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.loopexit247.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1811
  store i64 9, ptr %i.e, align 8, !noalias !1811
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1811
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !1813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %umax.i57.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %exitcond.not.i59.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i59.not.i.i.i.i.i, label %bb.p, label %.loopexit238.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1822, !noundef !3
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !1825, !noalias !1826
  %.not.i60.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i60.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !846

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %exitcond.not.i59.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i57.i.i.i.i.i
  br i1 %exitcond.not.i59.1.i.i.i.i.i, label %.loopexit238.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1829, !noundef !3
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !1830, !noalias !1826
  %.not.i60.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i60.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !846

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %exitcond.not.i59.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i57.i.i.i.i.i
  br i1 %exitcond.not.i59.2.i.i.i.i.i, label %.loopexit238.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1833, !noundef !3
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !1834, !noalias !1826
  %.not.i60.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i60.2.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !846

.loopexit238.i.i.i.i.i:                           ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1835
  store i64 5, ptr %i.d, align 8, !noalias !1835
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1835
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1835
  store i64 9, ptr %i.c, align 8, !noalias !1835
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1835
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !1837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %.loopexit230.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1846, !noundef !3
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !1849, !noalias !1850
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit231.i.i.i.i.i, !prof !846

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %.loopexit230.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1853, !noundef !3
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !1854, !noalias !1850
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit231.i.i.i.i.i, !prof !846

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %.loopexit230.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !1857, !noundef !3
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !1858, !noalias !1850
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit231.i.i.i.i.i, !prof !846

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %.loopexit230.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !1861, !noundef !3
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !1862, !noalias !1850
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %.loopexit231.i.i.i.i.i, !prof !846

.loopexit230.i.i.i.i.i:                           ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1863
  store i64 5, ptr %i.b, align 8, !noalias !1863
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1863
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.loopexit231.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1863
  store i64 9, ptr %i.a, align 8, !noalias !1863
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1863
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !1865
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %.0.val) ; 2 uses
  %.not46.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not46.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !1868
  %i.ce = tail call noundef align 8 ptr @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterhEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %.0.val, i1 noundef zeroext %.sroa.039.0175.i.i.i.i.i, i8 %.sroa.7.0176.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !1871, !noundef !3
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !1871
  br label %bb.ag

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0175.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !1776, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.ct, %bb.aj ], [ %.sroa.7.0176.i.i.i.i.i, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !1874, !noalias !1879, !noundef !3 ; 6 uses
  %.promoted.i72162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1882, !noalias !1884 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i72162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i74.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i74.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !1776
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !1874, !noalias !1879, !nonnull !3, !noundef !3 ; 3 uses
  %0 = load i64, ptr %.0.val, align 8, !range !162, !alias.scope !1776
  %1 = load ptr, ptr %i.af, align 8, !alias.scope !1776, !nonnull !3
  br label %.lr.ph.i74.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1776
  store i64 10, ptr %i.m, align 8, !noalias !1776
  %i.cm = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1776
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ai:                                            ; preds = %bb.h
  %i.cn = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %.0.val) ; 2 uses
  %.not50.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not50.i.i.i.i.i, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aj:                                            ; preds = %bb.af
  %i.co = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.co, ptr %i.ad, align 8, !alias.scope !1776
  %i.cp = load i64, ptr %.0.val, align 8, !range !162, !alias.scope !1776, !noundef !3
  %i.cq = icmp ult i64 %i.co, %i.cp
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = load ptr, ptr %i.af, align 8, !alias.scope !1776, !nonnull !3, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !3
  br label %bb.ag

.lr.ph.i74.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i74.lr.ph.i.i.i.i.i
  %i.cu = phi i64 [ %.promoted.i72162.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i ], [ %i.de, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i ], [ %i.dj, %bb.au ] ; 6 uses
  %2 = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i74.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i74.i.i.i.i.i
  %i.cv = phi i64 [ %i.cu, %.lr.ph.i74.i.i.i.i.i ], [ %i.cy, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !1887, !noundef !3
  switch i8 %i.cx, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.cy = add i64 %i.cv, 1                        ; 3 uses
  store i64 %i.cy, ptr %i.q, align 8, !alias.scope !1888, !noalias !1884
  %exitcond.not.i75.i.i.i.i.i = icmp eq i64 %i.cy, %i.cj
  br i1 %exitcond.not.i75.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dj, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1776
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !1776
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1776
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !4

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.da = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.da, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.db = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.db, label %bb.at, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.dc = add i64 %i.cv, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.q, align 8, !alias.scope !1891
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.as, %bb.ap, %.loopexit.i.i.i.i.i
  %.promoted.i79.i.i.i.i.i = phi i64 [ %i.cv, %bb.ap ], [ %i.cv, %.loopexit.i.i.i.i.i ], [ %i.dc, %bb.as ] ; 3 uses
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.dd, label %bb.aw, label %bb.bf

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.de = add i64 %i.cv, 1                        ; 3 uses
  store i64 %i.de, ptr %i.q, align 8, !alias.scope !1894
  %i.df = icmp eq i64 %2, 0
  br i1 %i.df, label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dg = add i64 %2, -1                          ; 4 uses
  store i64 %i.dg, ptr %i.ad, align 8, !alias.scope !1776
  %i.dh = icmp ult i64 %i.dg, %0
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.dj = load i8, ptr %i.di, align 1, !noundef !3 ; 2 uses
  %i.dk = icmp ult i64 %i.de, %i.cj
  br i1 %i.dk, label %.lr.ph.i74.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1776
  switch i8 %.sroa.027.2163.i.i.i.i.i, label %bb.bg [
    i8 91, label %bb.bi
    i8 123, label %bb.bh
  ]

bb.aw:                                            ; preds = %.critedge.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.dl = icmp ult i64 %.promoted.i79.i.i.i.i.i, %i.cj
  br i1 %i.dl, label %.lr.ph.i81.i.i.i.i.i, label %.loopexit125.i.i.i.i.i

.lr.ph.i81.i.i.i.i.i:                             ; preds = %bb.aw, %bb.ax
  %i.dm = phi i64 [ %i.dp, %bb.ax ], [ %.promoted.i79.i.i.i.i.i, %bb.aw ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !1900, !noundef !3
  switch i8 %i.do, label %bb.az [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 34, label %bb.ay
  ], !prof !791

bb.ax:                                            ; preds = %.lr.ph.i81.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i, %.lr.ph.i81.i.i.i.i.i
  %i.dp = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dp, ptr %i.q, align 8, !alias.scope !1905, !noalias !1908
  %exitcond.not.i82.i.i.i.i.i = icmp eq i64 %i.dp, %i.cj
  br i1 %exitcond.not.i82.i.i.i.i.i, label %.loopexit125.i.i.i.i.i, label %.lr.ph.i81.i.i.i.i.i

.loopexit125.i.i.i.i.i:                           ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1776
  store i64 3, ptr %i.i, align 8, !noalias !1776
  %i.dq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1776
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ay:                                            ; preds = %.lr.ph.i81.i.i.i.i.i
  %i.dr = add i64 %i.dm, 1
  store i64 %i.dr, ptr %i.q, align 8, !alias.scope !1909
  %i.ds = tail call noundef align 8 ptr @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u) ; 2 uses
  %.not51.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not51.i.i.i.i.i, label %bb.ba, label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.az:                                            ; preds = %.lr.ph.i81.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1776
  store i64 17, ptr %i.j, align 8, !noalias !1776
  %i.dt = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1776
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ba:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.du = load i64, ptr %i.r, align 8, !alias.scope !1915, !noalias !1918, !noundef !3 ; 3 uses
  %.promoted.i86.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1921, !noalias !1922 ; 2 uses
  %i.dv = icmp ult i64 %.promoted.i86.i.i.i.i.i, %i.du
  br i1 %i.dv, label %.lr.ph.i88.i.i.i.i.i, label %.loopexit124.i.i.i.i.i

.lr.ph.i88.i.i.i.i.i:                             ; preds = %bb.ba
  %i.dw = load ptr, ptr %i.u, align 8, !alias.scope !1915, !noalias !1918, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i88.i.i.i.i.i
  %i.dx = phi i64 [ %.promoted.i86.i.i.i.i.i, %.lr.ph.i88.i.i.i.i.i ], [ %i.ea, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !1924, !noundef !3
  switch i8 %i.dz, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 58, label %bb.bd
  ], !prof !791

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.ea = add i64 %i.dx, 1                        ; 3 uses
  store i64 %i.ea, ptr %i.q, align 8, !alias.scope !1925, !noalias !1922
  %exitcond.not.i89.i.i.i.i.i = icmp eq i64 %i.ea, %i.du
  br i1 %exitcond.not.i89.i.i.i.i.i, label %.loopexit124.i.i.i.i.i, label %bb.bb

.loopexit124.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1776
  store i64 3, ptr %i.g, align 8, !noalias !1776
  %i.eb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1776
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ec = add i64 %i.dx, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.q, align 8, !alias.scope !1928
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1776
  store i64 6, ptr %i.h, align 8, !noalias !1776
  %i.ed = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1776
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bf:                                            ; preds = %bb.bd, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i79.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ec, %bb.bd ] ; 2 uses
  %i.ee = phi i64 [ %i.cj, %.critedge.i.i.i.i.i ], [ %i.du, %bb.bd ] ; 2 uses
  %i.ef = phi ptr [ %i.cl, %.critedge.i.i.i.i.i ], [ %i.dw, %bb.bd ]
  %i.eg = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.ee
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

bb.bg:                                            ; preds = %bb.av
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #31
  unreachable

bb.bh:                                            ; preds = %bb.av
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.av
  %storemerge52.i.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 7, %bb.av ]
  store i64 %storemerge52.i.i.i.i.i, ptr %i.l, align 8, !noalias !1776
  %i.eh = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1776
  br label %_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess15next_value_seedINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ai, %bb.ay, %bb.at, %.loopexit.i.i, %bb.d, %.loopexit130.i.i.i.i.i, %.loopexit246.i.i.i.i.i, %.loopexit247.i.i.i.i.i, %.loopexit238.i.i.i.i.i, %.loopexit239.i.i.i.i.i, %.loopexit230.i.i.i.i.i, %.loopexit231.i.i.i.i.i, %bb.ah, %bb.ao, %.loopexit125.i.i.i.i.i, %bb.az, %.loopexit124.i.i.i.i.i, %bb.be, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.at ], [ %i.ca, %.loopexit231.i.i.i.i.i ], [ %i.am, %.loopexit130.i.i.i.i.i ], [ %i.eh, %bb.bi ], [ %i.ay, %.loopexit246.i.i.i.i.i ], [ %i.eb, %.loopexit124.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.dq, %.loopexit125.i.i.i.i.i ], [ %i.cz, %bb.ao ], [ %i.bl, %.loopexit239.i.i.i.i.i ], [ %i.az, %.loopexit247.i.i.i.i.i ], [ %i.ed, %bb.be ], [ %i.cm, %bb.ah ], [ %i.bz, %.loopexit230.i.i.i.i.i ], [ %i.bk, %.loopexit238.i.i.i.i.i ], [ %i.dt, %bb.az ], [ %i.aa, %.loopexit.i.i ], [ %i.cc, %bb.ac ], [ %i.cn, %bb.ai ], [ %i.ds, %bb.ay ], [ %i.ce, %bb.ad ], [ null, %bb.af ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCs6sYutav3ODB_5serde7private2de7content14ContentVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1939, !noalias !1942, !noundef !3 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !1945, !noalias !1946 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1939, !noalias !1942, !nonnull !3, !noundef !3 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !1948, !noundef !3 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !1949, !noalias !1946
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1952
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.m
    i8 102, label %bb.u
    i8 45, label %bb.ae
    i8 34, label %bb.af
    i8 91, label %bb.ag
    i8 123, label %bb.ah
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1952
  store i64 5, ptr %i.r, align 8, !noalias !1952
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !1931
end_hunk_1
