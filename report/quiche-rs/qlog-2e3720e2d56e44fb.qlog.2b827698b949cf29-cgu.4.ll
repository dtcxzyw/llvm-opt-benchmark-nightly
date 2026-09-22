Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog-2e3720e2d56e44fb.qlog.2b827698b949cf29-cgu.4?download=true
inline.NumInlined: 433
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogs7_1__NtB2v_12VantagePointNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a

bb.ah:                                            ; preds = %bb.ag
  %.not44 = icmp eq ptr %i.dc, null, !dbg !8165
  br i1 %.not44, label %bb.ai, label %bb.aj, !dbg !8171

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(i64 %i.dg, !7593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7834)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !8172
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !8172
    #dbg_value(ptr %.sroa.4.0.copyload, !7593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7834)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !8172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false), !dbg !8172
    #dbg_value(i64 %i.dg, !7591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7716)
    #dbg_value(ptr %.sroa.4.0.copyload, !7591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7716)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread, !dbg !8173

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit: ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !8174
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !8174, !nonnull !594, !align !1416, !noundef !594 ; 2 uses
    #dbg_value(i64 -2, !7591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7716)
    #dbg_value(ptr %i.dj, !7591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7716)
  %.not419 = icmp eq ptr %i.dc, null, !dbg !8173
  br i1 %.not419, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread, label %bb.ao, !dbg !8173

bb.aj:                                            ; preds = %bb.ah
    #dbg_value(ptr %i.dc, !7591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7716)
    #dbg_value(i64 -2, !7591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7716)
    #dbg_value(ptr %i.ac, !1058, !DIExpression(), !7179)
    #dbg_value(ptr %i.ac, !1051, !DIExpression(), !7181)
  %i.dk = icmp eq i64 %i.dg, -1, !dbg !8175
  br i1 %i.dk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread, label %bb.ak, !dbg !8175

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.ac, !1044, !DIExpression(), !7183)
    #dbg_value(ptr %i.ac, !1003, !DIExpression(), !7185)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i49 unwind label %bb.al, !dbg !8176

bb.al:                                            ; preds = %bb.ak
  %i.dl = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ac, !1010, !DIExpression(), !7187)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %common.resume unwind label %bb.am, !dbg !8177

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !8176
  unreachable, !dbg !8176

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i49: ; preds = %bb.ak
    #dbg_value(ptr %i.ac, !1010, !DIExpression(), !7189)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac), !dbg !8178
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread, !dbg !8178

bb.an:                                            ; preds = %bb.cx, %bb.af
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !8179
  unreachable, !dbg !8179

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread: ; preds = %bb.ai, %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i49, %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit
  %.sroa.09.0309 = phi i64 [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit ], [ -2, %bb.ao ], [ -2, %bb.aj ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i49 ], [ %i.dg, %bb.ai ]
  %.sroa.10.0308 = phi ptr [ %i.dj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit ], [ %i.dj, %bb.ao ], [ %i.dc, %bb.aj ], [ %i.dc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i49 ], [ %.sroa.4.0.copyload, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !8173
  br label %bb.ap, !dbg !8173

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr nonnull %i.dc), !dbg !8173
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread, !dbg !8173

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit60.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread
  %.sroa.10.1 = phi ptr [ %.sroa.10.0308, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread ], [ %.sroa.10.2314, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit60.thread ], !dbg !7714 ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0309, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit.thread ], [ %.sroa.09.2315, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog12VantagePointEBD_.exit60.thread ], !dbg !7714 ; 2 uses
    #dbg_value(i64 %.sroa.09.1, !7591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7716)
    #dbg_value(ptr %.sroa.10.1, !7591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7716)
  %i.do = icmp eq i64 %.sroa.09.1, -2, !dbg !8180
  br i1 %i.do, label %bb.dg, label %bb.dh, !dbg !8105, !prof !1429

bb.aq:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !8108
  store i64 24, ptr %i.aa, align 8, !dbg !8108
  %i.dp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !dbg !8109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !8110
  br label %bb.ae, !dbg !8111

bb.ar:                                            ; preds = %bb.f
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7191)
  %i.dq = add i64 %i.al, 1, !dbg !8181
  store i64 %i.dq, ptr %i.af, align 8, !dbg !8181, !alias.scope !7835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %1, ptr %i.p, align 8, !noalias !7836
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 1, ptr %i.dr, align 8, !noalias !7836
    #dbg_declare(ptr poison, !7664, !DIExpression(), !7197)
    #dbg_declare(ptr %i.p, !7637, !DIExpression(), !7197)
    #dbg_declare(ptr %i.o, !7638, !DIExpression(), !7198)
    #dbg_declare(ptr %i.n, !7837, !DIExpression(), !7205)
    #dbg_declare(ptr %i.m, !7843, !DIExpression(), !7216)
    #dbg_declare(ptr %i.l, !7603, !DIExpression(), !7218)
    #dbg_declare(ptr %i.k, !7652, !DIExpression(), !7219)
    #dbg_declare(ptr %i.j, !7843, !DIExpression(), !7221)
    #dbg_declare(ptr poison, !7636, !DIExpression(), !7197)
    #dbg_value(ptr @10, !7864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7225)
    #dbg_value(i64 4, !7864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7225)
    #dbg_value(ptr poison, !7873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7231)
    #dbg_value(i64 16, !7873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7231)
    #dbg_value(ptr poison, !7880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7231)
    #dbg_value(i64 4, !7880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7231)
    #dbg_declare(ptr poison, !7881, !DIExpression(), !7232)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !8182, !noalias !7836
  store i64 -2, ptr %i.o, align 8, !dbg !8182, !noalias !7836
    #dbg_value(i8 -1, !7639, !DIExpression(), !7233)
    #dbg_value(i8 -2, !7640, !DIExpression(), !7234)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.618.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br label %.outer, !dbg !8183

.outer:                                           ; preds = %bb.ce, %bb.ar
  %.sroa.029.0.i.ph = phi i8 [ %i.hj, %bb.ce ], [ -2, %bb.ar ] ; 3 uses
  %.sroa.023.0.i.ph = phi i8 [ %.sroa.023.0.i.ph517, %bb.ce ], [ -1, %bb.ar ]
  br label %.outer516, !dbg !8184

.outer516:                                        ; preds = %.outer, %bb.by
  %.sroa.023.0.i.ph517 = phi i8 [ %.sroa.023.0.i.ph, %.outer ], [ %i.gt, %bb.by ] ; 4 uses
  br label %bb.as, !dbg !8184

bb.as:                                            ; preds = %.backedge, %.outer516
    #dbg_value(i8 %.sroa.023.0.i.ph517, !7639, !DIExpression(), !7233)
    #dbg_value(i8 %.sroa.029.0.i.ph, !7640, !DIExpression(), !7234)
  call void @llvm.experimental.noalias.scope.decl(metadata !7916), !dbg !8185
    #dbg_value(ptr %i.p, !7914, !DIExpression(), !7250)
  call void @llvm.experimental.noalias.scope.decl(metadata !7917), !dbg !8186
    #dbg_value(ptr %i.p, !7903, !DIExpression(), !7253)
    #dbg_declare(ptr poison, !7904, !DIExpression(), !7254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !8184, !noalias !7918
  invoke fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc.i52 unwind label %.loopexit.loopexit.i.loopexit.loopexit, !dbg !8184, !noalias !7919

.noexc.i52:                                       ; preds = %bb.as
  %i.dy = load i8, ptr %i.i, align 8, !dbg !8184, !range !1418, !noalias !7918, !noundef !594
  %i.dz = trunc nuw i8 %i.dy to i1, !dbg !8184
  br i1 %i.dz, label %bb.at, label %bb.au, !dbg !8187

bb.at:                                            ; preds = %.noexc.i52
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !8188
  %i.eb = load ptr, ptr %i.ea, align 8, !dbg !8188, !noalias !7918, !nonnull !594, !align !1416, !noundef !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !8189, !noalias !7918
  br label %.loopexit, !dbg !8190

