Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_map_blockEv:bb.a
  store i64 %i.wh, ptr %i.wf, align 8, !tbaa !210
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vx, i64 72 ; 2 uses
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !212
  %i.wk = add i64 %i.wj, %i.we
  store i64 %i.wk, ptr %i.wi, align 8, !tbaa !212
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i448, i64 %i.we
  %i.wm = sub i64 %.sroa.5.0.copyload.i450, %i.we
  store ptr %i.wl, ptr %i.vx, align 8, !tbaa !101
  store i64 %i.wm, ptr %.sroa.5.0..sroa_idx.i449, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

bb.by:                                            ; preds = %bb.be
  %i.wn = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 2488
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !206 ; 6 uses
  %.sroa.0.0.copyload.i459 = load ptr, ptr %i.wp, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i460 = getelementptr inbounds nuw i8, ptr %i.wp, i64 8 ; 3 uses
  %.sroa.5.0.copyload.i461 = load i64, ptr %.sroa.5.0..sroa_idx.i460, align 8, !tbaa !102 ; 4 uses
  %.not.i462 = icmp eq i64 %.sroa.5.0.copyload.i461, 0
  br i1 %.not.i462, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i463

.lr.ph.i.i463:                                    ; preds = %bb.by, %bb.bz
  %.0811.i.i = phi i64 [ %i.wt, %bb.bz ], [ 0, %bb.by ] ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i459, i64 %.0811.i.i
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !87
  %i.ws = icmp eq i8 %i.wr, 32
  br i1 %i.ws, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i463
  %i.wt = add nuw i64 %.0811.i.i, 1               ; 2 uses
  %exitcond.not.i.i464 = icmp eq i64 %i.wt, %.sroa.5.0.copyload.i461
  br i1 %exitcond.not.i.i464, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i463, !llvm.loop !6

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i:  ; preds = %.lr.ph.i.i463
  %.not.i.i467 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i.i467, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %bb.ca

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i: ; preds = %bb.bz, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, %bb.by
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i
  %i.wu = phi i64 [ %.sroa.5.0.copyload.i461, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i ] ; 5 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wp, i64 56 ; 3 uses
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !210
  %i.wx = add i64 %i.ww, %i.wu                    ; 2 uses
  store i64 %i.wx, ptr %i.wv, align 8, !tbaa !210
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wp, i64 72 ; 3 uses
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !212
  %i.xa = add i64 %i.wz, %i.wu                    ; 2 uses
  store i64 %i.xa, ptr %i.wy, align 8, !tbaa !212
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i459, i64 %i.wu ; 4 uses
  %i.xc = sub i64 %.sroa.5.0.copyload.i461, %i.wu ; 5 uses
  store ptr %i.xb, ptr %i.wp, align 8, !tbaa !101
  store i64 %i.xc, ptr %.sroa.5.0..sroa_idx.i460, align 8, !tbaa !102
  %.not.i2.i = icmp eq i64 %i.xc, 0
  br i1 %.not.i2.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.xd = load i8, ptr %i.xb, align 1, !tbaa !87
  %i.xe = icmp eq i8 %i.xd, 32
  br i1 %i.xe, label %.lr.ph.i.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.cb, %bb.cc
  %.0710.i.i.i = phi i64 [ %i.xh, %bb.cc ], [ 0, %bb.cb ] ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 %.0710.i.i.i
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !87
  %.not.i.i.i = icmp eq i8 %i.xg, 32
  br i1 %.not.i.i.i, label %bb.cc, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.xh = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.xh, %i.xc
  br i1 %exitcond.not.i.i.i, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.xi = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.xi, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i.i, label %bb.cd

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i.i: ; preds = %bb.cc, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i.i
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i.i
  %i.xj = phi i64 [ %i.xc, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i.i ], [ %.0710.i.i.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i.i ] ; 4 uses
  %i.xk = add i64 %i.xj, %i.wx
  store i64 %i.xk, ptr %i.wv, align 8, !tbaa !210
  %i.xl = add i64 %i.xj, %i.xa
  store i64 %i.xl, ptr %i.wy, align 8, !tbaa !212
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xj
  %i.xn = sub i64 %i.xc, %i.xj
  store ptr %i.xm, ptr %i.wp, align 8, !tbaa !101
  store i64 %i.xn, ptr %.sroa.5.0..sroa_idx.i460, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv.exit: ; preds = %bb.ca, %bb.cb, %bb.cd
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i459, i64 1
  %i.xp = add i64 %i.wu, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.xq = load i64, ptr %i.as, align 8, !tbaa !256, !alias.scope !721 ; 3 uses
  %i.xr = icmp ugt i64 %i.xq, 1
  br i1 %i.xr, label %bb.ce, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit, !prof !72

