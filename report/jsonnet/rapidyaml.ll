Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_seq_blockEv:bb.a
  %.phi.trans.insert754 = getelementptr inbounds nuw i8, ptr %.pre753, i64 2488
  %.pre755 = load ptr, ptr %.phi.trans.insert754, align 8, !tbaa !206
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_handle_colonEv.exit169

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_handle_colonEv.exit169: ; preds = %bb.an, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA24_cEEEvNS_15basic_substringIKcEEDprRKT_.exit.i167
  %i.ln = phi ptr [ %i.ko, %bb.an ], [ %.pre755, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA24_cEEEvNS_15basic_substringIKcEEDprRKT_.exit.i167 ] ; 3 uses
  %i.lo = phi ptr [ %i.km, %bb.an ], [ %.pre753, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA24_cEEEvNS_15basic_substringIKcEEDprRKT_.exit.i167 ] ; 4 uses
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !186
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 144
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !235 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !185 ; 2 uses
  %i.ls = and i32 %i.lr, 2
  %.not.i170 = icmp eq i32 %i.ls, 0
  br i1 %.not.i170, label %_ZN2c43yml16EventHandlerTree19begin_map_val_blockEv.exit175, label %bb.aq, !prof !88

bb.aq:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_handle_colonEv.exit169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.p, ptr noundef nonnull align 16 dereferenceable(33) @__const._ZN2c43yml16EventHandlerTree18begin_map_val_flowEv.msg, i64 33, i1 false)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 2456
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store i64 0, ptr %25, align 8
  %.sroa.2.0..sroa_idx.i171 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 29715, ptr %.sroa.2.0..sroa_idx.i171, align 8
  %.sroa.3.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i172, align 8
  %.sroa.4.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx.i173, align 8
  %.sroa.5.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i64 74, ptr %.sroa.5.0..sroa_idx.i174, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 2480
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !97
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !94
  call void %i.lv(ptr noundef nonnull %i.p, i64 noundef 32, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %25, ptr noundef %i.lw), !inline_history !248
  call void @abort() #61
  unreachable

_ZN2c43yml16EventHandlerTree19begin_map_val_blockEv.exit175: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_handle_colonEv.exit169
  %i.lx = or i32 %i.lr, 262148
  store i32 %i.lx, ptr %i.lq, align 8, !tbaa !185
  %i.ly = load ptr, ptr %i.ln, align 8, !tbaa !228
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lo, i64 2520
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !223
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 120
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !237
  %i.md = load ptr, ptr %i.ma, align 8, !tbaa !120
  %i.me = getelementptr inbounds nuw [144 x i8], ptr %i.md, i64 %i.mc
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 72
  store ptr %i.ly, ptr %i.mf, align 8, !tbaa !161
  call void @_ZN2c43yml16EventHandlerTree5_pushEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.lo)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE55_handle_annotations_and_indentation_after_start_mapblckEmm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %i.cc, i64 noundef %i.bz)
  %i.mg = load i8, ptr %i.ac, align 8, !tbaa !231, !range !81, !noundef !90
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN2c43yml16EventHandlerTree19begin_map_val_blockEv.exit175
  %i.mi = load i32, ptr %0, align 8, !tbaa !163
  %i.mj = trunc i32 %i.mi to i1
  br i1 %i.mj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.sroa.0.0.copyload.i180 = load ptr, ptr %33, align 8, !tbaa !101
  %.sroa.2.0.copyload.i182 = load i64, ptr %.sroa.3.0..sroa_idx.i158, align 8, !tbaa !102
  %i.mk = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_scalar_dquotENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload.i180, i64 %.sroa.2.0.copyload.i182)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit

bb.at:                                            ; preds = %bb.ar
  %i.ml = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2488
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !206
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 144
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !235 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !185
  %i.mr = or i32 %i.mq, 16384
  store i32 %i.mr, ptr %i.mp, align 8, !tbaa !185
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN2c43yml16EventHandlerTree19begin_map_val_blockEv.exit175
  %.sroa.04.0.copyload.i176 = load ptr, ptr %33, align 8, !tbaa !101
  %.sroa.3.0.copyload.i178 = load i64, ptr %.sroa.3.0..sroa_idx.i158, align 8, !tbaa !102
  %i.ms = insertvalue { ptr, i64 } poison, ptr %.sroa.04.0.copyload.i176, 0
  %i.mt = insertvalue { ptr, i64 } %i.ms, i64 %.sroa.3.0.copyload.i178, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit: ; preds = %bb.as, %bb.au
  %.fca.1.insert.merged.i179 = phi { ptr, i64 } [ %i.mk, %bb.as ], [ %i.mt, %bb.au ] ; 2 uses
  %i.mu = extractvalue { ptr, i64 } %.fca.1.insert.merged.i179, 0
  %i.mv = extractvalue { ptr, i64 } %.fca.1.insert.merged.i179, 1
  %i.mw = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 2488
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !206 ; 7 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 144
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !235 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store ptr %i.mu, ptr %i.nb, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  store i64 %i.mv, ptr %.sroa.2.0..sroa_idx.i116, align 8, !tbaa !102
  %i.nc = load i32, ptr %i.na, align 8, !tbaa !185
  %i.nd = or i32 %i.nc, 33554433
  store i32 %i.nd, ptr %i.na, align 8, !tbaa !185
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 96 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !221
  %i.ng = and i32 %i.nf, -1549
  %i.nh = or disjoint i32 %i.ng, 516
  store i32 %i.nh, ptr %i.ne, align 8, !tbaa !221
  %.sroa.0.0.copyload.i183 = load ptr, ptr %i.my, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %.sroa.5.0.copyload.i185 = load i64, ptr %.sroa.5.0..sroa_idx.i184, align 8, !tbaa !102 ; 4 uses
  %.not.i186 = icmp eq i64 %.sroa.5.0.copyload.i185, 0
  br i1 %.not.i186, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread, label %bb.av

bb.av:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit
  %i.ni = load i8, ptr %.sroa.0.0.copyload.i183, align 1, !tbaa !87
  %i.nj = icmp eq i8 %i.ni, 32
  br i1 %i.nj, label %.lr.ph.i.i187, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

.lr.ph.i.i187:                                    ; preds = %bb.av, %bb.aw
  %.0710.i.i188 = phi i64 [ %i.nm, %bb.aw ], [ 0, %bb.av ] ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i183, i64 %.0710.i.i188
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !87
  %.not.i.i189 = icmp eq i8 %i.nl, 32
  br i1 %.not.i.i189, label %bb.aw, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i190