bb.au:                                            ; preds = %.noexc.i52
  %i.ec = load i8, ptr %i.ds, align 1, !dbg !8191, !range !1418, !noalias !7918, !noundef !594
  %i.ed = trunc nuw i8 %i.ec to i1, !dbg !8191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !8189, !noalias !7918
  br i1 %i.ed, label %bb.av, label %bb.be, !dbg !8187

bb.av:                                            ; preds = %bb.au
  %i.ee = load ptr, ptr %i.p, align 8, !dbg !8192, !alias.scope !7921, !noalias !7922, !nonnull !594, !align !1416, !noundef !594 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7923), !dbg !8193
    #dbg_declare(ptr poison, !7924, !DIExpression(), !7265)
    #dbg_value(ptr %i.ee, !7937, !DIExpression(), !7266)
    #dbg_declare(ptr poison, !7936, !DIExpression(), !7265)
  call void @llvm.experimental.noalias.scope.decl(metadata !7939), !dbg !8194
    #dbg_value(ptr %i.ee, !7940, !DIExpression(), !7271)
  call void @llvm.experimental.noalias.scope.decl(metadata !7944), !dbg !8195
    #dbg_value(ptr %i.ee, !7945, !DIExpression(), !7277)
    #dbg_declare(ptr poison, !7948, !DIExpression(), !7278)
  call void @llvm.experimental.noalias.scope.decl(metadata !7952), !dbg !8196
    #dbg_value(ptr %i.ee, !7953, !DIExpression(), !7287)
    #dbg_declare(ptr poison, !7954, !DIExpression(), !7288)
    #dbg_value(ptr %i.ee, !7960, !DIExpression(), !7291)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24, !dbg !8197 ; 4 uses
    #dbg_value(ptr %i.ef, !993, !DIExpression(), !7293)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 40, !dbg !8198 ; 11 uses
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !8198, !alias.scope !7962, !noalias !7963, !noundef !594
  %i.ei = add i64 %i.eh, 1, !dbg !8198
  store i64 %i.ei, ptr %i.eg, align 8, !dbg !8198, !alias.scope !7962, !noalias !7963
    #dbg_value(ptr %i.ee, !7964, !DIExpression(), !7303)
    #dbg_value(ptr %i.ee, !7967, !DIExpression(), !7306)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !8199
    #dbg_value(ptr poison, !7965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7307)
    #dbg_value(i64 poison, !7965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7307)
  store i64 0, ptr %i.ej, align 8, !dbg !8200, !alias.scope !7969, !noalias !7963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !8201, !noalias !7970
  invoke void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %.noexc131.i unwind label %.loopexit.loopexit.i.loopexit.loopexit, !dbg !8202, !noalias !7919

.noexc131.i:                                      ; preds = %bb.av
  %i.ek = load i64, ptr %i.h, align 8, !dbg !8201, !range !1469, !noalias !7970, !noundef !594 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2, !dbg !8201
  %i.em = load ptr, ptr %i.dt, align 8, !dbg !8203, !noalias !7970 ; 8 uses
  br i1 %i.el, label %bb.bd, label %bb.aw, !dbg !8204

bb.aw:                                            ; preds = %.noexc131.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !8205, !noalias !7970
  %i.en = trunc nuw i64 %i.ek to i1, !dbg !8204
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7972, !DIExpression(), !7324)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7972, !DIExpression(), !7332)
  %i.eo = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 4, !dbg !8206 ; 2 uses
  br i1 %i.en, label %bb.ax, label %bb.ba, !dbg !8204

bb.ax:                                            ; preds = %bb.aw
    #dbg_value(ptr %i.em, !7958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7333)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7333)
    #dbg_declare(ptr poison, !7998, !DIExpression(), !7334)
    #dbg_value(ptr %i.em, !7997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7335)
    #dbg_value(ptr %i.em, !7991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7337)
    #dbg_value(ptr %i.em, !7991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7338)
    #dbg_value(ptr %i.em, !7991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7340)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7335)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7337)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7338)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7340)
    #dbg_declare(ptr poison, !7996, !DIExpression(), !7334)
    #dbg_value(ptr @9, !7992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7337)
    #dbg_value(i64 4, !7992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7337)
    #dbg_value(ptr @10, !7992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7338)
    #dbg_value(i64 4, !7992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7338)
    #dbg_value(ptr @11, !7992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7340)
    #dbg_value(i64 4, !7992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7340)
    #dbg_value(ptr %i.em, !7980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7343)
    #dbg_value(ptr %i.em, !7980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7344)
    #dbg_value(ptr %i.em, !7980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7347)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7343)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7344)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7347)
    #dbg_value(ptr poison, !7987, !DIExpression(), !7348)
    #dbg_value(ptr @9, !7981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7343)
    #dbg_value(i64 4, !7981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7343)
    #dbg_value(ptr poison, !7988, !DIExpression(), !7349)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7982, !DIExpression(), !7350)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7972, !DIExpression(), !7352)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7975, !DIExpression(), !7353)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7983, !DIExpression(), !7354)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7976, !DIExpression(), !7355)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7972, !DIExpression(), !7357)
  br i1 %i.eo, label %bb.ay, label %bb.bi, !dbg !8207

bb.ay:                                            ; preds = %bb.ax
    #dbg_value(ptr %i.em, !7973, !DIExpression(), !7352)
    #dbg_value(ptr @9, !7974, !DIExpression(), !7352)
  %i.ep = load i32, ptr %i.em, align 1, !dbg !8208
  %i.eq = icmp ne i32 %i.ep, 1701667182, !dbg !8208
  %i.er = zext i1 %i.eq to i32, !dbg !8208
  %i.es = icmp eq i32 %i.er, 0, !dbg !8208
  br i1 %i.es, label %bb.bf, label %bb.az, !dbg !8209

bb.az:                                            ; preds = %bb.ay
    #dbg_value(ptr poison, !7987, !DIExpression(), !7358)
    #dbg_value(ptr @10, !7981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7344)
    #dbg_value(i64 4, !7981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7344)
    #dbg_value(ptr poison, !7988, !DIExpression(), !7359)
    #dbg_value(ptr %i.em, !7973, !DIExpression(), !7324)
    #dbg_value(ptr @10, !7974, !DIExpression(), !7324)
  %i.et = load i32, ptr %i.em, align 1, !dbg !8210
  %i.eu = icmp ne i32 %i.et, 1701869940, !dbg !8210
  %i.ev = zext i1 %i.eu to i32, !dbg !8210
  %i.ew = icmp eq i32 %i.ev, 0, !dbg !8210
  br i1 %i.ew, label %bb.bg, label %_RINvXNvXNvCs3JBf551F2Kj_4qlogs7_1__NtB8_12VantagePointNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBS_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEB8_.exit.sink.split.i.i.i.i.i.i.i, !dbg !8211