bb.ce:                                            ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv.exit
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA21_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(21) @.str.202), !noalias !721
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE12_scan_anchorEv.exit, %bb.ce
  %i.xs = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.xq ; 4 uses
  store ptr %i.xo, ptr %i.xs, align 8, !tbaa !101, !alias.scope !721
  %.sroa.2.0..sroa_idx.i468 = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  store i64 %i.xp, ptr %.sroa.2.0..sroa_idx.i468, align 8, !tbaa !102, !alias.scope !721
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  store i64 %i.fp, ptr %i.xt, align 8, !tbaa !258, !alias.scope !721
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  store i64 %i.fk, ptr %i.xu, align 8, !tbaa !259, !alias.scope !721
  %i.xv = add i64 %i.xq, 1
  store i64 %i.xv, ptr %i.as, align 8, !tbaa !256, !alias.scope !721
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

bb.cf:                                            ; preds = %bb.be
  %i.xw = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_scan_tagEv(ptr noundef nonnull align 8 dereferenceable(256) %0) ; 2 uses
  %i.xx = extractvalue { ptr, i64 } %i.xw, 0
  %i.xy = extractvalue { ptr, i64 } %i.xw, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.xz = load i64, ptr %i.aq, align 8, !tbaa !256, !alias.scope !722 ; 3 uses
  %i.ya = icmp ugt i64 %i.xz, 1
  br i1 %i.ya, label %bb.cg, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit470, !prof !72

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA21_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(21) @.str.202), !noalias !722
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit470

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit470: ; preds = %bb.cf, %bb.cg
  %i.yb = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.xz ; 4 uses
  store ptr %i.xx, ptr %i.yb, align 8, !tbaa !101, !alias.scope !722
  %.sroa.2.0..sroa_idx.i469 = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  store i64 %i.xy, ptr %.sroa.2.0..sroa_idx.i469, align 8, !tbaa !102, !alias.scope !722
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  store i64 %i.fp, ptr %i.yc, align 8, !tbaa !258, !alias.scope !722
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  store i64 %i.fk, ptr %i.yd, align 8, !tbaa !259, !alias.scope !722
  %i.ye = add i64 %i.xz, 1
  store i64 %i.ye, ptr %i.aq, align 8, !tbaa !256, !alias.scope !722
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

bb.ch:                                            ; preds = %bb.be
  %i.yf = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 2488
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !206
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 96 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !221
  %i.yk = and i32 %i.yj, -385
  %i.yl = or disjoint i32 %i.yk, 256
  store i32 %i.yl, ptr %i.yi, align 8, !tbaa !221
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_key_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.ym = load ptr, ptr %i.ag, align 8, !tbaa !169 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.w, ptr noundef nonnull align 16 dereferenceable(44) @__const._ZN2c43yml16EventHandlerTree42actually_val_is_first_key_of_new_map_blockEv.msg, i64 44, i1 false)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 2456
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 2488
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !206
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 56
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 2480
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !97
  %i.yt = load ptr, ptr %i.yn, align 8, !tbaa !94
  call void %i.ys(ptr noundef nonnull %i.w, i64 noundef 43, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.yq, ptr noundef %i.yt), !inline_history !245
  call void @abort() #61
  unreachable

bb.ci:                                            ; preds = %bb.be
  %i.yu = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 2488
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !206
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 96 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !221
  %i.yz = and i32 %i.yy, -385
  %i.za = or disjoint i32 %i.yz, 256
  store i32 %i.za, ptr %i.yx, align 8, !tbaa !221
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_key_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.zb = load ptr, ptr %i.ag, align 8, !tbaa !169 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.v, ptr noundef nonnull align 16 dereferenceable(44) @__const._ZN2c43yml16EventHandlerTree42actually_val_is_first_key_of_new_map_blockEv.msg, i64 44, i1 false)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 2456
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 2488
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !206
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 56
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zb, i64 2480
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !97
  %i.zi = load ptr, ptr %i.zc, align 8, !tbaa !94
  call void %i.zh(ptr noundef nonnull %i.v, i64 noundef 43, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.zf, ptr noundef %i.zi), !inline_history !246
  call void @abort() #61
  unreachable