bb.aw:                                            ; preds = %.lr.ph.i.i187
  %i.nm = add nuw i64 %.0710.i.i188, 1            ; 2 uses
  %exitcond.not.i.i192 = icmp eq i64 %i.nm, %.sroa.5.0.copyload.i185
  br i1 %exitcond.not.i.i192, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i191, label %.lr.ph.i.i187, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i190: ; preds = %.lr.ph.i.i187
  %i.nn = icmp eq i64 %.0710.i.i188, -1
  br i1 %i.nn, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i191, label %bb.ax

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i191: ; preds = %bb.aw, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i190
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i191, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i190
  %i.no = phi i64 [ %.sroa.5.0.copyload.i185, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i191 ], [ %.0710.i.i188, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i190 ] ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.my, i64 56 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !210
  %i.nr = add i64 %i.nq, %i.no
  store i64 %i.nr, ptr %i.np, align 8, !tbaa !210
  %i.ns = getelementptr inbounds nuw i8, ptr %i.my, i64 72 ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !212
  %i.nu = add i64 %i.nt, %i.no
  store i64 %i.nu, ptr %i.ns, align 8, !tbaa !212
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i183, i64 %i.no
  %i.nw = sub i64 %.sroa.5.0.copyload.i185, %i.no
  store ptr %i.nv, ptr %i.my, align 8, !tbaa !101
  store i64 %i.nw, ptr %.sroa.5.0..sroa_idx.i184, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

bb.ay:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %36, i8 0, i64 16, i1 false)
  %i.nx = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !215
  %i.nz = add i64 %i.ny, 1
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_scan_blockEPNS3_12ScannedBlockEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %36, i64 noundef %i.nz)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.oa = load i32, ptr %0, align 8, !tbaa !163
  %i.ob = trunc i32 %i.oa to i1
  br i1 %i.ob, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i197 = load ptr, ptr %36, align 8, !tbaa !101 ; 2 uses
  %.sroa.2.0.copyload.i199 = load i64, ptr %.sroa.3.0..sroa_idx.i194, align 8, !tbaa !102 ; 3 uses
  %i.oc = load i64, ptr %i.y, align 8, !tbaa !251
  %i.od = load i32, ptr %i.z, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #59
  store ptr %.sroa.0.0.copyload.i197, ptr %24, align 8, !tbaa !101
  store i64 %.sroa.2.0.copyload.i199, ptr %.sroa.2.0..sroa_idx.i.i.i.i200, align 8, !tbaa !102
  store i64 %.sroa.2.0.copyload.i199, ptr %i.aa, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.oe = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %24, i64 noundef %i.oc, i32 noundef %i.od) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #59
  %i.of = extractvalue { ptr, i64 } %i.oe, 0      ; 2 uses
  %.not.i.i201 = icmp eq ptr %i.of, null
  br i1 %.not.i.i201, label %bb.ba, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, !prof !72

bb.ba:                                            ; preds = %bb.az
  %i.og = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_move_scalar_left_and_add_newlineENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload.i197, i64 %.sroa.2.0.copyload.i199) ; 2 uses
  %i.oh = extractvalue { ptr, i64 } %i.og, 0
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i: ; preds = %bb.ba, %bb.az
  %.pn.i.i = phi { ptr, i64 } [ %i.og, %bb.ba ], [ %i.oe, %bb.az ]
  %.sroa.010.0.i.i = phi ptr [ %i.oh, %bb.ba ], [ %i.of, %bb.az ]
  %.sroa.4.0.i.i = extractvalue { ptr, i64 } %.pn.i.i, 1
  %.pre747 = load ptr, ptr %i.t, align 8, !tbaa !169
  %.phi.trans.insert748 = getelementptr inbounds nuw i8, ptr %.pre747, i64 2488
  %.pre749 = load ptr, ptr %.phi.trans.insert748, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert750 = getelementptr inbounds nuw i8, ptr %.pre749, i64 144
  %.pre751 = load ptr, ptr %.phi.trans.insert750, align 8, !tbaa !235 ; 2 uses
  %.pre752 = load i32, ptr %.pre751, align 8, !tbaa !185
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_val_scalar_literalERKNS3_12ScannedBlockE.exit

bb.bb:                                            ; preds = %bb.ay
  %i.oi = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 2488
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !206 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 144
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !235 ; 3 uses
  %i.on = load i32, ptr %i.om, align 8, !tbaa !185
  %i.oo = or i32 %i.on, 32768                     ; 2 uses
  store i32 %i.oo, ptr %i.om, align 8, !tbaa !185
  %.sroa.05.0.copyload.i = load ptr, ptr %36, align 8, !tbaa !101
  %.sroa.3.0.copyload.i195 = load i64, ptr %.sroa.3.0..sroa_idx.i194, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_val_scalar_literalERKNS3_12ScannedBlockE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_val_scalar_literalERKNS3_12ScannedBlockE.exit: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, %bb.bb
  %i.op = phi i32 [ %.pre752, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.oo, %bb.bb ]
  %i.oq = phi ptr [ %.pre751, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.om, %bb.bb ] ; 3 uses
  %i.or = phi ptr [ %.pre749, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.ok, %bb.bb ]
  %.sroa.010.0.i.pn.i = phi ptr [ %.sroa.010.0.i.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.05.0.copyload.i, %bb.bb ]
  %.sroa.4.0.i.pn.i = phi i64 [ %.sroa.4.0.i.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.3.0.copyload.i195, %bb.bb ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 72
  store ptr %.sroa.010.0.i.pn.i, ptr %i.os, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  store i64 %.sroa.4.0.i.pn.i, ptr %.sroa.2.0..sroa_idx.i121, align 8, !tbaa !102
  %i.ot = or i32 %i.op, 1048578
  store i32 %i.ot, ptr %i.oq, align 8, !tbaa !185
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 96 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !221
  %i.ow = and i32 %i.ov, -1537
  %i.ox = or disjoint i32 %i.ow, 1024
  store i32 %i.ox, ptr %i.ou, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #59
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

bb.bc:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %37, i8 0, i64 16, i1 false)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !215
  %i.pa = add i64 %i.oz, 1
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_scan_blockEPNS3_12ScannedBlockEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %37, i64 noundef %i.pa)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.pb = load i32, ptr %0, align 8, !tbaa !163
  %i.pc = trunc i32 %i.pb to i1
  br i1 %i.pc, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %.sroa.0.0.copyload.i209 = load ptr, ptr %37, align 8, !tbaa !101 ; 2 uses
  %.sroa.2.0.copyload.i211 = load i64, ptr %.sroa.3.0..sroa_idx.i203, align 8, !tbaa !102 ; 3 uses
  %i.pd = load i64, ptr %i.u, align 8, !tbaa !251
  %i.pe = load i32, ptr %i.v, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #59
  store ptr %.sroa.0.0.copyload.i209, ptr %23, align 8, !tbaa !101
  store i64 %.sroa.2.0.copyload.i211, ptr %.sroa.2.0..sroa_idx.i.i.i.i212, align 8, !tbaa !102
  store i64 %.sroa.2.0.copyload.i211, ptr %i.w, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.pf = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %23, i64 noundef %i.pd, i32 noundef %i.pe) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #59
  %i.pg = extractvalue { ptr, i64 } %i.pf, 0      ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i213, label %bb.be, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, !prof !72