bb.ba:                                            ; preds = %bb.aw
    #dbg_value(ptr %i.em, !7957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7360)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7360)
    #dbg_declare(ptr poison, !8000, !DIExpression(), !7361)
    #dbg_value(ptr %i.em, !8001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7362)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !8001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7362)
    #dbg_declare(ptr poison, !7998, !DIExpression(), !7363)
    #dbg_value(ptr %i.em, !7997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7364)
    #dbg_value(ptr %i.em, !7991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7365)
    #dbg_value(ptr %i.em, !7991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7367)
    #dbg_value(ptr %i.em, !7991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7369)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7364)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7365)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7367)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7369)
    #dbg_declare(ptr poison, !7996, !DIExpression(), !7363)
    #dbg_value(ptr @9, !7992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7365)
    #dbg_value(i64 4, !7992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7365)
    #dbg_value(ptr @10, !7992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7367)
    #dbg_value(i64 4, !7992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7367)
    #dbg_value(ptr @11, !7992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7369)
    #dbg_value(i64 4, !7992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7369)
    #dbg_value(ptr %i.em, !7980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7370)
    #dbg_value(ptr %i.em, !7980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7373)
    #dbg_value(ptr %i.em, !7980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7376)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7370)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7373)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7376)
    #dbg_value(ptr poison, !7987, !DIExpression(), !7377)
    #dbg_value(ptr @9, !7981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7370)
    #dbg_value(i64 4, !7981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7370)
    #dbg_value(ptr poison, !7988, !DIExpression(), !7378)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7982, !DIExpression(), !7379)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7975, !DIExpression(), !7380)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7983, !DIExpression(), !7381)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7972, !DIExpression(), !7383)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7976, !DIExpression(), !7384)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !7972, !DIExpression(), !7386)
  br i1 %i.eo, label %bb.bb, label %bb.bi, !dbg !8212

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(ptr %i.em, !7973, !DIExpression(), !7332)
    #dbg_value(ptr @9, !7974, !DIExpression(), !7332)
  %i.ex = load i32, ptr %i.em, align 1, !dbg !8213
  %i.ey = icmp ne i32 %i.ex, 1701667182, !dbg !8213
  %i.ez = zext i1 %i.ey to i32, !dbg !8213
  %i.fa = icmp eq i32 %i.ez, 0, !dbg !8213
  br i1 %i.fa, label %bb.bf, label %bb.bc, !dbg !8214

bb.bc:                                            ; preds = %bb.bb
    #dbg_value(ptr poison, !7987, !DIExpression(), !7387)
    #dbg_value(ptr @10, !7981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7373)
    #dbg_value(i64 4, !7981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7373)
    #dbg_value(ptr poison, !7988, !DIExpression(), !7388)
    #dbg_value(ptr %i.em, !7973, !DIExpression(), !7383)
    #dbg_value(ptr @10, !7974, !DIExpression(), !7383)
  %i.fb = load i32, ptr %i.em, align 1, !dbg !8215
  %i.fc = icmp ne i32 %i.fb, 1701869940, !dbg !8215
  %i.fd = zext i1 %i.fc to i32, !dbg !8215
  %i.fe = icmp eq i32 %i.fd, 0, !dbg !8215
  br i1 %i.fe, label %bb.bg, label %_RINvXNvXNvCs3JBf551F2Kj_4qlogs7_1__NtB8_12VantagePointNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBS_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEB8_.exit.sink.split.i.i.i.i.i.i.i, !dbg !8216

_RINvXNvXNvCs3JBf551F2Kj_4qlogs7_1__NtB8_12VantagePointNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBS_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEB8_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.bc, %bb.az
  %i.ff = load i32, ptr %i.em, align 1, !dbg !8206
  %i.fg = icmp ne i32 %i.ff, 2003790950, !dbg !8206
  %i.fh = zext i1 %i.fg to i32, !dbg !8206
  %i.fi = icmp eq i32 %i.fh, 0, !dbg !8206
  br i1 %i.fi, label %bb.bh, label %bb.bi, !dbg !8206

bb.bd:                                            ; preds = %.noexc131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8217, !noalias !7970
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  br label %.loopexit, !dbg !8218

.body152.i:                                       ; preds = %.loopexit.loopexit.i.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.loopexit, %bb.co, %bb.ck, %.body.i, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i
  %.sroa.054.1.i = phi i8 [ %.sroa.054.4.i, %bb.ck ], [ 1, %.body.i ], [ %.sroa.054.4.i, %bb.co ], [ %.sroa.054.2.ph.i, %.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.split-lp.i ], [ 1, %.loopexit.loopexit.i.loopexit.loopexit ], [ 1, %.loopexit.loopexit.i.loopexit.loopexit.split-lp ], [ 1, %.loopexit.loopexit.i.loopexit.split-lp ], !dbg !8182
  %.pn.i = phi { ptr, i32 } [ %i.hk, %bb.ck ], [ %eh.lpad-body.i, %.body.i ], [ %i.hr, %bb.co ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp314.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit518, %.loopexit.loopexit.i.loopexit.loopexit ], [ %lpad.loopexit.split-lp519, %.loopexit.loopexit.i.loopexit.loopexit.split-lp ] ; 2 uses
  %i.fj = load i64, ptr %i.o, align 8, !dbg !8219, !range !1042, !noalias !7836, !noundef !594
  %i.fk = icmp ne i64 %i.fj, -2, !dbg !8219
  %i.fl = trunc nuw i8 %.sroa.054.1.i to i1, !dbg !8219
  %or.cond3.i = select i1 %i.fk, i1 %i.fl, i1 false, !dbg !8219
  br i1 %or.cond3.i, label %bb.cw, label %common.resume, !dbg !8219

.loopexit.loopexit.i.loopexit.loopexit:           ; preds = %bb.bn, %bb.bi, %bb.av, %bb.as
  %lpad.loopexit518 = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

.loopexit.loopexit.i.loopexit.loopexit.split-lp:  ; preds = %bb.bx
  %lpad.loopexit.split-lp519 = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

.loopexit.loopexit.i.loopexit.split-lp:           ; preds = %bb.cd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.cc, %.loopexit.i.i.i145.i, %bb.bw, %.loopexit.i.i.i137.i
  %lpad.loopexit.split-lp314.i = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i53, %bb.bm, %.loopexit.i.i.i.i
  %.sroa.054.2.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 1, %.invoke ], [ %.sroa.054.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i53 ], [ 1, %bb.bm ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body152.i

bb.be:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !8183, !noalias !7836
  %i.fm = load i64, ptr %i.o, align 8, !dbg !8183, !range !1042, !noalias !7836, !noundef !594
  %.not120.i = icmp eq i64 %i.fm, -2, !dbg !8183
  br i1 %.not120.i, label %bb.ch, label %bb.cg, !dbg !8183

bb.bf:                                            ; preds = %bb.bb, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8217, !noalias !7970
    #dbg_value(ptr %i.o, !8009, !DIExpression(), !7391)
  %i.fn = load i64, ptr %i.o, align 8, !dbg !8220, !range !1042, !noalias !7836, !noundef !594
  %.not126.i = icmp eq i64 %i.fn, -2, !dbg !8220
  br i1 %.not126.i, label %bb.bj, label %.invoke, !dbg !8185, !prof !1419

bb.bg:                                            ; preds = %bb.bc, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8217, !noalias !7970
    #dbg_value(ptr undef, !7689, !DIExpression(), !7054)
  %.not125.i = icmp eq i8 %.sroa.023.0.i.ph517, -1, !dbg !8221
  br i1 %.not125.i, label %bb.bt, label %.invoke, !dbg !8185, !prof !1419

bb.bh:                                            ; preds = %_RINvXNvXNvCs3JBf551F2Kj_4qlogs7_1__NtB8_12VantagePointNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBS_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEB8_.exit.sink.split.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8217, !noalias !7970
    #dbg_value(ptr undef, !7682, !DIExpression(), !7051)
  %.not124.i = icmp eq i8 %.sroa.029.0.i.ph, -2, !dbg !8222
  br i1 %.not124.i, label %bb.bz, label %.invoke, !dbg !8185, !prof !1419

bb.bi:                                            ; preds = %_RINvXNvXNvCs3JBf551F2Kj_4qlogs7_1__NtB8_12VantagePointNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBS_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEB8_.exit.sink.split.i.i.i.i.i.i.i, %bb.ba, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8217, !noalias !7970
  %i.fo = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs3JBf551F2Kj_4qlog(ptr nonnull %i.ee)
          to label %bb.cf unwind label %.loopexit.loopexit.i.loopexit.loopexit, !dbg !8185, !noalias !7919 ; 2 uses

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !8223, !noalias !7836
    #dbg_value(ptr poison, !1716, !DIExpression(), !7393)
    #dbg_value(ptr poison, !1722, !DIExpression(), !7395)
    #dbg_declare(ptr poison, !1725, !DIExpression(), !7396)
  call void @llvm.experimental.noalias.scope.decl(metadata !8012), !dbg !8224
    #dbg_value(ptr %i.ee, !1707, !DIExpression(), !7400)
    #dbg_value(ptr %i.ee, !1712, !DIExpression(), !7402)
  call void @llvm.experimental.noalias.scope.decl(metadata !8013), !dbg !8225
    #dbg_value(ptr %i.ee, !957, !DIExpression(), !7406)
    #dbg_value(ptr %i.ee, !976, !DIExpression(), !7408)
    #dbg_value(ptr %i.ee, !979, !DIExpression(), !7410)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !8014, !noalias !8015, !noundef !594 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.eg, align 8, !alias.scope !8016, !noalias !8017 ; 2 uses
  %i.fr = icmp ult i64 %.promoted.i.i.i.i.i, %i.fq, !dbg !8226
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !dbg !8226

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bj
  %i.fs = load ptr, ptr %i.ef, align 8, !alias.scope !8014, !noalias !8015, !nonnull !594, !noundef !594
  br label %bb.bk, !dbg !8226

bb.bk:                                            ; preds = %bb.bl, %.lr.ph.i.i.i.i.i
  %i.ft = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fw, %bb.bl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8018), !dbg !8227
    #dbg_value(ptr %i.ef, !989, !DIExpression(), !7420)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft, !dbg !8228
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !8228, !noalias !8019, !noundef !594
  switch i8 %i.fv, label %bb.bm [
    i8 32, label %bb.bl
    i8 10, label %bb.bl
    i8 9, label %bb.bl
    i8 13, label %bb.bl
    i8 58, label %bb.bn
  ], !dbg !8229, !prof !1428

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bk
    #dbg_value(ptr %i.ee, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7422)
  %i.fw = add i64 %i.ft, 1, !dbg !8230            ; 3 uses
  store i64 %i.fw, ptr %i.eg, align 8, !dbg !8230, !alias.scope !8020, !noalias !8017
    #dbg_value(ptr %i.ee, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7420)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fw, %i.fq, !dbg !8226
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bk, !dbg !8226

