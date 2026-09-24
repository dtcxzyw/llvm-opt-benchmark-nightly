Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.11?download=true
inline.NumInlined: 391
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3O_11VacantEntryyB1E_E12insert_entry0EB1K_:bb.a
    #dbg_value(ptr %.sink61.i, !8615, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8622)
    #dbg_value(ptr %.sink61.i, !8615, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8624)
    #dbg_value(i64 %.sink.i, !8247, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8614)
    #dbg_value(i64 %.sink.i, !8250, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8612)
    #dbg_value(i64 %.sink.i, !8615, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8622)
    #dbg_value(i64 %.sink.i, !8615, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8624)
    #dbg_value(i64 %.sroa.051.0, !8246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8614)
    #dbg_value(i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., !8246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8614)
    #dbg_value(ptr %i.j, !8246, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8614)
    #dbg_value(i64 %.sroa.10.0, !8246, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8614)
    #dbg_value(ptr %.sroa.12.0, !8246, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8614)
    #dbg_value(i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.128., !8246, !DIExpression(DW_OP_LLVM_fragment, 1024, 64), !8614)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !9202
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 1056, !dbg !9203
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !9203, !noalias !8625, !noundef !982 ; 2 uses
  %.not.i137 = icmp eq ptr %i.bw, null, !dbg !9204
  br i1 %.not.i137, label %._crit_edge, label %.lr.ph, !dbg !9205

.lr.ph:                                           ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.al, !dbg !9205

bb.x:                                             ; preds = %bb.v
    #dbg_value(i64 %.sink60.i, !8248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8626)
    #dbg_value(i64 %.sink60.i, !8615, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8628)
    #dbg_value(ptr %.sink61.i, !8248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8626)
    #dbg_value(ptr %.sink61.i, !8615, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8628)
    #dbg_value(i64 %.sink.i, !8248, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8626)
    #dbg_value(i64 %.sink.i, !8615, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8628)
  store ptr %.sink61.i, ptr %0, align 8, !dbg !9206
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9206
  store i64 %.sink60.i, ptr %i.by, align 8, !dbg !9206
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9206
  store i64 %.sink.i, ptr %i.bz, align 8, !dbg !9206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !9202
  br label %bb.bu, !dbg !9207

._crit_edge:                                      ; preds = %bb.bs, %bb.w
  %.sroa.13202.0 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., %bb.w ], [ %.sroa.565.0..sroa.565.0..sroa.565.0..sroa.565.8., %bb.bs ], !dbg !8377
  %.lcssa130 = phi i64 [ %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.128., %bb.w ], [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.128., %bb.bs ] ; 2 uses
  %.sroa.11.0123.lcssa = phi ptr [ %.sroa.12.0, %bb.w ], [ %.sroa.11.0, %bb.bs ] ; 4 uses
  %i.ca = phi i64 [ %.sroa.051.0, %bb.w ], [ %.sroa.063.0, %bb.bs ] ; 2 uses
  %.lcssa109 = phi i64 [ %.sroa.10.0, %bb.w ], [ %i.db, %bb.bs ]
  %.lcssa102 = phi ptr [ %i.j, %bb.w ], [ %i.cx, %bb.bs ]
    #dbg_value(i64 %.sroa.13202.0, !8246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8614)
    #dbg_value(ptr %.lcssa102, !8246, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8614)
    #dbg_value(i64 %.lcssa109, !8246, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8614)
    #dbg_value(i64 %i.ca, !8246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8614)
    #dbg_value(ptr %.sroa.11.0123.lcssa, !8246, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8614)
    #dbg_value(i64 %.lcssa130, !8246, !DIExpression(DW_OP_LLVM_fragment, 1024, 64), !8614)
    #dbg_value(ptr null, !1675, !DIExpression(), !7486)
    #dbg_value(ptr poison, !1648, !DIExpression(DW_OP_deref), !7488)
    #dbg_value(ptr undef, !1649, !DIExpression(DW_OP_deref), !7488)
    #dbg_value(ptr poison, !1676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7486)
    #dbg_value(ptr undef, !1676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7486)
    #dbg_value(ptr %.lcssa102, !8253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8630)
    #dbg_value(i64 %.lcssa109, !8253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9208
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.02.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.16, i64 88, i1 false), !dbg !9209
  store i64 %i.ca, ptr %i.g, align 8, !dbg !9208
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9208 ; 4 uses
  store i64 %.sroa.13202.0, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8, !dbg !9208
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104, !dbg !9208
  store ptr %.lcssa102, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !9208
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 112, !dbg !9208
  store i64 %.lcssa109, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !9208
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120, !dbg !9208
  store ptr %.sroa.11.0123.lcssa, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !9208
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !9208
  store i64 %.lcssa130, ptr %.sroa.76.0..sroa_idx, align 8, !dbg !9208
  %.val = load ptr, ptr %4, align 8, !dbg !9208, !nonnull !982, !noundef !982 ; 3 uses
    #dbg_value(ptr poison, !8631, !DIExpression(DW_OP_deref), !7493)
    #dbg_declare(ptr %i.g, !8634, !DIExpression(), !7494)
    #dbg_declare(ptr poison, !8640, !DIExpression(), !7497)
    #dbg_declare(ptr poison, !8646, !DIExpression(), !7501)
    #dbg_value(ptr %.val, !8637, !DIExpression(), !7502)
    #dbg_value(ptr %.val, !8656, !DIExpression(), !7510)
  %i.cb = load ptr, ptr %.val, align 8, !dbg !9210, !noalias !8671, !noundef !982 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !9210 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cb, null, !dbg !9210
  br i1 %.not.i37, label %bb.y, label %bb.aa, !dbg !9211, !prof !2027

