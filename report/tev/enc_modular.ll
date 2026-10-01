Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_modular?download=true
inline.NumInlined: 5470
inline.NumDeleted: 2759
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb:bb.a
  %i.xv = trunc nuw nsw i64 %.0434 to i32
  store i32 13, ptr %i.su, align 8, !tbaa !215
  %i.xw = icmp samesign ult i64 %.0434, 4
  br i1 %i.xw, label %switch.lookup, label %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i

switch.lookup:                                    ; preds = %bb.cf
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb, i64 %.0434
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %switch.gep644 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.85, i64 %.0434
  %switch.load645 = load i8, ptr %switch.gep644, align 1
  %switch.ext646 = zext i8 %switch.load645 to i32
  %switch.gep647 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.86, i64 %.0434
  %switch.load648 = load i8, ptr %switch.gep647, align 1
  %switch.ext649 = zext i8 %switch.load648 to i32
  %switch.gep650 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.87, i64 %.0434
  %switch.load651 = load i8, ptr %switch.gep650, align 1
  %switch.ext652 = zext i8 %switch.load651 to i32
  %switch.gep653 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.88, i64 %.0434
  %switch.load654 = load i8, ptr %switch.gep653, align 1
  %switch.ext655 = zext i8 %switch.load654 to i32
  %switch.gep656 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.89, i64 %.0434
  %switch.load657 = load i8, ptr %switch.gep656, align 1
  %switch.ext658 = zext i8 %switch.load657 to i32
  %switch.gep659 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.90, i64 %.0434
  %switch.load660 = load i8, ptr %switch.gep659, align 1
  %switch.ext661 = zext i8 %switch.load660 to i32
  %switch.gep662 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.91, i64 %.0434
  %switch.load663 = load i8, ptr %switch.gep662, align 1
  %switch.ext664 = zext i8 %switch.load663 to i32
  %switch.gep665 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.92, i64 %.0434
  %switch.load666 = load i8, ptr %switch.gep665, align 1
  %switch.ext667 = zext i8 %switch.load666 to i32
  %switch.gep668 = getelementptr inbounds nuw i8, ptr @switch.table._ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb.93, i64 %.0434
  %switch.load669 = load i8, ptr %switch.gep668, align 1
  %switch.ext670 = zext i8 %switch.load669 to i32
  br label %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i

_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i: ; preds = %bb.cf, %switch.lookup
  %.sink63.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 12, %bb.cf ]
  %.sink62.i.i = phi i32 [ %switch.ext646, %switch.lookup ], [ 12, %bb.cf ]
  %.sink61.i.i = phi i32 [ %switch.ext649, %switch.lookup ], [ 12, %bb.cf ]
  %.sink60.i.i = phi i32 [ %switch.ext652, %switch.lookup ], [ 10, %bb.cf ]
  %.sink59.i.i = phi i32 [ %switch.ext655, %switch.lookup ], [ 10, %bb.cf ]
  %.sink58.i.i = phi i32 [ %switch.ext658, %switch.lookup ], [ 5, %bb.cf ]
  %.sink57.i.i = phi i32 [ %switch.ext661, %switch.lookup ], [ 5, %bb.cf ]
  %.sink56.i.i = phi i32 [ %switch.ext664, %switch.lookup ], [ 5, %bb.cf ]
  %.sink55.i.i = phi i32 [ %switch.ext667, %switch.lookup ], [ 12, %bb.cf ]
  %.sink.i.i = phi i32 [ %switch.ext670, %switch.lookup ], [ 4, %bb.cf ]
  store i32 %.sink63.i.i, ptr %i.td, align 4, !tbaa !215
  store i32 %.sink62.i.i, ptr %i.tc, align 8, !tbaa !215
  store i32 %.sink61.i.i, ptr %i.tb, align 4, !tbaa !215
  store i32 %.sink60.i.i, ptr %i.st, align 4, !tbaa !476
  store i32 %.sink59.i.i, ptr %i.ta, align 8, !tbaa !477
  store i32 %.sink58.i.i, ptr %i.sz, align 4, !tbaa !478
  store i32 %.sink57.i.i, ptr %i.sy, align 8, !tbaa !479
  store i32 %.sink56.i.i, ptr %i.sx, align 4, !tbaa !480
  store i32 %.sink55.i.i, ptr %i.sw, align 8, !tbaa !481
  store i32 %.sink.i.i, ptr %i.sv, align 4, !tbaa !482
  %i.xx = load ptr, ptr %i.lb, align 8, !tbaa !335 ; 2 uses
  %i.xy = load ptr, ptr %i.te, align 8, !tbaa !336 ; 2 uses
  %.not184216.i = icmp eq ptr %i.xx, %i.xy
  br i1 %.not184216.i, label %._crit_edge.i, label %.lr.ph220.i

