Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.11?download=true
inline.NumInlined: 716
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtNtCs6MoqnCnVQOT_10serde_json5value2de11visit_arrayNtNvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBZ_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize9___VisitorEB11_:bb.a

bb.aq:                                            ; preds = %bb.an
  %i.di = load i64, ptr %i.t, align 8, !range !23, !noalias !368, !noundef !7 ; 3 uses
  %i.dj = icmp eq i64 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.dj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !368
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.dm = load i64, ptr %i.dk, align 8, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !368
  %.not170.i = icmp eq i64 %i.di, 2
  br i1 %.not170.i, label %bb.au, label %bb.at, !prof !11

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionyEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.s, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.aw unwind label %bb.ad, !noalias !331

bb.au:                                            ; preds = %bb.as
  %i.dn = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 10, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.av unwind label %bb.ad, !noalias !368

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.sink345.i = phi ptr [ %i.dl, %bb.ar ], [ %i.dn, %bb.au ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink345.i, ptr %i.do, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.cf

bb.aw:                                            ; preds = %bb.at
  %i.dp = load i64, ptr %i.s, align 8, !range !23, !noalias !368, !noundef !7 ; 3 uses
  %i.dq = icmp eq i64 %i.dp, -1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.dq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !368
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.dr, align 8, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !368
  %.not171.i = icmp eq i64 %i.dp, 2
  br i1 %.not171.i, label %bb.ba, label %bb.az, !prof !11

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bc unwind label %bb.ad, !noalias !331

bb.ba:                                            ; preds = %bb.ay
  %i.du = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 11, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.bb unwind label %bb.ad, !noalias !368

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.sink347.i = phi ptr [ %i.ds, %bb.ax ], [ %i.du, %bb.ba ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink347.i, ptr %i.dv, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.cf

bb.bc:                                            ; preds = %bb.az
  %i.dw = load i64, ptr %i.q, align 8, !range !380, !noalias !368, !noundef !7 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, -3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !368 ; 2 uses
  br i1 %i.dx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !368
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %.sroa.5161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5161.0.copyload.i = load i64, ptr %.sroa.5161.0..sroa_idx.i, align 8, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !368
  %.not172.i = icmp eq i64 %i.dw, -2
  br i1 %.not172.i, label %bb.bg, label %bb.bf, !prof !11

bb.bf:                                            ; preds = %bb.be
  store i64 %i.dw, ptr %i.r, align 8, !noalias !368
  %.sroa.497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.dz, ptr %.sroa.497.0..sroa_idx.i, align 8, !noalias !368
  %.sroa.598.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.5161.0.copyload.i, ptr %.sroa.598.0..sroa_idx.i, align 8, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bj unwind label %bb.bi, !noalias !331

bb.bg:                                            ; preds = %bb.be
  %i.ea = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 12, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.bh unwind label %bb.ad, !noalias !368

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %.sink349.i = phi ptr [ %i.dz, %bb.bd ], [ %i.ea, %bb.bg ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink349.i, ptr %i.eb, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.cd

bb.bi:                                            ; preds = %bb.bx, %bb.by, %.invoke.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.thread, %bb.bt, %bb.bp, %bb.bl, %bb.bf
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #24
          to label %bb.ac unwind label %bb.ce, !noalias !368

bb.bj:                                            ; preds = %bb.bf
  %i.ed = load i8, ptr %i.p, align 8, !range !9, !noalias !368, !noundef !7
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !368
  br label %bb.cc

bb.bl:                                            ; preds = %bb.bj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !range !6, !noalias !368, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !368
  %.not173.i = icmp eq i8 %i.ei, 2
  %..i = select i1 %.not173.i, i8 0, i8 %i.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionbEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.o, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bm unwind label %bb.bi, !noalias !331

bb.bm:                                            ; preds = %bb.bl
  %i.ej = load i8, ptr %i.o, align 8, !range !9, !noalias !368, !noundef !7
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.el = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !368
  br label %bb.cc

bb.bo:                                            ; preds = %bb.bm
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !381, !noalias !368, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !368
  %.not174.i = icmp eq i8 %i.eo, -1
  br i1 %.not174.i, label %.invoke.i, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionbEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.n, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bq unwind label %bb.bi, !noalias !331

bb.bq:                                            ; preds = %bb.bp
  %i.ep = load i8, ptr %i.n, align 8, !range !9, !noalias !368, !noundef !7
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !368
  br label %bb.cc

bb.bs:                                            ; preds = %bb.bq
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !range !381, !noalias !368, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !368
  %.not175.i = icmp eq i8 %i.eu, -1
  br i1 %.not175.i, label %.invoke.i, label %bb.bt, !prof !11

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementbECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bu unwind label %bb.bi, !noalias !331

bb.bu:                                            ; preds = %bb.bt
  %i.ev = load i8, ptr %i.m, align 8, !range !9, !noalias !368, !noundef !7
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !368
  br label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !range !6, !noalias !368, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !368
  %.not176.i = icmp eq i8 %i.fa, 2
  %.183.i = select i1 %.not176.i, i8 0, i8 %i.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !382), !noalias !331
  call void @llvm.experimental.noalias.scope.decl(metadata !383), !noalias !331
  call void @llvm.experimental.noalias.scope.decl(metadata !384), !noalias !331
  %i.fb = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !385, !noalias !386, !nonnull !7, !noundef !7 ; 2 uses
  %i.fc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !385, !noalias !386, !nonnull !7, !noundef !7 ; 4 uses
  %i.fd = icmp eq ptr %i.fc, %i.fb
  br i1 %i.fd, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i22

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i22: ; preds = %bb.bw
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 32 ; 2 uses
  store ptr %i.fe, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !385, !noalias !386
  %.sroa.0.0.copyload3.i.i.i23 = load i8, ptr %i.fc, align 8, !noalias !387 ; 2 uses
  %.not.i.i.i24 = icmp eq i8 %.sroa.0.0.copyload3.i.i.i23, -1
  br i1 %.not.i.i.i24, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread, label %bb.bx

bb.bx:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i22
  %.sroa.7.0..sroa_idx4.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !388
  store i8 %.sroa.0.0.copyload3.i.i.i23, ptr %i.a, align 8, !noalias !388
  %.sroa.7.0..sroa_idx.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i26, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx4.i.i.i25, i64 31, i1 false), !noalias !388
  %i.ff = invoke { i64, ptr } @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_u64NtNvXs17_NtBW_5implsyNtBW_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31 unwind label %bb.bi ; 2 uses

_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31: ; preds = %bb.bx
  %i.fg = extractvalue { i64, ptr } %i.ff, 0
  %i.fh = extractvalue { i64, ptr } %i.ff, 1      ; 2 uses
  %spec.select.i.i.i27 = add i64 %i.fg, 1         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  %i.fi = icmp eq i64 %spec.select.i.i.i27, 2
  br i1 %i.fi, label %bb.cc, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31._RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread_crit_edge

_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31._RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread_crit_edge: ; preds = %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31
  %.sink7.i.i.i28 = ptrtoint ptr %i.fh to i64
  %.pre = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !389, !noalias !390
  %.pre44 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !389, !noalias !390
  %i.fj = trunc nuw i64 %spec.select.i.i.i27 to i1
  %i.fk = select i1 %i.fj, i64 %.sink7.i.i.i28, i64 0
  br label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread

_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread: ; preds = %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31._RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread_crit_edge, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i22
  %2 = phi ptr [ %.pre44, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31._RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread_crit_edge ], [ %i.fe, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i22 ] ; 4 uses
  %3 = phi ptr [ %.pre, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31._RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread_crit_edge ], [ %i.fb, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i22 ]
  %.sroa.032.039 = phi i64 [ %i.fk, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31._RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread_crit_edge ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i22 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !391), !noalias !331
  call void @llvm.experimental.noalias.scope.decl(metadata !392), !noalias !331
  call void @llvm.experimental.noalias.scope.decl(metadata !393), !noalias !331
  %i.fl = icmp eq ptr %2, %3
  br i1 %i.fl, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fm, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !389, !noalias !390
  %.sroa.0.0.copyload3.i.i.i = load i8, ptr %2, align 8, !noalias !394 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.copyload3.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.thread, label %bb.by

bb.by:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %.sroa.7.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !395
  store i8 %.sroa.0.0.copyload3.i.i.i, ptr %i.b, align 8, !noalias !395
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx4.i.i.i, i64 31, i1 false), !noalias !395
  %i.fn = invoke { i64, ptr } @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_u64NtNvXs17_NtBW_5implsyNtBW_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.bi ; 2 uses