.loopexit.i.i.i.i:                                ; preds = %bb.bj, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !8231, !noalias !8021
  store i64 3, ptr %i.f, align 8, !dbg !8231, !noalias !8021
  %i.fx = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc132.i unwind label %.loopexit.split-lp.i, !dbg !8232, !noalias !7919

.noexc132.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8233, !noalias !8021
  br label %.loopexit178.i, !dbg !8234

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !8235, !noalias !8021
  store i64 6, ptr %i.g, align 8, !dbg !8235, !noalias !8021
  %i.fy = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc133.i unwind label %.loopexit.split-lp.i, !dbg !8236, !noalias !7919

.noexc133.i:                                      ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8237, !noalias !8021
  br label %.loopexit178.i, !dbg !8238

bb.bn:                                            ; preds = %bb.bk
    #dbg_value(ptr %i.ee, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7426)
  %i.fz = add i64 %i.ft, 1, !dbg !8239
  store i64 %i.fz, ptr %i.eg, align 8, !dbg !8239, !alias.scope !8022, !noalias !8023
    #dbg_declare(ptr poison, !1571, !DIExpression(), !7430)
    #dbg_value(ptr %i.ee, !1575, !DIExpression(), !7431)
    #dbg_declare(ptr poison, !1574, !DIExpression(), !7430)
  invoke void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2z_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i unwind label %.loopexit.loopexit.i.loopexit.loopexit, !dbg !8240, !noalias !7919

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i: ; preds = %bb.bn
  %.pr.i = load i64, ptr %i.n, align 8, !dbg !8241, !noalias !7836 ; 3 uses
  %i.ga = icmp eq i64 %.pr.i, -2, !dbg !8241
  %.pre305.i = load ptr, ptr %.sroa.457.0..sroa_idx.i, align 8, !dbg !8242, !noalias !7836 ; 3 uses
  br i1 %i.ga, label %.loopexit178.i, label %bb.bo, !dbg !8243

.loopexit178.i:                                   ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i, %.noexc133.i, %.noexc132.i
  %i.gb = phi ptr [ %i.fy, %.noexc133.i ], [ %i.fx, %.noexc132.i ], [ %.pre305.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i ], !dbg !8244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !8223, !noalias !7836
    #dbg_value(ptr %i.gb, !7595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8024)
    #dbg_value(i64 -2, !7595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8024)
  br label %.loopexit, !dbg !8245

bb.bo:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i
  %.sroa.558.0.copyload.i = load i64, ptr %.sroa.558.0..sroa_idx.i, align 8, !dbg !8246, !noalias !7836 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !8223, !noalias !7836
    #dbg_value(ptr %i.o, !1732, !DIExpression(), !7433)
  %i.gc = load i64, ptr %i.o, align 8, !dbg !8247, !range !1042, !alias.scope !8025, !noalias !7836, !noundef !594
  %switch.i.i = icmp ugt i64 %i.gc, -3, !dbg !8247
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit.i, label %bb.bp, !dbg !8247

bb.bp:                                            ; preds = %bb.bo
    #dbg_value(ptr %i.o, !1044, !DIExpression(), !7438)
    #dbg_value(ptr %i.o, !1003, !DIExpression(), !7440)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i unwind label %bb.bq, !dbg !8248, !noalias !7919

bb.bq:                                            ; preds = %bb.bp
  %i.gd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.o, !1010, !DIExpression(), !7442)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.br, !dbg !8249, !noalias !7919

bb.br:                                            ; preds = %bb.bq
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !8248, !noalias !7919
  unreachable, !dbg !8248

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i: ; preds = %bb.bp
    #dbg_value(ptr %i.o, !1010, !DIExpression(), !7444)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit.i unwind label %bb.bs, !dbg !8250, !noalias !7919

bb.bs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !8185

.body.i:                                          ; preds = %bb.bs, %bb.bq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gf, %bb.bs ], [ %i.gd, %bb.bq ]
  store i64 %.pr.i, ptr %i.o, align 8, !dbg !8185, !noalias !7836
  store ptr %.pre305.i, ptr %.sroa.618.0..sroa_idx19.i, align 8, !dbg !8185, !noalias !7836
  store i64 %.sroa.558.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !dbg !8185, !noalias !7836
  br label %.body152.i, !dbg !8185

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECs3JBf551F2Kj_4qlog.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i.i, %bb.bo
  store i64 %.pr.i, ptr %i.o, align 8, !dbg !8185, !noalias !7836
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs3JBf551F2Kj_4qlogsd_1__NtB2v_13ReferenceTimeNtB1l_11Deserialize11deserialize9___VisitorEB2v_:bb.a
bb.ai:                                            ; preds = %bb.ar, %bb.g
  %.sink = phi ptr [ %i.do, %bb.ar ], [ %i.be, %bb.g ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9371
  store ptr %.sink, ptr %i.df, align 8, !dbg !9371
  store i64 -1, ptr %0, align 8, !dbg !9371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !9372
  br label %bb.eg, !dbg !9307

bb.aj:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2z_4read9SliceReadEEBb_.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3JBf551F2Kj_4qlog13ReferenceTimeNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.af) #14
          to label %common.resume unwind label %bb.ao, !dbg !9373

bb.ak:                                            ; preds = %_RINvXs0_NvXNvCs3JBf551F2Kj_4qlogsd_1__NtBb_13ReferenceTimeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2z_4read9SliceReadEEBb_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.af, i64 72, i1 false), !dbg !9368
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 72, !dbg !9368
  store ptr %i.de, ptr %i.dh, align 8, !dbg !9368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !9373
  %i.di = load i64, ptr %i.ag, align 8, !dbg !9368, !range !936, !noundef !594 ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1, !dbg !9368
  br i1 %i.dj, label %bb.am, label %bb.al, !dbg !9374