._crit_edge.loopexit.i:                           ; preds = %_ZN3jxl8weighted5StateD2Ev.exit.i
  %i.xz = uitofp i64 %.1.lcssa.i to float
  %i.ya = fadd float %i.adx, %i.xz
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i
  %.089.lcssa.i = phi float [ 0.000000e+00, %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i ], [ %i.ya, %._crit_edge.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.dr

.lr.ph220.i:                                      ; preds = %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i, %_ZN3jxl8weighted5StateD2Ev.exit.i
  %.0219.i = phi i64 [ %.1.lcssa.i, %_ZN3jxl8weighted5StateD2Ev.exit.i ], [ 0, %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i ] ; 3 uses
  %.089218.i = phi float [ %i.adx, %_ZN3jxl8weighted5StateD2Ev.exit.i ], [ 0.000000e+00, %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i ]
  %.sroa.0117.0217.i = phi ptr [ %i.avg, %_ZN3jxl8weighted5StateD2Ev.exit.i ], [ %i.xx, %_ZN3jxl8weighted13PredictorModeEiPNS0_6HeaderE.exit.i ] ; 5 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0117.0217.i, i64 16 ; 2 uses
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0117.0217.i, i64 56 ; 3 uses
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !347
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0117.0217.i, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %10, i8 0, i64 160, i1 false)
  store ptr %9, ptr %i.tg, align 8, !tbaa !484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.th, ptr noundef nonnull align 4 dereferenceable(256) @constinit, i64 256, i1 false), !tbaa.struct !485
  %i.yg = shl i64 %i.ye, 1
  %i.yh = add i64 %i.yg, 4                        ; 18 uses
  %.not.i = icmp eq i64 %i.yh, 0
  br i1 %.not.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.i, label %bb.cj

bb.cg:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3.i
  %i.yi = sub nuw i64 %i.yh, %i.zu
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ti, i64 noundef %i.yi) #26
  br label %_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm.exit

bb.ch:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3.i
  %i.yj = icmp ugt i64 %i.zu, %i.yh
  br i1 %i.yj, label %bb.ci, label %_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm.exit

bb.ci:                                            ; preds = %bb.ch
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.yh
  store ptr %i.yk, ptr %i.tn, align 8, !tbaa !489
  br label %_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm.exit

bb.cj:                                            ; preds = %.lr.ph220.i
  call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.tf, i64 noundef %i.yh) #26
  %.pre.i250 = load ptr, ptr %i.tt, align 8, !tbaa !191
  %.pre21.i = load ptr, ptr %.ptr1.2.i.i, align 8, !tbaa !190
  %i.yl = ptrtoint ptr %.pre.i250 to i64
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.i

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.cj, %.lr.ph220.i
  %i.ym = phi ptr [ %.pre21.i, %bb.cj ], [ null, %.lr.ph220.i ] ; 2 uses
  %i.yn = phi i64 [ %i.yl, %bb.cj ], [ 0, %.lr.ph220.i ]
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = sub i64 %i.yn, %i.yo
  %i.yq = ashr exact i64 %i.yp, 2                 ; 3 uses
  %i.yr = icmp ult i64 %i.yq, %i.yh
  br i1 %i.yr, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.i
  %i.ys = icmp ugt i64 %i.yq, %i.yh
  br i1 %i.ys, label %bb.cl, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1.i

bb.cl:                                            ; preds = %bb.ck
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.yh
  store ptr %i.yt, ptr %i.tt, align 8, !tbaa !191
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1.i

bb.cm:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.i
  %i.yu = sub nuw i64 %i.yh, %i.yq
  call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.ptr1.2.i.i, i64 noundef %i.yu) #26
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1.i

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1.i: ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.yv = load ptr, ptr %i.tr, align 8, !tbaa !191
  %i.yw = load ptr, ptr %.ptr1.1.i.i, align 8, !tbaa !190 ; 2 uses
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = sub i64 %i.yx, %i.yy
  %i.za = ashr exact i64 %i.yz, 2                 ; 3 uses
  %i.zb = icmp ult i64 %i.za, %i.yh
  br i1 %i.zb, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1.i
  %i.zc = icmp ugt i64 %i.za, %i.yh
  br i1 %i.zc, label %bb.co, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2.i

bb.co:                                            ; preds = %bb.cn
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.yh
  store ptr %i.zd, ptr %i.tr, align 8, !tbaa !191
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2.i

bb.cp:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.1.i
  %i.ze = sub nuw i64 %i.yh, %i.za
  call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.ptr1.1.i.i, i64 noundef %i.ze) #26
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2.i

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2.i: ; preds = %bb.cp, %bb.co, %bb.cn
  %i.zf = load ptr, ptr %i.tp, align 8, !tbaa !191
  %i.zg = load ptr, ptr %.ptr1.i.i, align 8, !tbaa !190 ; 2 uses
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = ptrtoint ptr %i.zg to i64
  %i.zj = sub i64 %i.zh, %i.zi
  %i.zk = ashr exact i64 %i.zj, 2                 ; 3 uses
  %i.zl = icmp ult i64 %i.zk, %i.yh
  br i1 %i.zl, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2.i
  %i.zm = icmp ugt i64 %i.zk, %i.yh
  br i1 %i.zm, label %bb.cr, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3.i

bb.cr:                                            ; preds = %bb.cq
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.yh
  store ptr %i.zn, ptr %i.tp, align 8, !tbaa !191
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3.i