_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.by
  %i.fo = extractvalue { i64, ptr } %i.fn, 0
  %i.fp = extractvalue { i64, ptr } %i.fn, 1      ; 2 uses
  %spec.select.i.i.i = add i64 %i.fo, 1           ; 2 uses
  %.sink7.i.i.i = ptrtoint ptr %i.fp to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !395
  %i.fq = icmp eq i64 %spec.select.i.i.i, 2
  br i1 %i.fq, label %bb.cc, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.thread

_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.thread: ; preds = %bb.bw, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.032.03966 = phi i64 [ %.sroa.032.039, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.032.039, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ %.sroa.032.039, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread ], [ 0, %bb.bw ]
  %.sroa.034.043 = phi i64 [ %spec.select.i.i.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ 0, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread ], [ 0, %bb.bw ]
  %.sroa.635.042 = phi i64 [ %.sink7.i.i.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit ], [ undef, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ undef, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31.thread ], [ undef, %bb.bw ]
  %i.fr = trunc nuw i64 %.sroa.034.043 to i1
  %.185.i = select i1 %i.fr, i64 %.sroa.635.042, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionbEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bz unwind label %bb.bi, !noalias !331

bb.bz:                                            ; preds = %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.thread
  %i.fs = load i8, ptr %i.l, align 8, !range !9, !noalias !368, !noundef !7
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !368
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !range !381, !noalias !368, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !368
  %.not177.i = icmp eq i8 %i.fx, -1
  br i1 %.not177.i, label %.invoke.i, label %bb.ck, !prof !11

