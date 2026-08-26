Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFEmitter?download=true
inline.NumInlined: 1244
inline.NumDeleted: 580
begin_hunk_0_@_ZN4llvm4yaml9yaml2coffERNS_8COFFYAML6ObjectERNS_11raw_ostreamENS_12function_refIFvRKNS_5TwineEEEE:bb.a
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 176
  %i.tf = load i8, ptr %i.te, align 8, !tbaa !248, !range !15, !noundef !16
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.cg, label %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i

bb.cg:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit158.thread.i
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 64 ; 2 uses
  %i.ti = load i8, ptr %i.th, align 8, !tbaa !8, !range !15, !noundef !16
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 56 ; 2 uses
  %i.tk = load i64, ptr %i.tj, align 8
  %i.tl = zext nneg i8 %i.ti to i64
  %.0.i159.i = lshr i64 %i.tk, %i.tl
  %i.tm = icmp eq i64 %.0.i159.i, 0
  br i1 %i.tm, label %bb.ch, label %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i

bb.ch:                                            ; preds = %bb.cg
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 48
  %i.to = call { ptr, i64 } @_ZN4llvm12CodeViewYAML8toDebugHERKNS0_13DebugHSectionERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.td, ptr noundef nonnull align 8 dereferenceable(80) %i.hz) #15 ; 2 uses
  %i.tp = extractvalue { ptr, i64 } %i.to, 0
  %i.tq = extractvalue { ptr, i64 } %i.to, 1
  store ptr %i.tp, ptr %i.tn, align 8, !tbaa !68
  store i64 %i.tq, ptr %i.tj, align 8, !tbaa !64
  store i8 0, ptr %i.th, align 8, !tbaa !245
  br label %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i

_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i: ; preds = %bb.ch, %bb.cg, %_ZN4llvmeqENS_9StringRefES0_.exit158.thread.i, %_ZN4llvmeqENS_9StringRefES0_.exit152.thread231.i, %bb.cf, %_ZN4llvmeqENS_9StringRefES0_.exit152.thread.i, %bb.ce, %_ZN4llvmeqENS_9StringRefES0_.exit147.thread.i, %_ZL8toDebugSN4llvm8ArrayRefINS_12CodeViewYAML19YAMLDebugSubsectionEEERKNS_8codeview19StringsAndChecksumsERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit141.thread.i, %bb.ad
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 64
  %i.ts = load i8, ptr %i.tr, align 8, !tbaa !8, !range !15, !noundef !16
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 56
  %i.tu = load i64, ptr %i.tt, align 8
  %i.tv = zext nneg i8 %i.ts to i64
  %.0.i161.i = lshr i64 %i.tu, %i.tv              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 184
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !249 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 192
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !249 ; 2 uses
  %.not242260.i = icmp eq ptr %i.tx, %i.tz
  br i1 %.not242260.i, label %._crit_edge264.i, label %.lr.ph263.i

._crit_edge264.i:                                 ; preds = %.lr.ph263.i, %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i
  %.0123.lcssa.i = phi i64 [ %.0.i161.i, %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i ], [ %i.uj, %.lr.ph263.i ] ; 2 uses
  %.not124.i = icmp eq i64 %.0123.lcssa.i, 0
  br i1 %.not124.i, label %bb.cr, label %bb.ci