bb.y:                                             ; preds = %._crit_edge
    #dbg_value(ptr null, !8672, !DIExpression(), !7516)
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
          to label %bb.z unwind label %bb.aj, !dbg !9212, !noalias !8671

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
    #dbg_value(ptr %.val, !8672, !DIExpression(), !7516)
    #dbg_value(ptr %.val, !8638, !DIExpression(), !7517)
    #dbg_value(ptr %.val, !8644, !DIExpression(), !7518)
    #dbg_value(ptr %.val, !8651, !DIExpression(), !7519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8678), !dbg !9213
    #dbg_declare(ptr poison, !8679, !DIExpression(), !7528)
    #dbg_value(ptr %.val, !8684, !DIExpression(), !7529)
    #dbg_value(ptr %.val, !8692, !DIExpression(), !7532)
    #dbg_value(ptr %.val, !8697, !DIExpression(), !7535)
    #dbg_declare(ptr poison, !8685, !DIExpression(), !7536)
    #dbg_declare(ptr poison, !8686, !DIExpression(), !7537)
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !9214, !alias.scope !8678, !noalias !8671, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.cb, !8687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7538)
    #dbg_value(i64 %i.cd, !8687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7538)
    #dbg_declare(ptr poison, !8703, !DIExpression(), !7542)
    #dbg_value(ptr %i.cb, !8709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7543)
    #dbg_value(i64 %i.cd, !8709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7543)
    #dbg_declare(ptr poison, !8711, !DIExpression(), !7546)
    #dbg_value(ptr %i.cb, !8714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7547)
    #dbg_value(i64 %i.cd, !8714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7547)
    #dbg_value(ptr %i.cb, !8716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7551)
    #dbg_value(i64 %i.cd, !8716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7551)
    #dbg_declare(ptr poison, !8720, !DIExpression(), !7552)
    #dbg_declare(ptr poison, !8724, !DIExpression(), !7559)
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEE13new_uninit_inB1B_()
          to label %.noexc.i.i unwind label %bb.ae, !dbg !9215, !noalias !8740 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
    #dbg_value(ptr %i.ce, !8729, !DIExpression(), !7560)
    #dbg_value(ptr %i.ce, !8741, !DIExpression(), !7563)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1056, !dbg !9216
  store ptr null, ptr %i.cf, align 8, !dbg !9216, !noalias !8740
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1154, !dbg !9217 ; 3 uses
  store i16 0, ptr %i.cg, align 2, !dbg !9217, !noalias !8740
    #dbg_value(ptr %i.ce, !8722, !DIExpression(), !7572)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1160, !dbg !9218 ; 2 uses
    #dbg_value(ptr %i.ch, !8745, !DIExpression(), !7575)
    #dbg_value(ptr %i.cb, !8750, !DIExpression(), !7575)
  store ptr %i.cb, ptr %i.ch, align 8, !dbg !9219, !noalias !8740
  %i.ci = add i64 %i.cd, 1, !dbg !9220            ; 2 uses
    #dbg_value(i64 %i.ci, !8752, !DIExpression(), !7579)
  %.not.i.i.i.i.i = icmp eq i64 %i.ci, 0, !dbg !9221
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !dbg !9222, !prof !2027

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %bb.ac unwind label %bb.ad, !dbg !9223, !noalias !8740

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !8756, !DIExpression(), !7582)
    #dbg_value(ptr poison, !8762, !DIExpression(), !7589)
    #dbg_value(ptr %i.ce, !8763, !DIExpression(), !7590)
    #dbg_value(i64 8, !8764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7591)
    #dbg_value(i64 1256, !8764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7591)
    #dbg_value(ptr poison, !2379, !DIExpression(), !7593)
    #dbg_value(ptr poison, !2373, !DIExpression(), !7595)
    #dbg_value(ptr %i.ce, !2380, !DIExpression(), !7593)
    #dbg_value(ptr %i.ce, !2374, !DIExpression(), !7595)
    #dbg_value(ptr %i.ce, !2366, !DIExpression(), !7597)
    #dbg_value(ptr %i.ce, !2362, !DIExpression(), !7599)
    #dbg_value(i64 8, !2381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7593)
    #dbg_value(i64 8, !2375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7595)
    #dbg_value(i64 8, !2367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7597)
    #dbg_value(i64 8, !2363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7599)
    #dbg_value(i64 1256, !2381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7593)
    #dbg_value(i64 1256, !2375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7595)
    #dbg_value(i64 1256, !2367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7597)
    #dbg_value(i64 1256, !2363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7599)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 1256, i64 noundef 8) #22, !dbg !9224, !noalias !8740
  br label %.body.i.i, !dbg !9225

bb.ae:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i, !dbg !9226

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
    #dbg_value(ptr poison, !2743, !DIExpression(), !7601)
    #dbg_value(ptr poison, !2749, !DIExpression(), !7603)
  tail call void @llvm.trap(), !dbg !9227
  unreachable, !dbg !9227