.invoke.i:                                        ; preds = %bb.cb, %bb.bs, %bb.bo
  %i.fy = phi i64 [ 15, %bb.bs ], [ 14, %bb.bo ], [ 19, %bb.cb ]
  %i.fz = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef %i.fy, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.cc unwind label %bb.bi, !noalias !368

bb.cc:                                            ; preds = %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31, %.invoke.i, %bb.ca, %bb.bv, %bb.br, %bb.bn, %bb.bk
  %.sink351.sink.i = phi ptr [ %i.eg, %bb.bk ], [ %i.ey, %bb.bv ], [ %i.fh, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit31 ], [ %i.fz, %.invoke.i ], [ %i.es, %bb.br ], [ %i.fv, %bb.ca ], [ %i.em, %bb.bn ], [ %i.fp, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit ]
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink351.sink.i, ptr %i.ga, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.cd unwind label %bb.ad, !noalias !368

bb.cd:                                            ; preds = %bb.cc, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !368
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bi, %bb.ac, %bb.u, %bb.m
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !368
  unreachable

bb.cf:                                            ; preds = %bb.cd, %bb.bb, %bb.av, %bb.ap, %bb.aj
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.cg unwind label %bb.v, !noalias !368

bb.cg:                                            ; preds = %bb.cf, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !368
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z)
          to label %bb.ch unwind label %bb.n, !noalias !368

bb.ch:                                            ; preds = %bb.cg, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !368
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa)
          to label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread65 unwind label %bb.ci

_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread65: ; preds = %.noexc18, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !368
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread

.body:                                            ; preds = %bb.ci, %bb.m, %bb.cj
  %.pn = phi { ptr, i32 } [ %i.gd, %bb.cj ], [ %i.gc, %bb.ci ], [ %.pn181.i, %bb.m ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.cn

bb.ci:                                            ; preds = %bb.ch, %bb.l, %bb.j, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i, %.noexc.i.i.i.i.i.i.i, %.thread276.i, %bb.f, %.thread269.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit231.i, %.thread262.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit222.i, %.thread.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit213.i, %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.cm
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cj:                                            ; preds = %bb.cl
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6status12StatusResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.ab) #24
          to label %.body unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cb
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !332
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !332
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !332
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !332
  store i64 %i.cu, ptr %0, align 8, !alias.scope !331, !noalias !332
  %.sroa.4144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cy, ptr %.sroa.4144.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.db, ptr %.sroa.5145.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.6146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.df, ptr %.sroa.6146.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.7147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.di, ptr %.sroa.7147.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.8148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.dm, ptr %.sroa.8148.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dp, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.dt, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sink7.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sink7.i.i.i211.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sink7.i.i.i220.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sink7.i.i.i229.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.032.03966, ptr %.sroa.19.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.185.i, ptr %.sroa.20.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 %i.bt, ptr %.sroa.21.0..sroa_idx.i, align 8, !alias.scope !331, !noalias !332
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 %..i, ptr %.sroa.22.0..sroa_idx.i, align 1, !alias.scope !331, !noalias !332
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 210
  store i8 %.183.i, ptr %.sroa.23.0..sroa_idx.i, align 2, !alias.scope !331, !noalias !332
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 211
  store i8 %i.eo, ptr %.sroa.24.0..sroa_idx.i, align 1, !alias.scope !331, !noalias !332
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 %i.eu, ptr %.sroa.25.0..sroa_idx.i, align 4, !alias.scope !331, !noalias !332
  %.sroa.26149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 213
  store i8 %i.fx, ptr %.sroa.26149.0..sroa_idx.i, align 1, !alias.scope !331, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ab, ptr noundef nonnull align 8 dereferenceable(216) %0, i64 216, i1 false)
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %.val6 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.ge = icmp eq ptr %.val6, %.val
  br i1 %i.ge, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread, label %bb.cl, !prof !20

bb.cl:                                            ; preds = %bb.ck
  %i.gf = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef %i.ae, ptr noundef nonnull @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.cm unwind label %bb.cj

bb.cm:                                            ; preds = %bb.cl
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gf, ptr %i.gg, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6status12StatusResultEBF_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.ab)
          to label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread unwind label %bb.ci