bb.cs:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.2.i
  %i.zo = sub nuw i64 %i.yh, %i.zk
  call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.ptr1.i.i, i64 noundef %i.zo) #26
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3.i

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit.3.i: ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.zp = load ptr, ptr %i.tn, align 8, !tbaa !489
  %i.zq = load ptr, ptr %i.ti, align 8, !tbaa !490 ; 2 uses
  %i.zr = ptrtoint ptr %i.zp to i64
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = ashr exact i64 %i.zt, 2                 ; 3 uses
  %i.zv = icmp ult i64 %i.zu, %i.yh
  br i1 %i.zv, label %bb.cg, label %bb.ch

_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm.exit:   ; preds = %bb.cg, %bb.ch, %bb.ci
  %i.zw = load i64, ptr %i.yf, align 8, !tbaa !348 ; 2 uses
  %.not223.i.a = icmp eq i64 %i.zw, 0
  br i1 %.not223.i.a, label %.preheader.i, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm.exit
  %i.zx = lshr i64 %i.yc, 2                       ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.0117.0217.i, i64 40
  %i.zz = sub nsw i64 0, %i.zx                    ; 3 uses
  %.idx99.i = mul i64 %i.zx, -8
  %i.aaa = load i64, ptr %i.yd, align 8, !tbaa !347 ; 2 uses
  %.not224.i.a = icmp eq i64 %i.aaa, 0
  br i1 %.not224.i.a, label %.preheader.i, label %.lr.ph212.split.i