.lr.ph263.i:                                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i, %.lr.ph263.i
  %.0123262.i = phi i64 [ %i.uj, %.lr.ph263.i ], [ %.0.i161.i, %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i ]
  %.sroa.0178.0261.i = phi ptr [ %i.uk, %.lr.ph263.i ], [ %i.tx, %_ZN4llvmeqENS_9StringRefES0_.exit158.thread234.i ] ; 8 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 4
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 16
  %.sroa.4173.0.copyload.i = load i64, ptr %.sroa.4173.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 24
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 32
  %.sroa.6174.0.copyload.i = load i32, ptr %.sroa.6174.0..sroa_idx.i, align 8
  %.sroa.7175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 220
  %.sroa.7175.0.copyload.i = load i8, ptr %.sroa.7175.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 221
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 533
  %.sroa.9176.0.copyload.i = load i8, ptr %.sroa.9176.0..sroa_idx.i, align 1
  %i.ua = zext nneg i8 %.sroa.5.0.copyload.i to i64
  %.0.i.i.i = lshr i64 %.sroa.4173.0.copyload.i, %i.ua
  %i.ub = shl nuw nsw i8 %.sroa.3.0.copyload.i, 2
  %i.uc = zext nneg i8 %i.ub to i64
  %i.ud = trunc nuw i8 %.sroa.7175.0.copyload.i to i1
  %i.ue = zext i32 %.sroa.6174.0.copyload.i to i64
  %i.uf = select i1 %i.ud, i64 %i.ue, i64 0
  %i.ug = trunc nuw i8 %.sroa.9176.0.copyload.i to i1
  %i.uh = zext i32 %.sroa.8.0.copyload.i to i64
  %i.ui = select i1 %i.ug, i64 %i.uh, i64 0
  %spec.select.i.i = add i64 %.0123262.i, %i.uc
  %.1.i.i = add i64 %spec.select.i.i, %.0.i.i.i
  %.2.i.i = add i64 %.1.i.i, %i.uf
  %i.uj = add i64 %.2.i.i, %i.ui                  ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0178.0261.i, i64 536 ; 2 uses
  %.not242.i = icmp eq ptr %i.uk, %i.tz
  br i1 %.not242.i, label %._crit_edge264.i, label %.lr.ph263.i