bb.af:                                            ; preds = %.noexc.i.i
    #dbg_declare(ptr poison, !8770, !DIExpression(DW_OP_LLVM_fragment, 136, 56), !7615)
    #dbg_value(ptr %i.ce, !8789, !DIExpression(), !7616)
    #dbg_value(i64 %i.ci, !8790, !DIExpression(), !7616)
    #dbg_declare(ptr poison, !8792, !DIExpression(), !7617)
    #dbg_value(ptr %i.ce, !8791, !DIExpression(), !7618)
    #dbg_value(ptr %i.ce, !8793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7619)
    #dbg_value(i64 %i.ci, !8793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7619)
    #dbg_value(ptr undef, !8783, !DIExpression(), !7620)
    #dbg_value(i64 0, !8784, !DIExpression(), !7621)
    #dbg_value(i64 0, !8770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7622)
    #dbg_value(i64 0, !8770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7622)
    #dbg_value(i8 0, !8770, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7622)
    #dbg_value(ptr poison, !8776, !DIExpression(), !7623)
    #dbg_value(i64 0, !8777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7624)
    #dbg_value(i64 1, !8777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7624)
    #dbg_value(i8 0, !8777, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7624)
    #dbg_value(i64 0, !8778, !DIExpression(), !7625)
    #dbg_declare(ptr poison, !2303, !DIExpression(), !7627)
    #dbg_value(ptr %i.ce, !2308, !DIExpression(), !7628)
    #dbg_value(ptr %i.ce, !2316, !DIExpression(), !7630)
    #dbg_value(i64 0, !2309, !DIExpression(), !7631)
    #dbg_value(i64 0, !2321, !DIExpression(), !7630)
    #dbg_value(ptr %i.cb, !2310, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7632)
    #dbg_value(i64 poison, !2310, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7632)
    #dbg_value(ptr poison, !2320, !DIExpression(), !7633)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 1056, !dbg !9228
  store ptr %i.ce, ptr %i.cl, align 8, !dbg !9228, !noalias !8795
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 1152, !dbg !9229
  store i16 0, ptr %i.cm, align 8, !dbg !9229, !noalias !8796
    #dbg_value(i64 poison, !8777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7624)
    #dbg_value(i8 poison, !8777, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7624)
    #dbg_value(ptr %i.ce, !8688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7639)
    #dbg_value(ptr %i.ce, !8701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7535)
    #dbg_value(i64 %i.ci, !8688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7639)
    #dbg_value(i64 %i.ci, !8701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7535)
  store ptr %i.ce, ptr %.val, align 8, !dbg !9230, !alias.scope !8678, !noalias !8671
  store i64 %i.ci, ptr %i.cc, align 8, !dbg !9230, !alias.scope !8678, !noalias !8671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9231, !noalias !8671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.02.sroa.4.0..sroa_idx, i64 96, i1 false), !dbg !9231
    #dbg_value(ptr poison, !8797, !DIExpression(), !7644)
    #dbg_value(ptr poison, !8808, !DIExpression(), !7647)
    #dbg_value(ptr poison, !8815, !DIExpression(), !7650)
    #dbg_value(ptr poison, !8822, !DIExpression(), !7653)
    #dbg_value(i64 %i.ca, !8802, !DIExpression(), !7644)
    #dbg_declare(ptr %i.c, !8803, !DIExpression(), !7654)
    #dbg_value(ptr %.sroa.11.0123.lcssa, !8804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7644)
    #dbg_value(i64 %.lcssa130, !8804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7644)
  %i.cn = icmp eq i64 %.lcssa130, %i.cd, !dbg !9232
  br i1 %i.cn, label %bb.ag, label %.invoke.i.i, !dbg !9232, !prof !2137

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.co = phi ptr [ @36, %bb.af ], [ @34, %bb.ag ]
  %i.cp = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.cq = phi ptr [ @37, %bb.af ], [ @38, %bb.ag ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #23
          to label %.cont.i.i unwind label %bb.ah, !dbg !9233, !noalias !8830

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.ce, !8805, !DIExpression(DW_OP_plus_uconst, 1154, DW_OP_stack_value), !7657)
  %i.cr = load i16, ptr %i.cg, align 2, !dbg !9234, !noalias !8830, !noundef !982 ; 3 uses
    #dbg_value(i16 %i.cr, !8831, !DIExpression(), !7660)
    #dbg_value(i16 %i.cr, !8806, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7661)
    #dbg_value(i16 %i.cr, !8813, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7647)
    #dbg_value(i16 %i.cr, !8833, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7664)
    #dbg_value(i16 %i.cr, !8836, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7667)
    #dbg_value(i16 %i.cr, !8820, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7650)
    #dbg_value(i16 %i.cr, !8839, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7670)
    #dbg_value(i16 %i.cr, !8842, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7673)
  %i.cs = icmp ult i16 %i.cr, 11, !dbg !9235
  br i1 %i.cs, label %bb.bv, label %.invoke.i.i, !dbg !9235, !prof !2137

bb.ah:                                            ; preds = %.invoke.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #24
          to label %.body unwind label %bb.ai, !dbg !9236, !noalias !8671

bb.ai:                                            ; preds = %bb.ah
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !9237, !noalias !8671
  unreachable, !dbg !9237

bb.aj:                                            ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %.sroa.02.sroa.4.0..sroa_idx) #24
          to label %.body unwind label %bb.ak, !dbg !9238

bb.ak:                                            ; preds = %bb.aj
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !9239
  unreachable, !dbg !9239

bb.al:                                            ; preds = %.lr.ph, %bb.bs
  %.sroa.13202.1 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., %.lr.ph ], [ %.sroa.565.0..sroa.565.0..sroa.565.0..sroa.565.8., %bb.bs ], !dbg !8377
  %i.cx = phi ptr [ %i.bw, %.lr.ph ], [ %i.ku, %bb.bs ] ; 26 uses
  %i.cy = phi ptr [ %i.j, %.lr.ph ], [ %i.cx, %bb.bs ]
  %i.cz = phi i64 [ %.sroa.10.0, %.lr.ph ], [ %i.db, %bb.bs ] ; 2 uses
  %.sroa.063.0116139 = phi i64 [ %.sroa.051.0, %.lr.ph ], [ %.sroa.063.0, %bb.bs ] ; 4 uses
  %.sroa.11.0123138 = phi ptr [ %.sroa.12.0, %.lr.ph ], [ %.sroa.11.0, %bb.bs ] ; 2 uses
  %i.da = phi i64 [ %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.128., %.lr.ph ], [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.128., %bb.bs ]
    #dbg_value(i64 %.sroa.13202.1, !8246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8614)
    #dbg_value(ptr %i.cy, !1692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7674)
    #dbg_value(i64 %i.cz, !1692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7674)
    #dbg_value(ptr undef, !1675, !DIExpression(), !7486)
    #dbg_value(ptr poison, !1648, !DIExpression(DW_OP_deref), !7488)
    #dbg_value(ptr undef, !1649, !DIExpression(DW_OP_deref), !7488)
    #dbg_value(ptr poison, !1676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7486)
    #dbg_value(ptr undef, !1676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7486)
    #dbg_value(ptr undef, !1677, !DIExpression(), !7675)
    #dbg_value(ptr undef, !1638, !DIExpression(), !7488)
  %i.db = add i64 %i.cz, 1, !dbg !9240            ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1152, !dbg !9241
  %i.dd = load i16, ptr %i.dc, align 8, !dbg !9241, !noalias !8625 ; 4 uses
  %i.de = zext i16 %i.dd to i64, !dbg !9242       ; 12 uses
    #dbg_value(ptr %i.cx, !8251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8846)
    #dbg_value(ptr %i.cx, !8298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8847)
    #dbg_value(i64 %i.db, !8251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8846)
    #dbg_value(i64 %i.db, !8298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8847)
    #dbg_value(i64 %i.de, !8251, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8846)
    #dbg_value(i64 %i.de, !8298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8847)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.565), !dbg !9243
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767), !dbg !9243
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13), !dbg !9243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9244
  store i64 %.sroa.13202.1, ptr %i.h, align 8, !dbg !9244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.16.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.16, i64 88, i1 false), !dbg !9244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8848), !dbg !9245
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5), !dbg !9246
    #dbg_value(ptr poison, !8355, !DIExpression(), !7681)
    #dbg_value(ptr poison, !8368, !DIExpression(), !7683)
    #dbg_value(ptr poison, !8371, !DIExpression(), !7685)
    #dbg_value(ptr poison, !8362, !DIExpression(), !7686)
    #dbg_value(ptr poison, !8849, !DIExpression(), !7697)
    #dbg_value(ptr poison, !8864, !DIExpression(), !7700)
    #dbg_value(i64 %.sroa.063.0116139, !8299, !DIExpression(), !7701)
    #dbg_declare(ptr %i.h, !8300, !DIExpression(), !7702)
    #dbg_value(ptr %.sroa.11.0123138, !8301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7701)
    #dbg_value(i64 %i.da, !8301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7701)
    #dbg_declare(ptr poison, !8302, !DIExpression(), !7703)
  %i.df = icmp eq i64 %i.da, %i.cz, !dbg !9247
  br i1 %i.df, label %bb.an, label %bb.am, !dbg !9247, !prof !2137