.preheader.i:                                     ; preds = %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i, %.lr.ph212.i, %_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm.exit
  %.1.lcssa.i = phi i64 [ %.0219.i, %_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm.exit ], [ %.0219.i, %.lr.ph212.i ], [ %.2.lcssa.i, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i ] ; 2 uses
  %i.aab = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %8) #25
  %i.aac = fadd float %.089218.i, %i.aab
  %i.aad = load ptr, ptr %8, align 16, !tbaa !490
  store ptr %i.aad, ptr %i.tx, align 8, !tbaa !489
  store i64 0, ptr %i.ty, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.tz, align 16, !tbaa !934
  %i.aae = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.1.i) #25
  %i.aaf = fadd float %i.aac, %i.aae
  %i.aag = load ptr, ptr %.ptr.1.i, align 8, !tbaa !490
  store ptr %i.aag, ptr %i.ua, align 16, !tbaa !489
  store i64 0, ptr %i.ub, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.uc, align 8, !tbaa !934
  %i.aah = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.2.i) #25
  %i.aai = fadd float %i.aaf, %i.aah
  %i.aaj = load ptr, ptr %.ptr.2.i, align 16, !tbaa !490
  store ptr %i.aaj, ptr %i.ud, align 8, !tbaa !489
  store i64 0, ptr %i.ue, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.uf, align 16, !tbaa !934
  %i.aak = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.3.i) #25
  %i.aal = fadd float %i.aai, %i.aak
  %i.aam = load ptr, ptr %.ptr.3.i, align 8, !tbaa !490
  store ptr %i.aam, ptr %i.ug, align 16, !tbaa !489
  store i64 0, ptr %i.uh, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.ui, align 8, !tbaa !934
  %i.aan = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.4.i) #25
  %i.aao = fadd float %i.aal, %i.aan
  %i.aap = load ptr, ptr %.ptr.4.i, align 16, !tbaa !490
  store ptr %i.aap, ptr %i.uj, align 8, !tbaa !489
  store i64 0, ptr %i.uk, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.ul, align 16, !tbaa !934
  %i.aaq = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.5.i) #25
  %i.aar = fadd float %i.aao, %i.aaq
  %i.aas = load ptr, ptr %.ptr.5.i, align 8, !tbaa !490
  store ptr %i.aas, ptr %i.um, align 16, !tbaa !489
  store i64 0, ptr %i.un, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.uo, align 8, !tbaa !934
  %i.aat = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.6.i) #25
  %i.aau = fadd float %i.aar, %i.aat
  %i.aav = load ptr, ptr %.ptr.6.i, align 16, !tbaa !490
  store ptr %i.aav, ptr %i.up, align 8, !tbaa !489
  store i64 0, ptr %i.uq, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.ur, align 16, !tbaa !934
  %i.aaw = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.7.i) #25
  %i.aax = fadd float %i.aau, %i.aaw
  %i.aay = load ptr, ptr %.ptr.7.i, align 8, !tbaa !490
  store ptr %i.aay, ptr %i.us, align 16, !tbaa !489
  store i64 0, ptr %i.ut, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.uu, align 8, !tbaa !934
  %i.aaz = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.8.i) #25
  %i.aba = fadd float %i.aax, %i.aaz
  %i.abb = load ptr, ptr %.ptr.8.i, align 16, !tbaa !490
  store ptr %i.abb, ptr %i.uv, align 8, !tbaa !489
  store i64 0, ptr %i.uw, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.ux, align 16, !tbaa !934
  %i.abc = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.9.i) #25
  %i.abd = fadd float %i.aba, %i.abc
  %i.abe = load ptr, ptr %.ptr.9.i, align 8, !tbaa !490
  store ptr %i.abe, ptr %i.uy, align 16, !tbaa !489
  store i64 0, ptr %i.uz, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.va, align 8, !tbaa !934
  %i.abf = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.10.i) #25
  %i.abg = fadd float %i.abd, %i.abf
  %i.abh = load ptr, ptr %.ptr.10.i, align 16, !tbaa !490
  store ptr %i.abh, ptr %i.vb, align 8, !tbaa !489
  store i64 0, ptr %i.vc, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.vd, align 16, !tbaa !934
  %i.abi = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.11.i) #25
  %i.abj = fadd float %i.abg, %i.abi
  %i.abk = load ptr, ptr %.ptr.11.i, align 8, !tbaa !490
  store ptr %i.abk, ptr %i.ve, align 16, !tbaa !489
  store i64 0, ptr %i.vf, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.vg, align 8, !tbaa !934
  %i.abl = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.12.i) #25
  %i.abm = fadd float %i.abj, %i.abl
  %i.abn = load ptr, ptr %.ptr.12.i, align 16, !tbaa !490
  store ptr %i.abn, ptr %i.vh, align 8, !tbaa !489
  store i64 0, ptr %i.vi, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.vj, align 16, !tbaa !934
  %i.abo = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.13.i) #25
  %i.abp = fadd float %i.abm, %i.abo
  %i.abq = load ptr, ptr %.ptr.13.i, align 8, !tbaa !490
  store ptr %i.abq, ptr %i.vk, align 16, !tbaa !489
  store i64 0, ptr %i.vl, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.vm, align 8, !tbaa !934
  %i.abr = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.14.i) #25
  %i.abs = fadd float %i.abp, %i.abr
  %i.abt = load ptr, ptr %.ptr.14.i, align 16, !tbaa !490
  store ptr %i.abt, ptr %i.vn, align 8, !tbaa !489
  store i64 0, ptr %i.vo, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.vp, align 16, !tbaa !934
  %i.abu = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.15.i) #25
  %i.abv = fadd float %i.abs, %i.abu
  %i.abw = load ptr, ptr %.ptr.15.i, align 8, !tbaa !490
  store ptr %i.abw, ptr %i.vq, align 16, !tbaa !489
  store i64 0, ptr %i.vr, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.vs, align 8, !tbaa !934
  %i.abx = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.16.i) #25
  %i.aby = fadd float %i.abv, %i.abx
  %i.abz = load ptr, ptr %.ptr.16.i, align 16, !tbaa !490
  store ptr %i.abz, ptr %i.vt, align 8, !tbaa !489
  store i64 0, ptr %i.vu, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.vv, align 16, !tbaa !934
  %i.aca = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.17.i) #25
  %i.acb = fadd float %i.aby, %i.aca
  %i.acc = load ptr, ptr %.ptr.17.i, align 8, !tbaa !490
  store ptr %i.acc, ptr %i.vw, align 16, !tbaa !489
  store i64 0, ptr %i.vx, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.vy, align 8, !tbaa !934
  %i.acd = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.18.i) #25
  %i.ace = fadd float %i.acb, %i.acd
  %i.acf = load ptr, ptr %.ptr.18.i, align 16, !tbaa !490
  store ptr %i.acf, ptr %i.vz, align 8, !tbaa !489
  store i64 0, ptr %i.wa, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.wb, align 16, !tbaa !934
  %i.acg = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.19.i) #25
  %i.ach = fadd float %i.ace, %i.acg
  %i.aci = load ptr, ptr %.ptr.19.i, align 8, !tbaa !490
  store ptr %i.aci, ptr %i.wc, align 16, !tbaa !489
  store i64 0, ptr %i.wd, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.we, align 8, !tbaa !934
  %i.acj = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.20.i) #25
  %i.ack = fadd float %i.ach, %i.acj
  %i.acl = load ptr, ptr %.ptr.20.i, align 16, !tbaa !490
  store ptr %i.acl, ptr %i.wf, align 8, !tbaa !489
  store i64 0, ptr %i.wg, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.wh, align 16, !tbaa !934
  %i.acm = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.21.i) #25
  %i.acn = fadd float %i.ack, %i.acm
  %i.aco = load ptr, ptr %.ptr.21.i, align 8, !tbaa !490
  store ptr %i.aco, ptr %i.wi, align 16, !tbaa !489
  store i64 0, ptr %i.wj, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.wk, align 8, !tbaa !934
  %i.acp = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.22.i) #25
  %i.acq = fadd float %i.acn, %i.acp
  %i.acr = load ptr, ptr %.ptr.22.i, align 16, !tbaa !490
  store ptr %i.acr, ptr %i.wl, align 8, !tbaa !489
  store i64 0, ptr %i.wm, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.wn, align 16, !tbaa !934
  %i.acs = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.23.i) #25
  %i.act = fadd float %i.acq, %i.acs
  %i.acu = load ptr, ptr %.ptr.23.i, align 8, !tbaa !490
  store ptr %i.acu, ptr %i.wo, align 16, !tbaa !489
  store i64 0, ptr %i.wp, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.wq, align 8, !tbaa !934
  %i.acv = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.24.i) #25
  %i.acw = fadd float %i.act, %i.acv
  %i.acx = load ptr, ptr %.ptr.24.i, align 16, !tbaa !490
  store ptr %i.acx, ptr %i.wr, align 8, !tbaa !489
  store i64 0, ptr %i.ws, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.wt, align 16, !tbaa !934
  %i.acy = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.25.i) #25
  %i.acz = fadd float %i.acw, %i.acy
  %i.ada = load ptr, ptr %.ptr.25.i, align 8, !tbaa !490
  store ptr %i.ada, ptr %i.wu, align 16, !tbaa !489
  store i64 0, ptr %i.wv, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.ww, align 8, !tbaa !934
  %i.adb = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.26.i) #25
  %i.adc = fadd float %i.acz, %i.adb
  %i.add = load ptr, ptr %.ptr.26.i, align 16, !tbaa !490
  store ptr %i.add, ptr %i.wx, align 8, !tbaa !489
  store i64 0, ptr %i.wy, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.wz, align 16, !tbaa !934
  %i.ade = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.27.i) #25
  %i.adf = fadd float %i.adc, %i.ade
  %i.adg = load ptr, ptr %.ptr.27.i, align 8, !tbaa !490
  store ptr %i.adg, ptr %i.xa, align 16, !tbaa !489
  store i64 0, ptr %i.xb, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.xc, align 8, !tbaa !934
  %i.adh = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.28.i) #25
  %i.adi = fadd float %i.adf, %i.adh
  %i.adj = load ptr, ptr %.ptr.28.i, align 16, !tbaa !490
  store ptr %i.adj, ptr %i.xd, align 8, !tbaa !489
  store i64 0, ptr %i.xe, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.xf, align 16, !tbaa !934
  %i.adk = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.29.i) #25
  %i.adl = fadd float %i.adi, %i.adk
  %i.adm = load ptr, ptr %.ptr.29.i, align 8, !tbaa !490
  store ptr %i.adm, ptr %i.xg, align 16, !tbaa !489
  store i64 0, ptr %i.xh, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.xi, align 8, !tbaa !934
  %i.adn = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.30.i) #25
  %i.ado = fadd float %i.adl, %i.adn
  %i.adp = load ptr, ptr %.ptr.30.i, align 16, !tbaa !490
  store ptr %i.adp, ptr %i.xj, align 8, !tbaa !489
  store i64 0, ptr %i.xk, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.xl, align 16, !tbaa !934
  %i.adq = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.31.i) #25
  %i.adr = fadd float %i.ado, %i.adq
  %i.ads = load ptr, ptr %.ptr.31.i, align 8, !tbaa !490
  store ptr %i.ads, ptr %i.xm, align 16, !tbaa !489
  store i64 0, ptr %i.xn, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.xo, align 8, !tbaa !934
  %i.adt = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.32.i) #25
  %i.adu = fadd float %i.adr, %i.adt
  %i.adv = load ptr, ptr %.ptr.32.i, align 16, !tbaa !490
  store ptr %i.adv, ptr %i.xp, align 8, !tbaa !489
  store i64 0, ptr %i.xq, align 8, !tbaa !933
  store float 0.000000e+00, ptr %i.xr, align 16, !tbaa !934
  %i.adw = call noundef float @_ZNK3jxl9Histogram14ShannonEntropyEv(ptr noundef nonnull align 8 dereferenceable(36) %.ptr.33.i) #25
  %i.adx = fadd float %i.adu, %i.adw              ; 2 uses
  %i.ady = load ptr, ptr %.ptr.33.i, align 8, !tbaa !490
  store ptr %i.ady, ptr %i.xs, align 16, !tbaa !489
  store i64 0, ptr %i.xt, align 16, !tbaa !933
  store float 0.000000e+00, ptr %i.xu, align 8, !tbaa !934
  %i.adz = load ptr, ptr %i.ti, align 8, !tbaa !490 ; 4 uses
  %.not.i.i.i.i243 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i.i.i243, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.i.i, label %bb.dm