bb.al:                                            ; preds = %bb.ak
  %.not44 = icmp eq ptr %i.de, null, !dbg !9368
  br i1 %.not44, label %.thread273, label %bb.an, !dbg !9374

.thread273:                                       ; preds = %bb.al
    #dbg_value(i64 %i.di, !8933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9052)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !9375
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9375
    #dbg_value(ptr %.sroa.4.0.copyload, !8933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9052)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !9375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false), !dbg !9375
    #dbg_value(i64 %i.di, !8931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9006)
    #dbg_value(ptr %.sroa.4.0.copyload, !8931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9006)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6), !dbg !9376
    #dbg_value(i64 %i.di, !8931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9006)
    #dbg_value(ptr %.sroa.4.0.copyload, !8931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9006)
  br label %.thread77, !dbg !9376

bb.am:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !9377
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !9377, !nonnull !594, !align !1416, !noundef !594 ; 2 uses
    #dbg_value(ptr %i.dl, !8931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9006)
    #dbg_value(i64 -1, !8931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9006)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6), !dbg !9376
    #dbg_value(i64 %i.di, !8931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9006)
    #dbg_value(ptr %i.dl, !8931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9006)
  %.not92 = icmp eq ptr %i.de, null, !dbg !9376
  br i1 %.not92, label %.thread77, label %bb.ap, !dbg !9376

bb.an:                                            ; preds = %bb.al
    #dbg_value(ptr %i.de, !8931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9006)
    #dbg_value(i64 -1, !8931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9006)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.6), !dbg !9376
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3JBf551F2Kj_4qlog13ReferenceTimeEBD_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ag), !dbg !9376
  br label %.thread77, !dbg !9376

bb.ao:                                            ; preds = %bb.dx, %bb.aj
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !9378
  unreachable, !dbg !9378

.thread77:                                        ; preds = %.thread273, %bb.an, %bb.ap, %bb.am
  %.sroa.09.083 = phi i64 [ -1, %bb.am ], [ -1, %bb.ap ], [ -1, %bb.an ], [ %i.di, %.thread273 ]
  %.sroa.10.082 = phi ptr [ %i.dl, %bb.am ], [ %i.dl, %bb.ap ], [ %i.de, %bb.an ], [ %.sroa.4.0.copyload, %.thread273 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !9376
  br label %bb.aq, !dbg !9376

bb.ap:                                            ; preds = %bb.am
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECs3JBf551F2Kj_4qlog(ptr nonnull %i.de), !dbg !9376
  br label %.thread77, !dbg !9376

bb.aq:                                            ; preds = %.thread84, %.thread77
  %.sroa.10.1 = phi ptr [ %.sroa.10.082, %.thread77 ], [ %.sroa.10.289, %.thread84 ], !dbg !9004 ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.083, %.thread77 ], [ %.sroa.09.290, %.thread84 ], !dbg !9004 ; 2 uses
    #dbg_value(i64 %.sroa.09.1, !8931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9006)
    #dbg_value(ptr %.sroa.10.1, !8931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9006)
  %i.dn = icmp eq i64 %.sroa.09.1, -1, !dbg !9379
  br i1 %i.dn, label %bb.ed, label %bb.ee, !dbg !9301, !prof !1429

bb.ar:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !9304
  store i64 24, ptr %i.ae, align 8, !dbg !9304
  %i.do = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae), !dbg !9305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !9306
  br label %bb.ai, !dbg !9307

bb.as:                                            ; preds = %bb.f
    #dbg_value(ptr %1, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8492)
  %i.dp = add i64 %i.ap, 1, !dbg !9380
  store i64 %i.dp, ptr %i.aj, align 8, !dbg !9380, !alias.scope !9053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %1, ptr %i.s, align 8, !noalias !9054
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %i.dq, align 8, !noalias !9054
    #dbg_declare(ptr poison, !8973, !DIExpression(), !8498)
    #dbg_declare(ptr %i.s, !8947, !DIExpression(), !8498)
    #dbg_declare(ptr %i.r, !8948, !DIExpression(), !8499)
    #dbg_declare(ptr %i.q, !8949, !DIExpression(), !8500)
    #dbg_declare(ptr %i.p, !8950, !DIExpression(), !8501)
    #dbg_declare(ptr %i.o, !9055, !DIExpression(), !8512)
    #dbg_declare(ptr %i.n, !9055, !DIExpression(), !8514)
    #dbg_declare(ptr %i.m, !9067, !DIExpression(), !8521)
    #dbg_declare(ptr %i.l, !8962, !DIExpression(), !8522)
    #dbg_declare(ptr %i.k, !9055, !DIExpression(), !8524)
    #dbg_declare(ptr %i.j, !9055, !DIExpression(), !8526)
    #dbg_declare(ptr poison, !8946, !DIExpression(), !8498)
    #dbg_value(ptr @12, !9075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8531)
    #dbg_value(i64 10, !9075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8531)
    #dbg_declare(ptr poison, !9081, !DIExpression(), !8536)
    #dbg_value(ptr @13, !9075, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8538)
    #dbg_value(i64 5, !9075, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8538)
    #dbg_declare(ptr poison, !9081, !DIExpression(), !8541)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9381, !noalias !9054
  store i64 -1, ptr %i.r, align 8, !dbg !9381, !noalias !9054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9382, !noalias !9054
  store i64 -1, ptr %i.q, align 8, !dbg !9382, !noalias !9054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !9383, !noalias !9054
  store i64 -2, ptr %i.p, align 8, !dbg !9383, !noalias !9054
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.663.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.766.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.4112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.644.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.747.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.626.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br label %bb.at, !dbg !9277

bb.at:                                            ; preds = %.backedge, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !9089), !dbg !9384
    #dbg_value(ptr %i.s, !9090, !DIExpression(), !8550)
  call void @llvm.experimental.noalias.scope.decl(metadata !9105), !dbg !9385
    #dbg_value(ptr %i.s, !9106, !DIExpression(), !8560)
    #dbg_declare(ptr poison, !9109, !DIExpression(), !8561)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9386, !noalias !9117
  invoke fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i52 unwind label %.loopexit.i49, !dbg !9386, !noalias !9118

.noexc.i52:                                       ; preds = %bb.at
  %i.dt = load i8, ptr %i.i, align 8, !dbg !9386, !range !1418, !noalias !9117, !noundef !594
  %i.du = trunc nuw i8 %i.dt to i1, !dbg !9386
  br i1 %i.du, label %bb.au, label %bb.av, !dbg !9387

bb.au:                                            ; preds = %.noexc.i52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !9388
  %i.dw = load ptr, ptr %i.dv, align 8, !dbg !9388, !noalias !9117, !nonnull !594, !align !1416, !noundef !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9389, !noalias !9117
  br label %.loopexit, !dbg !9390

bb.av:                                            ; preds = %.noexc.i52
  %i.dx = load i8, ptr %i.dr, align 1, !dbg !9391, !range !1418, !noalias !9117, !noundef !594
  %i.dy = trunc nuw i8 %i.dx to i1, !dbg !9391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9389, !noalias !9117
  br i1 %i.dy, label %bb.aw, label %bb.bi, !dbg !9387