bb.am:                                            ; preds = %bb.al
    #dbg_value(ptr poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8614)
    #dbg_value(i64 poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8614)
    #dbg_value(i64 poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8614)
    #dbg_value(ptr poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8614)
    #dbg_value(i64 poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 1024, 64), !8614)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23
          to label %bb.ao unwind label %.loopexit.split-lp, !dbg !9248, !noalias !8866

bb.an:                                            ; preds = %bb.al
    #dbg_value(ptr undef, !8373, !DIExpression(), !7167)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 1154, !dbg !9249 ; 4 uses
  %i.dh = load i16, ptr %i.dg, align 2, !dbg !9249, !noalias !8866, !noundef !982 ; 5 uses
  %i.di = icmp ult i16 %i.dh, 11, !dbg !9250
  br i1 %i.di, label %bb.aq, label %bb.ap, !dbg !9250

.loopexit78:                                      ; preds = %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !8614)
    #dbg_value(i64 poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !8614)
    #dbg_value(i64 poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8614)
    #dbg_value(ptr poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 960, 64), !8614)
    #dbg_value(i64 poison, !8246, !DIExpression(DW_OP_LLVM_fragment, 1024, 64), !8614)
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.an
    #dbg_value(i64 %i.de, !8867, !DIExpression(), !7708)
  %i.dj = icmp ult i16 %i.dd, 5, !dbg !9251
  br i1 %i.dj, label %bb.ax, label %bb.au, !dbg !9251

bb.aq:                                            ; preds = %bb.an
    #dbg_value(ptr undef, !8362, !DIExpression(), !7164)
    #dbg_value(i64 %.sroa.063.0116139, !8363, !DIExpression(), !7164)
    #dbg_declare(ptr poison, !8364, !DIExpression(), !7709)
    #dbg_value(ptr %.sroa.11.0123138, !8365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7164)
    #dbg_value(i64 %i.da, !8365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7164)
    #dbg_value(ptr undef, !8371, !DIExpression(), !7163)
  %i.dk = zext nneg i16 %i.dh to i64, !dbg !9252  ; 5 uses
  %i.dl = add nuw nsw i16 %i.dh, 1, !dbg !9253
    #dbg_value(i64 %i.dk, !8366, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7712)
    #dbg_value(i64 %i.dk, !8369, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7713)
    #dbg_value(ptr undef, !8368, !DIExpression(), !7160)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 1064, !dbg !9254 ; 2 uses
    #dbg_value(ptr %i.dm, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7715)
    #dbg_value(i64 %i.dk, !2657, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !7715)
    #dbg_value(i64 %i.de, !2660, !DIExpression(), !7715)
    #dbg_value(i64 %i.de, !2665, !DIExpression(), !7717)
    #dbg_value(i64 %i.de, !2665, !DIExpression(), !7719)
    #dbg_value(i64 %.sroa.063.0116139, !2661, !DIExpression(), !7715)
    #dbg_value(i64 %.sroa.063.0116139, !2668, !DIExpression(), !7721)
    #dbg_value(i64 %i.dk, !2662, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7722)
    #dbg_value(ptr %i.dm, !2663, !DIExpression(), !7723)
    #dbg_value(ptr %i.dm, !2666, !DIExpression(), !7717)
    #dbg_value(ptr %i.dm, !2666, !DIExpression(), !7725)
    #dbg_value(ptr %i.dm, !2666, !DIExpression(), !7719)
  %i.dn = add nuw nsw i64 %i.de, 1, !dbg !9255    ; 7 uses
    #dbg_value(i64 %i.dn, !2665, !DIExpression(), !7725)
  %.not.i.i47.not = icmp ult i16 %i.dd, %i.dh, !dbg !9256
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB2N_11VacantEntryyyE12insert_entry0ECshovLROGBtMy_11quinn_proto:bb.a
bb.l:                                             ; preds = %bb.k, %_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.510.0.i, !dbg !11287
  store i64 %2, ptr %i.be, align 8, !dbg !11288, !alias.scope !10786, !noalias !10785
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.select47.i, i64 96, !dbg !11282
  %i.bg = add i16 %i.at, 1, !dbg !11289
    #dbg_value(i64 %i.au, !10611, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9737)
    #dbg_value(i64 %i.au, !10643, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9738)
    #dbg_value(i64 %i.au, !10603, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9739)
    #dbg_value(i64 %i.au, !2657, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9741)
    #dbg_value(i64 %i.au, !2662, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9748)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.510.0.i, !dbg !11290
    #dbg_value(ptr %i.bh, !2669, !DIExpression(), !9763)
  store i64 %3, ptr %i.bh, align 8, !dbg !11291, !alias.scope !10787, !noalias !10785
  store i16 %i.bg, ptr %i.as, align 2, !dbg !11292, !noalias !10785
    #dbg_value(i64 %spec.select.i, !10514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10788)
    #dbg_value(i64 %spec.select.i, !10789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10796)
    #dbg_value(i64 %spec.select.i, !10789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10798)
    #dbg_value(ptr %spec.select47.i, !10514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10788)
    #dbg_value(ptr %spec.select47.i, !10789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10796)
    #dbg_value(ptr %spec.select47.i, !10789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10798)
    #dbg_value(i64 %.sroa.510.0.i, !10514, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10788)
    #dbg_value(i64 %.sroa.510.0.i, !10789, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10796)
    #dbg_value(i64 %.sroa.510.0.i, !10789, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10798)
    #dbg_value(ptr %i.a, !10513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10788)
    #dbg_value(i64 %i.v, !10513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10788)
    #dbg_value(ptr %i.w, !10513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10788)
    #dbg_value(i64 0, !10513, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !10788)
    #dbg_value(i64 %i.ak, !10513, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !10788)
    #dbg_value(i64 %i.ai, !10513, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !10788)
    #dbg_value(ptr poison, !1931, !DIExpression(), !9776)
    #dbg_value(ptr poison, !1967, !DIExpression(), !9777)
    #dbg_value(ptr poison, !1965, !DIExpression(), !9778)
    #dbg_value(ptr poison, !2828, !DIExpression(), !9780)
    #dbg_value(ptr poison, !1966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9778)
    #dbg_value(ptr %i.a, !1982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9781)
    #dbg_value(i64 %i.v, !1982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9781)
    #dbg_value(ptr %i.a, !1983, !DIExpression(), !9782)
  %i.bi = load ptr, ptr %i.a, align 8, !dbg !11293, !noalias !10799, !noundef !982 ; 2 uses
  %.not.i154 = icmp eq ptr %i.bi, null, !dbg !11294
  br i1 %.not.i154, label %._crit_edge, label %.lr.ph.preheader, !dbg !11295

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bj = icmp eq i64 %i.v, 0, !dbg !11296
  br label %.lr.ph, !dbg !11296