bb.be:                                            ; preds = %bb.bd
  %i.ph = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_move_scalar_left_and_add_newlineENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload.i209, i64 %.sroa.2.0.copyload.i211) ; 2 uses
  %i.pi = extractvalue { ptr, i64 } %i.ph, 0
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i: ; preds = %bb.be, %bb.bd
  %.pn.i.i214 = phi { ptr, i64 } [ %i.ph, %bb.be ], [ %i.pf, %bb.bd ]
  %.sroa.010.0.i.i215 = phi ptr [ %i.pi, %bb.be ], [ %i.pg, %bb.bd ]
  %.sroa.4.0.i.i216 = extractvalue { ptr, i64 } %.pn.i.i214, 1
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 2488
  %.pre743 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert744 = getelementptr inbounds nuw i8, ptr %.pre743, i64 144
  %.pre745 = load ptr, ptr %.phi.trans.insert744, align 8, !tbaa !235 ; 2 uses
  %.pre746 = load i32, ptr %.pre745, align 8, !tbaa !185
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_val_scalar_foldedERKNS3_12ScannedBlockE.exit

bb.bf:                                            ; preds = %bb.bc
  %i.pj = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2488
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !206 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 144
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !235 ; 3 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !185
  %i.pp = or i32 %i.po, 32768                     ; 2 uses
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !185
  %.sroa.05.0.copyload.i202 = load ptr, ptr %37, align 8, !tbaa !101
  %.sroa.3.0.copyload.i204 = load i64, ptr %.sroa.3.0..sroa_idx.i203, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_val_scalar_foldedERKNS3_12ScannedBlockE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_val_scalar_foldedERKNS3_12ScannedBlockE.exit: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, %bb.bf
  %i.pq = phi i32 [ %.pre746, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.pp, %bb.bf ]
  %i.pr = phi ptr [ %.pre745, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.pn, %bb.bf ] ; 3 uses
  %i.ps = phi ptr [ %.pre743, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.pl, %bb.bf ]
  %.sroa.010.0.i.pn.i205 = phi ptr [ %.sroa.010.0.i.i215, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.05.0.copyload.i202, %bb.bf ]
  %.sroa.4.0.i.pn.i206 = phi i64 [ %.sroa.4.0.i.i216, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.3.0.copyload.i204, %bb.bf ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 72
  store ptr %.sroa.010.0.i.pn.i205, ptr %i.pt, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.pr, i64 80
  store i64 %.sroa.4.0.i.pn.i206, ptr %.sroa.2.0..sroa_idx.i122, align 8, !tbaa !102
  %i.pu = or i32 %i.pq, 4194306
  store i32 %i.pu, ptr %i.pr, align 8, !tbaa !185
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 96 ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !221
  %i.px = and i32 %i.pw, -1537
  %i.py = or disjoint i32 %i.px, 1024
  store i32 %i.py, ptr %i.pv, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #59
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

bb.bg:                                            ; preds = %bb.j
  %i.pz = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !215, !noalias !641
  %i.qb = add i64 %i.qa, 1
  %i.qc = call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_scan_scalar_plain_blckEPNS3_13ScannedScalarEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %33, i64 noundef %i.qb)
  br i1 %i.qc, label %bb.bh, label %bb.cp

bb.bh:                                            ; preds = %bb.bg
  %i.qd = load ptr, ptr %i.t, align 8, !tbaa !169 ; 7 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 2488
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !206 ; 11 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 3 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !242 ; 5 uses
  %.not.i217 = icmp eq i64 %i.qh, 0
  br i1 %.not.i217, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qi = load ptr, ptr %i.qf, align 8, !tbaa !228 ; 4 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.qj, label %.thread.i227 [
    i8 32, label %.preheader.i.i219.preheader
    i8 9, label %.preheader.i.i219.preheader
  ]

.preheader.i.i219.preheader:                      ; preds = %bb.bi, %bb.bi
  br label %.preheader.i.i219