.lr.ph212.split.i:                                ; preds = %.lr.ph212.i, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i
  %i.aea = phi i64 [ %i.aej, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i ], [ %i.zw, %.lr.ph212.i ]
  %i.aeb = phi i64 [ %i.aek, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i ], [ %i.aaa, %.lr.ph212.i ] ; 2 uses
  %.1211.i = phi i64 [ %.2.lcssa.i, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i ], [ %.0219.i, %.lr.ph212.i ] ; 2 uses
  %.094210.i = phi i64 [ %i.ael, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i ], [ 0, %.lr.ph212.i ] ; 5 uses
  %i.aec = load ptr, ptr %i.zy, align 8, !tbaa !342
  %i.aed = load i64, ptr %i.yb, align 8, !tbaa !341
  %i.aee = mul i64 %i.aed, %.094210.i
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.aee ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aef, i64 64) ]
  %.not225.i = icmp eq i64 %i.aeb, 0
  br i1 %.not225.i, label %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph212.split.i
  %.not186.i.a = icmp eq i64 %.094210.i, 0        ; 2 uses
  %i.aeg = getelementptr [4 x i8], ptr %i.aef, i64 %i.zz ; 2 uses
  %i.aeh = icmp ugt i64 %.094210.i, 1
  %invariant.gep207.i = getelementptr i8, ptr %i.aef, i64 %.idx99.i
  %i.aei = and i64 %.094210.i, 1
  %.not.i102.i = icmp eq i64 %i.aei, 0            ; 4 uses
  br label %bb.ct

_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.loopexit.i: ; preds = %_ZN3jxl9Histogram3AddEm.exit.i
  %.pre279.i = load i64, ptr %i.yf, align 8, !tbaa !348
  br label %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i