bb.m:                                             ; preds = %bb.c, %bb.d
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k, !dbg !11297
  store i64 %2, ptr %i.bk, align 8, !dbg !11298, !alias.scope !10659, !noalias !10660
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !11235
  %i.bm = add nuw nsw i16 %i.c, 1, !dbg !11299
    #dbg_value(i64 %i.h, !10611, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9519)
    #dbg_value(i64 %i.h, !10643, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9521)
    #dbg_value(i64 %i.h, !10603, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9523)
    #dbg_value(i64 %i.h, !2657, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9527)
    #dbg_value(i64 %i.h, !2662, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !9534)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.k, !dbg !11300
    #dbg_value(ptr %i.bn, !2669, !DIExpression(), !9550)
  store i64 %3, ptr %i.bn, align 8, !dbg !11301, !alias.scope !10661, !noalias !10660
  store i16 %i.bm, ptr %i.b, align 2, !dbg !11302, !noalias !10660
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11303
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !11303, !alias.scope !10657, !noalias !10658, !noundef !982
    #dbg_value(i64 %i.bp, !10515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10800)
    #dbg_value(i64 %i.bp, !10789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10802)
    #dbg_value(ptr %i.a, !10515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10800)
    #dbg_value(ptr %i.a, !10789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10802)
    #dbg_value(i64 %i.k, !10515, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10800)
    #dbg_value(i64 %i.k, !10789, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10802)
  br label %.loopexit, !dbg !11304

._crit_edge:                                      ; preds = %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, %bb.l
  %.sroa.13.0.lcssa = phi i64 [ %i.ai, %bb.l ], [ %i.ft, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], !dbg !10599
  %.sroa.11.0.lcssa = phi i64 [ %i.ak, %bb.l ], [ %i.fv, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], !dbg !10599
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.co, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], !dbg !10599
  %.sroa.7.0.lcssa = phi ptr [ %i.w, %bb.l ], [ %i.fh, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], !dbg !10599 ; 3 uses
    #dbg_value(ptr null, !1965, !DIExpression(), !9778)
    #dbg_value(ptr poison, !1938, !DIExpression(DW_OP_deref), !9776)
    #dbg_value(ptr undef, !1939, !DIExpression(DW_OP_deref), !9776)
    #dbg_value(ptr poison, !1966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9778)
    #dbg_value(ptr undef, !1966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9778)
    #dbg_value(i64 poison, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10804)
    #dbg_value(i64 poison, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10804)
    #dbg_value(i64 poison, !10805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10814)
    #dbg_value(i64 poison, !10805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10814)
    #dbg_value(ptr %.sroa.7.0.lcssa, !10805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10814)
    #dbg_value(i64 %.sroa.9.0.lcssa, !10805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !10814)
    #dbg_value(i64 %.sroa.11.0.lcssa, !10805, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !10814)
    #dbg_value(i64 %.sroa.13.0.lcssa, !10805, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !10814)
  %.val = load ptr, ptr %4, align 8, !dbg !11305, !nonnull !982, !noundef !982 ; 3 uses
    #dbg_value(ptr poison, !10808, !DIExpression(DW_OP_deref), !9789)
    #dbg_declare(ptr poison, !10815, !DIExpression(), !9792)
    #dbg_declare(ptr poison, !10821, !DIExpression(), !9796)
    #dbg_value(ptr %.val, !10811, !DIExpression(), !9797)
    #dbg_value(ptr %.val, !10831, !DIExpression(), !9805)
  %i.bq = load ptr, ptr %.val, align 8, !dbg !11306, !noalias !10846, !noundef !982 ; 4 uses
  %.not.i58 = icmp eq ptr %i.bq, null, !dbg !11306
  br i1 %.not.i58, label %bb.v, label %bb.n, !dbg !11307, !prof !2027

bb.n:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !11306 ; 2 uses
    #dbg_value(ptr %.val, !10847, !DIExpression(), !9811)
    #dbg_value(ptr %.val, !10812, !DIExpression(), !9812)
    #dbg_value(ptr %.val, !10819, !DIExpression(), !9813)
    #dbg_value(ptr %.val, !10826, !DIExpression(), !9814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10853), !dbg !11308
    #dbg_declare(ptr poison, !10854, !DIExpression(), !9823)
    #dbg_value(ptr %.val, !10859, !DIExpression(), !9824)
    #dbg_value(ptr %.val, !10867, !DIExpression(), !9827)
    #dbg_value(ptr %.val, !10872, !DIExpression(), !9830)
    #dbg_declare(ptr poison, !10860, !DIExpression(), !9831)
    #dbg_declare(ptr poison, !10861, !DIExpression(), !9832)
  %i.bs = load i64, ptr %i.br, align 8, !dbg !11309, !alias.scope !10853, !noalias !10846, !noundef !982 ; 2 uses
    #dbg_value(ptr %i.bq, !10862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9833)
    #dbg_value(i64 %i.bs, !10862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9833)
    #dbg_declare(ptr poison, !10878, !DIExpression(), !9837)
    #dbg_value(ptr %i.bq, !10884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9838)
    #dbg_value(i64 %i.bs, !10884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9838)
    #dbg_declare(ptr poison, !10886, !DIExpression(), !9841)
    #dbg_value(ptr %i.bq, !10889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9842)
    #dbg_value(i64 %i.bs, !10889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9842)
    #dbg_value(ptr %i.bq, !10891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9846)
    #dbg_value(i64 %i.bs, !10891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9846)
    #dbg_declare(ptr poison, !10895, !DIExpression(), !9847)
    #dbg_declare(ptr poison, !10899, !DIExpression(), !9854)
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyyEE13new_uninit_inCshovLROGBtMy_11quinn_proto()
          to label %.noexc.i.i59 unwind label %bb.r, !dbg !11310, !noalias !10915 ; 9 uses