bb.aw:                                            ; preds = %bb.av
  %i.dz = load ptr, ptr %i.s, align 8, !dbg !9392, !alias.scope !9120, !noalias !9121, !nonnull !594, !align !1416, !noundef !594 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9122), !dbg !9393
    #dbg_declare(ptr poison, !9123, !DIExpression(), !8572)
    #dbg_value(ptr %i.dz, !9136, !DIExpression(), !8573)
    #dbg_declare(ptr poison, !9135, !DIExpression(), !8572)
  call void @llvm.experimental.noalias.scope.decl(metadata !9138), !dbg !9394
    #dbg_value(ptr %i.dz, !9139, !DIExpression(), !8578)
  call void @llvm.experimental.noalias.scope.decl(metadata !9143), !dbg !9395
    #dbg_value(ptr %i.dz, !9144, !DIExpression(), !8584)
    #dbg_declare(ptr poison, !9147, !DIExpression(), !8585)
  call void @llvm.experimental.noalias.scope.decl(metadata !9151), !dbg !9396
    #dbg_value(ptr %i.dz, !9152, !DIExpression(), !8594)
    #dbg_declare(ptr poison, !9153, !DIExpression(), !8595)
    #dbg_value(ptr %i.dz, !9159, !DIExpression(), !8598)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24, !dbg !9397 ; 4 uses
    #dbg_value(ptr %i.ea, !993, !DIExpression(), !8600)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 40, !dbg !9398 ; 11 uses
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !9398, !alias.scope !9161, !noalias !9162, !noundef !594
  %i.ed = add i64 %i.ec, 1, !dbg !9398
  store i64 %i.ed, ptr %i.eb, align 8, !dbg !9398, !alias.scope !9161, !noalias !9162
    #dbg_value(ptr %i.dz, !9163, !DIExpression(), !8610)
    #dbg_value(ptr %i.dz, !9166, !DIExpression(), !8613)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16, !dbg !9399
    #dbg_value(ptr poison, !9164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8614)
    #dbg_value(i64 poison, !9164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8614)
  store i64 0, ptr %i.ee, align 8, !dbg !9400, !alias.scope !9168, !noalias !9162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9401, !noalias !9169
  invoke void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dz)
          to label %.noexc192.i unwind label %.loopexit.i49, !dbg !9402, !noalias !9118

.noexc192.i:                                      ; preds = %bb.aw
  %i.ef = load i64, ptr %i.h, align 8, !dbg !9401, !range !1469, !noalias !9169, !noundef !594 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 2, !dbg !9401
  %i.eh = load ptr, ptr %i.ds, align 8, !dbg !9403, !noalias !9169 ; 15 uses
  br i1 %i.eg, label %bb.bg, label %bb.ax, !dbg !9404

bb.ax:                                            ; preds = %.noexc192.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !9405, !noalias !9169 ; 2 uses
  %i.ei = trunc nuw i64 %i.ef to i1, !dbg !9404
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9171, !DIExpression(), !8631)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9171, !DIExpression(), !8639)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9171, !DIExpression(), !8644)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9171, !DIExpression(), !8649)
  br i1 %i.ei, label %bb.ay, label %bb.bc, !dbg !9404

bb.ay:                                            ; preds = %bb.ax
    #dbg_value(ptr %i.eh, !9157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8650)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8650)
    #dbg_declare(ptr poison, !9197, !DIExpression(), !8651)
    #dbg_value(ptr %i.eh, !9196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8652)
    #dbg_value(ptr %i.eh, !9190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8654)
    #dbg_value(ptr %i.eh, !9190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8655)
    #dbg_value(ptr %i.eh, !9190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8656)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8652)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8654)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8655)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8656)
    #dbg_declare(ptr poison, !9195, !DIExpression(), !8651)
    #dbg_value(ptr @12, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8654)
    #dbg_value(i64 10, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8654)
    #dbg_value(ptr @13, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8655)
    #dbg_value(i64 5, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8655)
    #dbg_value(ptr @14, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8656)
    #dbg_value(i64 15, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8656)
    #dbg_value(ptr %i.eh, !9179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8659)
    #dbg_value(ptr %i.eh, !9179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8660)
    #dbg_value(ptr %i.eh, !9179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8661)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8659)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8660)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8661)
    #dbg_value(ptr poison, !9186, !DIExpression(), !8662)
    #dbg_value(ptr @12, !9180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8659)
    #dbg_value(i64 10, !9180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8659)
    #dbg_value(ptr poison, !9187, !DIExpression(), !8663)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9181, !DIExpression(), !8664)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9171, !DIExpression(), !8666)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9174, !DIExpression(), !8667)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9182, !DIExpression(), !8668)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9175, !DIExpression(), !8669)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9183, !DIExpression(), !8670)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9176, !DIExpression(), !8671)
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bm [
    i64 10, label %bb.az
    i64 5, label %bb.ba
    i64 15, label %bb.bb
  ], !dbg !9406

bb.az:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.eh, !9172, !DIExpression(), !8666)
    #dbg_value(ptr @12, !9173, !DIExpression(), !8666)
  %i.ej = load i64, ptr %i.eh, align 1, !dbg !9407
  %i.ek = xor i64 %i.ej, 8751724890722102371, !dbg !9407
  %i.el = getelementptr i8, ptr %i.eh, i64 8, !dbg !9407
  %i.em = load i16, ptr %i.el, align 1, !dbg !9407
  %i.en = zext i16 %i.em to i64, !dbg !9407
  %i.eo = xor i64 %i.en, 25968, !dbg !9407
  %i.ep = or i64 %i.ek, %i.eo, !dbg !9407
  %i.eq = icmp ne i64 %i.ep, 0, !dbg !9407
  %i.er = zext i1 %i.eq to i32, !dbg !9407
  %i.es = icmp eq i32 %i.er, 0, !dbg !9407
  br i1 %i.es, label %bb.bj, label %bb.bm, !dbg !9408

bb.ba:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.eh, !9172, !DIExpression(), !8631)
    #dbg_value(ptr @13, !9173, !DIExpression(), !8631)
  %i.et = load i32, ptr %i.eh, align 1, !dbg !9409
  %i.eu = xor i32 %i.et, 1668247653, !dbg !9409
  %i.ev = getelementptr i8, ptr %i.eh, i64 4, !dbg !9409
  %i.ew = load i8, ptr %i.ev, align 1, !dbg !9409
  %i.ex = zext i8 %i.ew to i32, !dbg !9409
  %i.ey = xor i32 %i.ex, 104, !dbg !9409
  %i.ez = or i32 %i.eu, %i.ey, !dbg !9409
  %i.fa = icmp ne i32 %i.ez, 0, !dbg !9409
  %i.fb = zext i1 %i.fa to i32, !dbg !9409
  %i.fc = icmp eq i32 %i.fb, 0, !dbg !9409
  br i1 %i.fc, label %bb.bk, label %bb.bm, !dbg !9410

bb.bb:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.eh, !9172, !DIExpression(), !8644)
    #dbg_value(ptr @14, !9173, !DIExpression(), !8644)
  %i.fd = load i64, ptr %i.eh, align 1, !dbg !9411
  %i.fe = xor i64 %i.fd, 8028901497186836855, !dbg !9411
  %i.ff = getelementptr i8, ptr %i.eh, i64 7, !dbg !9411
  %i.fg = load i64, ptr %i.ff, align 1, !dbg !9411
  %i.fh = xor i64 %i.fg, 7308613718830179183, !dbg !9411
  %i.fi = or i64 %i.fe, %i.fh, !dbg !9411
  %i.fj = icmp ne i64 %i.fi, 0, !dbg !9411
  %i.fk = zext i1 %i.fj to i32, !dbg !9411
  %i.fl = icmp eq i32 %i.fk, 0, !dbg !9411
  br i1 %i.fl, label %bb.bl, label %bb.bm, !dbg !9412