_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.i: ; preds = %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.loopexit.i, %.lr.ph212.split.i
  %i.aej = phi i64 [ %i.aea, %.lr.ph212.split.i ], [ %.pre279.i, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.loopexit.i ] ; 2 uses
  %i.aek = phi i64 [ 0, %.lr.ph212.split.i ], [ %i.arv, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.loopexit.i ]
  %.2.lcssa.i = phi i64 [ %.1211.i, %.lr.ph212.split.i ], [ %i.aug, %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit._crit_edge.loopexit.i ] ; 2 uses
  %i.ael = add nuw i64 %.094210.i, 1              ; 2 uses
  %i.aem = icmp ult i64 %i.ael, %i.aej
  br i1 %i.aem, label %.lr.ph212.split.i, label %.preheader.i, !llvm.loop !909

bb.ct:                                            ; preds = %_ZN3jxl9Histogram3AddEm.exit.i, %.lr.ph.i
  %i.aen = phi i64 [ %i.aeb, %.lr.ph.i ], [ %i.arv, %_ZN3jxl9Histogram3AddEm.exit.i ] ; 3 uses
  %.2203.i = phi i64 [ %.1211.i, %.lr.ph.i ], [ %i.aug, %_ZN3jxl9Histogram3AddEm.exit.i ]
  %.093202.i = phi i64 [ 0, %.lr.ph.i ], [ %i.afp, %_ZN3jxl9Histogram3AddEm.exit.i ] ; 16 uses
  %.not185.i.a = icmp eq i64 %.093202.i, 0        ; 3 uses
  br i1 %.not185.i.a, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  br i1 %.not186.i.a, label %.thread183.i, label %.thread179.i

.thread179.i:                                     ; preds = %bb.cu
  %i.aeo = load i32, ptr %i.aeg, align 4, !tbaa !215
  %i.aep = sext i32 %i.aeo to i64                 ; 2 uses
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  %i.aeq = getelementptr [4 x i8], ptr %i.aef, i64 %.093202.i
  %i.aer = getelementptr i8, ptr %i.aeq, i64 -4   ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !215
  %i.aet = sext i32 %i.aes to i64                 ; 2 uses
  br i1 %.not186.i.a, label %.thread183.i, label %bb.cw