.preheader.i.i219:                                ; preds = %.preheader.i.i219.preheader, %bb.bj
  %.01326.i.i220 = phi i64 [ %i.qn, %bb.bj ], [ 0, %.preheader.i.i219.preheader ] ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 %.01326.i.i220
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !87
  switch i8 %i.ql, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i229 [
    i8 32, label %bb.bj
    i8 9, label %bb.bj
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i229: ; preds = %.preheader.i.i219
  %i.qm = icmp eq i64 %.01326.i.i220, -1
  br i1 %i.qm, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i222, label %bb.bk

bb.bj:                                            ; preds = %.preheader.i.i219, %.preheader.i.i219
  %i.qn = add nuw i64 %.01326.i.i220, 1           ; 2 uses
  %exitcond30.not.i.i221 = icmp eq i64 %i.qn, %i.qh
  br i1 %exitcond30.not.i.i221, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i222, label %.preheader.i.i219, !llvm.loop !26

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i222: ; preds = %bb.bj, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i229
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i222, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i229
  %.0.i223 = phi i64 [ %i.qh, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i222 ], [ %.01326.i.i220, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i229 ] ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 56 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !210
  %i.qq = add i64 %i.qp, %.0.i223
  store i64 %i.qq, ptr %i.qo, align 8, !tbaa !210
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 72 ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !212
  %i.qt = add i64 %i.qs, %.0.i223
  store i64 %i.qt, ptr %i.qr, align 8, !tbaa !212
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qi, i64 %.0.i223 ; 3 uses
  %i.qv = sub i64 %i.qh, %.0.i223                 ; 3 uses
  store ptr %i.qu, ptr %i.qf, align 8, !tbaa !101
  store i64 %i.qv, ptr %i.qg, align 8, !tbaa !102
  %.not6.i224 = icmp eq i64 %i.qv, 0
  br i1 %.not6.i224, label %bb.bl, label %..thread_crit_edge.i225

..thread_crit_edge.i225:                          ; preds = %bb.bk
  %.pre.i226 = load i8, ptr %i.qu, align 1, !tbaa !87
  br label %.thread.i227

.thread.i227:                                     ; preds = %..thread_crit_edge.i225, %bb.bi
  %i.qw = phi i8 [ %.pre.i226, %..thread_crit_edge.i225 ], [ %i.qj, %bb.bi ]
  %i.qx = phi ptr [ %i.qu, %..thread_crit_edge.i225 ], [ %i.qi, %bb.bi ]
  %i.qy = phi i64 [ %i.qv, %..thread_crit_edge.i225 ], [ %i.qh, %bb.bi ]
  %i.qz = icmp eq i8 %i.qw, 58
  br i1 %i.qz, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread.i227, %bb.bh
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.ra = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 2488
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !206 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 104
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !215
  %i.rf = load i8, ptr %i.ac, align 8, !tbaa !231, !range !81, !noundef !90
  %i.rg = trunc nuw i8 %i.rf to i1
  br i1 %i.rg, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.rh = load i32, ptr %0, align 8, !tbaa !163
  %i.ri = trunc i32 %i.rh to i1
  br i1 %i.ri, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0.0.copyload.i235 = load ptr, ptr %33, align 8, !tbaa !101
  %.sroa.2.0.copyload.i237 = load i64, ptr %.sroa.3.0..sroa_idx.i158, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #59
  store ptr %.sroa.0.0.copyload.i235, ptr %22, align 8, !tbaa !101
  store i64 %.sroa.2.0.copyload.i237, ptr %.sroa.2.0..sroa_idx.i.i.i.i238, align 8, !tbaa !102
  store i64 %.sroa.2.0.copyload.i237, ptr %i.al, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.rj = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_plainINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_m(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %22, i64 noundef %i.re)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #59
  %.pre775 = load ptr, ptr %i.t, align 8, !tbaa !169
  %.phi.trans.insert776 = getelementptr inbounds nuw i8, ptr %.pre775, i64 2488
  %.pre777 = load ptr, ptr %.phi.trans.insert776, align 8, !tbaa !206
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm.exit

bb.bo:                                            ; preds = %bb.bm
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rc, i64 144
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !235 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !185
  %i.rn = or i32 %i.rm, 32768
  store i32 %i.rn, ptr %i.rl, align 8, !tbaa !185
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  %.sroa.04.0.copyload.i231 = load ptr, ptr %33, align 8, !tbaa !101
  %.sroa.3.0.copyload.i233 = load i64, ptr %.sroa.3.0..sroa_idx.i158, align 8, !tbaa !102
  %i.ro = insertvalue { ptr, i64 } poison, ptr %.sroa.04.0.copyload.i231, 0
  %i.rp = insertvalue { ptr, i64 } %i.ro, i64 %.sroa.3.0.copyload.i233, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm.exit: ; preds = %bb.bn, %bb.bp
  %i.rq = phi ptr [ %.pre777, %bb.bn ], [ %i.rc, %bb.bp ] ; 2 uses
  %.fca.1.insert.merged.i234 = phi { ptr, i64 } [ %i.rj, %bb.bn ], [ %i.rp, %bb.bp ] ; 2 uses
  %i.rr = extractvalue { ptr, i64 } %.fca.1.insert.merged.i234, 0
  %i.rs = extractvalue { ptr, i64 } %.fca.1.insert.merged.i234, 1
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 144
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !235 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 72
  store ptr %i.rr, ptr %i.rv, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.ru, i64 80
  store i64 %i.rs, ptr %.sroa.2.0..sroa_idx.i123, align 8, !tbaa !102
  %i.rw = load i32, ptr %i.ru, align 8, !tbaa !185
  %i.rx = or i32 %i.rw, 268435458
  store i32 %i.rx, ptr %i.ru, align 8, !tbaa !185
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rq, i64 96 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !221
  %i.sa = and i32 %i.rz, -1537
  %i.sb = or disjoint i32 %i.sa, 1024
  store i32 %i.sb, ptr %i.ry, align 8, !tbaa !221
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

bb.bq:                                            ; preds = %.thread.i227
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qf, i64 56 ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !210
  %i.se = add i64 %i.sd, 1
  store i64 %i.se, ptr %i.sc, align 8, !tbaa !210
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qf, i64 72 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !212
  %i.sh = add i64 %i.sg, 1
  store i64 %i.sh, ptr %i.sf, align 8, !tbaa !212
  %i.si = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  %i.sj = add i64 %i.qy, -1
  store ptr %i.si, ptr %i.qf, align 8, !tbaa !101
  store i64 %i.sj, ptr %i.qg, align 8, !tbaa !102
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qf, i64 104
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !215
  %i.sm = icmp ugt i64 %i.cc, %i.sl
  br i1 %i.sm, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qf, i64 96 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !221
  %i.sp = and i32 %i.so, -1537
  %i.sq = or disjoint i32 %i.sp, 1024
  store i32 %i.sq, ptr %i.sn, align 8, !tbaa !221
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE40_handle_annotations_before_start_mapblckEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %i.bz)
  %i.sr = load ptr, ptr %i.t, align 8, !tbaa !169 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 2488
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !206 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 64
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !211 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !186 ; 2 uses
  %.not.i239 = icmp ne i64 %i.sx, -1
end_hunk_0
begin_hunk_1_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_map_blockEv:bb.a
  br i1 %i.bfl, label %.lr.ph.i.i665, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit671

.lr.ph.i.i665:                                    ; preds = %bb.gx, %bb.gy
  %.0710.i.i666 = phi i64 [ %i.bfo, %bb.gy ], [ 0, %bb.gx ] ; 4 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i661, i64 %.0710.i.i666
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !87
  %.not.i.i667 = icmp eq i8 %i.bfn, 32
  br i1 %.not.i.i667, label %bb.gy, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i668

bb.gy:                                            ; preds = %.lr.ph.i.i665
  %i.bfo = add nuw i64 %.0710.i.i666, 1           ; 2 uses
  %exitcond.not.i.i670 = icmp eq i64 %i.bfo, %.sroa.5.0.copyload.i663
  br i1 %exitcond.not.i.i670, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i669, label %.lr.ph.i.i665, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i668: ; preds = %.lr.ph.i.i665
  %i.bfp = icmp eq i64 %.0710.i.i666, -1
  br i1 %i.bfp, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i669, label %bb.gz

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i669: ; preds = %bb.gy, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i668
  br label %bb.gz

bb.gz:                                            ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i669, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i668
  %i.bfq = phi i64 [ %.sroa.5.0.copyload.i663, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i669 ], [ %.0710.i.i666, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i668 ] ; 4 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfe, i64 56 ; 2 uses
  %i.bfs = load i64, ptr %i.bfr, align 8, !tbaa !210
  %i.bft = add i64 %i.bfs, %i.bfq
  store i64 %i.bft, ptr %i.bfr, align 8, !tbaa !210
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfe, i64 72 ; 2 uses
  %i.bfv = load i64, ptr %i.bfu, align 8, !tbaa !212
  %i.bfw = add i64 %i.bfv, %i.bfq
  store i64 %i.bfw, ptr %i.bfu, align 8, !tbaa !212
  %i.bfx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i661, i64 %i.bfq
  %i.bfy = sub i64 %.sroa.5.0.copyload.i663, %i.bfq
  store ptr %i.bfx, ptr %i.bfe, align 8, !tbaa !101
  store i64 %i.bfy, ptr %.sroa.5.0..sroa_idx.i662, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit671

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit671: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit, %bb.gx, %bb.gz
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfe, i64 96 ; 2 uses
  %i.bga = load i32, ptr %i.bfz, align 8, !tbaa !221
  %i.bgb = and i32 %i.bga, -1537
  %i.bgc = or disjoint i32 %i.bgb, 512
  store i32 %i.bgc, ptr %i.bfz, align 8, !tbaa !221
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit858.thread