bb.bc:                                            ; preds = %bb.ax
    #dbg_value(ptr %i.eh, !9156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8672)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9156, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8672)
    #dbg_declare(ptr poison, !9199, !DIExpression(), !8673)
    #dbg_value(ptr %i.eh, !9200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8674)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8674)
    #dbg_declare(ptr poison, !9197, !DIExpression(), !8675)
    #dbg_value(ptr %i.eh, !9196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8676)
    #dbg_value(ptr %i.eh, !9190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8677)
    #dbg_value(ptr %i.eh, !9190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8678)
    #dbg_value(ptr %i.eh, !9190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8680)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8676)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8677)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8678)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8680)
    #dbg_declare(ptr poison, !9195, !DIExpression(), !8675)
    #dbg_value(ptr @12, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8677)
    #dbg_value(i64 10, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8677)
    #dbg_value(ptr @13, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8678)
    #dbg_value(i64 5, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8678)
    #dbg_value(ptr @14, !9191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8680)
    #dbg_value(i64 15, !9191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8680)
    #dbg_value(ptr %i.eh, !9179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8681)
    #dbg_value(ptr %i.eh, !9179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8682)
    #dbg_value(ptr %i.eh, !9179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8685)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8681)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8682)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8685)
    #dbg_value(ptr poison, !9186, !DIExpression(), !8686)
    #dbg_value(ptr @12, !9180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8681)
    #dbg_value(i64 10, !9180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8681)
    #dbg_value(ptr poison, !9187, !DIExpression(), !8687)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9181, !DIExpression(), !8688)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9174, !DIExpression(), !8689)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9182, !DIExpression(), !8690)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9175, !DIExpression(), !8691)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9183, !DIExpression(), !8692)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9171, !DIExpression(), !8694)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !9176, !DIExpression(), !8695)
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bm [
    i64 10, label %bb.bd
    i64 5, label %bb.be
    i64 15, label %bb.bf
  ], !dbg !9413

bb.bd:                                            ; preds = %bb.bc
    #dbg_value(ptr %i.eh, !9172, !DIExpression(), !8639)
    #dbg_value(ptr @12, !9173, !DIExpression(), !8639)
  %i.fm = load i64, ptr %i.eh, align 1, !dbg !9414
  %i.fn = xor i64 %i.fm, 8751724890722102371, !dbg !9414
  %i.fo = getelementptr i8, ptr %i.eh, i64 8, !dbg !9414
  %i.fp = load i16, ptr %i.fo, align 1, !dbg !9414
  %i.fq = zext i16 %i.fp to i64, !dbg !9414
  %i.fr = xor i64 %i.fq, 25968, !dbg !9414
  %i.fs = or i64 %i.fn, %i.fr, !dbg !9414
  %i.ft = icmp ne i64 %i.fs, 0, !dbg !9414
  %i.fu = zext i1 %i.ft to i32, !dbg !9414
  %i.fv = icmp eq i32 %i.fu, 0, !dbg !9414
  br i1 %i.fv, label %bb.bj, label %bb.bm, !dbg !9415

bb.be:                                            ; preds = %bb.bc
    #dbg_value(ptr %i.eh, !9172, !DIExpression(), !8649)
    #dbg_value(ptr @13, !9173, !DIExpression(), !8649)
  %i.fw = load i32, ptr %i.eh, align 1, !dbg !9416
  %i.fx = xor i32 %i.fw, 1668247653, !dbg !9416
  %i.fy = getelementptr i8, ptr %i.eh, i64 4, !dbg !9416
  %i.fz = load i8, ptr %i.fy, align 1, !dbg !9416
  %i.ga = zext i8 %i.fz to i32, !dbg !9416
  %i.gb = xor i32 %i.ga, 104, !dbg !9416
  %i.gc = or i32 %i.fx, %i.gb, !dbg !9416
  %i.gd = icmp ne i32 %i.gc, 0, !dbg !9416
  %i.ge = zext i1 %i.gd to i32, !dbg !9416
  %i.gf = icmp eq i32 %i.ge, 0, !dbg !9416
  br i1 %i.gf, label %bb.bk, label %bb.bm, !dbg !9417

bb.bf:                                            ; preds = %bb.bc
    #dbg_value(ptr %i.eh, !9172, !DIExpression(), !8694)
    #dbg_value(ptr @14, !9173, !DIExpression(), !8694)
  %i.gg = load i64, ptr %i.eh, align 1, !dbg !9418
  %i.gh = xor i64 %i.gg, 8028901497186836855, !dbg !9418
  %i.gi = getelementptr i8, ptr %i.eh, i64 7, !dbg !9418
  %i.gj = load i64, ptr %i.gi, align 1, !dbg !9418
  %i.gk = xor i64 %i.gj, 7308613718830179183, !dbg !9418
  %i.gl = or i64 %i.gh, %i.gk, !dbg !9418
  %i.gm = icmp ne i64 %i.gl, 0, !dbg !9418
  %i.gn = zext i1 %i.gm to i32, !dbg !9418
  %i.go = icmp eq i32 %i.gn, 0, !dbg !9418
  br i1 %i.go, label %bb.bl, label %bb.bm, !dbg !9419

bb.bg:                                            ; preds = %.noexc192.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9420, !noalias !9169
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  br label %.loopexit, !dbg !9421