bb.cj:                                            ; preds = %bb.be
  %i.zj = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 2488
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !206
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !247
  %i.zo = icmp eq i64 %i.zn, 0
  %i.zp = icmp ugt i64 %.sroa.27.0, 2
  %or.cond = and i1 %i.zp, %i.zo
  br i1 %or.cond, label %bb.ck, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.01182.0, i64 1
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !87
  %i.zs = icmp eq i8 %i.zr, 45
  br i1 %i.zs, label %bb.cl, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread

bb.cl:                                            ; preds = %bb.ck
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.01182.0, i64 2
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !87
  %i.zv = icmp eq i8 %i.zu, 45
  br i1 %i.zv, label %bb.cm, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread

bb.cm:                                            ; preds = %bb.cl
  %i.zw = icmp eq i64 %.sroa.27.0, 3
  br i1 %i.zw, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread1255, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.cm
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.01182.0, i64 3
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !87
  %i.zz = icmp eq i8 %i.zy, 32
  br i1 %i.zz, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread1255, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread

_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread1255: ; preds = %bb.cm, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_end_doc_suddenly__popEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE9_end2_docEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 1, ptr %i.aaa, align 1, !tbaa !196
  %i.aab = load ptr, ptr %i.ag, align 8, !tbaa !169 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 2488
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !206
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 96 ; 2 uses
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !221
  %i.aag = or i32 %i.aaf, 16384
  store i32 %i.aag, ptr %i.aae, align 8, !tbaa !221
  call void @_ZN2c43yml16EventHandlerTree14begin_doc_explEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.aab)
  %i.aah = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 2488
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !206 ; 7 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 104
  store i64 0, ptr %i.aak, align 8, !tbaa !215
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 56 ; 3 uses
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !210
  %i.aan = add i64 %i.aam, 3                      ; 2 uses
  store i64 %i.aan, ptr %i.aal, align 8, !tbaa !210
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 72 ; 3 uses
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !212
  %i.aaq = add i64 %i.aap, 3                      ; 2 uses
  store i64 %i.aaq, ptr %i.aao, align 8, !tbaa !212
  %i.aar = load ptr, ptr %i.aaj, align 8, !tbaa !139
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 3 ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8 ; 3 uses
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !138
  %i.aav = add i64 %i.aau, -3                     ; 5 uses
  store ptr %i.aas, ptr %i.aaj, align 8, !tbaa !101
  store i64 %i.aav, ptr %i.aat, align 8, !tbaa !102
  %.not.i474 = icmp eq i64 %i.aav, 0
  br i1 %.not.i474, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread1255
  %i.aaw = load i8, ptr %i.aas, align 1, !tbaa !87
  %i.aax = icmp eq i8 %i.aaw, 32
  br i1 %i.aax, label %.lr.ph.i.i475, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

.lr.ph.i.i475:                                    ; preds = %bb.cn, %bb.co
  %.0710.i.i476 = phi i64 [ %i.aba, %bb.co ], [ 0, %bb.cn ] ; 4 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aas, i64 %.0710.i.i476
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !87
  %.not.i.i477 = icmp eq i8 %i.aaz, 32
  br i1 %.not.i.i477, label %bb.co, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i478