bb.ha:                                            ; preds = %bb.go
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.baj, i64 144
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !235 ; 3 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bgf, i8 0, i64 16, i1 false)
  %i.bgg = load i32, ptr %i.bge, align 8, !tbaa !185
  %i.bgh = or i32 %i.bgg, 268443650
  store i32 %i.bgh, ptr %i.bge, align 8, !tbaa !185
  call void @_ZN2c43yml16EventHandlerTree11add_siblingEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.bah)
  %i.bgi = load i8, ptr %i.bm, align 8, !tbaa !231, !range !81, !noundef !90
  %i.bgj = trunc nuw i8 %i.bgi to i1
  br i1 %i.bgj, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.bgk = load i32, ptr %0, align 8, !tbaa !163
  %i.bgl = trunc i32 %i.bgk to i1
  br i1 %i.bgl, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %.sroa.0.0.copyload.i676 = load ptr, ptr %62, align 8, !tbaa !101
  %.sroa.2.0.copyload.i678 = load i64, ptr %.sroa.3.0..sroa_idx.i655, align 8, !tbaa !102
  %i.bgm = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_scalar_dquotENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload.i676, i64 %.sroa.2.0.copyload.i678)
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit679

bb.hd:                                            ; preds = %bb.hb
  %i.bgn = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 2488
  %i.bgp = load ptr, ptr %i.bgo, align 8, !tbaa !206
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 144
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !235 ; 2 uses
  %i.bgs = load i32, ptr %i.bgr, align 8, !tbaa !185
  %i.bgt = or i32 %i.bgs, 16384
  store i32 %i.bgt, ptr %i.bgr, align 8, !tbaa !185
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.ha
  %.sroa.04.0.copyload.i672 = load ptr, ptr %62, align 8, !tbaa !101
  %.sroa.3.0.copyload.i674 = load i64, ptr %.sroa.3.0..sroa_idx.i655, align 8, !tbaa !102
  %i.bgu = insertvalue { ptr, i64 } poison, ptr %.sroa.04.0.copyload.i672, 0
  %i.bgv = insertvalue { ptr, i64 } %i.bgu, i64 %.sroa.3.0.copyload.i674, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit679

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit679: ; preds = %bb.hc, %bb.he
  %.fca.1.insert.merged.i675 = phi { ptr, i64 } [ %i.bgm, %bb.hc ], [ %i.bgv, %bb.he ] ; 2 uses
  %i.bgw = extractvalue { ptr, i64 } %.fca.1.insert.merged.i675, 0
  %i.bgx = extractvalue { ptr, i64 } %.fca.1.insert.merged.i675, 1
  %i.bgy = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 2488
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !206 ; 6 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 144
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !235 ; 4 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 24
  store ptr %i.bgw, ptr %i.bhd, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i309 = getelementptr inbounds nuw i8, ptr %i.bhc, i64 32
  store i64 %i.bgx, ptr %.sroa.2.0..sroa_idx.i309, align 8, !tbaa !102
  %i.bhe = load i32, ptr %i.bhc, align 8, !tbaa !185
  %i.bhf = or i32 %i.bhe, 33554433
  store i32 %i.bhf, ptr %i.bhc, align 8, !tbaa !185
  %.sroa.0.0.copyload.i680 = load ptr, ptr %i.bha, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i681 = getelementptr inbounds nuw i8, ptr %i.bha, i64 8 ; 2 uses
  %.sroa.5.0.copyload.i682 = load i64, ptr %.sroa.5.0..sroa_idx.i681, align 8, !tbaa !102 ; 4 uses
  %.not.i683 = icmp eq i64 %.sroa.5.0.copyload.i682, 0
  br i1 %.not.i683, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit858.thread, label %bb.hf

bb.hf:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_key_scalar_dquotERKNS3_13ScannedScalarE.exit679
  %i.bhg = load i8, ptr %.sroa.0.0.copyload.i680, align 1, !tbaa !87
  %i.bhh = icmp eq i8 %i.bhg, 32
  br i1 %i.bhh, label %.lr.ph.i.i684, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit858.thread

.lr.ph.i.i684:                                    ; preds = %bb.hf, %bb.hg
  %.0710.i.i685 = phi i64 [ %i.bhk, %bb.hg ], [ 0, %bb.hf ] ; 4 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i680, i64 %.0710.i.i685
  %i.bhj = load i8, ptr %i.bhi, align 1, !tbaa !87
  %.not.i.i686 = icmp eq i8 %i.bhj, 32
  br i1 %.not.i.i686, label %bb.hg, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i687

bb.hg:                                            ; preds = %.lr.ph.i.i684
  %i.bhk = add nuw i64 %.0710.i.i685, 1           ; 2 uses
  %exitcond.not.i.i689 = icmp eq i64 %i.bhk, %.sroa.5.0.copyload.i682
  br i1 %exitcond.not.i.i689, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i688, label %.lr.ph.i.i684, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i687: ; preds = %.lr.ph.i.i684
  %i.bhl = icmp eq i64 %.0710.i.i685, -1
  br i1 %i.bhl, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i688, label %bb.hh

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i688: ; preds = %bb.hg, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i687
  br label %bb.hh

bb.hh:                                            ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i688, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i687
  %i.bhm = phi i64 [ %.sroa.5.0.copyload.i682, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i688 ], [ %.0710.i.i685, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i687 ] ; 4 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bha, i64 56 ; 2 uses
  %i.bho = load i64, ptr %i.bhn, align 8, !tbaa !210
  %i.bhp = add i64 %i.bho, %i.bhm
  store i64 %i.bhp, ptr %i.bhn, align 8, !tbaa !210
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bha, i64 72 ; 2 uses
  %i.bhr = load i64, ptr %i.bhq, align 8, !tbaa !212
  %i.bhs = add i64 %i.bhr, %i.bhm
  store i64 %i.bhs, ptr %i.bhq, align 8, !tbaa !212
  %i.bht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i680, i64 %i.bhm
  %i.bhu = sub i64 %.sroa.5.0.copyload.i682, %i.bhm
  store ptr %i.bht, ptr %i.bha, align 8, !tbaa !101
  store i64 %i.bhu, ptr %.sroa.5.0..sroa_idx.i681, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit858.thread