bb.ci:                                            ; preds = %._crit_edge264.i
  %.val127.i = load ptr, ptr %31, align 8, !tbaa !65 ; 3 uses
  %i.ul = getelementptr i8, ptr %.val127.i, i64 304
  %.val127.val.i = load i8, ptr %i.ul, align 8, !tbaa !144, !range !15, !noundef !16
  %i.um = trunc nuw i8 %.val127.val.i to i1       ; 2 uses
  br i1 %i.um, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.un = getelementptr i8, ptr %.val127.i, i64 44
  %.val132.val.i = load i32, ptr %i.un, align 4, !tbaa !250
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.uo = phi i32 [ %.val132.val.i, %bb.cj ], [ 4, %bb.ci ] ; 2 uses
  %i.up = icmp ne i32 %.0119267.i, 0
  %i.uq = zext i1 %i.up to i32                    ; 2 uses
  %i.ur = sub i32 %.0119267.i, %i.uq
  %i.us = udiv i32 %i.ur, %i.uo
  %i.ut = add i32 %i.us, %i.uq
  %i.uu = mul i32 %i.ut, %i.uo                    ; 2 uses
  %i.uv = trunc i64 %.0123.lcssa.i to i32         ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 16 ; 2 uses
  store i32 %i.uv, ptr %i.uw, align 8, !tbaa !251
  br i1 %i.um, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ux = getelementptr i8, ptr %.val127.i, i64 44
  %.val131.val.i = load i32, ptr %i.ux, align 4, !tbaa !250 ; 2 uses
  %i.uy = icmp ne i32 %i.uv, 0
  %i.uz = zext i1 %i.uy to i32                    ; 2 uses
  %i.va = sub i32 %i.uv, %i.uz
  %i.vb = udiv i32 %i.va, %.val131.val.i
  %i.vc = add i32 %i.vb, %i.uz
  %i.vd = mul i32 %i.vc, %.val131.val.i           ; 2 uses
  store i32 %i.vd, ptr %i.uw, align 8, !tbaa !251
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.ve = phi i32 [ %i.vd, %bb.cl ], [ %i.uv, %bb.ck ]
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 20
  store i32 %i.uu, ptr %i.vf, align 4, !tbaa !252
  %i.vg = add i32 %i.ve, %i.uu                    ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 208
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !253 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 216
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !253 ; 3 uses
  %i.vl = icmp eq ptr %i.vi, %i.vk
  br i1 %i.vl, label %bb.cs, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 24
  store i32 %i.vg, ptr %i.vm, align 8, !tbaa !254
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 36
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !113
  %i.vp = and i32 %i.vo, 16777216
  %.not125.i = icmp eq i32 %i.vp, 0
  br i1 %.not125.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vq = add i32 %i.vg, 10
  %.pre286.i = ptrtoint ptr %i.vk to i64
  %.pre287.i = ptrtoint ptr %i.vi to i64
  %.pre289.i = sub i64 %.pre286.i, %.pre287.i
  %.pre291.i = lshr exact i64 %.pre289.i, 5
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.vr = ptrtoint ptr %i.vk to i64
  %i.vs = ptrtoint ptr %i.vi to i64
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = lshr exact i64 %i.vt, 5                 ; 2 uses
  %i.vv = trunc i64 %i.vu to i16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pre-phi292.i = phi i64 [ %i.vu, %bb.cp ], [ %.pre291.i, %bb.co ]
  %.sink.i = phi i16 [ %i.vv, %bb.cp ], [ -1, %bb.co ]
  %.1120.i = phi i32 [ %i.vg, %bb.cp ], [ %i.vq, %bb.co ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 32
  store i16 %.sink.i, ptr %i.vw, align 8, !tbaa !255
  %i.vx = trunc i64 %.pre-phi292.i to i32
  %i.vy = mul i32 %i.vx, 10
  %i.vz = add i32 %.1120.i, %i.vy
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge264.i
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 20
  store i32 0, ptr %i.wa, align 4, !tbaa !252
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cm
  %.2121.i = phi i32 [ %i.vg, %bb.cm ], [ %i.vz, %bb.cq ], [ %.0119267.i, %bb.cr ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0210.0266.i, i64 248 ; 2 uses
  %.not239.i = icmp eq ptr %i.wb, %i.hy
  br i1 %.not239.i, label %._crit_edge270.loopexit.i, label %bb.ad

bb.ct:                                            ; preds = %bb.cv, %.lr.ph276.i
  %.0118274.i = phi i32 [ 0, %.lr.ph276.i ], [ %i.xg, %bb.cv ]
  %.sroa.0162.0273.i = phi ptr [ %i.ix, %.lr.ph276.i ], [ %i.xh, %bb.cv ] ; 8 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 48
  %i.wd = load i8, ptr %i.wc, align 4, !tbaa !256, !range !15, !noundef !16
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 72
  %i.wf = load i8, ptr %i.we, align 4, !tbaa !257, !range !15, !noundef !16
  %narrow.i = add nuw nsw i8 %i.wf, %i.wd
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 96
  %i.wh = load i8, ptr %i.wg, align 4, !tbaa !258, !range !15, !noundef !16
  %narrow241.i = add nuw nsw i8 %narrow.i, %i.wh
  %.2.i = zext nneg i8 %narrow241.i to i32        ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 112
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !259 ; 2 uses
  %i.wk = icmp eq i64 %i.wj, 0
  br i1 %i.wk, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.val134.val.i = load ptr, ptr %i.ja, align 8, !tbaa !164
  %.val134.val135.i = load ptr, ptr %i.jb, align 8, !tbaa !165
  %i.wl = ptrtoint ptr %.val134.val135.i to i64
  %i.wm = ptrtoint ptr %.val134.val.i to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = sdiv exact i64 %i.wn, 248
  %i.wp = trunc i64 %i.wo to i32
  %i.wq = icmp sgt i32 %i.wp, 65279               ; 2 uses
  %i.wr = select i1 %i.wq, i64 20, i64 18
  %i.ws = add i64 %i.wj, -1
  %i.wt = add i64 %i.ws, %i.wr                    ; 2 uses
  %33 = udiv i64 %i.wt, 20
  %i.wu = udiv i64 %i.wt, 18
  %34 = select i1 %i.wq, i64 %33, i64 %i.wu
  %i.wv = trunc i64 %34 to i32
  %i.ww = add i32 %i.wv, %.2.i
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.3.i = phi i32 [ %.2.i, %bb.ct ], [ %i.ww, %bb.cu ]
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 140
  %i.wy = load i8, ptr %i.wx, align 4, !tbaa !260, !range !15, !noundef !16
  %i.wz = zext nneg i8 %i.wy to i32
  %spec.select126.i = add i32 %.3.i, %i.wz
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 164
  %i.xb = load i8, ptr %i.xa, align 4, !tbaa !261, !range !15, !noundef !16
  %i.xc = zext nneg i8 %i.xb to i32
  %.5.i = add i32 %spec.select126.i, %i.xc        ; 2 uses
  %i.xd = trunc i32 %.5.i to i8
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 19
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !262
  %i.xf = add i32 %.0118274.i, 1
  %i.xg = add i32 %i.xf, %.5.i                    ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0162.0273.i, i64 184 ; 2 uses
  %.not240.i = icmp eq ptr %i.xh, %i.iz
  br i1 %.not240.i, label %_ZL10layoutCOFFRN12_GLOBAL__N_110COFFParserE.exit, label %bb.ct, !llvm.loop !263

_ZL10layoutCOFFRN12_GLOBAL__N_110COFFParserE.exit: ; preds = %bb.cv, %._crit_edge270.i
  %.0118.lcssa.i = phi i32 [ 0, %._crit_edge270.i ], [ %i.xg, %bb.cv ] ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.iv, i64 336
  %i.xj = getelementptr inbounds nuw i8, ptr %i.iv, i64 344
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !165
  %i.xl = load ptr, ptr %i.xi, align 8, !tbaa !164
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = sdiv exact i64 %i.xo, 248
  %i.xq = trunc i64 %i.xp to i32
  %i.xr = getelementptr inbounds nuw i8, ptr %i.iv, i64 316
  store i32 %i.xq, ptr %i.xr, align 4, !tbaa !264
  %i.xs = getelementptr inbounds nuw i8, ptr %i.iv, i64 328
  store i32 %.0118.lcssa.i, ptr %i.xs, align 8, !tbaa !265
  %.not.i = icmp ne i32 %.0118.lcssa.i, 0
  %i.xt = load i64, ptr %i.ch, align 8, !tbaa !36 ; 2 uses
  %i.xu = icmp ugt i64 %i.xt, 4
  %or.cond337.i = select i1 %.not.i, i1 true, i1 %i.xu
  %.0119.lcssa..i = select i1 %or.cond337.i, i32 %.0119.lcssa.i, i32 0
  %i.xv = getelementptr inbounds nuw i8, ptr %i.iv, i64 324
  store i32 %.0119.lcssa..i, ptr %i.xv, align 4, !tbaa !266
  %i.xw = trunc i64 %i.xt to i32
  %i.xx = load ptr, ptr %i.cf, align 8, !tbaa !75
  store i32 %i.xw, ptr %i.xx, align 1
  %.val141.i = load ptr, ptr %31, align 8, !tbaa !65 ; 2 uses
  %i.xy = getelementptr i8, ptr %.val141.i, i64 304
  %.val141.val.i = load i8, ptr %i.xy, align 8, !tbaa !144, !range !15, !noundef !16
  %i.xz = trunc nuw i8 %.val141.val.i to i1
  br i1 %i.xz, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZL10layoutCOFFRN12_GLOBAL__N_110COFFParserE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ya = getelementptr inbounds nuw i8, ptr %4, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.ya, i8 0, i64 58, i1 false)
  store i8 77, ptr %4, align 1, !tbaa !38
  %i.yb = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 90, ptr %i.yb, align 1, !tbaa !38
  %i.yc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 64, ptr %i.yc, align 1
  %i.yd = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 128, ptr %i.yd, align 1
  %i.ye = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %4, i64 noundef 64) #15 ; 0 uses
  %i.yf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream11write_zerosEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 64) #15 ; 0 uses
  %i.yg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @_ZN4llvm4COFFL7PEMagicE, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.val144.pre.i = load ptr, ptr %31, align 8, !tbaa !65
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZL10layoutCOFFRN12_GLOBAL__N_110COFFParserE.exit
  %.val144.i = phi ptr [ %.val144.pre.i, %bb.cw ], [ %.val141.i, %_ZL10layoutCOFFRN12_GLOBAL__N_110COFFParserE.exit ] ; 3 uses
  %i.yh = getelementptr i8, ptr %.val144.i, i64 336
  %.val144.val.i = load ptr, ptr %i.yh, align 8, !tbaa !164
  %i.yi = getelementptr i8, ptr %.val144.i, i64 344
  %.val144.val145.i = load ptr, ptr %i.yi, align 8, !tbaa !165
  %i.yj = ptrtoint ptr %.val144.val145.i to i64
  %i.yk = ptrtoint ptr %.val144.val.i to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = sdiv exact i64 %i.yl, 248
  %i.yn = trunc i64 %i.ym to i32
  %i.yo = icmp sgt i32 %i.yn, 65279
  br i1 %i.yo, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br) #15
  store i16 0, ptr %i.br, align 2
  %i.yp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.br, i64 noundef 2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #15
  store i16 -1, ptr %i.bq, align 2
  %i.yq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bq, i64 noundef 2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp) #15
  store i16 2, ptr %i.bp, align 2
  %i.yr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bp, i64 noundef 2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #15
  %i.ys = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 312
  %i.yu = load i16, ptr %i.yt, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #15
  store i16 %i.yu, ptr %i.bo, align 2
  %i.yv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bo, i64 noundef 2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo) #15
  %i.yw = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 320
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn) #15
  store i32 %i.yy, ptr %i.bn, align 4
  %i.yz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bn, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #15
  %i.za = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @_ZN4llvm4COFFL11BigObjMagicE, i64 noundef 16) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm) #15
  store i32 0, ptr %i.bm, align 4
  %i.zb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bm, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #15
  store i32 0, ptr %i.bl, align 4
  %i.zc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bl, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #15
  store i32 0, ptr %i.bk, align 4
  %i.zd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bk, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #15
  store i32 0, ptr %i.bj, align 4
  %i.ze = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bj, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj) #15
  %i.zf = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 316
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #15
  store i32 %i.zh, ptr %i.bi, align 4
  %i.zi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bi, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi) #15
  %i.zj = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 324
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #15
  store i32 %i.zl, ptr %i.bh, align 4
  %i.zm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bh, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #15
  %i.zn = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 328
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #15
  store i32 %i.zp, ptr %i.bg, align 4
  %i.zq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bg, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #15
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.zr = getelementptr inbounds nuw i8, ptr %.val144.i, i64 312
  %i.zs = load i16, ptr %i.zr, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #15
  store i16 %i.zs, ptr %i.bf, align 2
  %i.zt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bf, i64 noundef 2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #15
  %i.zu = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 316
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !264
  %i.zx = trunc i32 %i.zw to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #15
  store i16 %i.zx, ptr %i.be, align 2
  %i.zy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.be, i64 noundef 2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #15
  %i.zz = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 320
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #15
  store i32 %i.aab, ptr %i.bd, align 4
  %i.aac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bd, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #15
  %i.aad = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 324
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #15
  store i32 %i.aaf, ptr %i.bc, align 4
  %i.aag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bc, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #15
  %i.aah = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 328
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #15
  store i32 %i.aaj, ptr %i.bb, align 4
  %i.aak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.bb, i64 noundef 4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #15
  %i.aal = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 332
  %i.aan = load i16, ptr %i.aam, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #15
  store i16 %i.aan, ptr %i.ba, align 2
  %i.aao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ba, i64 noundef 2) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #15
  %i.aap = load ptr, ptr %31, align 8, !tbaa !65, !nonnull !16, !align !267
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 334
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #15
  store i16 %i.aar, ptr %i.az, align 2
end_hunk_0