bb.co:                                            ; preds = %.lr.ph.i.i475
  %i.aba = add nuw i64 %.0710.i.i476, 1           ; 2 uses
  %exitcond.not.i.i480 = icmp eq i64 %i.aba, %i.aav
  br i1 %exitcond.not.i.i480, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i479, label %.lr.ph.i.i475, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i478: ; preds = %.lr.ph.i.i475
  %i.abb = icmp eq i64 %.0710.i.i476, -1
  br i1 %i.abb, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i479, label %bb.cp

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i479: ; preds = %bb.co, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i478
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i479, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i478
  %i.abc = phi i64 [ %i.aav, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i479 ], [ %.0710.i.i476, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i478 ] ; 4 uses
  %i.abd = add i64 %i.abc, %i.aan
  store i64 %i.abd, ptr %i.aal, align 8, !tbaa !210
  %i.abe = add i64 %i.abc, %i.aaq
  store i64 %i.abe, ptr %i.aao, align 8, !tbaa !212
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.abc
  %i.abg = sub i64 %i.aav, %i.abc
  store ptr %i.abf, ptr %i.aaj, align 8, !tbaa !101
  store i64 %i.abg, ptr %i.aat, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread: ; preds = %bb.ck, %bb.cl, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #59, !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #59, !noalias !723
  store ptr %i.u, ptr %45, align 8, !tbaa !101, !noalias !723
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i482, align 8, !tbaa !102, !noalias !723
  store i64 0, ptr %i.ao, align 8, !tbaa !178, !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #59, !noalias !723
  store ptr %45, ptr %46, align 8, !tbaa !180, !noalias !723
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.abh = load i64, ptr %i.ao, align 8, !tbaa !178, !noalias !723 ; 3 uses
  %i.abi = load i64, ptr %.sroa.2.0..sroa_idx.i.i482, align 8, !tbaa !181, !noalias !723
  %i.abj = icmp ult i64 %i.abh, %i.abi
  br i1 %i.abj, label %bb.cq, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.cq:                                            ; preds = %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread
  %i.abk = load ptr, ptr %45, align 8, !tbaa !182, !noalias !723
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abh
  store i8 10, ptr %i.abl, align 1, !tbaa !87
  %.pre.i.i483 = load i64, ptr %i.ao, align 8, !tbaa !178, !noalias !723
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread, %bb.cq
  %i.abm = phi i64 [ %.pre.i.i483, %bb.cq ], [ %i.abh, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread ]
  %i.abn = add i64 %i.abm, 1
  store i64 %i.abn, ptr %i.ao, align 8, !tbaa !178, !noalias !723
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %46)
  %i.abo = load i64, ptr %i.ao, align 8, !tbaa !178, !noalias !723
  %i.abp = call i64 @llvm.umin.i64(i64 %i.abo, i64 1024)
  %i.abq = load ptr, ptr %i.ag, align 8, !tbaa !169, !noalias !723 ; 4 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 2520
  store ptr null, ptr %i.abr, align 8, !tbaa !223
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 2480
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !224
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 2488
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !206
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 56
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abq, i64 2456
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !193
  call void %i.abt(ptr noundef nonnull %i.u, i64 noundef %i.abp, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.abw, ptr noundef %i.aby), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #59, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #59, !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #59, !noalias !723
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

bb.cr:                                            ; preds = %bb.be
  %i.abz = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 2488
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !206
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !247
  %i.ace = icmp eq i64 %i.acd, 0
  %i.acf = icmp ugt i64 %.sroa.27.0, 2
  %or.cond1291 = and i1 %i.acf, %i.ace
  br i1 %or.cond1291, label %bb.cs, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread

bb.cs:                                            ; preds = %bb.cr
  %i.acg = getelementptr inbounds nuw i8, ptr %.sroa.01182.0, i64 1
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !87
  %i.aci = icmp eq i8 %i.ach, 46
  br i1 %i.aci, label %bb.ct, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread

bb.ct:                                            ; preds = %bb.cs
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.01182.0, i64 2
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !87
  %i.acl = icmp eq i8 %i.ack, 46
  br i1 %i.acl, label %bb.cu, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread

bb.cu:                                            ; preds = %bb.ct
  %i.acm = icmp eq i64 %.sroa.27.0, 3
  br i1 %i.acm, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread1256, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.cu
  %i.acn = getelementptr inbounds nuw i8, ptr %.sroa.01182.0, i64 3
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !87
  %i.acp = icmp eq i8 %i.aco, 32
  br i1 %i.acp, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread1256, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread

_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread1256: ; preds = %bb.cu, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_end_doc_suddenly__popEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE14_end2_doc_explEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.acq = load ptr, ptr %i.ag, align 8, !tbaa !169
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 2488
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !206 ; 7 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 96 ; 2 uses
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !221
  %i.acv = and i32 %i.acu, -49168
  %i.acw = or disjoint i32 %i.acv, 32771
  store i32 %i.acw, ptr %i.act, align 8, !tbaa !221
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acs, i64 56 ; 3 uses
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !210
  %i.acz = add i64 %i.acy, 3                      ; 2 uses
  store i64 %i.acz, ptr %i.acx, align 8, !tbaa !210
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acs, i64 72 ; 3 uses
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !212
  %i.adc = add i64 %i.adb, 3                      ; 2 uses
  store i64 %i.adc, ptr %i.ada, align 8, !tbaa !212
  %i.add = load ptr, ptr %i.acs, align 8, !tbaa !139
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 3 ; 4 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acs, i64 8 ; 3 uses
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !138
  %i.adh = add i64 %i.adg, -3                     ; 5 uses
  store ptr %i.ade, ptr %i.acs, align 8, !tbaa !101
  store i64 %i.adh, ptr %i.adf, align 8, !tbaa !102
  %.not.i487 = icmp eq i64 %i.adh, 0
  br i1 %.not.i487, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread1256
  %i.adi = load i8, ptr %i.ade, align 1, !tbaa !87
  %i.adj = icmp eq i8 %i.adi, 32
  br i1 %i.adj, label %.lr.ph.i.i488, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

.lr.ph.i.i488:                                    ; preds = %bb.cv, %bb.cw
  %.0710.i.i489 = phi i64 [ %i.adm, %bb.cw ], [ 0, %bb.cv ] ; 4 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ade, i64 %.0710.i.i489
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !87
  %.not.i.i490 = icmp eq i8 %i.adl, 32
  br i1 %.not.i.i490, label %bb.cw, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i491

bb.cw:                                            ; preds = %.lr.ph.i.i488
  %i.adm = add nuw i64 %.0710.i.i489, 1           ; 2 uses
  %exitcond.not.i.i493 = icmp eq i64 %i.adm, %i.adh
  br i1 %exitcond.not.i.i493, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i492, label %.lr.ph.i.i488, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i491: ; preds = %.lr.ph.i.i488
  %i.adn = icmp eq i64 %.0710.i.i489, -1
  br i1 %i.adn, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i492, label %bb.cx

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i492: ; preds = %bb.cw, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i491
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i492, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i491
  %i.ado = phi i64 [ %i.adh, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.i492 ], [ %.0710.i.i489, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i491 ] ; 4 uses
  %i.adp = add i64 %i.ado, %i.acz
  store i64 %i.adp, ptr %i.acx, align 8, !tbaa !210
  %i.adq = add i64 %i.ado, %i.adc
  store i64 %i.adq, ptr %i.ada, align 8, !tbaa !212
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.ado
  %i.ads = sub i64 %i.adh, %i.ado
  store ptr %i.adr, ptr %i.acs, align 8, !tbaa !101
  store i64 %i.ads, ptr %i.adf, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit

_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread: ; preds = %bb.cs, %bb.ct, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #59, !noalias !724
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #59, !noalias !724
  store ptr %i.t, ptr %43, align 8, !tbaa !101, !noalias !724
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i495, align 8, !tbaa !102, !noalias !724
  store i64 0, ptr %i.an, align 8, !tbaa !178, !noalias !724
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #59, !noalias !724
  store ptr %43, ptr %44, align 8, !tbaa !180, !noalias !724
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.adt = load i64, ptr %i.an, align 8, !tbaa !178, !noalias !724 ; 3 uses
  %i.adu = load i64, ptr %.sroa.2.0..sroa_idx.i.i495, align 8, !tbaa !181, !noalias !724
  %i.adv = icmp ult i64 %i.adt, %i.adu
  br i1 %i.adv, label %bb.cy, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit497