bb.bh:                                            ; preds = %bb.db, %.body208.i, %.body.i56, %.loopexit.split-lp.i, %.loopexit.i49
  %.sroa.0106.1.ph.i = phi i8 [ %.sroa.0106.4.i, %bb.db ], [ 1, %.body208.i ], [ 1, %.body.i56 ], [ 1, %.loopexit.i49 ], [ %.sroa.0106.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn.ph.i = phi { ptr, i32 } [ %i.jd, %bb.db ], [ %eh.lpad-body209.i, %.body208.i ], [ %eh.lpad-body.i, %.body.i56 ], [ %lpad.loopexit.i, %.loopexit.i49 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.p, align 8, !dbg !9422, !noalias !9054
  %.not181.i = icmp eq i64 %.pr.i, -2, !dbg !9422
  br i1 %.not181.i, label %.body225.i, label %bb.du, !dbg !9422

.loopexit.i49:                                    ; preds = %bb.cl, %bb.cb, %bb.br, %bb.bm, %bb.aw, %bb.at
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.dd, %bb.ct, %bb.ck, %.loopexit.i.i.i213.i, %bb.ca, %.loopexit.i.i.i198.i, %bb.bq, %.loopexit.i.i.i.i
  %.sroa.0106.2.ph.i = phi i8 [ 1, %bb.ck ], [ 1, %.loopexit.i.i.i213.i ], [ 1, %bb.ct ], [ %.sroa.0106.4.i, %bb.dd ], [ 1, %bb.ca ], [ 1, %.loopexit.i.i.i198.i ], [ 1, %.invoke ], [ 1, %bb.bq ], [ 1, %.loopexit.i.i.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bi:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9277, !noalias !9054
  %i.gp = load i64, ptr %i.r, align 8, !dbg !9277, !range !936, !noalias !9054, !noundef !594
  %.not173.i = icmp eq i64 %i.gp, -1, !dbg !9277
  br i1 %.not173.i, label %bb.ct, label %bb.cs, !dbg !9277

bb.bj:                                            ; preds = %bb.bd, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9420, !noalias !9169
    #dbg_value(ptr %i.r, !9208, !DIExpression(), !8698)
  %i.gq = load i64, ptr %i.r, align 8, !dbg !9423, !range !936, !noalias !9054, !noundef !594
  %.not179.i = icmp eq i64 %i.gq, -1, !dbg !9423
  br i1 %.not179.i, label %bb.bn, label %.invoke, !dbg !9384, !prof !1419

bb.bk:                                            ; preds = %bb.be, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9420, !noalias !9169
    #dbg_value(ptr %i.q, !9208, !DIExpression(), !8700)
  %i.gr = load i64, ptr %i.q, align 8, !dbg !9424, !range !936, !noalias !9054, !noundef !594
  %.not178.i = icmp eq i64 %i.gr, -1, !dbg !9424
  br i1 %.not178.i, label %bb.bx, label %.invoke, !dbg !9384, !prof !1419

bb.bl:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9420, !noalias !9169
    #dbg_value(ptr %i.p, !9212, !DIExpression(), !8703)
  %i.gs = load i64, ptr %i.p, align 8, !dbg !9425, !range !1042, !noalias !9054, !noundef !594
  %.not177.i = icmp eq i64 %i.gs, -2, !dbg !9425
  br i1 %.not177.i, label %bb.ch, label %.invoke, !dbg !9384, !prof !1419

bb.bm:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9420, !noalias !9169
  %i.gt = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECs3JBf551F2Kj_4qlog(ptr nonnull %i.dz)
          to label %bb.cr unwind label %.loopexit.i49, !dbg !9384, !noalias !9118 ; 2 uses

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !9384, !noalias !9054
    #dbg_value(ptr poison, !1693, !DIExpression(), !8705)
    #dbg_value(ptr poison, !1698, !DIExpression(), !8707)
    #dbg_declare(ptr poison, !1701, !DIExpression(), !8708)
  call void @llvm.experimental.noalias.scope.decl(metadata !9215), !dbg !9426
    #dbg_value(ptr %i.dz, !1707, !DIExpression(), !8712)
    #dbg_value(ptr %i.dz, !1712, !DIExpression(), !8714)
  call void @llvm.experimental.noalias.scope.decl(metadata !9216), !dbg !9427
    #dbg_value(ptr %i.dz, !957, !DIExpression(), !8718)
    #dbg_value(ptr %i.dz, !976, !DIExpression(), !8720)
    #dbg_value(ptr %i.dz, !979, !DIExpression(), !8722)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !9217, !noalias !9218, !noundef !594 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !9219, !noalias !9220 ; 2 uses
  %i.gw = icmp ult i64 %.promoted.i.i.i.i.i, %i.gv, !dbg !9428
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !dbg !9428

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bn
  %i.gx = load ptr, ptr %i.ea, align 8, !alias.scope !9217, !noalias !9218, !nonnull !594, !noundef !594
  br label %bb.bo, !dbg !9428

bb.bo:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i.i
  %i.gy = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.hb, %bb.bp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9221), !dbg !9429
    #dbg_value(ptr %i.ea, !989, !DIExpression(), !8732)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gy, !dbg !9430
  %i.ha = load i8, ptr %i.gz, align 1, !dbg !9430, !noalias !9222, !noundef !594
  switch i8 %i.ha, label %bb.bq [
    i8 32, label %bb.bp
    i8 10, label %bb.bp
    i8 9, label %bb.bp
    i8 13, label %bb.bp
    i8 58, label %bb.br
  ], !dbg !9431, !prof !1428

bb.bp:                                            ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bo
    #dbg_value(ptr %i.dz, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8734)
  %i.hb = add i64 %i.gy, 1, !dbg !9432            ; 3 uses
  store i64 %i.hb, ptr %i.eb, align 8, !dbg !9432, !alias.scope !9223, !noalias !9220
    #dbg_value(ptr %i.dz, !989, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8732)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.hb, %i.gv, !dbg !9428
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bo, !dbg !9428

.loopexit.i.i.i.i:                                ; preds = %bb.bn, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9433, !noalias !9224
  store i64 3, ptr %i.f, align 8, !dbg !9433, !noalias !9224
  %i.hc = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc193.i unwind label %.loopexit.split-lp.i, !dbg !9434, !noalias !9118

.noexc193.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9435, !noalias !9224
  br label %.loopexit266.i, !dbg !9436

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9437, !noalias !9224
  store i64 6, ptr %i.g, align 8, !dbg !9437, !noalias !9224
  %i.hd = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc194.i unwind label %.loopexit.split-lp.i, !dbg !9438, !noalias !9118

.noexc194.i:                                      ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9439, !noalias !9224
  br label %.loopexit266.i, !dbg !9440

bb.br:                                            ; preds = %bb.bo
    #dbg_value(ptr %i.dz, !993, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8738)
  %i.he = add i64 %i.gy, 1, !dbg !9441
  store i64 %i.he, ptr %i.eb, align 8, !dbg !9441, !alias.scope !9225, !noalias !9226
    #dbg_declare(ptr poison, !1533, !DIExpression(), !8742)
    #dbg_value(ptr %i.dz, !1538, !DIExpression(), !8743)
    #dbg_declare(ptr poison, !1537, !DIExpression(), !8742)
  invoke void @_RINvXs6_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dz)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i unwind label %.loopexit.i49, !dbg !9442, !noalias !9118

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i: ; preds = %bb.br
  %.pr258.i = load i64, ptr %i.o, align 8, !dbg !9443, !noalias !9054 ; 3 uses
  %i.hf = icmp eq i64 %.pr258.i, -1, !dbg !9443
  %.pre407.i = load ptr, ptr %.sroa.4109.0..sroa_idx.i, align 8, !dbg !9444, !noalias !9054 ; 3 uses
  br i1 %i.hf, label %.loopexit266.i, label %bb.bs, !dbg !9445

.loopexit266.i:                                   ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i, %.noexc194.i, %.noexc193.i
  %i.hg = phi ptr [ %i.hd, %.noexc194.i ], [ %i.hc, %.noexc193.i ], [ %.pre407.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i ], !dbg !9446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9447, !noalias !9054
    #dbg_value(ptr %i.hg, !9227, !DIExpression(), !8754)
    #dbg_value(ptr %i.hg, !8935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9241)
    #dbg_value(i64 -1, !8935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9241)
  br label %.loopexit, !dbg !9448

bb.bs:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i
  %.sroa.5110.0.copyload.i = load i64, ptr %.sroa.5110.0..sroa_idx.i, align 8, !dbg !9449, !noalias !9054 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9447, !noalias !9054
    #dbg_value(ptr %i.r, !1051, !DIExpression(), !8756)
  %i.hh = load i64, ptr %i.r, align 8, !dbg !9450, !range !936, !alias.scope !9242, !noalias !9054, !noundef !594
  %i.hi = icmp eq i64 %i.hh, -1, !dbg !9450
  br i1 %i.hi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i, label %bb.bt, !dbg !9450

bb.bt:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.r, !1044, !DIExpression(), !8760)
    #dbg_value(ptr %i.r, !1003, !DIExpression(), !8762)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i unwind label %bb.bu, !dbg !9451, !noalias !9118

bb.bu:                                            ; preds = %bb.bt
  %i.hj = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.r, !1010, !DIExpression(), !8764)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i56 unwind label %bb.bv, !dbg !9452, !noalias !9118

bb.bv:                                            ; preds = %bb.bu
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !9451, !noalias !9118
  unreachable, !dbg !9451

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i: ; preds = %bb.bt
    #dbg_value(ptr %i.r, !1010, !DIExpression(), !8766)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i unwind label %bb.bw, !dbg !9453, !noalias !9118

bb.bw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i56, !dbg !9384

.body.i56:                                        ; preds = %bb.bw, %bb.bu
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hl, %bb.bw ], [ %i.hj, %bb.bu ]
  store i64 %.pr258.i, ptr %i.r, align 8, !dbg !9384, !noalias !9054
  store ptr %.pre407.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !dbg !9384, !noalias !9054
  store i64 %.sroa.5110.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !dbg !9384, !noalias !9054
  br label %bb.bh, !dbg !9384

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3JBf551F2Kj_4qlog.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3JBf551F2Kj_4qlog.exit.i.i, %bb.bs
  store i64 %.pr258.i, ptr %i.r, align 8, !dbg !9384, !noalias !9054
  store ptr %.pre407.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !dbg !9384, !noalias !9054
  store i64 %.sroa.5110.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !dbg !9384, !noalias !9054
  br label %.backedge, !dbg !9384

bb.bx:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9384, !noalias !9054
    #dbg_value(ptr poison, !1693, !DIExpression(), !8768)
    #dbg_value(ptr poison, !1698, !DIExpression(), !8770)
    #dbg_declare(ptr poison, !1701, !DIExpression(), !8771)
  call void @llvm.experimental.noalias.scope.decl(metadata !9243), !dbg !9454
    #dbg_value(ptr %i.dz, !1707, !DIExpression(), !8775)
    #dbg_value(ptr %i.dz, !1712, !DIExpression(), !8777)
  call void @llvm.experimental.noalias.scope.decl(metadata !9244), !dbg !9455
    #dbg_value(ptr %i.dz, !957, !DIExpression(), !8781)
end_hunk_1