_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread: ; preds = %bb.ck, %bb.cm, %.noexc17, %.noexc14, %.noexc12, %.noexc10, %.noexc8, %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.cn:                                            ; preds = %.body, %bb.cj
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtNtNtNtCs5Xr050g3D4S_3std2io5stdio10StdoutLockECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @28, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs5Xr050g3D4S_3std2io5stdio10StdoutLockEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #24
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noundef !7 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, !prof !11

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i
    i64 1, label %bb.h
  ], !prof !16

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !398
  store i8 3, ptr %i.a, align 8, !alias.scope !398
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  %.sroa.01.0.ph = phi i64 [ %i.az, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamENtNtB9_8buf_read7BufRead8fill_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.i = load ptr, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.k = ptrtoint ptr %.val to i64                ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split28
    i64 0, label %.split29
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.h, !inline_history !0

.split28:                                         ; preds = %.lr.ph
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.j, label %bb.i

.split29:                                         ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !24, !noundef !7
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread, label %bb.i

end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsbNLsQi0JuJ4_5tgrep:bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.bu = sub i64 0, %3                           ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double
  %i.bx = fneg double %i.bw
  %i.by = bitcast double %i.bx to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2178, !noalias !2179, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2178, !noalias !2179, !noundef !7 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2178, !noalias !2179, !nonnull !7, !noundef !7 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !2180, !noundef !7 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !2178, !noalias !2179
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !26

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !2181, !noundef !7
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !2182, !noundef !7
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !31

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !2183
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30.thread, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053) #21
  %i.ap = load i64, ptr %i.b, align 8, !range !8, !noundef !7
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.ar, align 8, !nonnull !7, !align !22, !noundef !7
  store ptr %i.at, ptr %i.as, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.au = load double, ptr %i.ar, align 8, !noundef !7
  store double %i.au, ptr %i.as, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ -1, %bb.n ], [ 0, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2275, !noalias !2276, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2275, !noalias !2276, !noundef !7 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2275, !noalias !2276, !nonnull !7, !noundef !7 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !2277, !noundef !7 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 6 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2275, !noalias !2276
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, !prof !27

.preheader:                                       ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !2278, !noundef !7
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, !prof !27

bb.d:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %1 = phi i64 [ %i.o, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.aa, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43 ] ; 5 uses
  %i.y = icmp ult i64 %1, %i.i
  br i1 %i.y, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43: ; preds = %.preheader, %bb.e
  %i.aa = phi i64 [ %i.af, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !2279, !noundef !7
  %i.ad = add i8 %i.ac, -48
  %i.ae = icmp ult i8 %i.ad, 10
  br i1 %i.ae, label %bb.e, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43
  %i.af = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !2280
  %exitcond.not = icmp eq i64 %i.af, %i.i
  br i1 %exitcond.not, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit43

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !2281, !noundef !7
  switch i8 %i.ah, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %storemerge.peel.i = add nuw i64 %1, 1          ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !2282
  %i.ai = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.ai, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, label %.thread.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i: ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2283, !noundef !7
  %i.al = add i8 %i.ak, -48
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i
  %i.an = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.an
  br i1 %exitcond80.not107, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

.peel.next.i:                                     ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.an
  br i1 %exitcond80.not, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i, !llvm.loop !2218

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !2285, !noundef !7 ; 2 uses
  %i.aq = add i8 %i.ap, -48
  %i.ar = icmp ult i8 %i.aq, 10
  br i1 %i.ar, label %.peel.next.i, label %.loopexit.i, !llvm.loop !2218

.loopexit.i:                                      ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !2282
  switch i8 %i.ap, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.peel.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2282
  store i64 13, ptr %i.c, align 8, !noalias !2282
  %i.as = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2282
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  %i.at = add nuw i64 %storemerge.in.i108, 2      ; 4 uses
  store i64 %i.at, ptr %i.f, align 8, !alias.scope !2287
  %i.au = icmp ult i64 %i.at, %i.i
  br i1 %i.au, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i: ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2288, !noundef !7
  switch i8 %i.aw, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i: ; preds = %bb.h, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i
  %2 = phi i64 [ %i.at, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i ], [ %i.ay, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  %i.ax = icmp ult i64 %2, %i.i
  br i1 %i.ax, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i

bb.h:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i.i
  %i.ay = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ay, ptr %i.f, align 8, !alias.scope !2291
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  %i.ba = load i8, ptr %i.az, align 1, !noalias !2292, !noundef !7
  %i.bb = add nuw i64 %2, 1                       ; 3 uses
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !2293, !noalias !2294
  %i.bc = add i8 %i.ba, -48
  %i.bd = icmp ult i8 %i.bc, 10
  br i1 %i.bd, label %.preheader.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, !prof !27

.preheader.i.i:                                   ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %i.be = icmp ult i64 %i.bb, %i.i
  br i1 %i.be, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2295
  store i64 13, ptr %i.b, align 8, !noalias !2295
  %i.bf = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2295
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i: ; preds = %.preheader.i.i, %bb.i
  %i.bg = phi i64 [ %i.bl, %bb.i ], [ %i.bb, %.preheader.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2296, !noundef !7
  %i.bj = add i8 %i.bi, -48
  %i.bk = icmp ult i8 %i.bj, 10
  br i1 %i.bk, label %bb.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.i:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i
  %i.bl = add i64 %i.bg, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.f, align 8, !alias.scope !2297
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.i
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i

bb.j:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.bm = add nuw i64 %1, 1                       ; 4 uses
  store i64 %i.bm, ptr %i.f, align 8, !alias.scope !2299
  %i.bn = icmp ult i64 %i.bm, %i.i
  br i1 %i.bn, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45: ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !2300, !noundef !7
  switch i8 %i.bp, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i: ; preds = %bb.k, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45
  %3 = phi i64 [ %i.bm, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45 ], [ %i.br, %bb.k ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  %i.bq = icmp ult i64 %3, %i.i
  br i1 %i.bq, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i

bb.k:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i45
  %i.br = add nuw i64 %1, 2                       ; 2 uses
  store i64 %i.br, ptr %i.f, align 8, !alias.scope !2303
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 %3
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !2304, !noundef !7
  %i.bu = add nuw i64 %3, 1                       ; 3 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !2305, !noalias !2306
  %i.bv = add i8 %i.bt, -48
  %i.bw = icmp ult i8 %i.bv, 10
  br i1 %i.bw, label %.preheader.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, !prof !27

.preheader.i:                                     ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %i.bx = icmp ult i64 %i.bu, %i.i
  br i1 %i.bx, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i: ; preds = %bb.j, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2298
  store i64 13, ptr %i.a, align 8, !noalias !2298
  %i.by = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2298
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i: ; preds = %.preheader.i, %bb.l
  %i.bz = phi i64 [ %i.ce, %bb.l ], [ %i.bu, %.preheader.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !2307, !noundef !7
  %i.cc = add i8 %i.cb, -48
  %i.cd = icmp ult i8 %i.cc, 10
  br i1 %i.cd, label %bb.l, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

bb.l:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i
  %i.ce = add i64 %i.bz, 1                        ; 3 uses
  store i64 %i.ce, ptr %i.f, align 8, !alias.scope !2308
  %exitcond.not.i = icmp eq i64 %i.ce, %i.i
  br i1 %exitcond.not.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2282
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.l, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i, %bb.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i, %bb.c, %.preheader, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit40 ], [ %i.z, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread ], [ null, %.preheader ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_decimalCsbNLsQi0JuJ4_5tgrep.exit.loopexit73 ], [ %i.as, %.thread.thread.i ], [ %i.bf, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ], [ %i.by, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.l ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i.i ], [ null, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit26.i ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2334, !noundef !7 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 4 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !2334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2337, !noalias !2338, !noundef !7 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %bb.d

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !2337, !noalias !2338, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !2339, !noundef !7
  switch i8 %i.n, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %5 = phi i64 [ %i.h, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %i.o, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit ], [ %.sroa.0.0.ph, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread.sink.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  %i.p = icmp ult i64 %5, %i.j
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  %i.q = load ptr, ptr %i.e, align 8, !alias.scope !2342, !noalias !2343, !nonnull !7, !noundef !7 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %5
  %i.s = load i8, ptr %i.r, align 1, !noalias !2344, !noundef !7
  %i.t = add nuw i64 %5, 1                        ; 3 uses
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !2342, !noalias !2343
  %i.u = add i8 %i.s, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.u, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.a, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.v = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.z = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.aa = icmp ult i64 %i.t, %i.j
  br i1 %i.aa, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bi, %bb.s ], [ %i.z, %bb.f ] ; 4 uses
  %i.ab = phi i64 [ %i.af, %bb.s ], [ %i.t, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2345, !noundef !7
  %i.ae = add i8 %i.ad, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.ae, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.z, %bb.f ], [ %i.bi, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.af = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !2346
  %i.ag = zext nneg i8 %i.ae to i32
  %i.ah = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ah, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ai = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.aj, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  %i.ak = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.al = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.at, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.as, %bb.l ], [ %i.ak, %bb.j ] ; 3 uses
  %i.am = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.am, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.ak, %bb.j ], [ %i.as, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.at, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.an = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs6MoqnCnVQOT_10serde_json2de5POW10, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !noalias !2348, !noundef !7 ; 2 uses
  %i.aq = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.aq, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.ar = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.ar, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.as = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.at = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 2 uses
  %i.au = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.au, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2348
  store i64 14, ptr %i.a, align 8, !noalias !2348
  %i.av = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2348
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.ba, %bb.o ], [ %i.az, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ax = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.ay, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.az = fdiv double %.sroa.04.0.lcssa.i, %i.ap
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.ba = fmul double %.sroa.04.0.lcssa.i, %i.ap  ; 2 uses
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp oeq double %i.bb, +inf
  br i1 %i.bc, label %bb.p, label %.loopexit.i, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2348
  store i64 14, ptr %i.b, align 8, !noalias !2348
  %i.bd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2348
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2347, !noalias !2349
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bf = icmp ne i32 %.sroa.08.054, 214748364
  %i.bg = icmp samesign ugt i8 %i.ae, 7
  %or.cond2 = or i1 %i.bf, %i.bg
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !31

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bh = mul i32 %.sroa.08.054, 10
  %i.bi = add i32 %i.bh, %i.ag                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bj = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bj, i1 noundef zeroext %.sroa.0.0) #21
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2409, !noalias !2410, !noundef !7 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2409, !noalias !2410, !noundef !7 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread58

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !2409, !noalias !2410, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !2411, !noundef !7 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !2412

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread58, !prof !27

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !2413
end_hunk_1