bb.cy:                                            ; preds = %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread
  %i.adw = load ptr, ptr %43, align 8, !tbaa !182, !noalias !724
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.adt
  store i8 10, ptr %i.adx, align 1, !tbaa !87
  %.pre.i.i496 = load i64, ptr %i.an, align 8, !tbaa !178, !noalias !724
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit497

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit497: ; preds = %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread, %bb.cy
  %i.ady = phi i64 [ %.pre.i.i496, %bb.cy ], [ %i.adt, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread ]
  %i.adz = add i64 %i.ady, 1
  store i64 %i.adz, ptr %i.an, align 8, !tbaa !178, !noalias !724
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %44)
  %i.aea = load i64, ptr %i.an, align 8, !tbaa !178, !noalias !724
  %i.aeb = call i64 @llvm.umin.i64(i64 %i.aea, i64 1024)
  %i.aec = load ptr, ptr %i.ag, align 8, !tbaa !169, !noalias !724 ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 2520
  store ptr null, ptr %i.aed, align 8, !tbaa !223
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 2480
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !224
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 2488
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !206
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 56
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aec, i64 2456
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !193
  call void %i.aef(ptr noundef nonnull %i.t, i64 noundef %i.aeb, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.aei, ptr noundef %i.aek), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #59, !noalias !724
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #59, !noalias !724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #59, !noalias !724
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

bb.cz:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #59, !noalias !725
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #59, !noalias !725
  store ptr %i.s, ptr %41, align 8, !tbaa !101, !noalias !725
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i498, align 8, !tbaa !102, !noalias !725
  store i64 0, ptr %i.av, align 8, !tbaa !178, !noalias !725
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #59, !noalias !725
  store ptr %41, ptr %42, align 8, !tbaa !180, !noalias !725
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  %i.ael = load i64, ptr %i.av, align 8, !tbaa !178, !noalias !725 ; 3 uses
  %i.aem = load i64, ptr %.sroa.2.0..sroa_idx.i.i498, align 8, !tbaa !181, !noalias !725
  %i.aen = icmp ult i64 %i.ael, %i.aem
  br i1 %i.aen, label %bb.da, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit500

bb.da:                                            ; preds = %bb.cz
  %i.aeo = load ptr, ptr %41, align 8, !tbaa !182, !noalias !725
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.ael
  store i8 10, ptr %i.aep, align 1, !tbaa !87
  %.pre.i.i499 = load i64, ptr %i.av, align 8, !tbaa !178, !noalias !725
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit500

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit500: ; preds = %bb.cz, %bb.da
  %i.aeq = phi i64 [ %.pre.i.i499, %bb.da ], [ %i.ael, %bb.cz ]
  %i.aer = add i64 %i.aeq, 1
  store i64 %i.aer, ptr %i.av, align 8, !tbaa !178, !noalias !725
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %42)
  %i.aes = load i64, ptr %i.av, align 8, !tbaa !178, !noalias !725
  %i.aet = call i64 @llvm.umin.i64(i64 %i.aes, i64 1024)
  %i.aeu = load ptr, ptr %i.ag, align 8, !tbaa !169, !noalias !725 ; 4 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 2520
  store ptr null, ptr %i.aev, align 8, !tbaa !223
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeu, i64 2480
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !224
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 2488
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !206
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 56
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeu, i64 2456
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !193
  call void %i.aex(ptr noundef nonnull %i.s, i64 noundef %i.aet, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.afa, ptr noundef %i.afc), !inline_history !243
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #59, !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #59, !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #59, !noalias !725
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit.thread: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit412, %bb.bx, %bb.y, %bb.ao, %bb.bm, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit470, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit497, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit500, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_add_annotationEPNS3_10AnnotationENS_15basic_substringIKcEEmm.exit, %bb.bd, %bb.am, %bb.an, %bb.v, %bb.w, %bb.aj, %bb.ak, %bb.ba, %bb.bb, %bb.bj, %bb.bk, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #59
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit918

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_maybe_skip_whitespace_tokensEv.exit: ; preds = %bb.cx, %bb.cv, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit.thread1256, %bb.cp, %bb.cn, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit.thread1255
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #59
  br label %.loopexit1306

bb.db:                                            ; preds = %bb.b
  %i.afd = and i32 %i.cz, 256
  %.not1294 = icmp eq i32 %i.afd, 0
  br i1 %.not1294, label %bb.en, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.afe = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !712
  %i.afg = icmp eq ptr %.sroa.01182.0.copyload, %i.aff
  br i1 %i.afg, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.afh = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !247 ; 7 uses
  %.not.i296 = icmp ne i64 %i.afi, -1             ; 2 uses
end_hunk_0