bb.hi:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %65, i8 0, i64 16, i1 false)
  %i.bhv = load ptr, ptr %i.cw, align 8, !tbaa !206
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 104
  %i.bhx = load i64, ptr %i.bhw, align 8, !tbaa !215
  %i.bhy = add i64 %i.bhx, 1
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_scan_blockEPNS3_12ScannedBlockEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %65, i64 noundef %i.bhy)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.bhz = load i32, ptr %0, align 8, !tbaa !163
  %i.bia = trunc i32 %i.bhz to i1
  br i1 %i.bia, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  %.sroa.0.0.copyload.i694 = load ptr, ptr %65, align 8, !tbaa !101 ; 2 uses
  %.sroa.2.0.copyload.i696 = load i64, ptr %.sroa.3.0..sroa_idx.i691, align 8, !tbaa !102 ; 3 uses
  %i.bib = load i64, ptr %i.bg, align 8, !tbaa !251
  %i.bic = load i32, ptr %i.bh, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #59
  store ptr %.sroa.0.0.copyload.i694, ptr %22, align 8, !tbaa !101
  store i64 %.sroa.2.0.copyload.i696, ptr %.sroa.2.0..sroa_idx.i.i.i.i697, align 8, !tbaa !102
  store i64 %.sroa.2.0.copyload.i696, ptr %i.bi, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bid = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %22, i64 noundef %i.bib, i32 noundef %i.bic) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #59
  %i.bie = extractvalue { ptr, i64 } %i.bid, 0    ; 2 uses
  %.not.i.i698 = icmp eq ptr %i.bie, null
  br i1 %.not.i.i698, label %bb.hk, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, !prof !72

bb.hk:                                            ; preds = %bb.hj
  %i.bif = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_move_scalar_left_and_add_newlineENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload.i694, i64 %.sroa.2.0.copyload.i696) ; 2 uses
  %i.big = extractvalue { ptr, i64 } %i.bif, 0
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i: ; preds = %bb.hk, %bb.hj
  %.pn.i.i = phi { ptr, i64 } [ %i.bif, %bb.hk ], [ %i.bid, %bb.hj ]
  %.sroa.010.0.i.i = phi ptr [ %i.big, %bb.hk ], [ %i.bie, %bb.hj ]
  %.sroa.4.0.i.i = extractvalue { ptr, i64 } %.pn.i.i, 1
  %.pre1580 = load ptr, ptr %i.ag, align 8, !tbaa !169
  %.phi.trans.insert1581 = getelementptr inbounds nuw i8, ptr %.pre1580, i64 2488
  %.pre1582 = load ptr, ptr %.phi.trans.insert1581, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert1583 = getelementptr inbounds nuw i8, ptr %.pre1582, i64 144
  %.pre1584 = load ptr, ptr %.phi.trans.insert1583, align 8, !tbaa !235 ; 2 uses
  %.pre1585 = load i32, ptr %.pre1584, align 8, !tbaa !185
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_val_scalar_literalERKNS3_12ScannedBlockE.exit

bb.hl:                                            ; preds = %bb.hi
  %i.bih = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 2488
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !206 ; 2 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 144
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !235 ; 3 uses
  %i.bim = load i32, ptr %i.bil, align 8, !tbaa !185
  %i.bin = or i32 %i.bim, 32768                   ; 2 uses
  store i32 %i.bin, ptr %i.bil, align 8, !tbaa !185
  %.sroa.05.0.copyload.i = load ptr, ptr %65, align 8, !tbaa !101
  %.sroa.3.0.copyload.i692 = load i64, ptr %.sroa.3.0..sroa_idx.i691, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_val_scalar_literalERKNS3_12ScannedBlockE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE32_maybe_filter_val_scalar_literalERKNS3_12ScannedBlockE.exit: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, %bb.hl
  %i.bio = phi i32 [ %.pre1585, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.bin, %bb.hl ]
  %i.bip = phi ptr [ %.pre1584, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.bil, %bb.hl ] ; 3 uses
  %i.biq = phi ptr [ %.pre1582, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.bij, %bb.hl ]
  %.sroa.010.0.i.pn.i = phi ptr [ %.sroa.010.0.i.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.05.0.copyload.i, %bb.hl ]
  %.sroa.4.0.i.pn.i = phi i64 [ %.sroa.4.0.i.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_filter_scalar_literalENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.3.0.copyload.i692, %bb.hl ]
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bip, i64 72
  store ptr %.sroa.010.0.i.pn.i, ptr %i.bir, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i320 = getelementptr inbounds nuw i8, ptr %i.bip, i64 80
  store i64 %.sroa.4.0.i.pn.i, ptr %.sroa.2.0..sroa_idx.i320, align 8, !tbaa !102
  %i.bis = or i32 %i.bio, 1048578
  store i32 %i.bis, ptr %i.bip, align 8, !tbaa !185
  %i.bit = getelementptr inbounds nuw i8, ptr %i.biq, i64 96 ; 2 uses
  %i.biu = load i32, ptr %i.bit, align 8, !tbaa !221
  %i.biv = and i32 %i.biu, -1537
  %i.biw = or disjoint i32 %i.biv, 1024
  store i32 %i.biw, ptr %i.bit, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #59
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit858.thread

bb.hm:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %66, i8 0, i64 16, i1 false)
  %i.bix = load ptr, ptr %i.cw, align 8, !tbaa !206
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 104
  %i.biz = load i64, ptr %i.biy, align 8, !tbaa !215
  %i.bja = add i64 %i.biz, 1
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_scan_blockEPNS3_12ScannedBlockEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %66, i64 noundef %i.bja)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.bjb = load i32, ptr %0, align 8, !tbaa !163
  %i.bjc = trunc i32 %i.bjb to i1
  br i1 %i.bjc, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %.sroa.0.0.copyload.i706 = load ptr, ptr %66, align 8, !tbaa !101 ; 2 uses
  %.sroa.2.0.copyload.i708 = load i64, ptr %.sroa.3.0..sroa_idx.i700, align 8, !tbaa !102 ; 3 uses
  %i.bjd = load i64, ptr %i.bc, align 8, !tbaa !251
  %i.bje = load i32, ptr %i.bd, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #59
  store ptr %.sroa.0.0.copyload.i706, ptr %21, align 8, !tbaa !101
  store i64 %.sroa.2.0.copyload.i708, ptr %.sroa.2.0..sroa_idx.i.i.i.i709, align 8, !tbaa !102
  store i64 %.sroa.2.0.copyload.i708, ptr %i.be, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bjf = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %21, i64 noundef %i.bjd, i32 noundef %i.bje) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #59
  %i.bjg = extractvalue { ptr, i64 } %i.bjf, 0    ; 2 uses
  %.not.i.i710 = icmp eq ptr %i.bjg, null
  br i1 %.not.i.i710, label %bb.ho, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, !prof !72