.thread183.i:                                     ; preds = %bb.cv, %bb.cu
  %.ph175.i = phi i64 [ %i.aet, %bb.cv ], [ 0, %bb.cu ] ; 5 uses
  %i.aeu = add nuw i64 %.093202.i, 1
  br label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.aer, i64 %i.zz
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !215
  %i.aex = sext i32 %i.aew to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread179.i
  %i.aey = phi i64 [ %i.aet, %bb.cw ], [ %i.aep, %.thread179.i ] ; 2 uses
  %i.aez = phi i64 [ %i.aex, %bb.cw ], [ %i.aep, %.thread179.i ] ; 2 uses
  %.in.in.i = getelementptr [4 x i8], ptr %i.aeg, i64 %.093202.i
  %.in.i = load i32, ptr %.in.in.i, align 4, !tbaa !215
  %i.afa = sext i32 %.in.i to i64                 ; 4 uses
  %i.afb = add nuw i64 %.093202.i, 1              ; 3 uses
  %i.afc = icmp ult i64 %i.afb, %i.aen
  br i1 %i.afc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %.093202.i
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 4
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.zz
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !215
  %i.afh = sext i32 %i.afg to i64
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.afi = phi i64 [ %i.afh, %bb.cy ], [ %i.afa, %bb.cx ] ; 2 uses
  br i1 %i.aeh, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %gep209.i = getelementptr [4 x i8], ptr %invariant.gep207.i, i64 %.093202.i
  %i.afj = load i32, ptr %gep209.i, align 4, !tbaa !215
  %i.afk = sext i32 %i.afj to i64
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %.thread183.i
  %i.afl = phi i64 [ %i.afi, %bb.da ], [ %i.afi, %bb.cz ], [ %.ph175.i, %.thread183.i ]
  %i.afm = phi i64 [ %i.afa, %bb.da ], [ %i.afa, %bb.cz ], [ %.ph175.i, %.thread183.i ] ; 2 uses
  %i.afn = phi i64 [ %i.aey, %bb.da ], [ %i.aey, %bb.cz ], [ %.ph175.i, %.thread183.i ] ; 2 uses
  %i.afo = phi i64 [ %i.aez, %bb.da ], [ %i.aez, %bb.cz ], [ %.ph175.i, %.thread183.i ]
  %i.afp = phi i64 [ %i.afb, %bb.da ], [ %i.afb, %bb.cz ], [ %i.aeu, %.thread183.i ] ; 2 uses
  %i.afq = phi i64 [ %i.afk, %bb.da ], [ %i.afa, %bb.cz ], [ %.ph175.i, %.thread183.i ]
  %i.afr = add i64 %i.aen, 2                      ; 2 uses
  %i.afs = select i1 %.not.i102.i, i64 0, i64 %i.afr ; 2 uses
  %i.aft = add i64 %i.afs, %.093202.i             ; 7 uses
  %i.afu = add i64 %i.aen, -1
  %i.afv = icmp ult i64 %.093202.i, %i.afu
  %i.afw = zext i1 %i.afv to i64
  %i.afx = add i64 %i.aft, %i.afw                 ; 5 uses
  %i.afy = add i64 %i.aft, -1
  %i.afz = select i1 %.not185.i.a, i64 %i.afs, i64 %i.afy ; 5 uses
  %i.aga = load ptr, ptr %i.tg, align 8, !tbaa !493, !nonnull !188, !align !460 ; 11 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 40
  %i.agc = load ptr, ptr %i.tf, align 8, !tbaa !190 ; 3 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.aft
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !215
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.afx
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !215
  %i.agh = add i32 %i.agg, %i.age
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.afz
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !215
  %i.agk = add i32 %i.agh, %i.agj
  %.sroa.0.0.insert.ext240.i = zext i32 %i.agk to i64 ; 2 uses
  %i.agl = load i32, ptr %i.agb, align 8, !tbaa !215
  %i.agm = add nuw nsw i64 %.sroa.0.0.insert.ext240.i, 1
  %i.agn = call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.agm, i1 true)
  %i.ago = trunc nuw nsw i64 %i.agn to i32
  %i.agp = xor i32 %i.ago, 63
  %spec.store.select.i.i = call i32 @llvm.usub.sat.i32(i32 %i.agp, i32 5) ; 2 uses
  %i.agq = zext nneg i32 %spec.store.select.i.i to i64
  %i.agr = lshr i64 %.sroa.0.0.insert.ext240.i, %i.agq
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.agr
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !215
  %i.agu = mul i32 %i.agt, %i.agl
  %i.agv = lshr i32 %i.agu, %spec.store.select.i.i
  %i.agw = add i32 %i.agv, 4                      ; 2 uses
  %i.agx = load ptr, ptr %.ptr1.2.i.i, align 8, !tbaa !190 ; 3 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.aft
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !215
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.afx
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !215
  %i.ahc = add i32 %i.ahb, %i.agz
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.afz
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !215
  %i.ahf = add i32 %i.ahc, %i.ahe
  %.sroa.0.4.insert.ext.i = zext i32 %i.ahf to i64 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aga, i64 44
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !215
  %i.ahi = add nuw nsw i64 %.sroa.0.4.insert.ext.i, 1
  %i.ahj = call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ahi, i1 true)
  %i.ahk = trunc nuw nsw i64 %i.ahj to i32
  %i.ahl = xor i32 %i.ahk, 63
  %spec.store.select.i.1.i = call i32 @llvm.usub.sat.i32(i32 %i.ahl, i32 5) ; 2 uses
  %i.ahm = zext nneg i32 %spec.store.select.i.1.i to i64
  %i.ahn = lshr i64 %.sroa.0.4.insert.ext.i, %i.ahm
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !215
  %i.ahq = mul i32 %i.ahp, %i.ahh
  %i.ahr = lshr i32 %i.ahq, %spec.store.select.i.1.i
  %i.ahs = add i32 %i.ahr, 4                      ; 2 uses
  %i.aht = load ptr, ptr %.ptr1.1.i.i, align 8, !tbaa !190 ; 3 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.aft
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !215
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.afx
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !215
  %i.ahy = add i32 %i.ahx, %i.ahv
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.afz
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !215
  %i.aib = add i32 %i.ahy, %i.aia
  %.sroa.7.8.insert.ext.i = zext i32 %i.aib to i64 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aga, i64 48
  %i.aid = load i32, ptr %i.aic, align 8, !tbaa !215
  %i.aie = add nuw nsw i64 %.sroa.7.8.insert.ext.i, 1
  %i.aif = call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aie, i1 true)
  %i.aig = trunc nuw nsw i64 %i.aif to i32
  %i.aih = xor i32 %i.aig, 63
  %spec.store.select.i.2.i = call i32 @llvm.usub.sat.i32(i32 %i.aih, i32 5) ; 2 uses
  %i.aii = zext nneg i32 %spec.store.select.i.2.i to i64
  %i.aij = lshr i64 %.sroa.7.8.insert.ext.i, %i.aii
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !215
  %i.aim = mul i32 %i.ail, %i.aid
  %i.ain = lshr i32 %i.aim, %spec.store.select.i.2.i
  %i.aio = add i32 %i.ain, 4                      ; 2 uses
  %i.aip = load ptr, ptr %.ptr1.i.i, align 8, !tbaa !190 ; 3 uses
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.aft
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !215
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.afx
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !215
  %i.aiu = add i32 %i.ait, %i.air
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.afz
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !215
  %i.aix = add i32 %i.aiu, %i.aiw
  %.sroa.7.12.insert.ext.i = zext i32 %i.aix to i64 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aga, i64 52
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !215
  %i.aja = add nuw nsw i64 %.sroa.7.12.insert.ext.i, 1
  %i.ajb = call noundef range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aja, i1 true)
  %i.ajc = trunc nuw nsw i64 %i.ajb to i32
  %i.ajd = xor i32 %i.ajc, 63
  %spec.store.select.i.3.i = call i32 @llvm.usub.sat.i32(i32 %i.ajd, i32 5) ; 2 uses
  %i.aje = zext nneg i32 %spec.store.select.i.3.i to i64
  %i.ajf = lshr i64 %.sroa.7.12.insert.ext.i, %i.aje
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ajf
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !215
  %i.aji = mul i32 %i.ajh, %i.aiz
  %i.ajj = lshr i32 %i.aji, %spec.store.select.i.3.i
  %i.ajk = add i32 %i.ajj, 4                      ; 2 uses
  %i.ajl = shl nsw i64 %i.afm, 3                  ; 5 uses
  %i.ajm = shl nsw i64 %i.afn, 3                  ; 4 uses
  %i.ajn = shl nsw i64 %i.afl, 3                  ; 3 uses
  %.pre.i = load ptr, ptr %i.ti, align 8, !tbaa !490 ; 4 uses
  br i1 %.not185.i.a, label %_ZNK3jxl8weighted5State15WeightedAverageEPKlNSt3__15arrayIjLm4EEE.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ajo = select i1 %.not.i102.i, i64 %i.afr, i64 0
  %i.ajp = getelementptr [4 x i8], ptr %.pre.i, i64 %i.ajo
  %i.ajq = getelementptr [4 x i8], ptr %i.ajp, i64 %.093202.i
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 -4
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !215
  %i.ajt = sext i32 %i.ajs to i64
  br label %_ZNK3jxl8weighted5State15WeightedAverageEPKlNSt3__15arrayIjLm4EEE.exit.i