.noexc.i.i59:                                     ; preds = %bb.n
    #dbg_value(ptr %i.bt, !10904, !DIExpression(), !9855)
    #dbg_value(ptr %i.bt, !10916, !DIExpression(), !9858)
  store ptr null, ptr %i.bt, align 8, !dbg !11311, !noalias !10915
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 186, !dbg !11312 ; 3 uses
  store i16 0, ptr %i.bu, align 2, !dbg !11312, !noalias !10915
    #dbg_value(ptr %i.bt, !10897, !DIExpression(), !9867)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 192, !dbg !11313 ; 2 uses
    #dbg_value(ptr %i.bv, !10920, !DIExpression(), !9870)
    #dbg_value(ptr %i.bq, !10925, !DIExpression(), !9870)
  store ptr %i.bq, ptr %i.bv, align 8, !dbg !11314, !noalias !10915
  %i.bw = add i64 %i.bs, 1, !dbg !11315           ; 2 uses
    #dbg_value(i64 %i.bw, !10927, !DIExpression(), !9874)
  %.not.i.i.i.i.i = icmp eq i64 %i.bw, 0, !dbg !11316
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyyNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECshovLROGBtMy_11quinn_proto.exit.i, !dbg !11317, !prof !2027

bb.o:                                             ; preds = %.noexc.i.i59
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %bb.p unwind label %bb.q, !dbg !11318, !noalias !10915

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !10931, !DIExpression(), !9877)
    #dbg_value(ptr poison, !10937, !DIExpression(), !9884)
    #dbg_value(ptr %i.bt, !10938, !DIExpression(), !9885)
    #dbg_value(i64 8, !10939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9886)
    #dbg_value(i64 288, !10939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9886)
    #dbg_value(ptr poison, !2379, !DIExpression(), !9888)
    #dbg_value(ptr poison, !2373, !DIExpression(), !9890)
    #dbg_value(ptr %i.bt, !2380, !DIExpression(), !9888)
    #dbg_value(ptr %i.bt, !2374, !DIExpression(), !9890)
    #dbg_value(ptr %i.bt, !2366, !DIExpression(), !9892)
    #dbg_value(ptr %i.bt, !2362, !DIExpression(), !9894)
    #dbg_value(i64 8, !2381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9888)
    #dbg_value(i64 8, !2375, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9890)
    #dbg_value(i64 8, !2367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9892)
    #dbg_value(i64 8, !2363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9894)
    #dbg_value(i64 288, !2381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9888)
    #dbg_value(i64 288, !2375, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9890)
    #dbg_value(i64 288, !2367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9892)
    #dbg_value(i64 288, !2363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9894)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef 288, i64 noundef 8) #22, !dbg !11319, !noalias !10915
  br label %.body.i.i, !dbg !11320

bb.r:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i, !dbg !11321

.body.i.i:                                        ; preds = %bb.r, %bb.q
    #dbg_value(ptr poison, !2743, !DIExpression(), !9896)
    #dbg_value(ptr poison, !2749, !DIExpression(), !9898)
  tail call void @llvm.trap(), !dbg !11322
  unreachable, !dbg !11322

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyyNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECshovLROGBtMy_11quinn_proto.exit.i: ; preds = %.noexc.i.i59
    #dbg_declare(ptr poison, !10945, !DIExpression(DW_OP_LLVM_fragment, 136, 56), !9910)
    #dbg_value(ptr %i.bt, !10964, !DIExpression(), !9911)
    #dbg_value(i64 %i.bw, !10965, !DIExpression(), !9911)
    #dbg_declare(ptr poison, !10967, !DIExpression(), !9912)
    #dbg_value(ptr %i.bt, !10966, !DIExpression(), !9913)
    #dbg_value(ptr %i.bt, !10968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9914)
    #dbg_value(i64 %i.bw, !10968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9914)
    #dbg_value(ptr undef, !10958, !DIExpression(), !9915)
    #dbg_value(i64 0, !10959, !DIExpression(), !9916)
    #dbg_value(i64 0, !10945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9917)
    #dbg_value(i64 0, !10945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9917)
    #dbg_value(i8 0, !10945, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !9917)
    #dbg_value(ptr poison, !10951, !DIExpression(), !9918)
    #dbg_value(i64 0, !10952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9919)
    #dbg_value(i64 1, !10952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9919)
    #dbg_value(i8 0, !10952, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !9919)
    #dbg_value(i64 0, !10953, !DIExpression(), !9920)
    #dbg_declare(ptr poison, !2474, !DIExpression(), !9922)
    #dbg_value(ptr %i.bt, !2479, !DIExpression(), !9923)
    #dbg_value(ptr %i.bt, !2487, !DIExpression(), !9925)
    #dbg_value(i64 0, !2480, !DIExpression(), !9926)
    #dbg_value(i64 0, !2492, !DIExpression(), !9925)
    #dbg_value(ptr %i.bq, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9927)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9927)
    #dbg_value(ptr poison, !2491, !DIExpression(), !9928)
  store ptr %i.bt, ptr %i.bq, align 8, !dbg !11323, !noalias !10970
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 184, !dbg !11324
  store i16 0, ptr %i.bz, align 8, !dbg !11324, !noalias !10971
    #dbg_value(i64 poison, !10952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9919)
    #dbg_value(i8 poison, !10952, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !9919)
    #dbg_value(ptr %i.bt, !10863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9934)
    #dbg_value(ptr %i.bt, !10876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9830)
    #dbg_value(i64 %i.bw, !10863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9934)
    #dbg_value(i64 %i.bw, !10876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9830)
  store ptr %i.bt, ptr %.val, align 8, !dbg !11325, !alias.scope !10853, !noalias !10846
  store i64 %i.bw, ptr %i.br, align 8, !dbg !11325, !alias.scope !10853, !noalias !10846
    #dbg_value(ptr poison, !10972, !DIExpression(), !9939)
    #dbg_value(ptr poison, !10983, !DIExpression(), !9942)
    #dbg_value(ptr poison, !10990, !DIExpression(), !9945)
    #dbg_value(ptr poison, !10994, !DIExpression(), !9948)
    #dbg_value(i64 %.sroa.11.0.lcssa, !10977, !DIExpression(), !9939)
    #dbg_value(i64 %.sroa.13.0.lcssa, !10978, !DIExpression(), !9939)
    #dbg_value(ptr %.sroa.7.0.lcssa, !10979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(i64 %.sroa.9.0.lcssa, !10979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9939)
  %i.ca = icmp eq i64 %.sroa.9.0.lcssa, %i.bs, !dbg !11326
  br i1 %i.ca, label %bb.t, label %bb.s, !dbg !11326, !prof !2137