bb.ho:                                            ; preds = %bb.hn
  %i.bjh = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE33_move_scalar_left_and_add_newlineENS_15basic_substringIcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %.sroa.0.0.copyload.i706, i64 %.sroa.2.0.copyload.i708) ; 2 uses
  %i.bji = extractvalue { ptr, i64 } %i.bjh, 0
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i: ; preds = %bb.ho, %bb.hn
  %.pn.i.i711 = phi { ptr, i64 } [ %i.bjh, %bb.ho ], [ %i.bjf, %bb.hn ]
  %.sroa.010.0.i.i712 = phi ptr [ %i.bji, %bb.ho ], [ %i.bjg, %bb.hn ]
  %.sroa.4.0.i.i713 = extractvalue { ptr, i64 } %.pn.i.i711, 1
  %.pre1574 = load ptr, ptr %i.ag, align 8, !tbaa !169
  %.phi.trans.insert1575 = getelementptr inbounds nuw i8, ptr %.pre1574, i64 2488
  %.pre1576 = load ptr, ptr %.phi.trans.insert1575, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert1577 = getelementptr inbounds nuw i8, ptr %.pre1576, i64 144
  %.pre1578 = load ptr, ptr %.phi.trans.insert1577, align 8, !tbaa !235 ; 2 uses
  %.pre1579 = load i32, ptr %.pre1578, align 8, !tbaa !185
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_val_scalar_foldedERKNS3_12ScannedBlockE.exit

bb.hp:                                            ; preds = %bb.hm
  %i.bjj = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 2488
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !206 ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 144
  %i.bjn = load ptr, ptr %i.bjm, align 8, !tbaa !235 ; 3 uses
  %i.bjo = load i32, ptr %i.bjn, align 8, !tbaa !185
  %i.bjp = or i32 %i.bjo, 32768                   ; 2 uses
  store i32 %i.bjp, ptr %i.bjn, align 8, !tbaa !185
  %.sroa.05.0.copyload.i699 = load ptr, ptr %66, align 8, !tbaa !101
  %.sroa.3.0.copyload.i701 = load i64, ptr %.sroa.3.0..sroa_idx.i700, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_val_scalar_foldedERKNS3_12ScannedBlockE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE31_maybe_filter_val_scalar_foldedERKNS3_12ScannedBlockE.exit: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i, %bb.hp
  %i.bjq = phi i32 [ %.pre1579, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.bjp, %bb.hp ]
  %i.bjr = phi ptr [ %.pre1578, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.bjn, %bb.hp ] ; 3 uses
  %i.bjs = phi ptr [ %.pre1576, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %i.bjl, %bb.hp ]
  %.sroa.010.0.i.pn.i702 = phi ptr [ %.sroa.010.0.i.i712, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.05.0.copyload.i699, %bb.hp ]
  %.sroa.4.0.i.pn.i703 = phi i64 [ %.sroa.4.0.i.i713, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_scalar_foldedENS_15basic_substringIcEEmNS0_12BlockChomp_eE.exit.i ], [ %.sroa.3.0.copyload.i701, %bb.hp ]
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjr, i64 72
  store ptr %.sroa.010.0.i.pn.i702, ptr %i.bjt, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i321 = getelementptr inbounds nuw i8, ptr %i.bjr, i64 80
  store i64 %.sroa.4.0.i.pn.i703, ptr %.sroa.2.0..sroa_idx.i321, align 8, !tbaa !102
  %i.bju = or i32 %i.bjq, 4194306
  store i32 %i.bju, ptr %i.bjr, align 8, !tbaa !185
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjs, i64 96 ; 2 uses
  %i.bjw = load i32, ptr %i.bjv, align 8, !tbaa !221
  %i.bjx = and i32 %i.bjw, -1537
  %i.bjy = or disjoint i32 %i.bjx, 1024
  store i32 %i.bjy, ptr %i.bjv, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #59
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit858.thread

bb.hq:                                            ; preds = %bb.fb
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.bka = load i64, ptr %i.bjz, align 8, !tbaa !215, !noalias !733
  %i.bkb = add i64 %i.bka, 1
  %i.bkc = call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_scan_scalar_plain_blckEPNS3_13ScannedScalarEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull %62, i64 noundef %i.bkb)
  br i1 %i.bkc, label %bb.hr, label %bb.iu

bb.hr:                                            ; preds = %bb.hq
  %i.bkd = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 2488
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !206 ; 10 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 8 ; 3 uses
  %i.bkh = load i64, ptr %i.bkg, align 8, !tbaa !242 ; 5 uses
  %.not.i714 = icmp eq i64 %i.bkh, 0
  br i1 %.not.i714, label %bb.hv, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.bki = load ptr, ptr %i.bkf, align 8, !tbaa !228 ; 4 uses
  %i.bkj = load i8, ptr %i.bki, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.bkj, label %.thread.i724 [
    i8 32, label %.preheader.i.i716.preheader
    i8 9, label %.preheader.i.i716.preheader
  ]

.preheader.i.i716.preheader:                      ; preds = %bb.hs, %bb.hs
  br label %.preheader.i.i716