_ZNK3jxl8weighted5State15WeightedAverageEPKlNSt3__15arrayIjLm4EEE.exit.i: ; preds = %bb.dc, %bb.db
  %i.aju = phi i64 [ %i.ajt, %bb.dc ], [ 0, %bb.db ] ; 4 uses
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.aft
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !215
  %i.ajx = sext i32 %i.ajw to i64                 ; 6 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.afz
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !215
  %i.aka = sext i32 %i.ajz to i64                 ; 5 uses
  %i.akb = add nsw i64 %i.aju, %i.ajx             ; 2 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.afx
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !215 ; 2 uses
  %i.ake = sext i32 %i.akd to i64                 ; 3 uses
  %i.akf = sub nsw i64 %i.ajn, %i.ajl
  %i.akg = add nsw i64 %i.akf, %i.ajm             ; 2 uses
  store i64 %i.akg, ptr %10, align 8, !tbaa !154
  %i.akh = add nsw i64 %i.akb, %i.ake
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aga, i64 12
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !476
  %i.akk = sext i32 %i.akj to i64
  %i.akl = mul nsw i64 %i.akh, %i.akk
  %i.akm = ashr i64 %i.akl, 5
  %i.akn = sub nsw i64 %i.ajl, %i.akm             ; 2 uses
  store i64 %i.akn, ptr %i.tj, align 8, !tbaa !154
  %i.ako = add nsw i64 %i.akb, %i.aka
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.akq = load i32, ptr %i.akp, align 8, !tbaa !477
  %i.akr = sext i32 %i.akq to i64
  %i.aks = mul nsw i64 %i.ako, %i.akr
  %i.akt = ashr i64 %i.aks, 5
  %i.aku = sub nsw i64 %i.ajm, %i.akt             ; 2 uses
  store i64 %i.aku, ptr %i.tk, align 8, !tbaa !154
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aga, i64 20
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !478
  %i.akx = sext i32 %i.akw to i64
  %i.aky = mul nsw i64 %i.akx, %i.aka
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aga, i64 24
  %i.ala = load i32, ptr %i.akz, align 8, !tbaa !479
  %i.alb = sext i32 %i.ala to i64
  %i.alc = mul nsw i64 %i.alb, %i.ajx
  %i.ald = getelementptr inbounds nuw i8, ptr %i.aga, i64 28
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !480
  %i.alf = sext i32 %i.ale to i64
  %i.alg = mul nsw i64 %i.alf, %i.ake
  %i.alh = sub nsw i64 %i.afq, %i.afm
  %i.ali = getelementptr inbounds nuw i8, ptr %i.aga, i64 32
  %i.alj = load i32, ptr %i.ali, align 8, !tbaa !481
  %i.alk = sext i32 %i.alj to i64
  %i.all = mul nsw i64 %i.alh, %i.alk
  %i.alm = sub nsw i64 %i.afo, %i.afn
  %i.aln = getelementptr inbounds nuw i8, ptr %i.aga, i64 36
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !482
  %i.alp = sext i32 %i.alo to i64
  %i.alq = mul nsw i64 %i.alm, %i.alp
  %reass.add.i = add i64 %i.alq, %i.all
  %reass.mul.i = shl i64 %reass.add.i, 3
  %i.alr = add i64 %i.alc, %i.aky
  %i.als = add i64 %i.alr, %i.alg
  %i.alt = add i64 %i.als, %reass.mul.i
  %i.alu = ashr i64 %i.alt, 5
  %i.alv = sub nsw i64 %i.ajl, %i.alu             ; 2 uses
  store i64 %i.alv, ptr %i.tl, align 8, !tbaa !154
  %i.alw = add i32 %i.ahs, %i.agw
  %i.alx = add i32 %i.alw, %i.aio
  %i.aly = add i32 %i.alx, %i.ajk
  %i.alz = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aly, i1 true)
  %i.ama = sub nsw i32 27, %i.alz                 ; 4 uses
  %i.amb = lshr i32 %i.agw, %i.ama                ; 2 uses
  %i.amc = lshr i32 %i.ahs, %i.ama                ; 2 uses
end_hunk_0