bb.s:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyyNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECshovLROGBtMy_11quinn_proto.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #21, !dbg !11327, !noalias !10846
  unreachable, !dbg !11327

bb.t:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyyNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECshovLROGBtMy_11quinn_proto.exit.i
    #dbg_value(ptr %i.bt, !10980, !DIExpression(DW_OP_plus_uconst, 186, DW_OP_stack_value), !9949)
  %i.cb = load i16, ptr %i.bu, align 2, !dbg !11328, !noalias !10846, !noundef !982 ; 3 uses
    #dbg_value(i16 %i.cb, !11002, !DIExpression(), !9952)
    #dbg_value(i16 %i.cb, !10981, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9953)
    #dbg_value(i16 %i.cb, !10988, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9942)
    #dbg_value(i16 %i.cb, !11004, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9956)
    #dbg_value(i16 %i.cb, !11007, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9959)
    #dbg_value(i16 %i.cb, !10992, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9945)
    #dbg_value(i16 %i.cb, !11004, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9961)
    #dbg_value(i16 %i.cb, !11007, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9963)
  %i.cc = icmp ult i16 %i.cb, 11, !dbg !11329
  br i1 %i.cc, label %_RNCNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyyE12insert_entry0CshovLROGBtMy_11quinn_proto.exit, label %bb.u, !dbg !11329, !prof !2137

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #21, !dbg !11330, !noalias !10846
  unreachable, !dbg !11330

bb.v:                                             ; preds = %._crit_edge
    #dbg_value(ptr null, !10847, !DIExpression(), !9811)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #21, !dbg !11331, !noalias !10846
  unreachable, !dbg !11331

_RNCNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyyE12insert_entry0CshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.t
  %i.cd = zext nneg i16 %i.cb to i64, !dbg !11332 ; 3 uses
    #dbg_value(i64 %i.cd, !10981, !DIExpression(), !9953)
    #dbg_value(i64 %i.cd, !10988, !DIExpression(), !9942)
    #dbg_value(i64 %i.cd, !11004, !DIExpression(), !9956)
    #dbg_value(i64 %i.cd, !11007, !DIExpression(), !9959)
    #dbg_value(i64 %i.cd, !10992, !DIExpression(), !9945)
    #dbg_value(i64 %i.cd, !11004, !DIExpression(), !9961)
    #dbg_value(i64 %i.cd, !11007, !DIExpression(), !9963)
  %i.ce = add nuw nsw i16 %i.cb, 1, !dbg !11333
  store i16 %i.ce, ptr %i.bu, align 2, !dbg !11333, !noalias !10846
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !11334
    #dbg_value(ptr %i.cf, !11005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9956)
    #dbg_value(i64 11, !11005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9956)
    #dbg_value(ptr %i.cf, !11008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9959)
    #dbg_value(i64 11, !11008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9959)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd, !dbg !11335
    #dbg_value(ptr %i.cg, !11011, !DIExpression(), !9966)
    #dbg_value(i64 %.sroa.11.0.lcssa, !11012, !DIExpression(), !9966)
  store i64 %.sroa.11.0.lcssa, ptr %i.cg, align 8, !dbg !11336, !noalias !10846
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 96, !dbg !11337
    #dbg_value(ptr %i.ch, !11005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9961)
    #dbg_value(i64 11, !11005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9961)
    #dbg_value(ptr %i.ch, !11008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9963)
    #dbg_value(i64 11, !11008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9963)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cd, !dbg !11338
    #dbg_value(ptr %i.ci, !11011, !DIExpression(), !9968)
    #dbg_value(i64 %.sroa.13.0.lcssa, !11012, !DIExpression(), !9968)
  store i64 %.sroa.13.0.lcssa, ptr %i.ci, align 8, !dbg !11339, !noalias !10846
  %i.cj = add nuw nsw i64 %i.cd, 1, !dbg !11340   ; 2 uses
    #dbg_value(i64 %i.cj, !11000, !DIExpression(), !9948)
    #dbg_value(i64 %i.cj, !11014, !DIExpression(), !9971)
    #dbg_value(i64 %i.cj, !11019, !DIExpression(), !9974)
    #dbg_value(ptr %i.bv, !11017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9971)
    #dbg_value(i64 12, !11017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9971)
    #dbg_value(ptr %i.bv, !11022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9974)
    #dbg_value(i64 12, !11022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9974)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cj, !dbg !11341
    #dbg_value(ptr %i.ck, !11025, !DIExpression(), !9977)
    #dbg_value(ptr %.sroa.7.0.lcssa, !11026, !DIExpression(), !9977)
  store ptr %.sroa.7.0.lcssa, ptr %i.ck, align 8, !dbg !11342, !noalias !10846
    #dbg_declare(ptr poison, !2474, !DIExpression(), !9979)
    #dbg_value(ptr %i.bt, !2479, !DIExpression(), !9980)
    #dbg_value(ptr %i.bt, !2487, !DIExpression(), !9982)
    #dbg_value(i64 %i.cj, !2480, !DIExpression(), !9983)
    #dbg_value(i64 %i.cj, !2492, !DIExpression(), !9982)
    #dbg_value(ptr %.sroa.7.0.lcssa, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9984)
    #dbg_value(i64 poison, !2481, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9984)
    #dbg_value(ptr poison, !2491, !DIExpression(), !9985)
  store ptr %i.bt, ptr %.sroa.7.0.lcssa, align 8, !dbg !11343, !noalias !10846
  %i.cl = trunc nuw nsw i64 %i.cj to i16, !dbg !11344
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 184, !dbg !11345
  store i16 %i.cl, ptr %i.cm, align 8, !dbg !11345, !noalias !10846
  br label %.loopexit, !dbg !11346

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit
  %i.cn = phi ptr [ %i.js, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], [ %i.bi, %.lr.ph.preheader ] ; 23 uses
  %.sroa.0.0160 = phi ptr [ %i.cn, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], [ %i.a, %.lr.ph.preheader ]
  %.sroa.6.0159 = phi i64 [ %i.co, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], [ %i.v, %.lr.ph.preheader ]
  %.sroa.7.0158 = phi ptr [ %i.fh, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.0157 = phi i1 [ true, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], [ %i.bj, %.lr.ph.preheader ]
  %.sroa.11.0156 = phi i64 [ %i.fv, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], [ %i.ak, %.lr.ph.preheader ] ; 4 uses
  %.sroa.13.0155 = phi i64 [ %i.ft, %_RINvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyyNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit ], [ %i.ai, %.lr.ph.preheader ] ; 4 uses
    #dbg_value(ptr %.sroa.0.0160, !10513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10788)
    #dbg_value(i64 %.sroa.6.0159, !10513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10788)
    #dbg_value(ptr %.sroa.7.0158, !10513, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10788)
    #dbg_value(i64 poison, !10513, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !10788)
    #dbg_value(i64 %.sroa.11.0156, !10513, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !10788)
    #dbg_value(i64 %.sroa.13.0155, !10513, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !10788)
    #dbg_value(ptr undef, !1965, !DIExpression(), !9778)
    #dbg_value(ptr poison, !1938, !DIExpression(DW_OP_deref), !9776)
    #dbg_value(ptr undef, !1939, !DIExpression(DW_OP_deref), !9776)
    #dbg_value(ptr poison, !1966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9778)
    #dbg_value(ptr undef, !1966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9778)
    #dbg_value(ptr undef, !1967, !DIExpression(), !9777)
    #dbg_value(ptr undef, !1931, !DIExpression(), !9776)
  %i.co = add i64 %.sroa.6.0159, 1, !dbg !11347   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0160, i64 184, !dbg !11348
  %i.cq = load i16, ptr %i.cp, align 8, !dbg !11348, !noalias !10799 ; 4 uses
  %i.cr = zext i16 %i.cq to i64, !dbg !11349      ; 13 uses
    #dbg_value(ptr %i.cn, !10518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11028)
    #dbg_value(ptr %i.cn, !10575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11029)
    #dbg_value(i64 %i.co, !10518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11028)
    #dbg_value(i64 %i.co, !10575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11029)
    #dbg_value(i64 %i.cr, !10518, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11028)
    #dbg_value(i64 %i.cr, !10575, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11029)
    #dbg_value(ptr poison, !10550, !DIExpression(), !9990)
    #dbg_value(ptr poison, !10588, !DIExpression(), !9992)
    #dbg_value(ptr poison, !10591, !DIExpression(), !9994)
    #dbg_value(ptr poison, !10594, !DIExpression(), !9996)
    #dbg_value(ptr poison, !10557, !DIExpression(), !9997)
    #dbg_value(ptr poison, !11030, !DIExpression(), !10008)
    #dbg_value(ptr poison, !11045, !DIExpression(), !10011)
    #dbg_value(i64 %.sroa.11.0156, !10576, !DIExpression(), !10012)
    #dbg_value(i64 %.sroa.13.0155, !10577, !DIExpression(), !10012)
    #dbg_value(ptr %.sroa.7.0158, !10578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10012)
    #dbg_value(i64 poison, !10578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10012)
    #dbg_declare(ptr poison, !10579, !DIExpression(), !10013)
  br i1 %.sroa.9.0157, label %bb.x, label %bb.w, !dbg !11296, !prof !2137

bb.w:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21, !dbg !11350, !noalias !11047
  unreachable, !dbg !11350

bb.x:                                             ; preds = %.lr.ph
    #dbg_value(ptr undef, !10596, !DIExpression(), !9467)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 186, !dbg !11351 ; 4 uses
  %i.ct = load i16, ptr %i.cs, align 2, !dbg !11351, !noalias !11047, !noundef !982 ; 5 uses
  %i.cu = icmp ult i16 %i.ct, 11, !dbg !11352
  br i1 %i.cu, label %bb.z, label %bb.y, !dbg !11352

bb.y:                                             ; preds = %bb.x
    #dbg_value(i64 %i.cr, !11048, !DIExpression(), !10019)
  %i.cv = icmp ult i16 %i.cq, 5, !dbg !11353
  br i1 %i.cv, label %bb.ae, label %bb.ab, !dbg !11353

bb.z:                                             ; preds = %bb.x
    #dbg_value(ptr undef, !10557, !DIExpression(), !9464)
    #dbg_value(i64 %.sroa.11.0156, !10558, !DIExpression(), !9464)
    #dbg_value(i64 %.sroa.13.0155, !10559, !DIExpression(), !9464)
    #dbg_value(ptr %.sroa.7.0158, !10560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9464)
    #dbg_value(i64 poison, !10560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9464)
    #dbg_value(ptr undef, !10594, !DIExpression(), !9463)
  %i.cw = zext nneg i16 %i.ct to i64, !dbg !11354 ; 5 uses
  %i.cx = add nuw nsw i16 %i.ct, 1, !dbg !11355
    #dbg_value(i64 %i.cw, !10561, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10022)
    #dbg_value(i64 %i.cw, !10592, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10023)
    #dbg_value(i64 %i.cw, !10589, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10024)
    #dbg_value(ptr undef, !10591, !DIExpression(), !9460)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 8, !dbg !11356 ; 3 uses
    #dbg_value(ptr %i.cy, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10026)
    #dbg_value(i64 %i.cw, !2657, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10026)
    #dbg_value(i64 %i.cr, !2660, !DIExpression(), !10026)
    #dbg_value(i64 %i.cr, !2665, !DIExpression(), !10028)
    #dbg_value(i64 %i.cr, !2665, !DIExpression(), !10030)
    #dbg_value(i64 %.sroa.11.0156, !2661, !DIExpression(), !10026)
    #dbg_value(i64 %.sroa.11.0156, !2668, !DIExpression(), !10032)
    #dbg_value(i64 %i.cw, !2662, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10033)
    #dbg_value(ptr %i.cy, !2663, !DIExpression(), !10034)
    #dbg_value(ptr %i.cy, !2666, !DIExpression(), !10028)
    #dbg_value(ptr %i.cy, !2666, !DIExpression(), !10036)
end_hunk_1