.preheader.i.i716:                                ; preds = %.preheader.i.i716.preheader, %bb.ht
  %.01326.i.i717 = phi i64 [ %i.bkn, %bb.ht ], [ 0, %.preheader.i.i716.preheader ] ; 4 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bki, i64 %.01326.i.i717
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !87
  switch i8 %i.bkl, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i726 [
    i8 32, label %bb.ht
    i8 9, label %bb.ht
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i726: ; preds = %.preheader.i.i716
  %i.bkm = icmp eq i64 %.01326.i.i717, -1
  br i1 %i.bkm, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i719, label %bb.hu

bb.ht:                                            ; preds = %.preheader.i.i716, %.preheader.i.i716
  %i.bkn = add nuw i64 %.01326.i.i717, 1          ; 2 uses
  %exitcond30.not.i.i718 = icmp eq i64 %i.bkn, %i.bkh
  br i1 %exitcond30.not.i.i718, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i719, label %.preheader.i.i716, !llvm.loop !26

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i719: ; preds = %bb.ht, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i726
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i719, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i726
  %.0.i720 = phi i64 [ %i.bkh, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.thread.i719 ], [ %.01326.i.i717, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i726 ] ; 4 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkf, i64 56 ; 2 uses
  %i.bkp = load i64, ptr %i.bko, align 8, !tbaa !210
  %i.bkq = add i64 %i.bkp, %.0.i720
  store i64 %i.bkq, ptr %i.bko, align 8, !tbaa !210
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkf, i64 72 ; 2 uses
  %i.bks = load i64, ptr %i.bkr, align 8, !tbaa !212
  %i.bkt = add i64 %i.bks, %.0.i720
  store i64 %i.bkt, ptr %i.bkr, align 8, !tbaa !212
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bki, i64 %.0.i720 ; 3 uses
  %i.bkv = sub i64 %i.bkh, %.0.i720               ; 3 uses
  store ptr %i.bku, ptr %i.bkf, align 8, !tbaa !101
  store i64 %i.bkv, ptr %i.bkg, align 8, !tbaa !102
  %.not6.i721 = icmp eq i64 %i.bkv, 0
  br i1 %.not6.i721, label %bb.hv, label %..thread_crit_edge.i722

..thread_crit_edge.i722:                          ; preds = %bb.hu
  %.pre.i723 = load i8, ptr %i.bku, align 1, !tbaa !87
  br label %.thread.i724

.thread.i724:                                     ; preds = %..thread_crit_edge.i722, %bb.hs
  %i.bkw = phi i8 [ %.pre.i723, %..thread_crit_edge.i722 ], [ %i.bkj, %bb.hs ]
  %i.bkx = phi ptr [ %i.bku, %..thread_crit_edge.i722 ], [ %i.bki, %bb.hs ]
  %i.bky = phi i64 [ %i.bkv, %..thread_crit_edge.i722 ], [ %i.bkh, %bb.hs ]
  %i.bkz = icmp eq i8 %i.bkw, 58
  br i1 %i.bkz, label %bb.ia, label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %.thread.i724, %bb.hr
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.bla = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 2488
  %i.blc = load ptr, ptr %i.blb, align 8, !tbaa !206 ; 3 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 104
  %i.ble = load i64, ptr %i.bld, align 8, !tbaa !215
  %i.blf = load i8, ptr %i.bm, align 8, !tbaa !231, !range !81, !noundef !90
  %i.blg = trunc nuw i8 %i.blf to i1
  br i1 %i.blg, label %bb.hw, label %bb.hz

bb.hw:                                            ; preds = %bb.hv
  %i.blh = load i32, ptr %0, align 8, !tbaa !163
  %i.bli = trunc i32 %i.blh to i1
  br i1 %i.bli, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %.sroa.0.0.copyload.i732 = load ptr, ptr %62, align 8, !tbaa !101
  %.sroa.2.0.copyload.i734 = load i64, ptr %.sroa.3.0..sroa_idx.i655, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #59
  store ptr %.sroa.0.0.copyload.i732, ptr %20, align 8, !tbaa !101
  store i64 %.sroa.2.0.copyload.i734, ptr %.sroa.2.0..sroa_idx.i.i.i.i735, align 8, !tbaa !102
  store i64 %.sroa.2.0.copyload.i734, ptr %i.ca, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %i.blj = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_plainINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_m(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %20, i64 noundef %i.ble)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #59
  %.pre1607 = load ptr, ptr %i.ag, align 8, !tbaa !169
  %.phi.trans.insert1608 = getelementptr inbounds nuw i8, ptr %.pre1607, i64 2488
  %.pre1609 = load ptr, ptr %.phi.trans.insert1608, align 8, !tbaa !206
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm.exit736

bb.hy:                                            ; preds = %bb.hw
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blc, i64 144
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !235 ; 2 uses
  %i.blm = load i32, ptr %i.bll, align 8, !tbaa !185
  %i.bln = or i32 %i.blm, 32768
  store i32 %i.bln, ptr %i.bll, align 8, !tbaa !185
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hv
  %.sroa.04.0.copyload.i728 = load ptr, ptr %62, align 8, !tbaa !101
  %.sroa.3.0.copyload.i730 = load i64, ptr %.sroa.3.0..sroa_idx.i655, align 8, !tbaa !102
  %i.blo = insertvalue { ptr, i64 } poison, ptr %.sroa.04.0.copyload.i728, 0
  %i.blp = insertvalue { ptr, i64 } %i.blo, i64 %.sroa.3.0.copyload.i730, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm.exit736

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30_maybe_filter_val_scalar_plainERKNS3_13ScannedScalarEm.exit736: ; preds = %bb.hx, %bb.hz
  %i.blq = phi ptr [ %.pre1609, %bb.hx ], [ %i.blc, %bb.hz ] ; 2 uses
  %.fca.1.insert.merged.i731 = phi { ptr, i64 } [ %i.blj, %bb.hx ], [ %i.blp, %bb.hz ] ; 2 uses
  %i.blr = extractvalue { ptr, i64 } %.fca.1.insert.merged.i731, 0
  %i.bls = extractvalue { ptr, i64 } %.fca.1.insert.merged.i731, 1
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blq, i64 144
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !235 ; 4 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 72
  store ptr %i.blr, ptr %i.blv, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %i.blu, i64 80
  store i64 %i.bls, ptr %.sroa.2.0..sroa_idx.i322, align 8, !tbaa !102
  %i.blw = load i32, ptr %i.blu, align 8, !tbaa !185
  %i.blx = or i32 %i.blw, 268435458
  store i32 %i.blx, ptr %i.blu, align 8, !tbaa !185
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blq, i64 96 ; 2 uses
  %i.blz = load i32, ptr %i.bly, align 8, !tbaa !221
  %i.bma = and i32 %i.blz, -1537
  %i.bmb = or disjoint i32 %i.bma, 1024
  store i32 %i.bmb, ptr %i.bly, align 8, !tbaa !221
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit858.thread

bb.ia:                                            ; preds = %.thread.i724
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bkf, i64 56 ; 2 uses
  %i.bmd = load i64, ptr %i.bmc, align 8, !tbaa !210
  %i.bme = add i64 %i.bmd, 1
  store i64 %i.bme, ptr %i.bmc, align 8, !tbaa !210
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bkf, i64 72 ; 2 uses
  %i.bmg = load i64, ptr %i.bmf, align 8, !tbaa !212
  %i.bmh = add i64 %i.bmg, 1
  store i64 %i.bmh, ptr %i.bmf, align 8, !tbaa !212
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bkx, i64 1
  %i.bmj = add i64 %i.bky, -1
  store ptr %i.bmi, ptr %i.bkf, align 8, !tbaa !101
  store i64 %i.bmj, ptr %i.bkg, align 8, !tbaa !102
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bkf, i64 104
  %i.bml = load i64, ptr %i.bmk, align 8, !tbaa !215
  %.not269 = icmp eq i64 %i.ass, %i.bml
  br i1 %.not269, label %bb.im, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bkf, i64 96 ; 2 uses
  %i.bmn = load i32, ptr %i.bmm, align 8, !tbaa !221
  %i.bmo = and i32 %i.bmn, -1537
  %i.bmp = or disjoint i32 %i.bmo, 1024
  store i32 %i.bmp, ptr %i.bmm, align 8, !tbaa !221
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE40_handle_annotations_before_start_mapblckEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %i.asp)
  %i.bmq = load ptr, ptr %i.ag, align 8, !tbaa !169 ; 2 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmq, i64 2488
  %i.bms = load ptr, ptr %i.bmr, align 8, !tbaa !206 ; 2 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 64
  %i.bmu = load i64, ptr %i.bmt, align 8, !tbaa !211 ; 2 uses
  %i.bmv = load i64, ptr %i.bk, align 8, !tbaa !186 ; 2 uses
  %.not.i737 = icmp ne i64 %i.bmv, -1
  %i.bmw = icmp eq i64 %i.bmu, %i.bmv
end_hunk_1
