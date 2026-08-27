Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 151
begin_hunk_0_@_ZNK4llvm17ARMTargetLowering9LowerCallERNS_14TargetLowering16CallLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEE:bb.a
  %.sroa.31809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.41810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ar

._crit_edge1962:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285, %bb.aq
  %.sroa.01737.1.lcssa = phi ptr [ %.sroa.01737.0, %bb.aq ], [ %.sroa.01737.3, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ]
  %.sroa.38.1.lcssa = phi i32 [ %.sroa.38.0, %bb.aq ], [ %.sroa.38.3, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ]
  %.0.lcssa = phi i1 [ false, %bb.aq ], [ %.2, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  %i.kl = load i32, ptr %i.fs, align 8, !tbaa !372 ; 2 uses
  %.not.i1207 = icmp eq i32 %i.kl, 0
  br i1 %.not.i1207, label %bb.dg, label %bb.df

bb.ar:                                            ; preds = %.lr.ph1961, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285
  %i.km = phi i32 [ 0, %.lr.ph1961 ], [ %i.wx, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ]
  %.01959 = phi i1 [ false, %.lr.ph1961 ], [ %.2, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ] ; 8 uses
  %.011321958 = phi i1 [ false, %.lr.ph1961 ], [ %.11133, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ] ; 3 uses
  %.sroa.38.11957 = phi i32 [ %.sroa.38.0, %.lr.ph1961 ], [ %.sroa.38.3, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ] ; 3 uses
  %.sroa.01737.11956 = phi ptr [ %.sroa.01737.0, %.lr.ph1961 ], [ %.sroa.01737.3, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ] ; 3 uses
  %.017821953 = phi i32 [ 0, %.lr.ph1961 ], [ %i.wy, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1285 ] ; 5 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = load ptr, ptr %14, align 8, !tbaa !21
  %i.kp = getelementptr inbounds nuw [32 x i8], ptr %i.ko, i64 %i.kn ; 18 uses
  %i.kq = zext i32 %.017821953 to i64             ; 3 uses
  %i.kr = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.kr, i64 %i.kq ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %i.ks, i64 16, i1 false)
  %i.kt = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ku = getelementptr inbounds nuw [56 x i8], ptr %i.kt, i64 %i.kq ; 2 uses
  %.sroa.01659.0.copyload = load i64, ptr %i.ku, align 8, !tbaa !176 ; 3 uses
  %.sroa.71663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %.sroa.71663.0.copyload = load i32, ptr %.sroa.71663.0..sroa_idx, align 8, !tbaa !303 ; 2 uses
  %i.kv = and i64 %.sroa.01659.0.copyload, 32
  %.not1897 = icmp eq i64 %i.kv, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 20 ; 3 uses
  %i.kx = load i8, ptr %i.kw, align 4
  %i.ky = lshr i8 %i.kx, 1
  %i.kz = and i8 %i.ky, 63
  switch i8 %i.kz, label %bb.as [
    i8 0, label %bb.aw
    i8 1, label %.sink.split
    i8 2, label %bb.at
    i8 3, label %bb.au
    i8 7, label %bb.av
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  br label %.sink.split

bb.au:                                            ; preds = %bb.ar
  br label %.sink.split

bb.av:                                            ; preds = %bb.ar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ar, %bb.at, %bb.au, %bb.av
  %.sink = phi ptr [ %32, %bb.av ], [ %31, %bb.au ], [ %30, %bb.at ], [ %29, %bb.ar ]
  %.sink2125 = phi i32 [ 248, %bb.av ], [ 229, %bb.au ], [ 228, %bb.at ], [ 227, %bb.ar ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %.sroa.0.0.copyload.i1211 = load i16, ptr %i.la, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, ptr noundef nonnull align 8 dereferenceable(16) %i.ks, i64 16, i1 false)
  %i.lb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef %.sink2125, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 %.sroa.0.0.copyload.i1211, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ks) #38 ; 2 uses
  %.fca.0.extract660 = extractvalue { ptr, i32 } %i.lb, 0
  %.fca.1.extract661 = extractvalue { ptr, i32 } %i.lb, 1
  store ptr %.fca.0.extract660, ptr %28, align 8
  store i32 %.fca.1.extract661, ptr %.sroa.4666.0..sroa_idx, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.ar
  %i.lc = load i8, ptr %i.n, align 2, !tbaa !186, !range !18, !noundef !19
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.ax, label %bb.bl

bb.ax:                                            ; preds = %bb.aw
  %i.le = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.lf = load i8, ptr %i.le, align 8, !tbaa !464
  %i.lg = icmp ne i8 %i.lf, 1
  %or.cond10 = select i1 %i.lg, i1 true, i1 %.011321958
  br i1 %or.cond10, label %bb.bl, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lh = call { ptr, i32 } @_ZN4llvm12SelectionDAG27getStackArgumentTokenFactorENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr %.sroa.01737.11956, i32 %.sroa.38.11957) #38 ; 2 uses
  %.fca.0.extract650 = extractvalue { ptr, i32 } %i.lh, 0 ; 5 uses
  %.fca.1.extract651 = extractvalue { ptr, i32 } %i.lh, 1 ; 5 uses
  br i1 %.not1898, label %bb.bl, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  store ptr %i.jq, ptr %33, align 8, !tbaa !21
  store i32 0, ptr %i.jr, align 8, !tbaa !372
  store i32 8, ptr %i.js, align 4, !tbaa !373
  %i.li = load i32, ptr %i.jt, align 8, !tbaa !372 ; 2 uses
  %.not1988 = icmp eq i32 %i.li, 0
  br i1 %.not1988, label %._crit_edge1946.thread, label %.lr.ph1945

._crit_edge1946:                                  ; preds = %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread
  %.pre2019 = load i32, ptr %i.jr, align 8, !tbaa !372 ; 3 uses
  %.not.i1212 = icmp eq i32 %.pre2019, 0
  br i1 %.not.i1212, label %._crit_edge1946.thread, label %bb.bh

.lr.ph1945:                                       ; preds = %bb.az, %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread
  %i.lj = phi i32 [ %i.mv, %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread ], [ %i.li, %bb.az ] ; 7 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread ], [ 0, %bb.az ] ; 3 uses
  %i.lk = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ll = getelementptr inbounds nuw [56 x i8], ptr %i.lk, i64 %indvars.iv
  %i.lm = load i64, ptr %i.ll, align 4
  %i.ln = and i64 %i.lm, 32
  %.not1899 = icmp eq i64 %i.ln, 0
  br i1 %.not1899, label %bb.ba, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread

bb.ba:                                            ; preds = %.lr.ph1945
  %i.lo = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %indvars.iv
  %.sroa.01648.0.copyload = load ptr, ptr %i.lp, align 8, !tbaa !370 ; 5 uses
  %.not.i.i1213 = icmp eq ptr %.sroa.01648.0.copyload, null
  br i1 %.not.i.i1213, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.01648.0.copyload, i64 24
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !344
  %i.ls = icmp eq i32 %i.lr, 316
  br i1 %i.ls, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit: ; preds = %bb.bb
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.01648.0.copyload, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !698
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !601 ; 3 uses
  %.not.i.i1214 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i1214, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !344
  switch i32 %i.ly, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread [
    i32 41, label %_ZN4llvm16dyn_cast_or_nullINS_16FrameIndexSDNodeENS_7SDValueEEEDaRKT0_.exit
    i32 16, label %_ZN4llvm16dyn_cast_or_nullINS_16FrameIndexSDNodeENS_7SDValueEEEDaRKT0_.exit
  ]

_ZN4llvm16dyn_cast_or_nullINS_16FrameIndexSDNodeENS_7SDValueEEEDaRKT0_.exit: ; preds = %bb.bc, %bb.bc
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 88
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !565 ; 2 uses
  %i.mb = icmp slt i32 %i.ma, 0
  %i.mc = load i32, ptr %i.ju, align 8
  %i.md = sub nsw i32 0, %i.mc
  %i.me = icmp sge i32 %i.ma, %i.md
  %i.mf = select i1 %i.mb, i1 %i.me, i1 false
  br i1 %i.mf, label %bb.bd, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread

bb.bd:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullINS_16FrameIndexSDNodeENS_7SDValueEEEDaRKT0_.exit
  %i.mg = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.mh = load i32, ptr %i.at, align 8, !tbaa !372 ; 2 uses
  %i.mi = zext i32 %i.mh to i64
  %.idx1989 = shl nuw nsw i64 %i.mi, 5
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 %.idx1989
  %.not11831939 = icmp eq i32 %i.mh, 0
  br i1 %.not11831939, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread, label %.lr.ph1942

.lr.ph1942:                                       ; preds = %bb.bd, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1218
  %.011361940 = phi ptr [ %i.mu, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1218 ], [ %i.mg, %bb.bd ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.011361940, i64 8
  %i.ml = load i8, ptr %i.mk, align 8, !tbaa !464
  %i.mm = icmp eq i8 %i.ml, 1
  br i1 %i.mm, label %bb.be, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1218

bb.be:                                            ; preds = %.lr.ph1942
  %i.mn = load i32, ptr %i.jr, align 8, !tbaa !372 ; 2 uses
  %i.mo = load i32, ptr %i.js, align 4, !tbaa !373
  %.not.i1216 = icmp ult i32 %i.mn, %i.mo
  br i1 %.not.i1216, label %bb.bg, label %bb.bf, !prof !452

bb.bf:                                            ; preds = %bb.be
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr nonnull %.sroa.01648.0.copyload, i32 1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1218

bb.bg:                                            ; preds = %bb.be
  %i.mp = zext i32 %i.mn to i64
  %i.mq = load ptr, ptr %33, align 8, !tbaa !21
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %i.mp ; 2 uses
  store ptr %.sroa.01648.0.copyload, ptr %i.mr, align 1
  %.sroa.32.0..sroa_idx.i1217 = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i32 1, ptr %.sroa.32.0..sroa_idx.i1217, align 1
  %i.ms = load i32, ptr %i.jr, align 8, !tbaa !372
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.jr, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1218

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1218: ; preds = %bb.bg, %bb.bf, %.lr.ph1942
  %i.mu = getelementptr inbounds nuw i8, ptr %.011361940, i64 32 ; 2 uses
  %.not1183 = icmp eq ptr %i.mu, %i.mj
  br i1 %.not1183, label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread.loopexit, label %.lr.ph1942

_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread.loopexit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1218
  %.pre2018 = load i32, ptr %i.jt, align 8, !tbaa !372
  br label %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread.loopexit, %bb.bd, %bb.bc, %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit, %bb.ba, %bb.bb, %_ZN4llvm16dyn_cast_or_nullINS_16FrameIndexSDNodeENS_7SDValueEEEDaRKT0_.exit, %.lr.ph1945
  %i.mv = phi i32 [ %.pre2018, %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit.thread.loopexit ], [ %i.lj, %bb.bd ], [ %i.lj, %bb.bc ], [ %i.lj, %_ZN4llvm16dyn_cast_or_nullINS_10LoadSDNodeENS_7SDValueEEEDaRT0_.exit ], [ %i.lj, %bb.ba ], [ %i.lj, %bb.bb ], [ %i.lj, %_ZN4llvm16dyn_cast_or_nullINS_16FrameIndexSDNodeENS_7SDValueEEEDaRKT0_.exit ], [ %i.lj, %.lr.ph1945 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mw = zext i32 %i.mv to i64
  %i.mx = icmp samesign ult i64 %indvars.iv.next, %i.mw
  br i1 %i.mx, label %.lr.ph1945, label %._crit_edge1946, !llvm.loop !699

bb.bh:                                            ; preds = %._crit_edge1946
  %i.my = load i32, ptr %i.js, align 4, !tbaa !373
  %.not.i1219 = icmp ult i32 %.pre2019, %i.my
  br i1 %.not.i1219, label %bb.bj, label %bb.bi, !prof !452

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr %.fca.0.extract650, i32 %.fca.1.extract651)
  %.pre2020 = load i32, ptr %i.jr, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1221

bb.bj:                                            ; preds = %bb.bh
  %i.mz = zext i32 %.pre2019 to i64
  %i.na = load ptr, ptr %33, align 8, !tbaa !21
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %i.mz ; 2 uses
  store ptr %.fca.0.extract650, ptr %i.nb, align 1
  %.sroa.32.0..sroa_idx.i1220 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store i32 %.fca.1.extract651, ptr %.sroa.32.0..sroa_idx.i1220, align 1
  %i.nc = load i32, ptr %i.jr, align 8, !tbaa !372
  %i.nd = add i32 %i.nc, 1                        ; 2 uses
  store i32 %i.nd, ptr %i.jr, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1221

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1221: ; preds = %bb.bi, %bb.bj
  %i.ne = phi i32 [ %.pre2020, %bb.bi ], [ %i.nd, %bb.bj ]
  %i.nf = load ptr, ptr %33, align 8, !tbaa !21
  store ptr %i.nf, ptr %34, align 8, !tbaa !457
  %i.ng = zext i32 %i.ne to i64
  store i64 %i.ng, ptr %i.jv, align 8, !tbaa !460
  %i.nh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %34) #38 ; 2 uses
  %.fca.0.extract619 = extractvalue { ptr, i32 } %i.nh, 0
  %.fca.1.extract620 = extractvalue { ptr, i32 } %i.nh, 1
  br label %._crit_edge1946.thread

._crit_edge1946.thread:                           ; preds = %bb.az, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1221, %._crit_edge1946
  %.sroa.01737.2 = phi ptr [ %.fca.0.extract650, %._crit_edge1946 ], [ %.fca.0.extract619, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1221 ], [ %.fca.0.extract650, %bb.az ]
  %.sroa.38.2 = phi i32 [ %.fca.1.extract651, %._crit_edge1946 ], [ %.fca.1.extract620, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1221 ], [ %.fca.1.extract651, %bb.az ]
  store ptr %.sroa.01737.2, ptr %35, align 8, !tbaa !370
  store i32 %.sroa.38.2, ptr %.sroa.38.0..sroa_idx1749, align 8, !tbaa !303
  store i32 %.sroa.61.0.copyload, ptr %.sroa.61.0..sroa_idx1758, align 4
  store ptr %.sroa.01694.1, ptr %36, align 8, !tbaa !370
  store i32 %.sroa.61695.1, ptr %.sroa.61695.0..sroa_idx, align 8, !tbaa !303
  %i.ni = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36) #38 ; 2 uses
  %.fca.0.extract612 = extractvalue { ptr, i32 } %i.ni, 0
  %.fca.1.extract613 = extractvalue { ptr, i32 } %i.ni, 1
  %i.nj = load ptr, ptr %33, align 8, !tbaa !21   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.jq
  br i1 %i.nk, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1222, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge1946.thread
  call void @free(ptr noundef %i.nj) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1222

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1222: ; preds = %._crit_edge1946.thread, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %bb.bl

bb.bl:                                            ; preds = %bb.ay, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1222, %bb.ax, %bb.aw
  %.sroa.01737.3 = phi ptr [ %.sroa.01737.11956, %bb.ax ], [ %.fca.0.extract612, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1222 ], [ %.fca.0.extract650, %bb.ay ], [ %.sroa.01737.11956, %bb.aw ] ; 9 uses
  %.sroa.38.3 = phi i32 [ %.sroa.38.11957, %bb.ax ], [ %.fca.1.extract613, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1222 ], [ %.fca.1.extract651, %bb.ay ], [ %.sroa.38.11957, %bb.aw ] ; 9 uses
  %.11133 = phi i1 [ %.011321958, %bb.ax ], [ true, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit1222 ], [ true, %bb.ay ], [ %.011321958, %bb.aw ]
  %i.nl = load i8, ptr %i.kw, align 4
  %i.nm = trunc i8 %i.nl to i1
  br i1 %i.nm, label %bb.bm, label %.critedge12

bb.bm:                                            ; preds = %bb.bl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kp, i64 22
  %.sroa.0.0.copyload.i1223 = load i16, ptr %i.nn, align 2, !tbaa !25 ; 2 uses
  %i.no = and i16 %.sroa.0.0.copyload.i1223, -2
  %switch = icmp eq i16 %i.no, 12
  br i1 %switch, label %.critedge14, label %.critedge12

.critedge14:                                      ; preds = %bb.bm
  %i.np = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %.sroa.0.0.copyload.i1225 = load i16, ptr %i.np, align 8, !tbaa !25
  %i.nq = call { ptr, i32 } @_ZNK4llvm17ARMTargetLowering11MoveFromHPRERKNS_5SDLocERNS_12SelectionDAGENS_3MVTES6_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(920) %i.h, i16 %.sroa.0.0.copyload.i1225, i16 %.sroa.0.0.copyload.i1223, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) ; 2 uses
  %.fca.0.extract603 = extractvalue { ptr, i32 } %i.nq, 0
  %.fca.1.extract604 = extractvalue { ptr, i32 } %i.nq, 1
  store ptr %.fca.0.extract603, ptr %28, align 8
  store i32 %.fca.1.extract604, ptr %.sroa.4666.0..sroa_idx, align 8
  br label %bb.bs

.critedge12:                                      ; preds = %bb.bm, %bb.bl
  br i1 %.01120, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %.critedge12
  %i.nr = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ns = getelementptr inbounds nuw [56 x i8], ptr %i.nr, i64 %i.kq ; 2 uses
  %.sroa.42011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %.sroa.42011.0.copyload = load ptr, ptr %.sroa.42011.0..sroa_idx, align 8, !tbaa !341
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %.sroa.0.0.copyload2010 = load i16, ptr %i.nt, align 8, !tbaa !25
  %.not.i.i1227 = icmp eq i16 %.sroa.0.0.copyload2010, 13
  %i.nu = icmp eq ptr %.sroa.42011.0.copyload, null
  %.not4.i = select i1 %.not.i.i1227, i1 %i.nu, i1 false
  br i1 %.not4.i, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kp, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i1228 = load i16, ptr %i.nv, align 8, !tbaa !25
  %i.nw = zext i16 %.sroa.0.0.copyload.i1228 to i64
  %i.nx = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.nw ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 -16
  %.sroa.0.0.copyload.i1229 = load i64, ptr %i.ny, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.nx, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  %i.nz = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.nz, label %bb.bp, label %_ZNK4llvm8TypeSizecvmEv.exit1233

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1233:                 ; preds = %bb.bo
  %i.oa = trunc i64 %.sroa.0.0.copyload.i1229 to i32 ; 5 uses
  store i32 %i.oa, ptr %i.jw, align 8, !tbaa !700, !alias.scope !702
  %i.ob = icmp ult i32 %i.oa, 65
  br i1 %i.ob, label %_ZN4llvm5APIntC2Ejmbb.exit.i.thread, label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i.thread:              ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1233
  store i64 0, ptr %37, align 8, !tbaa !176, !alias.scope !702
  br label %_ZNK4llvm8TypeSizecvmEv.exit1234

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1233
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %37, i64 noundef 0, i1 noundef zeroext false) #38
  %.pr = load i32, ptr %i.jw, align 8, !tbaa !700, !alias.scope !702
  %i.oc = icmp ult i32 %.pr, 65
  %i.od = load ptr, ptr %37, align 8
  %spec.select2135 = select i1 %i.oc, ptr %37, ptr %i.od
  br label %_ZNK4llvm8TypeSizecvmEv.exit1234

_ZNK4llvm8TypeSizecvmEv.exit1234:                 ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i, %_ZN4llvm5APIntC2Ejmbb.exit.i.thread
  %.sink2130 = phi ptr [ %spec.select2135, %_ZN4llvm5APIntC2Ejmbb.exit.i ], [ %37, %_ZN4llvm5APIntC2Ejmbb.exit.i.thread ] ; 2 uses
  %i.oe = load i64, ptr %.sink2130, align 8, !tbaa !176
  %i.of = or i64 %i.oe, 65535
  store i64 %i.of, ptr %.sink2130, align 8, !tbaa !176
  %i.og = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.oa)
  %i.oh = icmp eq i32 %i.og, 1                    ; 2 uses
  br i1 %i.oh, label %.split.i, label %_ZNK4llvm8TypeSizecvmEv.exit1235

.split.i:                                         ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1234
  %i.oi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.oa, i1 true) ; 2 uses
  %i.oj = icmp samesign ult i32 %i.oi, 10         ; 2 uses
  %switch.idx.cast.i = trunc nuw nsw i32 %i.oi to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2 ; 2 uses
  %.sroa.0.0.i.ph = select i1 %i.oj, i16 %switch.offset.i, i16 0
  %i.ok = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 %.sroa.0.0.i.ph, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38
  %spec.select = select i1 %i.oj, i16 %switch.offset.i, i16 0
  br label %_ZNK4llvm8TypeSizecvmEv.exit1242

_ZNK4llvm8TypeSizecvmEv.exit1235:                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1234
  %i.ol = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 0, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38
  br label %_ZNK4llvm8TypeSizecvmEv.exit1242

_ZNK4llvm8TypeSizecvmEv.exit1242:                 ; preds = %.split.i, %_ZNK4llvm8TypeSizecvmEv.exit1235
  %.pn = phi { ptr, i32 } [ %i.ol, %_ZNK4llvm8TypeSizecvmEv.exit1235 ], [ %i.ok, %.split.i ] ; 2 uses
  %.sroa.0.0.i1236 = phi i16 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit1235 ], [ %spec.select, %.split.i ]
  %.fca.0.extract5871863 = extractvalue { ptr, i32 } %.pn, 0
  %.fca.1.extract5881865 = extractvalue { ptr, i32 } %.pn, 1
  %i.om = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 %.sroa.0.0.i1236, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #38 ; 2 uses
  %.fca.0.extract579 = extractvalue { ptr, i32 } %i.om, 0
  %.fca.1.extract580 = extractvalue { ptr, i32 } %i.om, 1
  store ptr %.fca.0.extract579, ptr %28, align 8
  store i32 %.fca.1.extract580, ptr %.sroa.4666.0..sroa_idx, align 8
  br i1 %i.oh, label %.split.i1244, label %_ZN4llvm3MVT12getIntegerVTEj.exit1248

.split.i1244:                                     ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1242
  %i.on = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.oa, i1 true) ; 2 uses
  %i.oo = icmp samesign ult i32 %i.on, 10
  br i1 %i.oo, label %switch.lookup.i1245, label %_ZN4llvm3MVT12getIntegerVTEj.exit1248

switch.lookup.i1245:                              ; preds = %.split.i1244
  %switch.idx.cast.i1246 = trunc nuw nsw i32 %i.on to i16
  %switch.offset.i1247 = add nuw nsw i16 %switch.idx.cast.i1246, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit1248

_ZN4llvm3MVT12getIntegerVTEj.exit1248:            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1242, %.split.i1244, %switch.lookup.i1245
  %.sroa.0.0.i1243 = phi i16 [ %switch.offset.i1247, %switch.lookup.i1245 ], [ 0, %.split.i1244 ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit1242 ]
  store ptr %.fca.0.extract5871863, ptr %38, align 8, !tbaa !370
  store i32 %.fca.1.extract5881865, ptr %.sroa.4593.0..sroa_idx, align 8, !tbaa !303
  %i.op = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 %.sroa.0.0.i1243, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38) #38 ; 2 uses
  %.fca.0.extract571 = extractvalue { ptr, i32 } %i.op, 0
  %.fca.1.extract572 = extractvalue { ptr, i32 } %i.op, 1
  store ptr %.fca.0.extract571, ptr %28, align 8
  store i32 %.fca.1.extract572, ptr %.sroa.4666.0..sroa_idx, align 8
  %.sroa.0.0.copyload.i1249 = load i16, ptr %i.nv, align 8, !tbaa !25
  %i.oq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i16 %.sroa.0.0.copyload.i1249, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #38 ; 2 uses
  %.fca.0.extract563 = extractvalue { ptr, i32 } %i.oq, 0
  %.fca.1.extract564 = extractvalue { ptr, i32 } %i.oq, 1
  store ptr %.fca.0.extract563, ptr %28, align 8
  store i32 %.fca.1.extract564, ptr %.sroa.4666.0..sroa_idx, align 8
  %i.or = load i32, ptr %i.jw, align 8, !tbaa !700
  %i.os = icmp ugt i32 %i.or, 64
  br i1 %i.os, label %bb.bq, label %_ZN4llvm5APIntD2Ev.exit

end_hunk_0
begin_hunk_1_@_ZNK4llvm17ARMTargetLowering11LowerReturnENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD9OutputArgEEERKNS2_IS1_EERKNS_5SDLocERNS_12SelectionDAGE:_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  br i1 %i.qc, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.qa) #38
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  %i.qd = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.a
  br i1 %i.qe, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.qd) #38
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  ret { ptr, i32 } %.pn
}

declare void @_ZN4llvm7CCState13AnalyzeReturnERKNS_15SmallVectorImplINS_3ISD9OutputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNK4llvm19ARMBaseRegisterInfo25getCalleeSavedRegsViaCopyEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering18isUsedByReturnOnlyEPNS_6SDNodeERNS_7SDValueE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallPtrSet.548", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i16, ptr %i.a, align 2, !tbaa !327
  %.not = icmp eq i16 %i.b, 1
  br i1 %.not, label %bb.b, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.018.022.i = load ptr, ptr %i.c, align 8, !tbaa !822 ; 3 uses
  %.not23.i = icmp eq ptr %.sroa.018.022.i, null
  br i1 %.not23.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %.214.i = select i1 %i.g, i32 %.01224.i, i32 0  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 32
  %.sroa.018.0.i = load ptr, ptr %i.d, align 8, !tbaa !822 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.018.0.i, null
  br i1 %.not.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.018.025.i = phi ptr [ %.sroa.018.0.i, %bb.c ], [ %.sroa.018.022.i, %bb.b ] ; 2 uses
  %.01224.i = phi i32 [ %.214.i, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !773
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  %i.h = icmp ne i32 %.01224.i, 0
  %cond.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %cond.i, label %bb.c, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit:        ; preds = %bb.c
  %i.i = icmp eq i32 %.214.i, 0
  br i1 %i.i, label %bb.d, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit
  %.sroa.0163.0.copyload = load ptr, ptr %2, align 8, !tbaa !370 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !303 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.022.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !823  ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !344
  switch i32 %i.m, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread [
    i32 51, label %bb.e
    i32 658, label %bb.f
    i32 248, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load i16, ptr %i.n, align 8, !tbaa !826
  %i.p = zext i16 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !698  ; 2 uses
  %i.t = and i64 %i.q, 4294967295
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !601
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !773
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !340
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ab, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 249
  %i.ac = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.ac, i1 false
  br i1 %.not4.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %.sink.split

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 2, ptr %i.ae, align 8, !tbaa !827
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 0, ptr %i.af, align 4, !tbaa !828
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i8 1, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %.sroa.0152.0209 = load ptr, ptr %i.ah, align 8, !tbaa !822 ; 2 uses
  %.not199210 = icmp eq ptr %.sroa.0152.0209, null
  br i1 %.not199210, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit
  %i.ai = phi i32 [ %i.bb, %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit ], [ 0, %bb.f ] ; 5 uses
  %i.aj = phi i32 [ %i.bc, %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit ], [ 2, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %i.bd, %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit ], [ %i.ad, %bb.f ] ; 4 uses
  %i.al = phi i8 [ %i.be, %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit ], [ 1, %bb.f ]
  %.sroa.0152.0211 = phi ptr [ %.sroa.0152.0, %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit ], [ %.sroa.0152.0209, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0152.0211, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !823 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !344
  %.not70 = icmp eq i32 %i.ap, 51
  br i1 %.not70, label %bb.g, label %.critedge76

bb.g:                                             ; preds = %.lr.ph
  %i.aq = trunc nuw i8 %i.al to i1
  br i1 %i.aq, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ar = zext i32 %i.ai to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.au, %.critedge.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.at = load ptr, ptr %.023.i.i, align 8, !tbaa !829, !noalias !830
  %.not15.i.i = icmp eq ptr %i.at, %i.an
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.au, %i.as
  br i1 %.not.i.i82, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.h
  %i.av = icmp ult i32 %i.ai, %i.aj
  br i1 %i.av, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = add nuw i32 %i.ai, 1
  store i32 %i.aw, ptr %i.af, align 4, !tbaa !828, !noalias !830
  store ptr %i.an, ptr %i.as, align 8, !tbaa !829, !noalias !830
  %i.ax = load ptr, ptr %3, align 8, !tbaa !20, !noalias !830
  %.pre = load i32, ptr %i.af, align 4, !noalias !830
  br label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.g
  %i.ay = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull %i.an) #38, !noalias !830 ; 0 uses
  %.pre.i = load i8, ptr %i.ag, align 8, !tbaa !14, !range !18, !noalias !830
  %.pre.fr.i = freeze i8 %.pre.i
  %.pre5.i = load ptr, ptr %3, align 8, !noalias !830
  %i.az = load i32, ptr %i.af, align 4, !noalias !830
  %i.ba = load i32, ptr %i.ae, align 8, !noalias !830
  br label %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.i
  %i.bb = phi i32 [ %i.az, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %.pre, %bb.i ], [ %i.ai, %.lr.ph.i.i ] ; 2 uses
  %i.bc = phi i32 [ %i.ba, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.aj, %bb.i ], [ %i.aj, %.lr.ph.i.i ]
  %i.bd = phi ptr [ %.pre5.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.ax, %bb.i ], [ %i.ak, %.lr.ph.i.i ] ; 2 uses
  %i.be = phi i8 [ %.pre.fr.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ 1, %bb.i ], [ 1, %.lr.ph.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0152.0211, i64 32
  %.sroa.0152.0 = load ptr, ptr %i.bf, align 8, !tbaa !822 ; 2 uses
  %.not199 = icmp eq ptr %.sroa.0152.0, null
  br i1 %.not199, label %.critedge74, label %.lr.ph

.critedge74:                                      ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_6SDNodeEE6insertES2_.exit
  %i.bg = icmp ugt i32 %i.bb, 2
  br i1 %i.bg, label %.critedge76, label %.preheader

.preheader:                                       ; preds = %.critedge74
  %.sroa.0143.0212.pr = load ptr, ptr %i.ah, align 8, !tbaa !822 ; 2 uses
  %.not200213 = icmp eq ptr %.sroa.0143.0212.pr, null
  br i1 %.not200213, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread._crit_edge, label %.lr.ph219

.lr.ph219:                                        ; preds = %.preheader, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178
  %.sroa.0143.0217 = phi ptr [ %.sroa.0143.0, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ %.sroa.0143.0212.pr, %.preheader ] ; 2 uses
  %.056216 = phi ptr [ %.258.ph, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ %i.k, %.preheader ] ; 2 uses
  %.sroa.7.0215 = phi i32 [ %.sroa.7.1.ph, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ %.sroa.7.0.copyload, %.preheader ] ; 3 uses
  %.sroa.0163.0214 = phi ptr [ %.sroa.0163.1.ph, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ %.sroa.0163.0.copyload, %.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0143.0217, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !823 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !698 ; 4 uses
  %.sroa.0139.0.copyload = load ptr, ptr %i.bk, align 8, !tbaa !370 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bl = load i8, ptr %i.ag, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.j, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit

bb.j:                                             ; preds = %.lr.ph219
  %i.bn = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.bo = load i32, ptr %i.af, align 4, !tbaa !828 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.idx.i.i87 = shl nuw nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i87
  %.not17.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread, label %.lr.ph.i.i88

bb.k:                                             ; preds = %.lr.ph.i.i88
  %i.br = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i.i90, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread, label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %bb.j, %bb.k
  %.01218.i.i = phi ptr [ %i.br, %bb.k ], [ %i.bn, %bb.j ] ; 2 uses
  %i.bs = load ptr, ptr %.01218.i.i, align 8, !tbaa !829
  %.not15.i.i89 = icmp eq ptr %i.bs, %.sroa.0139.0.copyload
  br i1 %.not15.i.i89, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178, label %bb.k

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit: ; preds = %.lr.ph219
  %i.bt = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef %.sroa.0139.0.copyload) #38
  %.not201 = icmp eq ptr %i.bt, null
  br i1 %.not201, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread_crit_edge, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread_crit_edge: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit
  %.pre237 = load ptr, ptr %i.bj, align 8, !tbaa !698
  br label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread: ; preds = %bb.k, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread_crit_edge, %bb.j
  %i.bu = phi ptr [ %.pre237, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit._ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread_crit_edge ], [ %i.bk, %bb.j ], [ %i.bk, %bb.k ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !826
  %i.bx = zext i16 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 4294967295
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !601
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !773
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !340
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %.sroa.0.0.copyload.i.i91 = load i16, ptr %i.ch, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i92 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.21.0.copyload.i.i93 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i92, align 8, !tbaa !341
  %.not.i.i96 = icmp eq i16 %.sroa.0.0.copyload.i.i91, 249
  %i.ci = icmp eq ptr %.sroa.21.0.copyload.i.i93, null
  %.not4.i97 = select i1 %.not.i.i96, i1 %i.ci, i1 false
  br i1 %.not4.i97, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread._crit_edge, label %4

4:                                                ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.copyload to i32
  br label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178: ; preds = %.lr.ph.i.i88, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit, %4
  %.sroa.0163.1.ph = phi ptr [ %.sroa.0139.0.copyload, %4 ], [ %.sroa.0163.0214, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit ], [ %.sroa.0163.0214, %.lr.ph.i.i88 ] ; 2 uses
  %.sroa.7.1.ph = phi i32 [ %.sroa.5.0.extract.trunc, %4 ], [ %.sroa.7.0215, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit ], [ %.sroa.7.0215, %.lr.ph.i.i88 ] ; 2 uses
  %.258.ph = phi ptr [ %.056216, %4 ], [ %i.bi, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit ], [ %i.bi, %.lr.ph.i.i88 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0143.0217, i64 32
  %.sroa.0143.0 = load ptr, ptr %i.cj, align 8, !tbaa !822 ; 2 uses
  %.not200 = icmp eq ptr %.sroa.0143.0, null
  br i1 %.not200, label %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread._crit_edge, label %.lr.ph219

_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread._crit_edge: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread, %bb.f, %.preheader
  %.sroa.0163.0.lcssa = phi ptr [ %.sroa.0163.0.copyload, %.preheader ], [ %.sroa.0163.0.copyload, %bb.f ], [ %.sroa.0163.1.ph, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ %.sroa.0163.0214, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread ]
  %.sroa.7.0.lcssa = phi i32 [ %.sroa.7.0.copyload, %.preheader ], [ %.sroa.7.0.copyload, %bb.f ], [ %.sroa.7.1.ph, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ %.sroa.7.0215, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread ]
  %.056.lcssa = phi ptr [ %i.k, %.preheader ], [ %i.k, %bb.f ], [ %.258.ph, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ %.056216, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread ]
  %.not200.lcssa = phi i1 [ true, %.preheader ], [ true, %bb.f ], [ true, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread178 ], [ false, %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread ]
  %i.ck = load i8, ptr %i.ag, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread._crit_edge
  %i.cm = load ptr, ptr %3, align 8, !tbaa !20
  call void @free(ptr noundef %i.cm) #38
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_6SDNodeEE5countEPKS1_.exit.thread._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br i1 %.not200.lcssa, label %bb.r, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.m:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !833 ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.co, null
  br i1 %.not.i.i98, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !834
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.n, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !823 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !344
  %.not69 = icmp eq i32 %i.cv, 51
  br i1 %.not69, label %bb.o, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %.sroa.018.022.i99 = load ptr, ptr %i.cw, align 8, !tbaa !822 ; 2 uses
  %.not23.i100 = icmp eq ptr %.sroa.018.022.i99, null
  br i1 %.not23.i100, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %.lr.ph.i101

bb.p:                                             ; preds = %.lr.ph.i101
  %.214.i105 = select i1 %i.da, i32 %.01224.i103, i32 0 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i102, i64 32
  %.sroa.018.0.i110 = load ptr, ptr %i.cx, align 8, !tbaa !822 ; 2 uses
  %.not.i111 = icmp eq ptr %.sroa.018.0.i110, null
  br i1 %.not.i111, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit112, label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %bb.o, %bb.p
  %.sroa.018.025.i102 = phi ptr [ %.sroa.018.0.i110, %bb.p ], [ %.sroa.018.022.i99, %bb.o ] ; 2 uses
  %.01224.i103 = phi i32 [ %.214.i105, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i102, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !773
  %i.da = icmp ne i32 %i.cz, 0                    ; 2 uses
  %i.db = icmp ne i32 %.01224.i103, 0
  %cond.i106 = select i1 %i.da, i1 true, i1 %i.db
  br i1 %cond.i106, label %bb.p, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit112:     ; preds = %bb.p
  %i.dc = icmp eq i32 %.214.i105, 0
  br i1 %i.dc, label %bb.q, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

bb.q:                                             ; preds = %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit112
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !826
  %i.df = zext i16 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 4294967295
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !698 ; 2 uses
  %i.dj = and i64 %i.dg, 4294967295
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !601
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !773
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !340
  %i.dq = zext i32 %i.dn to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %.sroa.0.0.copyload.i.i113 = load i16, ptr %i.dr, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i114 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.21.0.copyload.i.i115 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i114, align 8, !tbaa !341
  %.not.i.i118 = icmp eq i16 %.sroa.0.0.copyload.i.i113, 249
  %i.ds = icmp eq ptr %.sroa.21.0.copyload.i.i115, null
  %.not4.i119 = select i1 %.not.i.i118, i1 %i.ds, i1 false
  br i1 %.not4.i119, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.e
  %.sink248 = phi ptr [ %i.s, %bb.e ], [ %i.di, %bb.q ] ; 2 uses
  %.561.ph = phi ptr [ %i.k, %bb.e ], [ %i.ct, %bb.q ]
  %.sroa.0163.0.copyload165 = load ptr, ptr %.sink248, align 8, !tbaa !370
  %.sroa.7.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sink248, i64 8
  %.sroa.7.0.copyload170 = load i32, ptr %.sroa.7.0..sroa_idx169, align 8, !tbaa !303
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %.sroa.0163.3 = phi ptr [ %.sroa.0163.0.lcssa, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ], [ %.sroa.0163.0.copyload165, %.sink.split ]
  %.sroa.7.3 = phi i32 [ %.sroa.7.0.lcssa, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ], [ %.sroa.7.0.copyload170, %.sink.split ]
  %.561 = phi ptr [ %.056.lcssa, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ], [ %.561.ph, %.sink.split ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.561, i64 56
  %.sroa.0125.0227 = load ptr, ptr %i.dt, align 8, !tbaa !822 ; 2 uses
  %.not202228 = icmp eq ptr %.sroa.0125.0227, null
  br i1 %.not202228, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.r, %bb.s
  %.sroa.0125.0229 = phi ptr [ %.sroa.0125.0, %bb.s ], [ %.sroa.0125.0227, %bb.r ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0125.0229, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !823
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !344
  switch i32 %i.dx, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread [
    i32 584, label %bb.s
    i32 565, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph231, %.lr.ph231
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0125.0229, i64 32
  %.sroa.0125.0 = load ptr, ptr %i.dy, align 8, !tbaa !822 ; 2 uses
  %.not202 = icmp eq ptr %.sroa.0125.0, null
  br i1 %.not202, label %._crit_edge232, label %.lr.ph231

._crit_edge232:                                   ; preds = %bb.s
  store ptr %.sroa.0163.3, ptr %2, align 8, !tbaa !370
  store i32 %.sroa.7.3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !303
  br label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

.critedge76:                                      ; preds = %.lr.ph, %.critedge74
  %i.dz = phi ptr [ %i.bd, %.critedge74 ], [ %i.ak, %.lr.ph ]
  %i.ea = load i8, ptr %i.ag, align 8, !tbaa !14, !range !18, !noundef !19
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit124, label %bb.t

bb.t:                                             ; preds = %.critedge76
  call void @free(ptr noundef %i.dz) #38
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit124

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit124:        ; preds = %.critedge76, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.thread: ; preds = %.lr.ph.i, %.lr.ph.i101, %.lr.ph231, %bb.r, %bb.d, %bb.o, %bb.m, %bb.b, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.e, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit124, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit112, %bb.n, %bb.q, %._crit_edge232, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit, %bb.a
  %.13 = phi i1 [ false, %bb.a ], [ false, %bb.o ], [ false, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit ], [ false, %bb.q ], [ false, %bb.d ], [ false, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ false, %bb.n ], [ false, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit124 ], [ false, %bb.e ], [ false, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit112 ], [ true, %._crit_edge232 ], [ false, %.lr.ph231 ], [ false, %bb.b ], [ false, %bb.m ], [ false, %bb.r ], [ false, %.lr.ph.i101 ], [ false, %.lr.ph.i ]
  ret i1 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering22mayBeEmittedAsTailCallEPKNS_8CallInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 493
  %i.d = load i8, ptr %i.c, align 1, !tbaa !654, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !796
  %i.h = and i16 %i.g, 3
  %i.i = add nsw i16 %i.h, -1
  %i.j = icmp ult i16 %i.i, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering17LowerConstantPoolENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !25 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !835
  store i64 %i.f, ptr %4, align 8, !tbaa !835
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !836
  store i32 %i.i, ptr %i.g, align 8, !tbaa !837
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvm17ARMTargetLowering27splitValueIntoRegisterPartsERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueEPS6_jNS_3MVTESt8optionalIjE:bb.a
  ret i1 %or.cond77
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering26joinRegisterPartsIntoValueERNS_12SelectionDAGERKNS_5SDLocEPKNS_7SDValueEjNS_3MVTENS_3EVTESt8optionalIjE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr nofree noundef readonly captures(none) %3, i32 %4, i16 %5, ptr nofree noundef readonly byval(%"struct.llvm::EVT") align 8 captures(none) %6, i64 %7) unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %i.a = load i16, ptr %6, align 8, !tbaa !462    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = and i16 %i.a, -2
  %i.f = icmp eq i16 %i.e, 12
  %or.cond = select i1 %i.f, i1 %i.d, i1 false
  %i.g = icmp eq i16 %5, 14
  %or.cond77 = select i1 %or.cond, i1 %i.g, i1 false
  br i1 %or.cond77, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit, label %.critedge

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.a
  %i.h = zext nneg i16 %i.a to i64
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.i, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.j = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.j, label %bb.b, label %_ZN4llvm3MVT12getIntegerVTEj.exit

bb.b:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.k = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.k, align 16
  %i.l = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %.sroa.058.0.copyload = load ptr, ptr %3, align 8, !tbaa !370
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %.sroa.058.0.copyload, ptr %8, align 8, !tbaa !370
  %.sroa.10.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4 ; 2 uses
  %i.m = load <2 x i32>, ptr %.sroa.10.0..sroa_idx, align 8
  store <2 x i32> %i.m, ptr %.sroa.10.0..sroa_idx62, align 8
  %i.n = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #38 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.n, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.n, 1
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.split.i41, label %_ZN4llvm3MVT12getIntegerVTEj.exit45

.split.i41:                                       ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.l, i1 true) ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 10
  br i1 %i.r, label %switch.lookup.i42, label %_ZN4llvm3MVT12getIntegerVTEj.exit45

switch.lookup.i42:                                ; preds = %.split.i41
  %switch.idx.cast.i43 = trunc nuw nsw i32 %i.q to i16
  %switch.offset.i44 = add nuw nsw i16 %switch.idx.cast.i43, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit45

_ZN4llvm3MVT12getIntegerVTEj.exit45:              ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %.split.i41, %switch.lookup.i42
  %.sroa.0.0.i40 = phi i16 [ %switch.offset.i44, %switch.lookup.i42 ], [ 0, %.split.i41 ], [ 0, %_ZN4llvm3MVT12getIntegerVTEj.exit ]
  store ptr %.fca.0.extract13, ptr %9, align 8, !tbaa !370
  %.sroa.10.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract14, ptr %.sroa.10.0..sroa_idx64, align 8, !tbaa !303
  %.sroa.15.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx70, align 4
  %i.s = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.i40, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #38 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %.fca.0.extract5, ptr %10, align 8, !tbaa !370
  %.sroa.10.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.10.0..sroa_idx66, align 8, !tbaa !303
  %.sroa.15.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx72, align 4
  %i.t = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.a, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.t, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm3MVT12getIntegerVTEj.exit45
  %.sroa.10.0 = phi i32 [ %.fca.1.extract, %_ZN4llvm3MVT12getIntegerVTEj.exit45 ], [ 0, %bb.a ]
  %.sroa.058.0 = phi ptr [ %.fca.0.extract, %_ZN4llvm3MVT12getIntegerVTEj.exit45 ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.058.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.10.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering20LowerFormalArgumentsENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr %1, i32 %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %11 = alloca %"class.llvm::ArrayRef.429", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 12 uses
  %13 = alloca %"class.llvm::SmallVector.231", align 8 ; 12 uses
  %14 = alloca %"class.llvm::CCState", align 8    ; 22 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 14 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %19 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %26 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %29 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %30 = alloca %"class.llvm::DiagnosticInfoUnsupported", align 8 ; 9 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %32 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %33 = alloca %"class.llvm::DiagnosticInfoUnsupported", align 8 ; 9 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %35 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  store ptr %1, ptr %12, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !374  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !467  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !564  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.h, ptr %13, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !372
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 16, ptr %i.j, align 4, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !451
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %14, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i1 noundef zeroext false) #38
  %i.m = call noundef nonnull ptr @_ZNK4llvm17ARMTargetLowering17CCAssignFnForNodeEjbb(ptr noundef nonnull readonly align 8 dereferenceable(518466) %0, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext %4)
  call void @_ZN4llvm7CCState22AnalyzeFormalArgumentsERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420) %14, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.m) #38
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !748, !nonnull !19, !align !60 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !796
  %i.q = trunc i16 %i.p to i1
  br i1 %i.q, label %bb.b, label %_ZN4llvm8Function9arg_beginEv.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %i.n) #38
  br label %_ZN4llvm8Function9arg_beginEv.exit

_ZN4llvm8Function9arg_beginEv.exit:               ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !937
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !591
  %i.u = load ptr, ptr %13, align 8, !tbaa !21    ; 2 uses
  %i.v = load i32, ptr %i.i, align 8, !tbaa !372  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx = shl nuw nsw i64 %i.w, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 416 ; 6 uses
  %.not569 = icmp eq i32 %i.v, 0
  br i1 %.not569, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm8Function9arg_beginEv.exit
  %.promoted = load i32, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 376
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !372
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 368
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0363571 = phi ptr [ %i.u, %.lr.ph ], [ %i.ap, %bb.e ] ; 2 uses
  %.0547570 = phi i32 [ 78, %.lr.ph ], [ %.1548, %bb.e ] ; 3 uses
  %i.ad = phi i32 [ %.promoted, %.lr.ph ], [ %i.ao, %bb.e ] ; 4 uses
  %.not374 = icmp ult i32 %i.ad, %i.aa
  br i1 %.not374, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0363571, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !689
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %5, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %i.ag
  %.sroa.0528.0.copyload = load i64, ptr %i.ai, align 8, !tbaa !176
  %i.aj = and i64 %.sroa.0528.0.copyload, 32
  %.not562 = icmp eq i64 %i.aj, 0
  br i1 %.not562, label %bb.e, label %_ZN4llvm7CCState15nextInRegsParamEv.exit

_ZN4llvm7CCState15nextInRegsParamEv.exit:         ; preds = %bb.d
  %i.ak = zext i32 %i.ad to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !726
  %.sroa.speculated525 = call i32 @llvm.umin.i32(i32 %i.am, i32 %.0547570)
  %i.an = add nuw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.an, ptr %i.y, align 8, !tbaa !708
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7CCState15nextInRegsParamEv.exit, %bb.d
  %i.ao = phi i32 [ %i.ad, %bb.d ], [ %i.an, %_ZN4llvm7CCState15nextInRegsParamEv.exit ]
  %.1548 = phi i32 [ %.0547570, %bb.d ], [ %.sroa.speculated525, %_ZN4llvm7CCState15nextInRegsParamEv.exit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0363571, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.x
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.e, %bb.c, %_ZN4llvm8Function9arg_beginEv.exit
  %.0547.lcssa = phi i32 [ 78, %_ZN4llvm8Function9arg_beginEv.exit ], [ %.0547570, %bb.c ], [ %.1548, %bb.e ] ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !708
  br i1 %4, label %bb.f, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit

bb.f:                                             ; preds = %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 668
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !958, !range !18, !noundef !19
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !303 ; 4 uses
  %i.ax = and i32 %i.aw, 1024
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = and i32 %i.aw, 2048
  %.not.i.1 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = and i32 %i.aw, 4096
  %.not.i.2 = icmp eq i32 %i.az, 0
  br i1 %.not.i.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = and i32 %i.aw, 8192
  %.not.i.3 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.3, label %bb.k, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.i
  %.1.i.ph = phi i64 [ 2, %bb.i ], [ 3, %bb.j ], [ 1, %bb.h ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZL10GPRArgRegs, i64 %.1.i.ph
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29
  %i.bd = zext i16 %i.bc to i32
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %.0547.lcssa, i32 %i.bd)
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.j, %bb.k, %bb.f, %.thread
  %.4 = phi i32 [ %.0547.lcssa, %.thread ], [ %.sroa.speculated, %bb.k ], [ %.0547.lcssa, %bb.f ], [ %.0547.lcssa, %bb.j ]
  %i.be = shl nuw nsw i32 %.4, 2
  %i.bf = sub nuw nsw i32 312, %i.be              ; 2 uses
  store i32 %i.bf, ptr %i.t, align 4, !tbaa !591
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !374
  %i.bh = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.bg) #38
  %i.bi = load ptr, ptr %0, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i16 %i.bk(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.bh, i32 noundef 0) #38 ; 4 uses
  %i.bm = load i32, ptr %i.i, align 8, !tbaa !372 ; 2 uses
  %.not376574 = icmp eq i32 %i.bm, 0
  br i1 %.not376574, label %._crit_edge, label %.lr.ph579

.lr.ph579:                                        ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 376
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.6518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 85
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %_ZSt9__advanceIPKN4llvm8ArgumentElEvRT_T0_St26random_access_iterator_tag.exit

._crit_edge:                                      ; preds = %_ZN4llvm7CCState15nextInRegsParamEv.exit422, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  br i1 %4, label %bb.bc, label %bb.bf

_ZSt9__advanceIPKN4llvm8ArgumentElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %.lr.ph579, %_ZN4llvm7CCState15nextInRegsParamEv.exit422
  %.0362578 = phi i32 [ 0, %.lr.ph579 ], [ %.1, %_ZN4llvm7CCState15nextInRegsParamEv.exit422 ] ; 2 uses
  %.0366577 = phi i32 [ -1, %.lr.ph579 ], [ %.2, %_ZN4llvm7CCState15nextInRegsParamEv.exit422 ] ; 3 uses
  %.0368576 = phi i32 [ 0, %.lr.ph579 ], [ %i.ix, %_ZN4llvm7CCState15nextInRegsParamEv.exit422 ] ; 13 uses
  %.0545575 = phi ptr [ %i.s, %.lr.ph579 ], [ %.1546, %_ZN4llvm7CCState15nextInRegsParamEv.exit422 ]
  %i.by = zext i32 %.0368576 to i64
  %i.bz = load ptr, ptr %13, align 8, !tbaa !21   ; 3 uses
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.by ; 21 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !689 ; 7 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !959 ; 3 uses
  %.not563 = icmp eq i32 %i.ch, -1                ; 2 uses
  %i.ci = sub i32 %i.ch, %.0362578
  %narrow = select i1 %.not563, i32 0, i32 %i.ci
  %.1546.idx = zext i32 %narrow to i64
  %.1546 = getelementptr inbounds nuw [40 x i8], ptr %.0545575, i64 %.1546.idx ; 2 uses
  %.1 = select i1 %.not563, i32 %.0362578, i32 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !464 ; 4 uses
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.l, label %bb.aj

bb.l:                                             ; preds = %_ZSt9__advanceIPKN4llvm8ArgumentElEvRT_T0_St26random_access_iterator_tag.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.cm, align 8, !tbaa !25 ; 3 uses
  store i16 %.sroa.0.0.copyload.i, ptr %15, align 8, !tbaa !25
  store ptr null, ptr %i.bq, align 8, !tbaa !455
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = trunc i8 %i.co to i1
  br i1 %i.cp, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %bb.l
  switch i16 %.sroa.0.0.copyload.i, label %.critedge2.unreachabledefault [
    i16 154, label %bb.n
    i16 15, label %bb.q
    i16 13, label %bb.s
    i16 12, label %bb.s
    i16 14, label %.fold.split
    i16 108, label %.fold.split555
    i16 123, label %.fold.split555
    i16 112, label %.fold.split558
    i16 124, label %.fold.split558
    i16 7, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.cq = add i32 %.0368576, 1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.cr
  %i.ct = call { ptr, i32 } @_ZNK4llvm17ARMTargetLowering20GetF64FormalArgumentERNS_11CCValAssignES2_RNS_7SDValueERNS_12SelectionDAGERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(26) %i.ca, ptr noundef nonnull align 8 dereferenceable(26) %i.cs, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(12) %6) ; 2 uses
  %.fca.0.extract192 = extractvalue { ptr, i32 } %i.ct, 0
  %.fca.1.extract193 = extractvalue { ptr, i32 } %i.ct, 1
  %i.cu = add i32 %.0368576, 2                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load ptr, ptr %13, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.ca, ptr noundef nonnull align 8 dereferenceable(26) %i.cx, i64 26, i1 false)
  %i.cy = load i8, ptr %i.cj, align 8, !tbaa !464
  %i.cz = icmp eq i8 %i.cy, 1
  br i1 %i.cz, label %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit, label %bb.o

_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit:   ; preds = %bb.n
  %i.da = load i64, ptr %i.ca, align 8, !tbaa !466
  %i.db = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateFixedObjectEmlbb(ptr noundef nonnull align 8 dereferenceable(728) %i.e, i64 noundef 8, i64 noundef %i.da, i1 noundef zeroext true, i1 noundef zeroext false) #38 ; 2 uses
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef %i.db, i16 %i.bl, ptr null, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract182 = extractvalue { ptr, i32 } %i.dc, 0
  %.fca.1.extract183 = extractvalue { ptr, i32 } %i.dc, 1
  %.sroa.0176.0.copyload = load ptr, ptr %12, align 8, !tbaa !370
  %.sroa.2177.0.copyload = load i32, ptr %i.a, align 8, !tbaa !303
  store ptr %.fca.0.extract182, ptr %17, align 8, !tbaa !370
  store i32 %.fca.1.extract183, ptr %.sroa.4188.0..sroa_idx, align 8, !tbaa !303
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !374
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %18, ptr noundef nonnull align 8 dereferenceable(1065) %i.dd, i32 noundef %i.db, i64 noundef 0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 40, i1 false)
  %i.de = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %7, i16 15, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %.sroa.0176.0.copyload, i32 %.sroa.2177.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %18, i16 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef null) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = add i32 %.0368576, 3                    ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = load ptr, ptr %13, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = call { ptr, i32 } @_ZNK4llvm17ARMTargetLowering20GetF64FormalArgumentERNS_11CCValAssignES2_RNS_7SDValueERNS_12SelectionDAGERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef nonnull align 8 dereferenceable(26) %i.ca, ptr noundef nonnull align 8 dereferenceable(26) %i.di, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(920) %7, ptr noundef nonnull align 8 dereferenceable(12) %6)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit
  %.pn = phi { ptr, i32 } [ %i.de, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit ], [ %i.dj, %bb.o ] ; 2 uses
  %.1369 = phi i32 [ %i.cu, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit ], [ %i.df, %bb.o ]
  %.sroa.6518.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0517.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.dk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 154, ptr null) #38 ; 2 uses
  %.fca.0.extract158 = extractvalue { ptr, i32 } %i.dk, 0
  %.fca.1.extract159 = extractvalue { ptr, i32 } %i.dk, 1
  store ptr %.fca.0.extract158, ptr %16, align 8
  store i32 %.fca.1.extract159, ptr %i.br, align 8
  store ptr %.fca.0.extract192, ptr %20, align 8, !tbaa !370
  store i32 %.fca.1.extract193, ptr %.sroa.4197.0..sroa_idx, align 8, !tbaa !303
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract151 = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract152 = extractvalue { ptr, i32 } %i.dl, 1
  store ptr %.fca.0.extract151, ptr %21, align 8
  store i32 %.fca.1.extract152, ptr %.sroa.2154.0..sroa_idx, align 8
  %i.dm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 163, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 154, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #38 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZL5isCMNN4llvm7SDValueENS_3ISD8CondCodeERNS_12SelectionDAGE:bb.a
  %i.bc = phi i64 [ %.pre, %_ZNK4llvm9KnownBits17getSignedMinValueEv.exit.i._ZNK4llvm5APInt16isMinSignedValueEv.exit.i_crit_edge ], [ %i.ao, %_ZNK4llvm9KnownBits17getSignedMinValueEv.exit.thread.i ]
  %i.bd = zext nneg i32 %.pre-phi to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = icmp ne i64 %i.bc, %i.be
  br label %_ZN4llvm5APIntD2Ev.exit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.ph.i = phi i1 [ %i.bb, %bb.m ], [ true, %bb.l ]
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #41
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.n, %_ZNK4llvm5APInt16isMinSignedValueEv.exit.i
  %i.bg = phi i1 [ %i.bf, %_ZNK4llvm5APInt16isMinSignedValueEv.exit.i ], [ %.0.i.ph.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !700
  %i.bi = icmp ugt i32 %i.bh, 64
  br i1 %i.bi, label %bb.o, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !176 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #41
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.p, %bb.o, %_ZN4llvm5APIntD2Ev.exit.i
  %i.bl = load i32, ptr %i.v, align 8, !tbaa !700
  %i.bm = icmp ugt i32 %i.bl, 64
  br i1 %i.bm, label %bb.q, label %_ZN4llvm9KnownBitsD2Ev.exit.i

bb.q:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %i.bn = load ptr, ptr %3, align 8, !tbaa !176   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN4llvm9KnownBitsD2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #41
  br label %_ZN4llvm9KnownBitsD2Ev.exit.i

_ZN4llvm9KnownBitsD2Ev.exit.i:                    ; preds = %bb.r, %bb.q, %_ZN4llvm5APIntD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZL15isSafeSignedCMNN4llvm7SDValueERNS_12SelectionDAGE.exit

_ZL15isSafeSignedCMNN4llvm7SDValueERNS_12SelectionDAGE.exit: ; preds = %bb.e, %bb.c, %bb.c, %_ZN4llvm9KnownBitsD2Ev.exit.i, %bb.g, %bb.f, %bb.b, %bb.a
  %i.bp = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.e ], [ true, %bb.c ], [ false, %bb.f ], [ true, %bb.c ], [ %i.bg, %_ZN4llvm9KnownBitsD2Ev.exit.i ], [ true, %bb.g ]
  ret i1 %i.bp
}

declare noundef i32 @_ZN4llvm3ISD23getSetCCSwappedOperandsENS0_8CondCodeE(i32 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518466) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, i1 noundef zeroext %7) local_unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZL19isFloatingPointZeroN4llvm7SDValueE(ptr %3)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = select i1 %7, i32 553, i32 552
  store ptr %1, ptr %8, align 8, !tbaa !370
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %.sroa.329.0..sroa_idx, align 8, !tbaa !303
  store ptr %3, ptr %9, align 8, !tbaa !370
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %4, ptr %.sroa.325.0..sroa_idx, align 8, !tbaa !303
  %i.c = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #38
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = select i1 %7, i32 554, i32 555
  store ptr %1, ptr %10, align 8, !tbaa !370
  %.sroa.329.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %2, ptr %.sroa.329.0..sroa_idx30, align 8, !tbaa !303
  %i.e = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.041.0 = extractvalue { ptr, i32 } %.pn, 0
  store ptr %.sroa.041.0, ptr %11, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !303
  %i.f = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 564, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #38
  ret { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL19isFloatingPointZeroN4llvm7SDValueE(ptr nofree readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !344
  switch i32 %i.b, label %.critedge [
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 316, label %_ZN4llvm3ISD9isEXTLoadEPKNS_6SDNodeE.exit
    i32 248, label %bb.e
  ]

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !968  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176
  %.not.i.i.i.i = icmp eq ptr %i.f, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.h, ptr %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 15
  %i.l = icmp eq i8 %i.k, 3
  br label %.critedge

_ZN4llvm3ISD9isEXTLoadEPKNS_6SDNodeE.exit:        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 3072
  switch i16 %i.o, label %.critedge [
    i16 1024, label %bb.b
    i16 0, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN4llvm3ISD9isEXTLoadEPKNS_6SDNodeE.exit, %_ZN4llvm3ISD9isEXTLoadEPKNS_6SDNodeE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !698
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !601  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !344
  %i.v = icmp eq i32 %i.u, 704
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !698
  %.sroa.037.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !370 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.037.0.copyload, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !344
  switch i32 %i.z, label %.critedge [
    i32 43, label %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 18, label %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.c, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.0.copyload, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !176 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !313
  %.not59 = icmp eq i8 %i.ac, 7
  br i1 %.not59, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !176
  %.not.i.i.i.i30 = icmp eq ptr %i.ae, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %.0.i.i.i.i31 = select i1 %.not.i.i.i.i30, ptr %i.ag, ptr %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i31, i64 20
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 15
  %i.ak = icmp eq i8 %i.aj, 3
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.am, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 15
  %i.an = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.an, i1 false
  br i1 %.not4.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !698
  %.sroa.0.0.copyload33 = load ptr, ptr %i.ap, align 8, !tbaa !370 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload33, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !344
  %i.as = icmp eq i32 %i.ar, 656
  br i1 %i.as, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload33, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !698 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.au, align 8, !tbaa !370
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !303
  %i.av = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload) #38
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm3ISD9isEXTLoadEPKNS_6SDNodeE.exit, %bb.a, %bb.g, %bb.c, %bb.f, %bb.b, %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.e, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.d
  %i.aw = phi i1 [ %i.ak, %bb.d ], [ %i.l, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit ], [ false, %bb.c ], [ false, %bb.e ], [ false, %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ false, %bb.b ], [ false, %bb.f ], [ false, %_ZN4llvm3ISD9isEXTLoadEPKNS_6SDNodeE.exit ], [ %i.av, %bb.g ], [ false, %bb.a ]
  ret i1 %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17ARMTargetLowering13getARMXALUOOpENS_7SDValueERNS_12SelectionDAGERS1_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.633") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(920) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDValue", align 8     ; 11 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 9 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 25 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !835
  store i64 %i.e, ptr %8, align 8, !tbaa !835
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !836
  store i32 %i.h, ptr %i.f, align 8, !tbaa !837
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !344
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 7 uses
  %i.l = zext i32 %3 to i64                       ; 7 uses
  switch i32 %i.j, label %bb.b [
    i32 79, label %bb.c
    i32 80, label %bb.d
    i32 81, label %bb.e
    i32 82, label %bb.f
    i32 84, label %bb.g
    i32 83, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 7, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract186 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract187 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract186, ptr %5, align 8, !tbaa !370
  store i32 %.fca.1.extract187, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !303
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.o, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38 ; 2 uses
  %.fca.0.extract177 = extractvalue { ptr, i32 } %i.p, 0 ; 2 uses
  %.fca.1.extract178 = extractvalue { ptr, i32 } %i.p, 1 ; 2 uses
  store ptr %.fca.0.extract177, ptr %9, align 8, !tbaa !370
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract178, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !303
  %i.q = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.r = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract162 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract163 = extractvalue { ptr, i32 } %i.r, 1
  store ptr %.fca.0.extract162, ptr %5, align 8, !tbaa !370
  store i32 %.fca.1.extract163, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !303
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i224 = load i16, ptr %i.t, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i225 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.21.0.copyload.i.i226 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i225, align 8, !tbaa !341
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 %.sroa.0.0.copyload.i.i224, ptr %.sroa.21.0.copyload.i.i226, i16 7, ptr null) #38 ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = extractvalue { ptr, i32 } %i.u, 1
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 537, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.v, i32 %i.w, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38
  %.fca.0.extract147 = extractvalue { ptr, i32 } %i.x, 0 ; 2 uses
  store ptr %.fca.0.extract147, ptr %10, align 8, !tbaa !370
  %.sroa.19.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %.sroa.19.0..sroa_idx311, align 8, !tbaa !303
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 7, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract132 = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract133 = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract132, ptr %5, align 8, !tbaa !370
  store i32 %.fca.1.extract133, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !303
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i229 = load i16, ptr %i.ab, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i230 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i231 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i230, align 8, !tbaa !341
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i229, ptr %.sroa.21.0.copyload.i.i231, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38 ; 2 uses
  %.fca.0.extract123 = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract124 = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract108 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract109 = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract108, ptr %5, align 8, !tbaa !370
  store i32 %.fca.1.extract109, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !303
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i234 = load i16, ptr %i.ag, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i235 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.21.0.copyload.i.i236 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i235, align 8, !tbaa !341
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i234, ptr %.sroa.21.0.copyload.i.i236, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38 ; 2 uses
  %.fca.0.extract99 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract100 = extractvalue { ptr, i32 } %i.ah, 1
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract84 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract85 = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %.fca.0.extract84, ptr %5, align 8, !tbaa !370
  store i32 %.fca.1.extract85, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !303
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i239 = load i16, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i240 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.21.0.copyload.i.i241 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i240, align 8, !tbaa !341 ; 2 uses
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 %.sroa.0.0.copyload.i.i239, ptr %.sroa.21.0.copyload.i.i241, i16 %.sroa.0.0.copyload.i.i239, ptr %.sroa.21.0.copyload.i.i241) #38 ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 67, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.an, i32 %i.ao, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.ap, 0 ; 2 uses
  store ptr %.fca.0.extract63, ptr %11, align 8
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %.sroa.266.0..sroa_idx, align 8
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract59 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract60 = extractvalue { ptr, i32 } %i.aq, 1
  store ptr %.fca.0.extract59, ptr %12, align 8
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract60, ptr %.sroa.262.0..sroa_idx, align 8
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 556, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #38
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract41, ptr %5, align 8, !tbaa !370
  store i32 %.fca.1.extract42, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !303
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i253 = load i16, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i254 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.21.0.copyload.i.i255 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i254, align 8, !tbaa !341 ; 2 uses
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 %.sroa.0.0.copyload.i.i253, ptr %.sroa.21.0.copyload.i.i255, i16 %.sroa.0.0.copyload.i.i253, ptr %.sroa.21.0.copyload.i.i255) #38 ; 2 uses
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = extractvalue { ptr, i32 } %i.av, 1
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 66, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.aw, i32 %i.ax, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.ay, 0 ; 3 uses
  store ptr %.fca.0.extract20, ptr %13, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 1, ptr %.sroa.223.0..sroa_idx, align 8
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i265 = load i16, ptr %i.ba, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.21.0.copyload.i.i267 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i266, align 8, !tbaa !341
  store ptr %.fca.0.extract20, ptr %15, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %.sroa.217.0..sroa_idx, align 8
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 31, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.bb, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.bb, 1
  store ptr %.fca.0.extract10, ptr %16, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.213.0..sroa_idx, align 8
  %i.bc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 199, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i265, ptr %.sroa.21.0.copyload.i.i267, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #38 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.bc, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.bc, 1
  store ptr %.fca.0.extract6, ptr %14, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.29.0..sroa_idx, align 8
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 556, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.y, %bb.d ], [ %i.ad, %bb.e ], [ %i.ai, %bb.f ], [ %i.ar, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %.sroa.0304.0 = phi ptr [ %.fca.0.extract177, %bb.c ], [ %.fca.0.extract147, %bb.d ], [ %.fca.0.extract123, %bb.e ], [ %.fca.0.extract99, %bb.f ], [ %.fca.0.extract63, %bb.g ], [ %.fca.0.extract20, %bb.h ]
  %.sroa.19.0 = phi i32 [ %.fca.1.extract178, %bb.c ], [ 0, %bb.d ], [ %.fca.1.extract124, %bb.e ], [ %.fca.1.extract100, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  %.sroa.10.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0303.0 = extractvalue { ptr, i32 } %.pn, 0
  store ptr %.sroa.0304.0, ptr %0, align 8, !tbaa !370
end_hunk_3
begin_hunk_4_@_ZNK4llvm17ARMTargetLowering7getCMOVERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_RNS_12SelectionDAGE:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %5, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !303
  %i.j = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 658, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %i.h, i32 %i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38
  %i.k = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 7, ptr null, i16 7, ptr null) #38 ; 2 uses
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = extractvalue { ptr, i32 } %i.k, 1
  %i.n = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 658, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %i.l, i32 %i.m, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.n, 0 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.j, 0 ; 2 uses
  store ptr %.fca.0.extract27, ptr %11, align 8, !tbaa !370
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !303
  store ptr %.fca.0.extract48, ptr %12, align 8, !tbaa !370
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !303
  %i.o = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 550, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #38 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.o, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.o, 1
  store ptr %.fca.0.extract27, ptr %13, align 8, !tbaa !370
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 1, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !303
  store ptr %.fca.0.extract48, ptr %14, align 8, !tbaa !370
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 1, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !303
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 550, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #38 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.p, 1
  store ptr %.fca.0.extract13, ptr %15, align 8, !tbaa !370
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract14, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !303
  store ptr %.fca.0.extract8, ptr %16, align 8, !tbaa !370
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !303
  %i.q = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 654, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 15, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #38
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  store ptr %4, ptr %17, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %5, ptr %.sroa.6.0..sroa_idx104, align 8, !tbaa !303
  %i.r = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 550, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.q, %bb.c ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering25isUnsupportedFloatingTypeENS_3EVTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, i16 %1, ptr nofree readnone captures(address_is_null) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %.not.i.i = icmp eq i16 %1, 14
  %i.a = icmp eq ptr %2, null                     ; 3 uses
  %.not4.i = select i1 %.not.i.i, i1 %i.a, i1 false
  br i1 %.not4.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 443
  %i.e = load i8, ptr %i.d, align 1, !tbaa !168, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not.i.i2 = icmp eq i16 %1, 15
  %.not4.i3 = select i1 %.not.i.i2, i1 %i.a, i1 false
  br i1 %.not4.i3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 378
  %i.k = load i8, ptr %i.j, align 2, !tbaa !169, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = xor i1 %i.l, true
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not.i.i4 = icmp eq i16 %1, 13
  %.not4.i5 = select i1 %.not.i.i4, i1 %i.a, i1 false
  br i1 %.not4.i5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 389
  %i.q = load i8, ptr %i.p, align 1, !tbaa !170, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ %i.m, %bb.d ], [ %i.s, %bb.f ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering14LowerSELECT_CCENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %.sroa.0664 = alloca ptr, align 8               ; 6 uses
  %.sroa.0661 = alloca ptr, align 8               ; 6 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 9 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 30 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 21 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 20 uses
  %i.a = alloca i32, align 4                      ; 13 uses
  %26 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %27 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !340
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.e, align 8, !tbaa !25 ; 13 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341 ; 11 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %14, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !835  ; 2 uses
  store i64 %i.h, ptr %15, align 8, !tbaa !835
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !836  ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !837
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 461
  %i.o = load i8, ptr %i.n, align 1, !tbaa !73, !range !18, !noundef !19
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 417
  %i.r = load i8, ptr %i.q, align 1, !tbaa !187, !range !18, !noundef !19
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 410
  %i.u = load i8, ptr %i.t, align 2, !range !18
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !698  ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.0105.0.copyload.i.a = load ptr, ptr %i.y, align 8, !tbaa !370 ; 3 uses
  %.sroa.6108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.6108.0.copyload.i = load i32, ptr %.sroa.6108.0..sroa_idx.i, align 8, !tbaa !303
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.0126.0.copyload.i = load ptr, ptr %i.z, align 8, !tbaa !370 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !370 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %.sroa.5106.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.5106.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5106.0.copyload.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !601
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !971
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0126.0.copyload.i, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !344 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 12
  %i.ai = icmp eq i32 %i.ag, 37
  %spec.select.i.i.i.i.i.i.i.i.i = or i1 %i.ah, %i.ai
  %.sroa.098.0.copyload.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.copyload.i, ptr %.sroa.0126.0.copyload.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload.i, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !344
  %.not.i = icmp eq i32 %i.ak, 221
  br i1 %.not.i, label %bb.e, label %.thread.sink.split

bb.e:                                             ; preds = %bb.d
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %.sroa.6109.0.copyload.i = load i64, ptr %.sroa.5127.0..sroa_idx.i, align 8
  %.sroa.6109.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.6109.0.copyload.i to i32
  %.sroa.4111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4111.0.copyload.i = load i32, ptr %.sroa.4111.0..sroa_idx.i, align 8, !tbaa !303
  %.sroa.0110.0.copyload.i = load ptr, ptr %i.x, align 8, !tbaa !370
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !698 ; 10 uses
  %.sroa.095.0.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !370 ; 3 uses
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.496.0.copyload.i = load i32, ptr %.sroa.496.0..sroa_idx.i, align 8, !tbaa !303 ; 3 uses
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.sroa.597.0.copyload.i = load i32, ptr %.sroa.597.0..sroa_idx.i, align 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.090.0.copyload.i = load ptr, ptr %i.an, align 8, !tbaa !370 ; 3 uses
  %.sroa.693.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.693.0.copyload.i = load i32, ptr %.sroa.693.0..sroa_idx.i, align 8, !tbaa !303
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %.sroa.084.0.copyload.i = load ptr, ptr %i.ao, align 8, !tbaa !370
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %.sroa.485.0.copyload.i = load i32, ptr %.sroa.485.0..sroa_idx.i, align 8, !tbaa !303
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !601
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !971 ; 3 uses
  %i.at = icmp ne ptr %.sroa.0110.0.copyload.i, %.sroa.0126.0.copyload.i
  %i.au = icmp ne i32 %.sroa.4111.0.copyload.i, %.sroa.6109.sroa.0.0.extract.trunc.i
  %.not3.i.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %.not3.i.i, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %.sroa.488.0.copyload.i = load i32, ptr %.sroa.488.0..sroa_idx.i, align 8, !tbaa !303
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %.sroa.087.0.copyload.i = load ptr, ptr %i.av, align 8, !tbaa !370
  %i.aw = icmp ne ptr %.sroa.095.0.copyload.i, %.sroa.087.0.copyload.i
  %i.ax = icmp ne i32 %.sroa.496.0.copyload.i, %.sroa.488.0.copyload.i
  %.not3.i44.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %.not3.i44.i, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp ne ptr %.sroa.0105.0.copyload.i.a, %.sroa.0.0.copyload.i
  %i.az = icmp ne i32 %.sroa.6108.0.copyload.i, %.sroa.5106.sroa.0.0.extract.trunc.i
  %.not3.i45.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %.not3.i45.i, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ne ptr %.sroa.090.0.copyload.i, %.sroa.084.0.copyload.i
  %i.bb = icmp ne i32 %.sroa.693.0.copyload.i, %.sroa.485.0.copyload.i
  %.not3.i46.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %.not3.i46.i, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = and i32 %i.ae, -2                       ; 2 uses
  switch i32 %i.bc, label %.thread.sink.split [
    i32 18, label %bb.j
    i32 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bd = and i32 %i.as, -2
  %i.be = icmp eq i32 %i.bd, 20
  br i1 %i.be, label %bb.l, label %.thread.sink.split

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %i.as, -2
  %i.bg = icmp eq i32 %i.bf, 18
  br i1 %i.bg, label %bb.l, label %.thread.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.copyload.i.a, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !344
  switch i32 %i.bi, label %.thread.sink.split [
    i32 37, label %bb.m
    i32 12, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.090.0.copyload.i, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !344
  switch i32 %i.bk, label %.thread.sink.split [
    i32 37, label %bb.n
    i32 12, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.copyload.i.a, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !896 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !700 ; 3 uses
  %i.bq = icmp ult i32 %i.bp, 65
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !176
  %i.bs = icmp eq i32 %i.bp, 0
  %i.bt = sub nuw nsw i32 64, %i.bp
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = shl i64 %i.br, %i.bu
  %i.bw = ashr exact i64 %i.bv, %i.bu
  %.0.i.i.i.i.i = select i1 %i.bs, i64 0, i64 %i.bw
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !176
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !466
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.o ], [ %i.by, %bb.p ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.090.0.copyload.i, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !896 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !700 ; 3 uses
  %i.ce = icmp ult i32 %i.cd, 65
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  %i.cf = load i64, ptr %i.cb, align 8, !tbaa !176
  %i.cg = icmp eq i32 %i.cd, 0
  %i.ch = sub nuw nsw i32 64, %i.cd
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = shl i64 %i.cf, %i.ci
  %i.ck = ashr exact i64 %i.cj, %i.ci
  %.0.i.i.i.i50.i = select i1 %i.cg, i64 0, i64 %i.ck
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit51.i

bb.r:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !176
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !466
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit51.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit51.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i49.i = phi i64 [ %.0.i.i.i.i50.i, %bb.q ], [ %i.cm, %bb.r ] ; 5 uses
  %.sroa.speculated59.i = tail call i64 @llvm.smax.i64(i64 %.0.i.i.i.i, i64 %.0.i.i.i49.i) ; 3 uses
  %i.cn = icmp slt i64 %.0.i.i.i49.i, %.0.i.i.i.i
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.0.i.i.i49.i, i64 %.0.i.i.i.i)
  %i.co = icmp eq i32 %i.bc, 20
  %or.cond.i = and i1 %i.co, %i.cn
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit51.i
  %i.cp = icmp slt i64 %.0.i.i.i.i, %.0.i.i.i49.i
  %i.cq = and i32 %i.as, -2
  %i.cr = icmp eq i32 %i.cq, 20
  %or.cond122.i = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %or.cond122.i, label %bb.t, label %.thread.sink.split

bb.t:                                             ; preds = %bb.s, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit51.i
  %i.cs = add nsw i64 %.sroa.speculated59.i, 1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cs)
  %or.cond124.i = icmp eq i64 %i.ct, 1
  br i1 %or.cond124.i, label %bb.u, label %.thread.sink.split

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  store i64 %i.h, ptr %9, align 8, !tbaa !835
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.k, ptr %i.cu, align 8, !tbaa !837
  %i.cv = xor i64 %.0.i.i.i49.i, %.0.i.i.i.i
  %i.cw = icmp eq i64 %i.cv, -1
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.sroa.095.0.copyload.i, ptr %10, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx75.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.496.0.copyload.i, ptr %.sroa.6.0..sroa_idx75.i, align 8, !tbaa !303
  %.sroa.7.0..sroa_idx79.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.597.0.copyload.i, ptr %.sroa.7.0..sroa_idx79.i, align 4
  %i.cx = xor i64 %.sroa.speculated59.i, -1
  %i.cy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cx, i1 false)
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract15.i = extractvalue { ptr, i32 } %i.cz, 0
  %.fca.1.extract16.i = extractvalue { ptr, i32 } %i.cz, 1
  store ptr %.fca.0.extract15.i, ptr %11, align 8
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract16.i, ptr %.sroa.218.0..sroa_idx.i, align 8
  %i.da = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 600, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #38
  br label %_ZL26LowerSaturatingConditionalN4llvm7SDValueERNS_12SelectionDAGE.exit

bb.w:                                             ; preds = %bb.u
  %i.db = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.db, label %bb.x, label %_ZL26LowerSaturatingConditionalN4llvm7SDValueERNS_12SelectionDAGE.exit.thread686

_ZL26LowerSaturatingConditionalN4llvm7SDValueERNS_12SelectionDAGE.exit.thread686: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %.thread.sink.split

bb.x:                                             ; preds = %bb.w
  store ptr %.sroa.095.0.copyload.i, ptr %12, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx77.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sroa.496.0.copyload.i, ptr %.sroa.6.0..sroa_idx77.i, align 8, !tbaa !303
  %.sroa.7.0..sroa_idx81.i = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %.sroa.597.0.copyload.i, ptr %.sroa.7.0..sroa_idx81.i, align 4
  %i.dc = xor i64 %.sroa.speculated59.i, -1
  %i.dd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dc, i1 false)
  %i.de = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.de, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.de, 1
  store ptr %.fca.0.extract1.i, ptr %13, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.df = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 612, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #38
  br label %_ZL26LowerSaturatingConditionalN4llvm7SDValueERNS_12SelectionDAGE.exit

_ZL26LowerSaturatingConditionalN4llvm7SDValueERNS_12SelectionDAGE.exit: ; preds = %bb.v, %bb.x
  %.pn = phi { ptr, i32 } [ %i.da, %bb.v ], [ %i.df, %bb.x ] ; 2 uses
  %.sroa.0120.0.i = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %.not715 = icmp eq ptr %.sroa.0120.0.i, null
  br i1 %.not715, label %.thread, label %.critedge341

.thread.sink.split:                               ; preds = %bb.t, %bb.j, %bb.m, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.s, %bb.l, %bb.e, %bb.d, %_ZL26LowerSaturatingConditionalN4llvm7SDValueERNS_12SelectionDAGE.exit.thread686
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %_ZL26LowerSaturatingConditionalN4llvm7SDValueERNS_12SelectionDAGE.exit, %bb.c
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  %i.dg = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.dg, i1 false
  br i1 %.not4.i, label %bb.y, label %bb.al

bb.y:                                             ; preds = %.thread
  %i.dh = getelementptr i8, ptr %1, i64 40
  %.val.val = load ptr, ptr %i.dh, align 8, !tbaa !698 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0664)
  %.sroa.0664.0.copyload = load ptr, ptr %.val.val, align 8, !tbaa !370 ; 7 uses
  store ptr %.sroa.0664.0.copyload, ptr %.sroa.0664, align 8, !tbaa !370
  %.sroa.6665.0..val.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %.sroa.6665.0.copyload = load i32, ptr %.sroa.6665.0..val.val.sroa_idx, align 8, !tbaa !303 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0661)
  %i.di = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %.sroa.0661.0.copyload = load ptr, ptr %i.di, align 8, !tbaa !370 ; 8 uses
  store ptr %.sroa.0661.0.copyload, ptr %.sroa.0661, align 8, !tbaa !370
end_hunk_4
begin_hunk_5_@_ZNK4llvm17ARMTargetLowering17LowerBUILD_VECTORENS_7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE:bb.a
  br i1 %spec.select.i.i85.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.05.0.copyload.i = load i16, ptr %27, align 8, !tbaa !25
  %.sroa.27.0.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !341
  store ptr %.sroa.034.052.i, ptr %32, align 8, !tbaa !370
  store i32 %.sroa.735.051.i, ptr %.sroa.735.0..sroa_idx.i, align 8, !tbaa !303
  store i32 0, ptr %.sroa.12.0..sroa_idx.i, align 4
  store ptr %.sroa.01.0.copyload.i, ptr %33, align 8, !tbaa !370
  store i64 %i.es, ptr %.sroa.6.0..sroa_idx4.i, align 8
  %i.ew = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %indvars.iv64.i, ptr noundef nonnull align 8 dereferenceable(12) %26, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.ew, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.ew, 1
  store ptr %.fca.0.extract1.i, ptr %34, align 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.ex = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 163, ptr noundef nonnull align 8 dereferenceable(12) %26, i16 %.sroa.05.0.copyload.i, ptr %.sroa.27.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34) #38 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ex, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ex, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  %.sroa.735.1.i = phi i32 [ %.sroa.735.051.i, %bb.q ], [ %.sroa.735.051.i, %bb.r ], [ %.fca.1.extract.i, %bb.s ], [ %.sroa.735.051.i, %bb.q ] ; 2 uses
  %.sroa.034.1.i = phi ptr [ %.sroa.034.052.i, %bb.q ], [ %.sroa.034.052.i, %bb.r ], [ %.fca.0.extract.i, %bb.s ], [ %.sroa.034.052.i, %bb.q ] ; 2 uses
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %_ZL20LowerBUILD_VECTOR_i1N4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit, label %bb.q, !llvm.loop !1029

_ZL20LowerBUILD_VECTOR_i1N4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit: ; preds = %bb.t, %.split.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_5SDUseEEEZL20LowerBUILD_VECTOR_i1NS_7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEE3$_0EEbOT_T0_.exit.thread.i", %._crit_edge.i
  %.sroa.735.3.i = phi i32 [ 0, %.split.i ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i ], [ %.fca.1.extract31.i, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_5SDUseEEEZL20LowerBUILD_VECTOR_i1NS_7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEE3$_0EEbOT_T0_.exit.thread.i" ], [ %.fca.1.extract13.i, %._crit_edge.i ], [ %.sroa.735.1.i, %bb.t ]
  %.sroa.034.3.i = phi ptr [ null, %.split.i ], [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i ], [ %.fca.0.extract30.i, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_5SDUseEEEZL20LowerBUILD_VECTOR_i1NS_7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEE3$_0EEbOT_T0_.exit.thread.i" ], [ %.fca.0.extract12.i, %._crit_edge.i ], [ %.sroa.034.1.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  %i.ey = insertvalue { ptr, i32 } poison, ptr %.sroa.034.3.i, 0
  %i.ez = insertvalue { ptr, i32 } %i.ey, i32 %.sroa.735.3.i, 1
  br label %bb.fi

bb.u:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %.val.pre = load i8, ptr %i.m, align 1, !tbaa !173, !range !18
  %i.fa = trunc nuw i8 %.val.pre to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  br i1 %i.fa, label %bb.v, label %.sink.split

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  %i.fb = load ptr, ptr %i.h, align 8, !tbaa !340
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.j ; 2 uses
  %.sroa.0.0.copyload.i.i.i595 = load i16, ptr %i.fc, align 8, !tbaa !25 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i596 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.21.0.copyload.i.i.i597 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i596, align 8, !tbaa !341 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i595, ptr %22, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i597, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !698 ; 4 uses
  %.sroa.011.0.copyload13.i = load ptr, ptr %i.ff, align 8, !tbaa !370 ; 3 uses
  %.sroa.6.0..sroa_idx.i598 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fg = load <2 x i32>, ptr %.sroa.6.0..sroa_idx.i598, align 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i598, align 8, !tbaa !303 ; 2 uses
  %.not.i.i.i599 = icmp eq i16 %.sroa.0.0.copyload.i.i.i595, 0
  br i1 %.not.i.i.i599, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i615, label %.split.i.i600

.split.i.i600:                                    ; preds = %bb.v
  %i.fh = add i16 %.sroa.0.0.copyload.i.i.i595, -163
  %spec.select.i.i.i.i601 = icmp ult i16 %i.fh, 53
  br i1 %spec.select.i.i.i.i601, label %bb.w, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i602

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i615:    ; preds = %bb.v
  %i.fi = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #39
  br i1 %i.fi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i615, %.split.i.i600
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i602: ; preds = %.split.i.i600
  %i.fj = zext i16 %.sroa.0.0.copyload.i.i.i595 to i64
  %i.fk = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 -2
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !29
  %i.fn = zext i16 %i.fm to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i603

bb.x:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i615
  %i.fo = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i603

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i603:  ; preds = %bb.x, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i602
  %i.fp = phi i32 [ %i.fn, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i602 ], [ %i.fo, %bb.x ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %.sroa.07.0.copyload.i604 = load ptr, ptr %i.fq, align 8, !tbaa !370 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i604, i64 24
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !344
  %.not.i605 = icmp eq i32 %i.fs, 59
  br i1 %.not.i605, label %bb.y, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855

bb.y:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i603
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i604, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !698 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !601
  %i.fw = icmp ne ptr %i.fv, %.sroa.011.0.copyload13.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = icmp ne i32 %i.fy, %.sroa.6.0.copyload.i
  %.not3.i.i = select i1 %i.fw, i1 true, i1 %i.fz
  br i1 %.not3.i.i, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !601 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !344
  switch i32 %i.gd, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855 [
    i32 37, label %bb.aa
    i32 12, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 88
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !896 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !700
  %i.gj = icmp ult i32 %i.gi, 65
  %i.gk = load ptr, ptr %i.gg, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.gj, ptr %i.gg, ptr %i.gk
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !176 ; 3 uses
  %i.gl = trunc i64 %.0.i.i.i.i.i.i to i32        ; 2 uses
  %i.gm = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gl)
  %i.gn = icmp eq i32 %i.gm, 1
  %i.go = and i32 %i.gl, 15
  %switch.i = icmp ne i32 %i.go, 0
  %or.cond.i = and i1 %i.gn, %switch.i
  br i1 %or.cond.i, label %.preheader.i, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855

.preheader.i:                                     ; preds = %bb.aa
  %.not3628.i = icmp ugt i32 %i.fp, 2
  br i1 %.not3628.i, label %.lr.ph.preheader.i609, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit

.lr.ph.preheader.i609:                            ; preds = %.preheader.i
  %wide.trip.count.i610 = zext i32 %i.fp to i64
  br label %.lr.ph.i611

bb.ab:                                            ; preds = %bb.ae
  %indvars.iv.next.i613 = add nuw nsw i64 %indvars.iv.i612, 1 ; 2 uses
  %exitcond.not.i614 = icmp eq i64 %indvars.iv.next.i613, %wide.trip.count.i610
  br i1 %exitcond.not.i614, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit, label %.lr.ph.i611, !llvm.loop !1030

.lr.ph.i611:                                      ; preds = %bb.ab, %.lr.ph.preheader.i609
  %indvars.iv.i612 = phi i64 [ 2, %.lr.ph.preheader.i609 ], [ %indvars.iv.next.i613, %bb.ab ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %i.ff, i64 %indvars.iv.i612
  %.sroa.03.0.copyload.i = load ptr, ptr %i.gp, align 8, !tbaa !370 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !344
  %.not34.i = icmp eq i32 %i.gr, 59
  br i1 %.not34.i, label %bb.ac, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855

bb.ac:                                            ; preds = %.lr.ph.i611
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 40
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !698 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !601
  %i.gv = icmp ne ptr %i.gu, %.sroa.011.0.copyload13.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gx = load i32, ptr %i.gw, align 8
  %i.gy = icmp ne i32 %i.gx, %.sroa.6.0.copyload.i
  %.not3.i39.i = select i1 %i.gv, i1 true, i1 %i.gy
  br i1 %.not3.i39.i, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !601 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !344
  switch i32 %i.hc, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855 [
    i32 37, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 88
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !896 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !700
  %i.hi = icmp ult i32 %i.hh, 65
  %i.hj = load ptr, ptr %i.hf, align 8
  %spec.select.i.i.i.i.i41.i = select i1 %i.hi, ptr %i.hf, ptr %i.hj
  %.0.i.i.i.i.i42.i = load i64, ptr %spec.select.i.i.i.i.i41.i, align 8, !tbaa !176
  %i.hk = mul i64 %indvars.iv.i612, %.0.i.i.i.i.i.i
  %i.hl = and i64 %i.hk, 4294967295
  %.not35.i = icmp eq i64 %.0.i.i.i.i.i42.i, %i.hl
  br i1 %.not35.i, label %bb.ab, label %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855

_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855: ; preds = %bb.ae, %bb.ac, %.lr.ph.i611, %bb.ad, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i603, %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %.sink.split

_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit: ; preds = %bb.ab, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.hm = load i64, ptr %i.c, align 8, !tbaa !835
  store i64 %i.hm, ptr %23, align 8, !tbaa !835
  %i.hn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ho = load i32, ptr %i.f, align 4, !tbaa !836
  store i32 %i.ho, ptr %i.hn, align 8, !tbaa !837
  %i.hp = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i595, ptr %.sroa.21.0.copyload.i.i.i597, i16 7, ptr null) #38 ; 2 uses
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  %i.hr = extractvalue { ptr, i32 } %i.hp, 1
  store ptr %.sroa.011.0.copyload13.i, ptr %24, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store <2 x i32> %i.fg, ptr %.sroa.6.0..sroa_idx15.i, align 8
  %i.hs = and i64 %.0.i.i.i.i.i.i, 4294967295
  %i.ht = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(12) %23, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract7.i = extractvalue { ptr, i32 } %i.ht, 0
  %.fca.1.extract8.i = extractvalue { ptr, i32 } %i.ht, 1
  store ptr %.fca.0.extract7.i, ptr %25, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract8.i, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.hu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 637, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr %i.hq, i32 %i.hr, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #38 ; 2 uses
  %.fca.0.extract.i607 = extractvalue { ptr, i32 } %i.hu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  %.not888 = icmp eq ptr %.fca.0.extract.i607, null
  br i1 %.not888, label %bb.af, label %bb.fi

.sink.split:                                      ; preds = %bb.u, %.thread1010, %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread855
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %_ZL24LowerBUILD_VECTORToVIDUPN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  %i.hv = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 6 uses
  store i32 1, ptr %i.hv, align 8, !tbaa !700
  store i64 0, ptr %38, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  %i.hw = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  store i32 1, ptr %i.hw, align 8, !tbaa !700
  store i64 0, ptr %39, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.hx = call noundef zeroext i1 @_ZNK4llvm17BuildVectorSDNode15isConstantSplatERNS_5APIntES2_RjRbjb(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(12) %38, ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef 0, i1 noundef zeroext false) #38
  br i1 %i.hx, label %bb.ag, label %bb.bh

bb.ag:                                            ; preds = %bb.af
  %i.hy = load i32, ptr %i.hw, align 8, !tbaa !700 ; 4 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ia = icmp ult i32 %i.hy, 65
  br i1 %i.ia, label %_ZNK4llvm5APInt9isAllOnesEv.exit, label %.split

.split:                                           ; preds = %bb.ah
  %i.ib = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %39) #39
  %i.ic = icmp eq i32 %i.ib, %i.hy
  br i1 %i.ic, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.ai

_ZNK4llvm5APInt9isAllOnesEv.exit:                 ; preds = %bb.ah
  %i.id = load i64, ptr %39, align 8, !tbaa !176
  %i.ie = sub nuw nsw i32 64, %i.hy
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = lshr i64 -1, %i.if
  %i.ih = icmp eq i64 %i.id, %i.ig
  br i1 %i.ih, label %_ZNK4llvm5APInt9isAllOnesEv.exit.thread, label %bb.ai

_ZNK4llvm5APInt9isAllOnesEv.exit.thread:          ; preds = %bb.ag, %.split, %_ZNK4llvm5APInt9isAllOnesEv.exit
  %.sroa.0451.0.copyload = load i16, ptr %37, align 8, !tbaa !25
  %.sroa.2453.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.ii = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.0451.0.copyload, ptr %.sroa.2453.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %.fca.0.extract447 = extractvalue { ptr, i32 } %i.ii, 0
  %.fca.1.extract448 = extractvalue { ptr, i32 } %i.ii, 1
  br label %bb.fd

bb.ai:                                            ; preds = %.split, %_ZNK4llvm5APInt9isAllOnesEv.exit
  %i.ij = load i8, ptr %i.m, align 1, !tbaa !173, !range !18, !noundef !19
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.aj, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.ai
  %.pre = load i32, ptr %i.a, align 4
  br label %.critedge

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  %i.il = load i16, ptr %37, align 8, !tbaa !462  ; 4 uses
  %.not.i.i.i617 = icmp eq i16 %i.il, 0
  br i1 %.not.i.i.i617, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i627, label %.split.i.i618

.split.i.i618:                                    ; preds = %bb.aj
  %i.im = add i16 %i.il, -19
  %spec.select.i.i.i.i619 = icmp ult i16 %i.im, 197
  br i1 %spec.select.i.i.i.i619, label %bb.ak, label %bb.am

_ZNK4llvm3EVT8isVectorEv.exit.i.i627:             ; preds = %bb.aj
  %i.in = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #39
  br i1 %i.in, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %.split.i.i618
  %i.io = zext nneg i16 %i.il to i64
  %i.ip = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 -2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !25
  %i.is = insertvalue { i16, ptr } poison, i16 %i.ir, 0
  %i.it = insertvalue { i16, ptr } %i.is, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i622

bb.al:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i627
  %i.iu = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i622

bb.am:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i627, %.split.i.i618
  %.sroa.31.0.copyload.i.i621 = load ptr, ptr %i.l, align 8, !tbaa !341
  %i.iv = insertvalue { i16, ptr } poison, i16 %i.il, 0
  %i.iw = insertvalue { i16, ptr } %i.iv, ptr %.sroa.31.0.copyload.i.i621, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i622

_ZNK4llvm3EVT13getScalarTypeEv.exit.i622:         ; preds = %bb.am, %bb.al, %bb.ak
  %.fca.1.insert.merged.i.i623 = phi { i16, ptr } [ %i.iw, %bb.am ], [ %i.it, %bb.ak ], [ %i.iu, %bb.al ] ; 2 uses
  %i.ix = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i623, 0 ; 3 uses
  store i16 %i.ix, ptr %20, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.iz = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i623, 1
  store ptr %i.iz, ptr %i.iy, align 8
  %.not.i.i624 = icmp eq i16 %i.ix, 0
  br i1 %.not.i.i624, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i622
  %i.ja = zext i16 %i.ix to i64
  %i.jb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.jb, i64 -16
  %.sroa.0.0.copyload.i.i.i625 = load i64, ptr %i.jc, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit628

bb.ao:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i622
  %i.jd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #39
  %i.je = extractvalue { i64, i8 } %i.jd, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit628

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit628:     ; preds = %bb.an, %bb.ao
  %.pn.i.i626 = phi i64 [ %.sroa.0.0.copyload.i.i.i625, %bb.an ], [ %i.je, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  %i.jf = load i32, ptr %i.a, align 4, !tbaa !303 ; 7 uses
  %i.jg = zext i32 %i.jf to i64
  %i.jh = icmp eq i64 %.pn.i.i626, %i.jg
  br i1 %i.jh, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit628
  switch i32 %i.jf, label %.critedge [
    i32 32, label %bb.aq
    i32 16, label %bb.aq
    i32 8, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %bb.ap
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !833
  %i.jk = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZNKS_17ARMTargetLowering17LowerBUILD_VECTORENS_7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEE3$_0EEbOT_T0_"(ptr %i.jj, ptr null, ptr nonnull %1)
  br i1 %i.jk, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.jl = icmp eq i32 %i.jf, 32
  %i.jm = icmp eq i32 %i.jf, 16
  %i.jn = select i1 %i.jm, i16 62, i16 48
  %i.jo = select i1 %i.jl, i16 73, i16 %i.jn
  %i.jp = load i32, ptr %i.hv, align 8, !tbaa !700
  %i.jq = icmp ult i32 %i.jp, 65
  %i.jr = load ptr, ptr %38, align 8
  %spec.select.i = select i1 %i.jq, ptr %38, ptr %i.jr
  %.0.i631 = load i64, ptr %spec.select.i, align 8, !tbaa !176
  %i.js = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %.0.i631, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract439 = extractvalue { ptr, i32 } %i.js, 0
  %.fca.1.extract440 = extractvalue { ptr, i32 } %i.js, 1
  store ptr %.fca.0.extract439, ptr %40, align 8, !tbaa !370
  %.sroa.4444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %.fca.1.extract440, ptr %.sroa.4444.0..sroa_idx, align 8, !tbaa !303
  %i.jt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 631, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 %i.jo, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40) #38 ; 2 uses
  %.fca.0.extract429 = extractvalue { ptr, i32 } %i.jt, 0
  %.fca.1.extract430 = extractvalue { ptr, i32 } %i.jt, 1
  %.sroa.0426.0.copyload = load i16, ptr %37, align 8, !tbaa !25
  %.sroa.2428.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !341
  store ptr %.fca.0.extract429, ptr %41, align 8, !tbaa !370
  %.sroa.4437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract430, ptr %.sroa.4437.0..sroa_idx, align 8, !tbaa !303
  %i.ju = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 %.sroa.0426.0.copyload, ptr %.sroa.2428.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41) #38 ; 2 uses
  %.fca.0.extract422 = extractvalue { ptr, i32 } %i.ju, 0
  %.fca.1.extract423 = extractvalue { ptr, i32 } %i.ju, 1
  br label %bb.fd

.critedge:                                        ; preds = %..critedge_crit_edge, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit628, %bb.ap, %bb.aq
end_hunk_5
begin_hunk_6_@_ZNK4llvm17ARMTargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGE:bb.a
bb.dg:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i518
  %i.rx = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #38
  %.pre668 = load i16, ptr %13, align 8, !tbaa !462
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i513

bb.dh:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i518, %.split.i.i509
  %.sroa.31.0.copyload.i.i512 = load ptr, ptr %i.k, align 8, !tbaa !341
  %i.ry = insertvalue { i16, ptr } poison, i16 %i.ro, 0
  %i.rz = insertvalue { i16, ptr } %i.ry, ptr %.sroa.31.0.copyload.i.i512, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i513

_ZNK4llvm3EVT13getScalarTypeEv.exit.i513:         ; preds = %bb.dh, %bb.dg, %bb.df
  %i.sa = phi i16 [ %i.ro, %bb.dh ], [ %i.ro, %bb.df ], [ %.pre668, %bb.dg ]
  %.fca.1.insert.merged.i.i514 = phi { i16, ptr } [ %i.rz, %bb.dh ], [ %i.rw, %bb.df ], [ %i.rx, %bb.dg ] ; 2 uses
  %i.sb = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i514, 0 ; 3 uses
  store i16 %i.sb, ptr %4, align 8
  %i.sc = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i514, 1
  store ptr %i.sc, ptr %i.lo, align 8
  %.not.i.i515 = icmp eq i16 %i.sb, 0
  br i1 %.not.i.i515, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i513
  %i.sd = zext i16 %i.sb to i64
  %i.se = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -16
  %.sroa.0.0.copyload.i.i.i516 = load i64, ptr %i.sf, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit519

bb.dj:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i513
  %i.sg = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  %i.sh = extractvalue { i64, i8 } %i.sg, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit519

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit519:     ; preds = %bb.di, %bb.dj
  %.pn.i.i517 = phi i64 [ %.sroa.0.0.copyload.i.i.i516, %bb.di ], [ %i.sh, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.pn.i.i517, i64 %.pn.i.i505)
  %i.si = trunc i64 %.sroa.speculated to i32
  %i.sj = sdiv i32 %i.si, %i.lj                   ; 3 uses
  %i.sk = mul i64 %indvars.iv647, %i.et
  %i.sl = and i64 %i.sk, 4294967295
  %i.sm = load ptr, ptr %37, align 8, !tbaa !21
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sl ; 2 uses
  %i.so = icmp sgt i32 %i.sj, 0
  br i1 %i.so, label %.lr.ph623.preheader, label %._crit_edge624

.lr.ph623.preheader:                              ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit519
  %i.sp = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i476, i64 44
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !1066
  %i.sr = mul nsw i32 %i.sq, %i.qi
  %i.ss = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i476, i64 40
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !1065
  %i.su = add nsw i32 %i.sr, %i.st
  %i.sv = ptrtoint ptr %.028.i.i.i.i476 to i64
  %.val = load ptr, ptr %14, align 8, !tbaa !21
  %i.sw = ptrtoint ptr %.val to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = sdiv exact i64 %i.sx, 48
  %i.sz = mul i64 %i.sy, %i.ff
  %i.ta = trunc i64 %i.sz to i32
  %i.tb = add i32 %i.su, %i.ta                    ; 2 uses
  %wide.trip.count645 = zext nneg i32 %i.sj to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.sj, 8
  br i1 %min.iters.check, label %.lr.ph623.preheader739, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph623.preheader
  %n.vec = and i64 %wide.trip.count645, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.tb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %index ; 2 uses
  %i.td = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store <4 x i32> %i.td, ptr %i.tc, align 4, !tbaa !303
  store <4 x i32> %.reass, ptr %i.te, align 4, !tbaa !303
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.tf = icmp eq i64 %index.next, %n.vec
  br i1 %i.tf, label %middle.block, label %vector.body, !llvm.loop !1069

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count645
  br i1 %cmp.n, label %._crit_edge624, label %.lr.ph623.preheader739

.lr.ph623.preheader739:                           ; preds = %.lr.ph623.preheader, %middle.block
  %indvars.iv642.ph = phi i64 [ 0, %.lr.ph623.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph623

._crit_edge624:                                   ; preds = %.lr.ph623, %middle.block, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit519
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %bb.dk

.lr.ph623:                                        ; preds = %.lr.ph623.preheader739, %.lr.ph623
  %indvars.iv642 = phi i64 [ %indvars.iv.next643, %.lr.ph623 ], [ %indvars.iv642.ph, %.lr.ph623.preheader739 ] ; 3 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv642
  %i.th = trunc i64 %indvars.iv642 to i32
  %i.ti = add i32 %i.tb, %i.th
  store i32 %i.ti, ptr %i.tg, align 4, !tbaa !303
  %indvars.iv.next643 = add nuw nsw i64 %indvars.iv642, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next643, %wide.trip.count645
  br i1 %exitcond646.not, label %._crit_edge624, label %.lr.ph623, !llvm.loop !1072

bb.dk:                                            ; preds = %bb.cm, %._crit_edge624
  %i.tj = phi i16 [ %i.nb, %bb.cm ], [ %i.sa, %._crit_edge624 ]
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1
  br label %bb.ci, !llvm.loop !1073

._crit_edge628.loopexit.unr-lcssa:                ; preds = %bb.dl
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge628.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge628.loopexit.unr-lcssa, %.lr.ph627
  %indvars.iv650.epil.init = phi i64 [ 0, %.lr.ph627 ], [ %indvars.iv.next651.1, %._crit_edge628.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod749 = trunc i32 %i.nq to i1
  call void @llvm.assume(i1 %lcmp.mod749)
  %i.tk = getelementptr inbounds nuw [48 x i8], ptr %.val331, i64 %indvars.iv650.epil.init
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tm = getelementptr inbounds nuw [16 x i8], ptr %40, i64 %indvars.iv650.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.tm, ptr noundef nonnull align 8 dereferenceable(12) %i.tl, i64 12, i1 false)
  br label %._crit_edge628.loopexit

._crit_edge628.loopexit:                          ; preds = %._crit_edge628.loopexit.unr-lcssa, %.epil.preheader
  %.sroa.012.0.copyload.pre = load ptr, ptr %40, align 16
  %.sroa.213.0.copyload.pre = load i32, ptr %.sroa.230.0..sroa_idx, align 8
  br label %._crit_edge628

._crit_edge628:                                   ; preds = %._crit_edge628.loopexit, %bb.cl
  %.sroa.213.0.copyload = phi i32 [ %.sroa.213.0.copyload.pre, %._crit_edge628.loopexit ], [ %.fca.1.extract28, %bb.cl ]
  %.sroa.012.0.copyload = phi ptr [ %.sroa.012.0.copyload.pre, %._crit_edge628.loopexit ], [ %.fca.0.extract27, %bb.cl ]
  %.sroa.014.0.copyload = load i16, ptr %19, align 8, !tbaa !25
  %.sroa.216.0.copyload = load ptr, ptr %i.fn, align 8, !tbaa !341
  %i.tn = load ptr, ptr %37, align 8, !tbaa !21
  store ptr %i.tn, ptr %41, align 8, !tbaa !1074
  %i.to = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.tp = load i32, ptr %i.kl, align 8, !tbaa !372
  %i.tq = zext i32 %i.tp to i64
  store i64 %i.tq, ptr %i.to, align 8, !tbaa !1076
  %i.tr = call { ptr, i32 } @_ZNK4llvm14TargetLowering23buildLegalVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_15MutableArrayRefIiEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %.sroa.014.0.copyload, ptr %.sroa.216.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr %.sroa.012.0.copyload, i32 %.sroa.213.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.a, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %41, ptr noundef nonnull align 8 dereferenceable(920) %3) #38 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.tr, 0 ; 2 uses
  %.not592 = icmp eq ptr %.fca.0.extract8, null
  br i1 %.not592, label %bb.dn, label %bb.dm

bb.dl:                                            ; preds = %bb.dl, %.lr.ph627.new
  %indvars.iv650 = phi i64 [ 0, %.lr.ph627.new ], [ %indvars.iv.next651.1, %bb.dl ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph627.new ], [ %niter.next.1, %bb.dl ]
  %i.ts = getelementptr inbounds nuw [48 x i8], ptr %.val331, i64 %indvars.iv650
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %40, i64 %indvars.iv650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.tu, ptr noundef nonnull align 8 dereferenceable(12) %i.tt, i64 12, i1 false)
  %indvars.iv.next651 = or disjoint i64 %indvars.iv650, 1 ; 2 uses
  %i.tv = getelementptr inbounds nuw [48 x i8], ptr %.val331, i64 %indvars.iv.next651
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr %40, i64 %indvars.iv.next651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.tx, ptr noundef nonnull align 8 dereferenceable(12) %i.tw, i64 12, i1 false)
  %indvars.iv.next651.1 = add nuw nsw i64 %indvars.iv650, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge628.loopexit.unr-lcssa, label %bb.dl, !llvm.loop !1077

bb.dm:                                            ; preds = %._crit_edge628
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.tr, 1
  %.sroa.05.0.copyload = load i16, ptr %13, align 8, !tbaa !25
  %.sroa.27.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !341
  store ptr %.fca.0.extract8, ptr %42, align 8, !tbaa !370
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !303
  %i.ty = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.05.0.copyload, ptr %.sroa.27.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ty, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ty, 1
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge628, %bb.dm
  %.sroa.16.6 = phi i32 [ %.fca.1.extract, %bb.dm ], [ 0, %._crit_edge628 ]
  %.sroa.0574.6 = phi ptr [ %.fca.0.extract, %bb.dm ], [ null, %._crit_edge628 ]
  %i.tz = load ptr, ptr %37, align 8, !tbaa !21   ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.kk
  br i1 %i.ua, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @free(ptr noundef %i.tz) #38
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38
  br label %bb.dp

bb.dp:                                            ; preds = %bb.bp, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit
  %.sroa.16.7 = phi i32 [ %.sroa.16.6, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit ], [ 0, %bb.bp ]
  %.sroa.0574.7 = phi ptr [ %.sroa.0574.6, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit ], [ null, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %.pre672 = load ptr, ptr %14, align 8, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %.critedge, %bb.dp
  %i.ub = phi ptr [ %.pre672, %bb.dp ], [ %.val327656, %.critedge ], [ %.val327, %bb.e ], [ %.val327, %bb.f ] ; 2 uses
  %.sroa.16.8 = phi i32 [ %.sroa.16.7, %bb.dp ], [ 0, %.critedge ], [ 0, %bb.e ], [ 0, %bb.f ]
  %.sroa.0574.8 = phi ptr [ %.sroa.0574.7, %bb.dp ], [ null, %.critedge ], [ null, %bb.e ], [ null, %bb.f ]
  %i.uc = icmp eq ptr %i.ub, %i.u
  br i1 %i.uc, label %_ZN4llvm11SmallVectorIZNKS_17ARMTargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEE17ShuffleSourceInfoLj2EED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.ub) #38
  br label %_ZN4llvm11SmallVectorIZNKS_17ARMTargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEE17ShuffleSourceInfoLj2EED2Ev.exit

_ZN4llvm11SmallVectorIZNKS_17ARMTargetLowering18ReconstructShuffleENS_7SDValueERNS_12SelectionDAGEE17ShuffleSourceInfoLj2EED2Ev.exit: ; preds = %.loopexit, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0574.8, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.16.8, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetE(ptr nofree readonly captures(none) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(920) %2, i8 %.394.val) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = trunc nuw i8 %.394.val to i1
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !835
  store i64 %i.c, ptr %3, align 8, !tbaa !835
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !836
  store i32 %i.f, ptr %i.d, align 8, !tbaa !837
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !340
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.j, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 136
  %i.k = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.l = select i1 %.not.i, i1 true, i1 %i.k
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !698  ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !601  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !344
  %.not = icmp eq i32 %i.q, 247
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !698
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !601  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !344
  %.not29 = icmp eq i32 %i.v, 164
  br i1 %.not29, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !698  ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !370 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.y = load <2 x i32>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !303 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !601
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !896 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !700
  %i.ag = icmp ult i32 %i.af, 65
  %i.ah = load ptr, ptr %i.ad, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.ah
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !176 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !340
  %i.ak = zext i32 %.sroa.6.0.copyload to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %.sroa.0.0.copyload.i.i34 = load i16, ptr %i.al, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i35 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.21.0.copyload.i.i36 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i35, align 8, !tbaa !341
  %.not.i39 = icmp ne i16 %.sroa.0.0.copyload.i.i34, 112
  %i.am = icmp ne ptr %.sroa.21.0.copyload.i.i36, null
  %i.an = select i1 %.not.i39, i1 true, i1 %i.am
  %i.ao = and i64 %.0.i.i.i.i.i, 4294967294
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %i.aq = and i64 %.0.i.i.i.i.i, 1                ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.011.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !370 ; 2 uses
  %i.as = or disjoint i64 %i.aq, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !344
  %i.av = icmp eq i32 %i.au, 247
  br i1 %i.av, label %bb.j, label %.critedge

.preheader.1:                                     ; preds = %"_ZZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_0clES0_S0_j.exit"
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.sroa.011.0.copyload.1 = load ptr, ptr %i.aw, align 8, !tbaa !370 ; 2 uses
  %i.ax = or disjoint i64 %i.aq, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.1, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !344
  %i.ba = icmp eq i32 %i.az, 247
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.preheader.1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.1, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !698
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !601 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !344
  %i.bg = icmp eq i32 %i.bf, 164
  br i1 %i.bg, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !698 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !601
  %i.bk = icmp eq ptr %i.bj, %.sroa.05.0.copyload
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp eq i32 %i.bm, %.sroa.6.0.copyload
  %i.bo = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %i.bo, label %"_ZZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_0clES0_S0_j.exit.1", label %.critedge

"_ZZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_0clES0_S0_j.exit.1": ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !601
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !896 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !700
  %i.bw = icmp ult i32 %i.bv, 65
  %i.bx = load ptr, ptr %i.bt, align 8
  %spec.select.i.i.i.i.i.i.1 = select i1 %i.bw, ptr %i.bt, ptr %i.bx
  %.0.i.i.i.i.i.i.1 = load i64, ptr %spec.select.i.i.i.i.i.i.1, align 8, !tbaa !176
  %i.by = icmp eq i64 %.0.i.i.i.i.i.i.1, %i.ax
  br i1 %i.by, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %"_ZZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_0clES0_S0_j.exit.1"
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %.sroa.011.0.copyload.2 = load ptr, ptr %i.bz, align 8, !tbaa !370 ; 2 uses
  %i.ca = or disjoint i64 %i.aq, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.2, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !344
  %i.cd = icmp eq i32 %i.cc, 247
  br i1 %i.cd, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader.2
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.2, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !698
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !601 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !344
  %i.cj = icmp eq i32 %i.ci, 164
  br i1 %i.cj, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !698 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !601
  %i.cn = icmp eq ptr %i.cm, %.sroa.05.0.copyload
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = icmp eq i32 %i.cp, %.sroa.6.0.copyload
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %i.cr, label %"_ZZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_0clES0_S0_j.exit.2", label %.critedge

"_ZZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_0clES0_S0_j.exit.2": ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !601
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !896 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !700
  %i.cz = icmp ult i32 %i.cy, 65
  %i.da = load ptr, ptr %i.cw, align 8
  %spec.select.i.i.i.i.i.i.2 = select i1 %i.cz, ptr %i.cw, ptr %i.da
  %.0.i.i.i.i.i.i.2 = load i64, ptr %spec.select.i.i.i.i.i.i.2, align 8, !tbaa !176
  %i.db = icmp eq i64 %.0.i.i.i.i.i.i.2, %i.ca
  br i1 %i.db, label %.critedge33, label %.critedge

.critedge33:                                      ; preds = %"_ZZL23LowerBuildVectorOfFPExtN4llvm7SDValueERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_0clES0_S0_j.exit.2"
  store ptr %.sroa.05.0.copyload, ptr %4, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x i32> %i.y, ptr %.sroa.6.0..sroa_idx7, align 8
  %i.dc = and i64 %.0.i.i.i.i.i, 1
end_hunk_6
begin_hunk_7_@_ZNK4llvm17ARMTargetLowering29AdjustInstrPostInstrSelectionERNS_12MachineInstrEPNS_6SDNodeE:bb.a
  %.not92 = icmp eq i64 %i.dg, 0
  br i1 %.not92, label %_ZL23attachMEMCPYScratchRegsPKN4llvm12ARMSubtargetERNS_12MachineInstrEPKNS_6SDNodeE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load i32, ptr %.0, align 8, !tbaa !2532
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %.0, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.dl = load i16, ptr %i.dk, align 4, !tbaa !2533
  %i.dm = zext i16 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr %i.dj, i64 %i.dm
  %i.do = and i64 %.166, 4294967295               ; 2 uses
  %i.dp = getelementptr inbounds nuw [6 x i8], ptr %i.dn, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 34
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !2537
  %i.ds = and i8 %i.dr, 4
  %.not93 = icmp eq i8 %i.ds, 0
  br i1 %.not93, label %_ZL23attachMEMCPYScratchRegsPKN4llvm12ARMSubtargetERNS_12MachineInstrEPKNS_6SDNodeE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.du = load i16, ptr %i.dt, align 4, !tbaa !2527
  %i.dv = zext i16 %i.du to i32                   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load i24, ptr %i.dw, align 8
  %i.dy = zext i24 %i.dx to i32                   ; 2 uses
  %.not71103 = icmp eq i32 %i.dv, %i.dy
  br i1 %.not71103, label %_ZL23attachMEMCPYScratchRegsPKN4llvm12ARMSubtargetERNS_12MachineInstrEPKNS_6SDNodeE.exit, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1383
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph106, %bb.v
  %.057104 = phi i32 [ %i.dv, %.lr.ph106 ], [ %i.ek, %bb.v ] ; 3 uses
  %i.eb = zext i32 %.057104 to i64
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8            ; 2 uses
  %i.ee = and i32 %i.ed, 16777471
  %or.cond91 = icmp eq i32 %i.ee, 16777216
  br i1 %or.cond91, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !176
  %i.eh = icmp eq i32 %i.eg, 3
  br i1 %i.eh, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %i.ei = and i32 %i.ed, 83886080
  %i.ej = icmp eq i32 %i.ei, 83886080
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %.057104) #38
  br i1 %i.ej, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ek = add i32 %.057104, 1                     ; 2 uses
  %.not71 = icmp eq i32 %i.ek, %i.dy
  br i1 %.not71, label %_ZL23attachMEMCPYScratchRegsPKN4llvm12ARMSubtargetERNS_12MachineInstrEPKNS_6SDNodeE.exit, label %bb.t, !llvm.loop !2538

bb.w:                                             ; preds = %.thread
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !61 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 461
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !73, !range !18, !noundef !19
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 410
  %i.er = load i8, ptr %i.eq, align 2, !range !18
  %i.es = trunc nuw i8 %i.er to i1
  %not.94 = xor i1 %i.ep, true
  %i.et = select i1 %not.94, i1 true, i1 %i.es
  br i1 %i.et, label %_ZL23attachMEMCPYScratchRegsPKN4llvm12ARMSubtargetERNS_12MachineInstrEPKNS_6SDNodeE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread
  %i.eu = load ptr, ptr %i.dz, align 8, !tbaa !1383
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %i.do ; 2 uses
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ev, i32 3) #38
  call void @_ZN4llvm14MachineOperand8setIsDefEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ev, i1 noundef zeroext true) #38
  br label %_ZL23attachMEMCPYScratchRegsPKN4llvm12ARMSubtargetERNS_12MachineInstrEPKNS_6SDNodeE.exit

_ZL23attachMEMCPYScratchRegsPKN4llvm12ARMSubtargetERNS_12MachineInstrEPKNS_6SDNodeE.exit: ; preds = %bb.v, %bb.g, %bb.s, %bb.q, %bb.f, %bb.r, %bb.w, %bb.x
  ret void
}

declare noundef i32 @_ZN4llvm24convertAddSubFlagsOpcodeEj(i32 noundef) local_unnamed_addr #8

declare void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #8

declare void @_ZN4llvm12MachineInstr11tieOperandsEjj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering29isDesirableToCommuteWithShiftEPKNS_6SDNodeENS_12CombineLevelE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698
  %.sroa.027.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !370 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !833  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !834
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !344  ; 2 uses
  %i.j = icmp eq i32 %i.i, 227
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !698
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !601
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !833  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.o, null
  br i1 %.not.i.i19, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit21

_ZNK4llvm6SDNode9hasOneUseEv.exit21:              ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !834
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit21, %bb.b
  %i.s = icmp eq i32 %2, 0
  br i1 %i.s, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !344
  %.not = icmp eq i32 %i.u, 198
  br i1 %.not, label %bb.f, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 461
  %i.y = load i8, ptr %i.x, align 1, !tbaa !73, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 410
  %i.ab = load i8, ptr %i.aa, align 2, !range !18
  %i.ac = trunc nuw i8 %i.ab to i1
  %not. = xor i1 %i.z, true
  %i.ad = select i1 %not., i1 true, i1 %i.ac
  br i1 %i.ad, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread [
    i32 59, label %bb.h
    i32 193, label %bb.h
    i32 194, label %bb.h
    i32 195, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !698
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !601 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !344
  switch i32 %i.aj, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.h, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !896
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = tail call noundef zeroext i1 @_ZNK4llvm5APInt3ultEm(ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 noundef 256)
  br i1 %i.an, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !344
  %i.ap = icmp eq i32 %i.ao, 59
  br i1 %i.ap, label %bb.j, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !896
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = tail call noundef zeroext i1 @_ZNK4llvm5APInt3sltEl(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 noundef 0)
  br i1 %i.as, label %bb.k, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !896
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = tail call noundef zeroext i1 @_ZNK4llvm5APInt3sgtEl(ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 noundef -256)
  br i1 %i.av, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.g, %bb.c, %bb.a, %bb.k, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread, %bb.f, %bb.e, %bb.d, %_ZNK4llvm6SDNode9hasOneUseEv.exit21, %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %.2 = phi i1 [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit21 ], [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.k ], [ false, %bb.a ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ false, %bb.f ], [ true, %bb.g ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3ultEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !700  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #39
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.c, ptr %0, ptr %i.g
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !176
  %i.h = icmp ult i64 %.0.i, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.i = phi i1 [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3sltEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !700  ; 5 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1                         ; 2 uses
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.d, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !176
  %i.m = and i64 %i.l, %i.g                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #39
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #39
  br label %_ZNK4llvm5APInt18getSignificantBitsEv.exit

_ZNK4llvm5APInt18getSignificantBitsEv.exit:       ; preds = %bb.c, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  %i.q = add i32 %i.b, 1
  %i.r = sub i32 %i.q, %i.p
  %i.s = icmp ugt i32 %i.r, 64
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit
  %i.t = icmp ne i64 %i.m, 0
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.u = load i64, ptr %0, align 8, !tbaa !176
  %i.v = icmp eq i32 %i.b, 0
  %i.w = sub nuw nsw i32 64, %i.b
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = shl i64 %i.u, %i.x
  %i.z = ashr exact i64 %i.y, %i.x
  %.0.i.i = select i1 %i.v, i64 0, i64 %i.z
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

bb.g:                                             ; preds = %_ZNK4llvm5APInt18getSignificantBitsEv.exit
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !466
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %.0.i.i, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp slt i64 %.0.i, %1
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit, %bb.e
  %i.ac = phi i1 [ %i.t, %bb.e ], [ %i.ab, %_ZNK4llvm5APInt12getSExtValueEv.exit ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering32isDesirableToCommuteXorWithShiftEPKNS_6SDNodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !601  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !344
  switch i32 %i.f, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !601
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !698
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !601  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !344
  switch i32 %i.m, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %.not = icmp eq ptr %.0.i.i.i, null
  br i1 %.not, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !896  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !700  ; 2 uses
  %i.s = icmp ult i32 %i.r, 65
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.p, align 8, !tbaa !176  ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20.thread, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i

_ZN4llvm16isShiftedMask_64Em.exit.i.i:            ; preds = %bb.d
  %i.u = add i64 %i.t, -1
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = add i64 %i.v, 1
  %i.x = and i64 %i.w, %i.v
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20.thread

bb.e:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.t, i1 true)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  br label %_ZNK4llvm5APInt13isShiftedMaskERjS1_.exit

bb.f:                                             ; preds = %bb.c
  %i.ad = tail call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #39 ; 2 uses
  %i.ae = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #39
  %i.af = tail call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #39 ; 2 uses
  %i.ag = add i32 %i.ae, %i.ad
  %i.ah = add i32 %i.ag, %i.af
  %.not.i = icmp eq i32 %i.ah, %i.r
  br i1 %.not.i, label %_ZNK4llvm5APInt13isShiftedMaskERjS1_.exit, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit20.thread

_ZNK4llvm5APInt13isShiftedMaskERjS1_.exit:        ; preds = %bb.f, %bb.e
  %.026 = phi i32 [ %i.aa, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.ac, %bb.e ], [ %i.ad, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !896 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !700
  %i.an = icmp ult i32 %i.am, 65
  %i.ao = load ptr, ptr %i.ak, align 8
  %spec.select.i.i.i = select i1 %i.an, ptr %i.ak, ptr %i.ao
  %.0.i.i.i21 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !176
  %i.ap = trunc i64 %.0.i.i.i21 to i32            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ar, align 8, !tbaa !25 ; 5 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341 ; 2 uses
  %.fca.0.insert.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i16, ptr } %.fca.0.insert.i, ptr %.sroa.21.0.copyload.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %.not.i.i.i22 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i.i22, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZNK4llvm5APInt13isShiftedMaskERjS1_.exit
  %i.at = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.at, 197
end_hunk_7
begin_hunk_8_@_ZL12isVShiftRImmN4llvm7SDValueENS_3EVTEbbRl:bb.a
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.k = insertvalue { i16, ptr } poison, i16 %1, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %2, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.d, %bb.c, %bb.b
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.m, ptr %6, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.o, ptr %i.n, align 8
  %.not.i.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.r, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.s = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  %i.t = extractvalue { i64, i8 } %i.s, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.e, %bb.f
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.e ], [ %i.t, %bb.f ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.u = trunc i64 %.pn.i.i to i32
  %i.v = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %0, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.v, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.w = load i64, ptr %5, align 8, !tbaa !466    ; 5 uses
  br i1 %4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = sdiv i64 %.pn.i.i, 2
  %i.z = select i1 %3, i64 %i.y, i64 %.pn.i.i
  %i.aa = icmp sle i64 %i.w, %i.z
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ab = sdiv i64 %.pn.i.i, 2
  %i.ac = select i1 %3, i64 %i.ab, i64 %.pn.i.i
  %i.ad = sub nsw i64 0, %i.ac
  %.not = icmp sge i64 %i.w, %i.ad
  %i.ae = icmp slt i64 %i.w, 0
  %or.cond = and i1 %.not, %i.ae
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = sub nsw i64 0, %i.w
  store i64 %i.af, ptr %5, align 8, !tbaa !466
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.i, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %bb.k
  %.0 = phi i1 [ true, %bb.k ], [ %i.aa, %bb.i ], [ false, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ false, %bb.h ], [ false, %bb.j ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering20SimplifyDemandedBitsENS_7SDValueERKNS_5APIntERNS0_15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering9hasAndNotENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr %1, i32 %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !25 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.e, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.f = add i16 %.sroa.0.0.copyload.i.i, -19     ; 2 uses
  %spec.select.i.i = icmp ult i16 %i.f, 197
  br i1 %spec.select.i.i, label %.thread, label %bb.b

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nonnull %1, i32 %2) #38
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 395
  %i.o = load i8, ptr %i.n, align 1, !tbaa !173, !range !18, !noundef !19
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

.thread:                                          ; preds = %.split
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 395
  %i.t = load i8, ptr %i.s, align 1, !tbaa !173, !range !18, !noundef !19
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %.thread12

bb.d:                                             ; preds = %.thread
  %spec.select.i.i.i = icmp samesign ult i16 %.sroa.0.0.copyload.i.i, 163
  br i1 %spec.select.i.i.i, label %bb.e, label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.w = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.x, align 16
  %i.y = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 128
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.f:                                             ; preds = %bb.c
  %i.z = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 398
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !177, !range !18, !noundef !19
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.split14, label %_ZNK4llvm3EVT14is128BitVectorEv.exit

.thread12:                                        ; preds = %.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 398
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !177, !range !18, !noundef !19
  %i.af = trunc nuw i8 %i.ae to i1
  %spec.select.i.i.i4 = icmp samesign ult i16 %i.f, 144
  %or.cond = select i1 %i.af, i1 %spec.select.i.i.i4, i1 false
  br i1 %or.cond, label %_ZNK4llvm3EVT13is64BitVectorEv.exit, label %_ZNK4llvm3EVT14is128BitVectorEv.exit

.split14:                                         ; preds = %bb.g
  %i.ag = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br i1 %i.ag, label %_ZNK4llvm3EVT14is128BitVectorEv.exit, label %bb.h

_ZNK4llvm3EVT13is64BitVectorEv.exit:              ; preds = %.thread12
  %i.ah = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.ai = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -16
  %.sroa.0.0.copyload.i.i.i.i5 = load i64, ptr %i.aj, align 16 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i5, 64
  %i.al = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i5, 128
  %spec.select = or i1 %i.ak, %i.al
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

bb.h:                                             ; preds = %.split14
  %i.am = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit

_ZNK4llvm3EVT14is128BitVectorEv.exit:             ; preds = %_ZNK4llvm3EVT13is64BitVectorEv.exit, %bb.h, %.split14, %.thread12, %bb.f, %bb.e, %bb.d, %bb.g, %bb.b
  %.0 = phi i1 [ false, %bb.g ], [ %i.k, %bb.b ], [ true, %.split14 ], [ %spec.select, %_ZNK4llvm3EVT13is64BitVectorEv.exit ], [ %i.z, %bb.f ], [ false, %bb.d ], [ %i.y, %bb.e ], [ false, %.thread12 ], [ %i.am, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering23PerformCMOVToBFICombineEPNS_6SDNodeERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518466) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(920) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 16 uses
  %4 = alloca %"struct.llvm::KnownBits", align 8  ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 9 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 6 uses
  %.sroa.0118.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !370 ; 2 uses
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6120.0.copyload = load i32, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !303
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0110.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !370 ; 2 uses
  %.sroa.8115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.8115.0.copyload = load i64, ptr %.sroa.8115.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !601
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !896  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !700  ; 2 uses
  %i.k = icmp ult i32 %i.j, 65                    ; 2 uses
  br i1 %i.k, label %_ZNK4llvm5APInt3ugtEm.exit.i, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #39
  %i.m = sub i32 %i.j, %i.l
  %i.n = icmp ugt i32 %i.m, 64
  br i1 %i.n, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt3ugtEm.exit.i

_ZNK4llvm5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %bb.a
  %i.o = load ptr, ptr %i.h, align 8
  %spec.select.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.o
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !176
  %i.p = icmp eq i64 %.0.i.i.i, 0
  br label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt3ugtEm.exit.i
  %i.q = phi i1 [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ], [ %i.p, %_ZNK4llvm5APInt3ugtEm.exit.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.0108.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !370
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0108.0.copyload, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !698  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.051.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !370
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.252.0.copyload = load i32, ptr %.sroa.252.0..sroa_idx, align 8, !tbaa !303
  %i.v = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.051.0.copyload, i32 %.sroa.252.0.copyload) #38
  br i1 %i.v, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !698
  %.sroa.0104.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !370 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0104.0.copyload, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !344
  %.not = icmp eq i32 %i.y, 193
  br i1 %.not, label %bb.c, label %bb.ao

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0104.0.copyload, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !698 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.046.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !370 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !344
  switch i32 %i.ad, label %bb.ao [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.c, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !896 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !700
  %i.aj = icmp ult i32 %i.ai, 65
  br i1 %i.aj, label %bb.d, label %.split.i

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !176
  %.fr10.i = freeze i64 %i.ak
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.fr10.i)
  %or.cond.i = icmp eq i64 %i.al, 1
  br i1 %or.cond.i, label %_ZL18isPowerOf2ConstantN4llvm7SDValueE.exit, label %bb.ao

.split.i:                                         ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.am = tail call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ag) #39
  br i1 %i.am, label %_ZL18isPowerOf2ConstantN4llvm7SDValueE.exit, label %bb.ao

_ZL18isPowerOf2ConstantN4llvm7SDValueE.exit:      ; preds = %.split.i, %bb.d
  %.sroa.092.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !370 ; 5 uses
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.895.0.copyload = load i32, ptr %.sroa.895.0..sroa_idx, align 8, !tbaa !303 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8115.0.extract.trunc = trunc i64 %.sroa.8115.0.copyload to i32
  %.sroa.6120.0 = select i1 %i.q, i32 %.sroa.8115.0.extract.trunc, i32 %.sroa.6120.0.copyload ; 4 uses
  %.sroa.0118.0 = select i1 %i.q, ptr %.sroa.0110.0.copyload, ptr %.sroa.0118.0.copyload
  %.sroa.0110.0 = select i1 %i.q, ptr %.sroa.0118.0.copyload, ptr %.sroa.0110.0.copyload ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0110.0, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !344
  %.not69 = icmp eq i32 %i.ao, 194
  br i1 %.not69, label %bb.e, label %bb.ao

bb.e:                                             ; preds = %_ZL18isPowerOf2ConstantN4llvm7SDValueE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0110.0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !698 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !601 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !344
  switch i32 %i.au, label %bb.ao [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.e, %bb.e
  %.sroa.085.0.copyload = load ptr, ptr %i.aq, align 8, !tbaa !370 ; 4 uses
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.687.0.copyload = load i32, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !303
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %i.av = icmp ne ptr %.sroa.0118.0, %.sroa.085.0.copyload
  %i.aw = icmp ne i32 %.sroa.6120.0, %.sroa.687.0.copyload
  %.not3.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.not3.i, label %bb.ao, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !896 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !700 ; 3 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !700
  %i.bd = icmp ult i32 %i.bc, 65
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 2 uses
  br i1 %i.bd, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %bb.f
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !176 ; 2 uses
  store i64 %i.bf, ptr %3, align 8, !tbaa !176
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 461
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !73, !range !18, !noundef !19
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = select i1 %i.bj, i32 3, i32 2
  br label %bb.g

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.f
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.az) #38
  %.pr = load i32, ptr %i.ba, align 8, !tbaa !700 ; 3 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 461
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !73, !range !18, !noundef !19
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bo, i32 3, i32 2           ; 2 uses
  %i.bq = icmp ult i32 %.pr, 65
  br i1 %i.bq, label %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge, label %bb.h

_ZN4llvm5APIntC2ERKS0_.exit._crit_edge:           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %.pre = load i64, ptr %3, align 8, !tbaa !176
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge, %_ZN4llvm5APIntC2ERKS0_.exit.thread
  %i.br = phi i32 [ %i.bc, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge ]
  %i.bs = phi i64 [ %i.bf, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pre, %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge ]
  %i.bt = phi i32 [ %i.bk, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %i.bp, %_ZN4llvm5APIntC2ERKS0_.exit._crit_edge ]
  %i.bu = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bs)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  br label %_ZNK4llvm5APInt8popcountEv.exit

bb.h:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.bw = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #39
  br label %_ZNK4llvm5APInt8popcountEv.exit

_ZNK4llvm5APInt8popcountEv.exit:                  ; preds = %bb.g, %bb.h
  %i.bx = phi i32 [ %i.br, %bb.g ], [ %.pr, %bb.h ]
  %i.by = phi i32 [ %i.bt, %bb.g ], [ %i.bp, %bb.h ]
  %.0.i73 = phi i32 [ %i.bv, %bb.g ], [ %i.bw, %bb.h ]
  %i.bz = icmp ugt i32 %.0.i73, %i.by
  br i1 %i.bz, label %bb.al, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm5APInt8popcountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %4, ptr noundef nonnull align 8 dereferenceable(920) %2, ptr %.sroa.085.0.copyload, i32 %.sroa.6120.0, i32 noundef 0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ba, align 8, !tbaa !700 ; 2 uses
  store i32 %i.cb, ptr %i.ca, align 8, !tbaa !700
  %i.cc = icmp ult i32 %i.cb, 65
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = load i64, ptr %3, align 8, !tbaa !176
  store i64 %i.cd, ptr %6, align 8, !tbaa !176
  br label %_ZN4llvm5APIntC2ERKS0_.exit74

bb.k:                                             ; preds = %bb.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %3) #38
  br label %_ZN4llvm5APIntC2ERKS0_.exit74

_ZN4llvm5APIntC2ERKS0_.exit74:                    ; preds = %bb.j, %bb.k
  call void @_ZN4llvmanENS_5APIntERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(12) %4)
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !700
  %i.cg = icmp ult i32 %i.cf, 65
  br i1 %i.cg, label %_ZNK4llvm5APIntneERKS0_.exit, label %bb.l

_ZNK4llvm5APIntneERKS0_.exit:                     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit74
  %i.ch = load i64, ptr %5, align 8, !tbaa !176
  %i.ci = load i64, ptr %3, align 8, !tbaa !176
  %i.cj = icmp ne i64 %i.ch, %i.ci
  br label %_ZN4llvm5APIntD2Ev.exit

bb.l:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit74
  %i.ck = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %3) #39
  %i.cl = xor i1 %i.ck, true                      ; 2 uses
  %i.cm = load ptr, ptr %5, align 8, !tbaa !176   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN4llvm5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APIntneERKS0_.exit, %bb.l, %bb.m
  %i.co = phi i1 [ %i.cj, %_ZNK4llvm5APIntneERKS0_.exit ], [ %i.cl, %bb.l ], [ %i.cl, %bb.m ]
  %i.cp = load i32, ptr %i.ca, align 8, !tbaa !700
  %i.cq = icmp ugt i32 %i.cp, 64
  br i1 %i.cq, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit75

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.cr = load ptr, ptr %6, align 8, !tbaa !176   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN4llvm5APIntD2Ev.exit75, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.cr) #41
  br label %_ZN4llvm5APIntD2Ev.exit75

_ZN4llvm5APIntD2Ev.exit75:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br i1 %i.co, label %bb.ak, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.092.0.copyload, i64 72
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !835
  store i64 %i.cu, ptr %7, align 8, !tbaa !835
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.092.0.copyload, i64 68
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !836
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !837
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.092.0.copyload, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !340
  %i.da = zext i32 %.sroa.895.0.copyload to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.db, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i, ptr %8, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.dc, align 8
  %i.dd = call noundef i32 @_ZNK4llvm5APInt8logBase2Ev(ptr noundef nonnull align 8 dereferenceable(12) %i.ag) ; 2 uses
  %.not71 = icmp eq i32 %i.dd, 0
  br i1 %.not71, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.031.0.copyload = load i16, ptr %8, align 8, !tbaa !25 ; 2 uses
  %.sroa.233.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !341 ; 2 uses
  store ptr %.sroa.092.0.copyload, ptr %9, align 8, !tbaa !370
  %.sroa.895.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.895.0.copyload, ptr %.sroa.895.0..sroa_idx96, align 8, !tbaa !303
  %.sroa.11.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx100, align 4
  %i.de = zext i32 %i.dd to i64
  %i.df = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.031.0.copyload, ptr %.sroa.233.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.df, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.df, 1
  store ptr %.fca.0.extract24, ptr %10, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract25, ptr %.sroa.227.0..sroa_idx, align 8
  %i.dg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.031.0.copyload, ptr %.sroa.233.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.dg, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.dg, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.895.0 = phi i32 [ %.sroa.895.0.copyload, %bb.p ], [ %.fca.1.extract21, %bb.q ]
  %.sroa.092.0 = phi ptr [ %.sroa.092.0.copyload, %bb.p ], [ %.fca.0.extract20, %bb.q ]
  %i.dh = load i32, ptr %i.ba, align 8, !tbaa !700 ; 4 uses
  %i.di = icmp ult i32 %i.dh, 65
  br i1 %i.di, label %bb.s, label %bb.t

end_hunk_8
begin_hunk_9_@_ZL11IsCMPZCSINCPN4llvm6SDNodeERNS_5ARMCC9CondCodesE:bb.a
  %i.o = load i32, ptr %i.n, align 8, !tbaa !344
  switch i32 %i.o, label %thread-pre-split [
    i32 37, label %bb.f
    i32 12, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !896  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !700
  %i.u = icmp ult i32 %i.t, 65
  %i.v = load ptr, ptr %i.r, align 8
  %spec.select.i.i.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.v
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !176
  %i.w = icmp eq i64 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !833  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %thread-pre-split, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !834
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %thread-pre-split, !llvm.loop !2556

bb.h:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !698 ; 2 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !370
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.214.0.copyload = load i32, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !303
  %i.ae = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.013.0.copyload, i32 %.sroa.214.0.copyload) #38
  br i1 %i.ae, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !698 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.010.0.copyload = load ptr, ptr %i.ag, align 8, !tbaa !370
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %.sroa.211.0.copyload = load i32, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !303
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.010.0.copyload, i32 %.sroa.211.0.copyload) #38
  br i1 %i.ah, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !833 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i24, label %thread-pre-split, label %_ZNK4llvm6SDNode9hasOneUseEv.exit26

_ZNK4llvm6SDNode9hasOneUseEv.exit26:              ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !834
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit26
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !698 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !601
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !896 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !700
  %i.av = icmp ult i32 %i.au, 65
  %i.aw = load ptr, ptr %i.as, align 8
  %spec.select.i.i.i.i.i27 = select i1 %i.av, ptr %i.as, ptr %i.aw
  %.0.i.i.i.i.i28 = load i64, ptr %spec.select.i.i.i.i.i27, align 8, !tbaa !176
  %i.ax = trunc i64 %.0.i.i.i.i.i28 to i32
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread.sink.split

thread-pre-split:                                 ; preds = %bb.e, %bb.g, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.f, %bb.j, %bb.h, %bb.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit26
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24 ; 2 uses
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !344
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %thread-pre-split
  %i.ba = phi ptr [ %i.ay, %thread-pre-split ], [ %i.az, %.loopexit.loopexit ]
  %i.bb = phi i32 [ %.pr, %thread-pre-split ], [ %i.i, %.loopexit.loopexit ]
  %i.bc = icmp eq i32 %i.bb, 550
  br i1 %i.bc, label %bb.l, label %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread

bb.l:                                             ; preds = %.loopexit
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !698 ; 2 uses
  %.sroa.07.0.copyload = load ptr, ptr %i.be, align 8, !tbaa !370
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !303
  %i.bf = tail call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.07.0.copyload, i32 %.sroa.28.0.copyload) #38
  br i1 %i.bf, label %bb.m, label %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !698 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.bh, align 8, !tbaa !370
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !303
  %i.bi = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload) #38
  br i1 %i.bi, label %bb.n, label %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !833 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i29, label %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit31

_ZNK4llvm6SDNode9hasOneUseEv.exit31:              ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !834
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.o, label %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread

bb.o:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit31
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !698 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !601
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !896 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !700
  %i.bw = icmp ult i32 %i.bv, 65
  %i.bx = load ptr, ptr %i.bt, align 8
  %spec.select.i.i.i.i.i32 = select i1 %i.bw, ptr %i.bt, ptr %i.bx
  %.0.i.i.i.i.i33 = load i64, ptr %spec.select.i.i.i.i.i32, align 8, !tbaa !176
  %i.by = trunc i64 %.0.i.i.i.i.i33 to i32
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread.sink.split

_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread:       ; preds = %bb.n, %_ZNK4llvm6SDNode9hasOneUseEv.exit31, %bb.m, %bb.l, %.loopexit
  %i.bz = load i32, ptr %i.ba, align 8, !tbaa !344
  %i.ca = icmp eq i32 %i.bz, 550
  br i1 %i.ca, label %bb.p, label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread

bb.p:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !698 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.sroa.01.0.copyload = load ptr, ptr %i.cd, align 8, !tbaa !370
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !303
  %i.ce = tail call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload) #38
  br i1 %i.ce, label %bb.q, label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !698 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.cf, align 8, !tbaa !370
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !303
  %i.cg = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload) #38
  br i1 %i.cg, label %bb.r, label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !833 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i34, label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit36

_ZNK4llvm6SDNode9hasOneUseEv.exit36:              ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !834
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.s, label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread

bb.s:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit36
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !698 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !601
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !896 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !700
  %i.cu = icmp ult i32 %i.ct, 65
  %i.cv = load ptr, ptr %i.cr, align 8
  %spec.select.i.i.i.i.i37 = select i1 %i.cu, ptr %i.cr, ptr %i.cv
  %.0.i.i.i.i.i38 = load i64, ptr %spec.select.i.i.i.i.i37, align 8, !tbaa !176
  %i.cw = trunc i64 %.0.i.i.i.i.i38 to i32
  %i.cx = tail call fastcc noundef i32 @_ZN4llvm5ARMCCL20getOppositeConditionENS0_9CondCodesE(i32 noundef %i.cw)
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread.sink.split

_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread.sink.split: ; preds = %bb.s, %bb.o, %bb.k
  %.sink110.a = phi i32 [ %i.ax, %bb.k ], [ %i.by, %bb.o ], [ %i.cx, %bb.s ]
  %.sink109 = phi ptr [ %i.an, %bb.k ], [ %i.bo, %bb.o ], [ %i.cm, %bb.s ] ; 2 uses
  store i32 %.sink110.a, ptr %1, align 4, !tbaa !2554
  %i.cy = getelementptr inbounds nuw i8, ptr %.sink109, i64 120
  %.sroa.064.0.copyload = load ptr, ptr %i.cy, align 8, !tbaa !370
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink109, i64 128
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !303
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread:       ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread.sink.split, %bb.r, %_ZNK4llvm6SDNode9hasOneUseEv.exit36, %bb.q, %bb.p, %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread, %bb.a, %bb.b
  %.sroa.064.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.r ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit36 ], [ %.sroa.064.0.copyload, %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread.sink.split ]
  %.sroa.8.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit31.thread ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit36 ], [ %.sroa.8.0.copyload, %_ZNK4llvm6SDNode9hasOneUseEv.exit36.thread.sink.split ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.064.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.8.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInteqEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !700  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #39
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.c, ptr %0, ptr %i.g
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !176
  %i.h = icmp eq i64 %.0.i, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.i = phi i1 [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ArrayRef.429", align 8 ; 5 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 21 uses
  %7 = alloca %"class.llvm::SmallVector.716", align 8 ; 12 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SmallVector.425", align 8 ; 10 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %19 = alloca %"class.llvm::SmallVector.707", align 8 ; 10 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %25 = alloca %"class.llvm::ArrayRef.429", align 8 ; 3 uses
  %26 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !25 ; 12 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341 ; 12 uses
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !835
  store i64 %i.g, ptr %6, align 8, !tbaa !835
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !836
  store i32 %i.j, ptr %i.h, align 8, !tbaa !837
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !698  ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !826  ; 3 uses
  %i.o = zext i16 %i.n to i64                     ; 3 uses
  %.idx1.i = mul nuw nsw i64 %i.o, 40             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx1.i
  %i.q = lshr i64 %i.o, 2                         ; 3 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.r = mul nuw nsw i64 %i.q, 160                ; 2 uses
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.l, i64 %i.r
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %.057.i.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02956.i.i.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.029.val38.i.i.i.i.i = load ptr, ptr %.02956.i.i.i.i.i, align 8, !tbaa !370
  %i.s = getelementptr i8, ptr %.029.val38.i.i.i.i.i, i64 24
  %.029.val38.val.i.i.i.i.i = load i32, ptr %i.s, align 8, !tbaa !344
  %i.t = add i32 %.029.val38.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.t, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 40
  %.val36.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !370
  %i.v = getelementptr i8, ptr %.val36.i.i.i.i.i, i64 24
  %.val36.val.i.i.i.i.i = load i32, ptr %i.v, align 8, !tbaa !344
  %i.w = add i32 %.val36.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i40.i.i.i.i.i = icmp ult i32 %i.w, -2
  br i1 %spec.select.i.i.i.i40.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 80
  %.val34.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !370
  %i.y = getelementptr i8, ptr %.val34.i.i.i.i.i, i64 24
  %.val34.val.i.i.i.i.i = load i32, ptr %i.y, align 8, !tbaa !344
  %i.z = add i32 %.val34.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i41.i.i.i.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i.i41.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit387", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 120
  %.val.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !370
  %i.ab = getelementptr i8, ptr %.val.i.i.i.i.i, i64 24
  %.val.val.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !344
  %i.ac = add i32 %.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i42.i.i.i.i.i = icmp ult i32 %i.ac, -2
  br i1 %spec.select.i.i.i.i42.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit389", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 160
  %i.ae = add nsw i64 %.057.i.i.i.i.i, -1
  %i.af = icmp sgt i64 %.057.i.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !2557

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %gepdiff.i = sub nsw i64 %.idx1.i, %i.r
  %i.ag = sdiv exact i64 %gepdiff.i, 40
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi63.i.i.i.i.i = phi i64 [ %i.ag, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.o, %bb.a ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.l, %bb.a ] ; 5 uses
  switch i64 %.pre-phi63.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !370
  %i.ah = getelementptr i8, ptr %.029.val.i.i.i.i.i, i64 24
  %.029.val.val.i.i.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !344
  %i.ai = add i32 %.029.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i43.i.i.i.i.i = icmp ult i32 %i.ai, -2
  br i1 %spec.select.i.i.i.i43.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.aj, %bb.g ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !370
  %i.ak = getelementptr i8, ptr %.1.val.i.i.i.i.i, i64 24
  %.1.val.val.i.i.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !344
  %i.al = add i32 %.1.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i44.i.i.i.i.i = icmp ult i32 %i.al, -2
  br i1 %spec.select.i.i.i.i44.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !370
  %i.an = getelementptr i8, ptr %.2.val.i.i.i.i.i, i64 24
  %.2.val.val.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !344
  %i.ao = add i32 %.2.val.val.i.i.i.i.i, -55
  %spec.select.i.i.i.i45.i.i.i.i.i = icmp ult i32 %i.ao, -2
  br i1 %spec.select.i.i.i.i45.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 40
  br label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit387": ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 80
  br label %"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_8ArrayRefINS_5SDUseEEEZNKS_17ARMTargetLowering22PerformMVETruncCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit389": ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.02956.i.i.i.i.i, i64 120
end_hunk_9
begin_hunk_10_@_ZNK4llvm17ARMTargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a

bb.ap:                                            ; preds = %bb.ao
  %i.fk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true) ; 3 uses
  %.not102.i = icmp ugt i32 %i.fk, %i.er
  br i1 %.not102.i, label %bb.aq, label %_ZL19PerformShiftCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #38
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !835
  store i64 %i.fm, ptr %90, align 8, !tbaa !835
  %i.fn = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !836
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !764
  %i.fq = zext nneg i32 %i.fk to i64
  %i.fr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i64 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(12) %90, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract47.i = extractvalue { ptr, i32 } %i.fr, 0
  %.fca.1.extract48.i = extractvalue { ptr, i32 } %i.fr, 1
  store ptr %.fca.0.extract47.i, ptr %92, align 8
  %.sroa.250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %92, i64 8
  store i32 %.fca.1.extract48.i, ptr %.sroa.250.0..sroa_idx.i, align 8
  %i.fs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %90, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %91, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %92) #38 ; 2 uses
  %.fca.0.extract43.i = extractvalue { ptr, i32 } %i.fs, 0
  %.fca.1.extract44.i = extractvalue { ptr, i32 } %i.fs, 1
  store ptr %.fca.0.extract43.i, ptr %93, align 8, !tbaa !370
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %93, i64 8
  store i32 %.fca.1.extract44.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !303
  %i.ft = sub nuw nsw i32 %i.fk, %i.er
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i64 noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(12) %90, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract39.i = extractvalue { ptr, i32 } %i.fv, 0
  %.fca.1.extract40.i = extractvalue { ptr, i32 } %i.fv, 1
  store ptr %.fca.0.extract39.i, ptr %94, align 8
  %.sroa.242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %94, i64 8
  store i32 %.fca.1.extract40.i, ptr %.sroa.242.0..sroa_idx.i, align 8
  %i.fw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %90, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %93, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %94) #38 ; 2 uses
  %.fca.0.extract35.i = extractvalue { ptr, i32 } %i.fw, 0
  %.fca.1.extract36.i = extractvalue { ptr, i32 } %i.fw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #38
  br label %_ZL19PerformShiftCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

bb.ar:                                            ; preds = %bb.ai, %bb.ah
  %i.fx = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.fx, 197
  br i1 %spec.select.i.i.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, label %_ZL19PerformShiftCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.ar
  %i.fy = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !885
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %i.gb = zext nneg i16 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.gd, null
  br i1 %.not.i, label %_ZL19PerformShiftCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit, label %bb.as

bb.as:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dc, i64 395
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !173, !range !18, !noundef !19
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %_ZL19PerformShiftCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !698
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %.sroa.029.0.copyload.i = load ptr, ptr %i.gj, align 8, !tbaa !370 ; 2 uses
  %i.gk = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.gb
  %i.gl = getelementptr i8, ptr %i.gk, i64 -2     ; 2 uses
  br i1 %i.dn, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i.i, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i116.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i.i:        ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #38
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !25 ; 3 uses
  store i16 %i.gm, ptr %89, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %89, i64 8
  store ptr null, ptr %i.gn, align 8
  %.not.i.i.i.i = icmp eq i16 %i.gm, 0
  br i1 %.not.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i.i
  %i.go = zext i16 %i.gm to i64
  %i.gp = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.gq, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i.i

bb.av:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i.i
  %i.gr = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %89) #39
  %i.gs = extractvalue { i64, i8 } %i.gr, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i.i:    ; preds = %bb.av, %bb.au
  %.pn.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.au ], [ %i.gs, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #38
  %i.gt = trunc i64 %.pn.i.i.i.i to i32
  %i.gu = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.029.0.copyload.i, i32 noundef %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.gu, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.i, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.i: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i.i
  %i.gv = load i64, ptr %i.b, align 8, !tbaa !466 ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  %i.gx = icmp slt i64 %i.gv, %.pn.i.i.i.i
  %i.gy = and i1 %i.gw, %i.gx
  br i1 %i.gy, label %bb.aw, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i

bb.aw:                                            ; preds = %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #38
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !835
  store i64 %i.ha, ptr %95, align 8, !tbaa !835
  %i.hb = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !836
  store i32 %i.hd, ptr %i.hb, align 8, !tbaa !837
  %i.he = load ptr, ptr %i.gh, align 8, !tbaa !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %96, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !764
  %i.hf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i64 noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(12) %95, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract19.i = extractvalue { ptr, i32 } %i.hf, 0
  %.fca.1.extract20.i = extractvalue { ptr, i32 } %i.hf, 1
  store ptr %.fca.0.extract19.i, ptr %97, align 8
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %97, i64 8
  store i32 %.fca.1.extract20.i, ptr %.sroa.222.0..sroa_idx.i, align 8
  %i.hg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i32 noundef 684, ptr noundef nonnull align 8 dereferenceable(12) %95, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %96, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %97) #38 ; 2 uses
  %.fca.0.extract15.i = extractvalue { ptr, i32 } %i.hg, 0
  %.fca.1.extract16.i = extractvalue { ptr, i32 } %i.hg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #38
  br label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i116.i:     ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #38
  %i.hh = load i16, ptr %i.gl, align 2, !tbaa !25 ; 3 uses
  store i16 %i.hh, ptr %88, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %88, i64 8
  store ptr null, ptr %i.hi, align 8
  %.not.i.i.i118.i = icmp eq i16 %i.hh, 0
  br i1 %.not.i.i.i118.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i116.i
  %i.hj = zext i16 %i.hh to i64
  %i.hk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 -16
  %.sroa.0.0.copyload.i.i.i.i119.i = load i64, ptr %i.hl, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i120.i

bb.ay:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i116.i
  %i.hm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %88) #39
  %i.hn = extractvalue { i64, i8 } %i.hm, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i120.i

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i120.i: ; preds = %bb.ay, %bb.ax
  %.pn.i.i.i121.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i119.i, %bb.ax ], [ %i.hn, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #38
  %i.ho = trunc i64 %.pn.i.i.i121.i to i32
  %i.hp = call fastcc noundef zeroext i1 @_ZL12getVShiftImmN4llvm7SDValueEjRl(ptr %.sroa.029.0.copyload.i, i32 noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.hp, label %bb.az, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i

bb.az:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i120.i
  %i.hq = load i64, ptr %i.b, align 8, !tbaa !466 ; 3 uses
  %i.hr = icmp slt i64 %i.hq, 1
  %.not155.i = icmp sgt i64 %i.hq, %.pn.i.i.i121.i
  %or.cond.i = or i1 %i.hr, %.not155.i
  br i1 %or.cond.i, label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hs = load i32, ptr %i.c, align 8, !tbaa !344
  %i.ht = icmp eq i32 %i.hs, 199
  %i.hu = select i1 %i.ht, i32 688, i32 689
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #38
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !835
  store i64 %i.hw, ptr %98, align 8, !tbaa !835
  %i.hx = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !836
  store i32 %i.hz, ptr %i.hx, align 8, !tbaa !837
  %i.ia = load ptr, ptr %i.gh, align 8, !tbaa !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %99, ptr noundef nonnull align 8 dereferenceable(16) %i.ia, i64 16, i1 false), !tbaa.struct !764
  %i.ib = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i64 noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(12) %98, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.ib, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.ib, 1
  store ptr %.fca.0.extract3.i, ptr %100, align 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %100, i64 8
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  %i.ic = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.de, i32 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(12) %98, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %99, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %100) #38 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ic, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ic, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #38
  br label %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i

_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i: ; preds = %bb.ba, %bb.az, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i120.i, %bb.aw, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.i, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i.i
  %.sroa.18.0.i = phi i32 [ %.fca.1.extract16.i, %bb.aw ], [ %.fca.1.extract.i, %bb.ba ], [ 0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i.i ], [ 0, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.i ], [ 0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i120.i ], [ 0, %bb.az ]
  %.sroa.0137.0.i = phi ptr [ %.fca.0.extract15.i, %bb.aw ], [ %.fca.0.extract.i, %bb.ba ], [ null, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i.i ], [ null, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.i ], [ null, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i120.i ], [ null, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %_ZL19PerformShiftCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

_ZL19PerformShiftCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit: ; preds = %bb.aj, %bb.ak, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i, %bb.al, %bb.am, %bb.an, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit108.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit108.i, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.as, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i
  %.sroa.18.2.i = phi i32 [ 0, %bb.al ], [ 0, %bb.as ], [ 0, %bb.ao ], [ %.sroa.18.0.i, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ 0, %bb.an ], [ %.fca.1.extract36.i, %bb.aq ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit108.i ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit108.i ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i ]
  %.sroa.0137.2.i = phi ptr [ null, %bb.al ], [ null, %bb.as ], [ null, %bb.ao ], [ %.sroa.0137.0.i, %_ZL12isVShiftLImmN4llvm7SDValueENS_3EVTEbRl.exit.thread.i ], [ null, %bb.am ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ null, %bb.an ], [ %.fca.0.extract35.i, %bb.aq ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit108.i ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit108.i ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %92)
  call void @llvm.lifetime.end.p0(ptr nonnull %93)
  call void @llvm.lifetime.end.p0(ptr nonnull %94)
  call void @llvm.lifetime.end.p0(ptr nonnull %96)
  call void @llvm.lifetime.end.p0(ptr nonnull %97)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.end.p0(ptr nonnull %100)
  br label %_ZL22PerformFPExtendCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit

bb.bb:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 9 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78)
  call void @llvm.lifetime.start.p0(ptr nonnull %79)
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  call void @llvm.lifetime.start.p0(ptr nonnull %83)
  call void @llvm.lifetime.start.p0(ptr nonnull %84)
  call void @llvm.lifetime.start.p0(ptr nonnull %85)
  call void @llvm.lifetime.start.p0(ptr nonnull %86)
  call void @llvm.lifetime.start.p0(ptr nonnull %87)
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !698 ; 2 uses
  %.sroa.0165.0.copyload.i = load ptr, ptr %i.ii, align 8, !tbaa !370 ; 7 uses
  %.sroa.11173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.sroa.11173.0.copyload.i = load i32, ptr %.sroa.11173.0..sroa_idx.i, align 8, !tbaa !303 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #38
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i.i475 = load i16, ptr %i.ik, align 8, !tbaa !25 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i476 = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.sroa.21.0.copyload.i.i477 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i476, align 8, !tbaa !341 ; 3 uses
  store i16 %.sroa.0.0.copyload.i.i475, ptr %76, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i477, ptr %i.il, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #38
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.in = load i64, ptr %i.im, align 8, !tbaa !835
  store i64 %i.in, ptr %77, align 8, !tbaa !835
  %i.io = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !836
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !837
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 398
  %i.is = load i8, ptr %i.ir, align 2, !tbaa !177, !range !18, !noundef !19
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ig, i64 395
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !173, !range !18, !noundef !19
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.bd, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 24
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !344
  %i.iz = icmp eq i32 %i.iy, 164
  br i1 %i.iz, label %bb.be, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !698 ; 5 uses
  %.sroa.0158.0.copyload.i = load ptr, ptr %i.jb, align 8, !tbaa !370 ; 2 uses
  %.sroa.6160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %.sroa.6160.0.copyload.i = load i32, ptr %.sroa.6160.0..sroa_idx.i, align 8, !tbaa !303 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %.sroa.0154.0.copyload.i = load ptr, ptr %i.jc, align 8, !tbaa !370 ; 2 uses
  %.sroa.6156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.jd = load i64, ptr %.sroa.6156.0..sroa_idx.i, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !885
  %.not.i.i.i486 = icmp eq i16 %.sroa.0.0.copyload.i.i475, 7
  %i.jg = icmp eq ptr %.sroa.21.0.copyload.i.i477, null
  %.not4.i.i487 = select i1 %.not.i.i.i486, i1 %i.jg, i1 false
  br i1 %.not4.i.i487, label %bb.bf, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !340
  %i.jj = zext i32 %.sroa.11173.0.copyload.i to i64
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %i.jj ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !341
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.jk, align 8, !tbaa !25
  %i.jl = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %i.jm = add i16 %.sroa.0.0.copyload.i.i.i, -5
  %i.jn = icmp ult i16 %i.jm, 2
  %or.cond.i488 = select i1 %i.jn, i1 %i.jl, i1 false
  br i1 %or.cond.i488, label %bb.bg, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0158.0.copyload.i, i64 48
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !340
  %i.jq = zext i32 %.sroa.6160.0.copyload.i to i64
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.jq
  %.sroa.0.0.copyload.i.i84.i = load i16, ptr %i.jr, align 8, !tbaa !25 ; 2 uses
  %.not.i.i489 = icmp eq i16 %.sroa.0.0.copyload.i.i84.i, 0
  br i1 %.not.i.i489, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i490

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i490: ; preds = %bb.bg
  %i.js = getelementptr inbounds nuw i8, ptr %i.jf, i64 112
  %i.jt = zext i16 %.sroa.0.0.copyload.i.i84.i to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !27
  %.not.i491 = icmp eq ptr %i.jv, null
  br i1 %.not.i491, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i490
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0154.0.copyload.i, i64 24
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !344
  switch i32 %i.jx, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i [
    i32 37, label %.critedge79.i
    i32 12, label %.critedge79.i
  ]

.critedge79.i:                                    ; preds = %bb.bh, %bb.bh
  %i.jy = icmp eq i32 %i.d, 227
  %..i = select i1 %i.jy, i32 635, i32 636
  store ptr %.sroa.0158.0.copyload.i, ptr %78, align 8, !tbaa !370
  %.sroa.6160.0..sroa_idx161.i = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i32 %.sroa.6160.0.copyload.i, ptr %.sroa.6160.0..sroa_idx161.i, align 8, !tbaa !303
  %.sroa.7.0..sroa_idx163.i = getelementptr inbounds nuw i8, ptr %78, i64 12
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx163.i, align 4
  store ptr %.sroa.0154.0.copyload.i, ptr %79, align 8, !tbaa !370
  %.sroa.6156.0..sroa_idx157.i = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 %i.jd, ptr %.sroa.6156.0..sroa_idx157.i, align 8
  %i.jz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ie, i32 noundef %..i, ptr noundef nonnull align 8 dereferenceable(12) %77, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %78, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %79) #38 ; 2 uses
  %.fca.0.extract45.i = extractvalue { ptr, i32 } %i.jz, 0
  %.fca.1.extract46.i = extractvalue { ptr, i32 } %i.jz, 1
  br label %_ZL20PerformExtendCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i: ; preds = %bb.bh, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i490, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ig, i64 395 ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !173, !range !18, !noundef !19
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.bi, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #38
  br label %.critedge.i

bb.bi:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i
  %i.kd = tail call fastcc { ptr, i32 } @_ZL30PerformSplittingToWideningLoadPN4llvm6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(920) %i.ie) ; 2 uses
  %.fca.0.extract40.i = extractvalue { ptr, i32 } %i.kd, 0 ; 2 uses
  %.fca.1.extract41.i = extractvalue { ptr, i32 } %i.kd, 1
  %.not177.i = icmp eq ptr %.fca.0.extract40.i, null
  br i1 %.not177.i, label %bb.bj, label %_ZL20PerformExtendCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit

bb.bj:                                            ; preds = %bb.bi
  %.pre.i = load i8, ptr %i.ka, align 1, !tbaa !173, !range !18
  %i.ke = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #38
  br i1 %i.ke, label %bb.bk, label %.critedge.i

bb.bk:                                            ; preds = %bb.bj
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.copyload.i, i64 48
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !340
  %i.kh = zext i32 %.sroa.11173.0.copyload.i to i64
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.kh ; 2 uses
  %.sroa.0.0.copyload.i.i89.i = load i16, ptr %i.ki, align 8, !tbaa !25 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i90.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.21.0.copyload.i.i91.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i90.i, align 8, !tbaa !341 ; 2 uses
  %.fca.0.insert.i.i92.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i89.i, 0
  %.fca.1.insert.i.i93.i = insertvalue { i16, ptr } %.fca.0.insert.i.i92.i, ptr %.sroa.21.0.copyload.i.i91.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i89.i, ptr %80, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %80, i64 8
  store ptr %.sroa.21.0.copyload.i.i91.i, ptr %i.kj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #38
  %.not.i.i.i.i480 = icmp eq i16 %.sroa.0.0.copyload.i.i89.i, 0
  br i1 %.not.i.i.i.i480, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.bk
  %i.kk = add i16 %.sroa.0.0.copyload.i.i89.i, -19
  %spec.select.i.i.i.i.i = icmp ult i16 %i.kk, 197
  br i1 %spec.select.i.i.i.i.i, label %bb.bl, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i:              ; preds = %bb.bk
  %i.kl = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %80) #39
  br i1 %i.kl, label %bb.bm, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.bl:                                            ; preds = %.split.i.i.i
  %i.km = zext nneg i16 %.sroa.0.0.copyload.i.i89.i to i64
  %i.kn = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 -2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !25
  %i.kq = insertvalue { i16, ptr } poison, i16 %i.kp, 0
  %i.kr = insertvalue { i16, ptr } %i.kq, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.bm:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i
  %i.ks = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %80) #38
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i:          ; preds = %bb.bm, %bb.bl, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, %.split.i.i.i
  %.fca.1.insert.merged.i.i.i = phi { i16, ptr } [ %i.ks, %bb.bm ], [ %i.kr, %bb.bl ], [ %.fca.1.insert.i.i93.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i ], [ %.fca.1.insert.i.i93.i, %.split.i.i.i ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZL20PerformSELECTCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE:bb.a
  %.not.i66 = icmp ne i16 %.sroa.0.0.copyload.i, %i.bh
  %i.bo = icmp ne ptr %.sroa.21.0.copyload.i, null
  %i.bp = select i1 %.not.i66, i1 true, i1 %i.bo
  br i1 %i.bp, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.097.1, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !340 ; 2 uses
  %.sroa.21.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.21.0.copyload.i63 = load ptr, ptr %.sroa.21.0..sroa_idx.i62, align 8, !tbaa !341
  %.sroa.0.0.copyload.i61 = load i16, ptr %i.br, align 8, !tbaa !25
  %.not.i67 = icmp ne i16 %.sroa.0.0.copyload.i61, %i.bh
  %i.bs = icmp ne ptr %.sroa.21.0.copyload.i63, null
  %i.bt = select i1 %.not.i67, i1 true, i1 %i.bs
  br i1 %i.bt, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i68.not = icmp eq i16 %i.bh, 7            ; 2 uses
  br i1 %.not.i68.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2539, !nonnull !19, !align !60
  store ptr %.sroa.0109.1, ptr %3, align 8, !tbaa !370
  %.sroa.12115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2176.2, ptr %.sroa.12115.0..sroa_idx, align 8, !tbaa !303
  %i.bw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bv, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #38 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.bw, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.bw, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0109.2 = phi ptr [ %.fca.0.extract16, %bb.ac ], [ %.sroa.0109.1, %bb.ab ]
  %.sroa.12115.2 = phi i32 [ %.fca.1.extract17, %bb.ac ], [ %.sroa.2176.2, %bb.ab ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2539, !nonnull !19, !align !60
  store ptr %.sroa.0109.2, ptr %4, align 8, !tbaa !370
  %.sroa.12115.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.12115.2, ptr %.sroa.12115.0..sroa_idx116, align 8, !tbaa !303
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.097.1, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !698
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.by, i32 noundef %.056, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ca) #38 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.cb, 0 ; 2 uses
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.cb, 1 ; 2 uses
  br i1 %.not.i68.not, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !2539, !nonnull !19, !align !60
  store ptr %.fca.0.extract12, ptr %5, align 8, !tbaa !370
  %.sroa.16133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract13, ptr %.sroa.16133.0..sroa_idx, align 8, !tbaa !303
  %i.cd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.cc, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.bh, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cd, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cd, 1
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %bb.y, %bb.x, %bb.b, %bb.c, %bb.s, %bb.t
  %.sroa.16133.3 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ], [ 0, %bb.y ], [ %.fca.1.extract13, %bb.ad ], [ %.fca.1.extract, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.z ]
  %.sroa.0132.3 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.x ], [ null, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ], [ null, %bb.y ], [ %.fca.0.extract12, %bb.ad ], [ %.fca.0.extract, %bb.ae ], [ null, %bb.aa ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %.thread
  %.sroa.16133.4 = phi i32 [ %.sroa.16133.3, %.thread ], [ 0, %bb.a ]
  %.sroa.0132.4 = phi ptr [ %.sroa.0132.3, %.thread ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0132.4, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.16133.4, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL21PerformVSELECTCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i8 %.395.val) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = trunc nuw i8 %.395.val to i1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !698  ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !601  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !344
  %i.g = icmp eq i32 %i.f, 578
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !698
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !601  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !344
  switch i32 %i.l, label %bb.g [
    i32 37, label %bb.d
    i32 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !896  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !700
  %i.r = icmp ult i32 %i.q, 65
  %i.s = load ptr, ptr %i.o, align 8
  %spec.select.i.i.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.s
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !176
  %i.t = trunc i64 %.0.i.i.i.i.i to i32
  switch i32 %i.t, label %bb.g [
    i32 0, label %bb.e
    i32 65535, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.02.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !370
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !303
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.02.0.copyload3 = load ptr, ptr %i.v, align 8, !tbaa !370
  %.sroa.12.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.12.0.copyload5 = load i32, ptr %.sroa.12.0..sroa_idx4, align 8, !tbaa !303
  br label %.thread

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2539, !nonnull !19, !align !60
  %i.y = tail call fastcc { ptr, i32 } @_ZL21PerformVQDMULHCombinePN4llvm6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(920) %i.x) ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.y, 0 ; 2 uses
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.y, 1
  %.not11 = icmp eq ptr %.fca.0.extract8, null
  br i1 %.not11, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !698
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !601 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !344
  %.not = icmp eq i32 %i.ac, 195
  br i1 %.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !698 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.05.0.copyload = load ptr, ptr %i.af, align 8, !tbaa !370
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !303
  %i.ag = tail call noundef ptr @_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb(ptr %.sroa.05.0.copyload, i32 %.sroa.26.0.copyload, i1 noundef zeroext false, i1 noundef zeroext true) #38 ; 2 uses
  %.not31 = icmp eq ptr %i.ag, null
  br i1 %.not31, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !896 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !700 ; 2 uses
  %i.am = icmp ult i32 %i.al, 65
  br i1 %i.am, label %.split, label %_ZNK4llvm14ConstantSDNode5isOneEv.exit

.split:                                           ; preds = %bb.j
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !176
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %.thread

_ZNK4llvm14ConstantSDNode5isOneEv.exit:           ; preds = %bb.j
  %i.ap = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #39
  %i.aq = add i32 %i.al, -1
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %.thread

bb.k:                                             ; preds = %.split, %_ZNK4llvm14ConstantSDNode5isOneEv.exit
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !698
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !698 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ax, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !2539, !nonnull !19, !align !60
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !835
  store i64 %i.ba, ptr %2, align 8, !tbaa !835
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !836
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !837
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ay, i32 noundef 220, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.as, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.av, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.au) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.be, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.be, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.k, %.split, %_ZNK4llvm14ConstantSDNode5isOneEv.exit, %bb.i, %bb.h, %bb.a, %bb.g
  %.sroa.02.2 = phi ptr [ %.fca.0.extract8, %bb.g ], [ null, %bb.h ], [ null, %bb.a ], [ null, %bb.i ], [ %.fca.0.extract, %bb.k ], [ null, %.split ], [ null, %_ZNK4llvm14ConstantSDNode5isOneEv.exit ], [ %.sroa.02.0.copyload3, %bb.f ], [ %.sroa.02.0.copyload, %bb.e ]
  %.sroa.12.2 = phi i32 [ %.fca.1.extract9, %bb.g ], [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.i ], [ %.fca.1.extract, %bb.k ], [ 0, %.split ], [ 0, %_ZNK4llvm14ConstantSDNode5isOneEv.exit ], [ %.sroa.12.0.copyload5, %bb.f ], [ %.sroa.12.0.copyload, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.02.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.12.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL26PerformVSetCCToVCTPCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i8 %.395.val) unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 5 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !370 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !303
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !370 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !303
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !601
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !971
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !340  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.i, align 8, !tbaa !25 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.j, align 8
  %i.k = trunc nuw i8 %.395.val to i1
  br i1 %i.k, label %bb.b, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !885
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = zext i16 %.sroa.0.0.copyload.i to i64    ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  switch i32 %i.g, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread [
    i32 11, label %.split.i.i
    i32 12, label %.split.i.i.fold.split
  ]

.split.i.i.fold.split:                            ; preds = %bb.c
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.c, %.split.i.i.fold.split
  %.sroa.04.031 = phi ptr [ %.sroa.012.0.copyload, %bb.c ], [ %.sroa.04.0.copyload, %.split.i.i.fold.split ]
  %.sroa.6.030 = phi i32 [ %.sroa.9.0.copyload, %bb.c ], [ %.sroa.6.0.copyload, %.split.i.i.fold.split ]
  %.sroa.012.029 = phi ptr [ %.sroa.04.0.copyload, %bb.c ], [ %.sroa.012.0.copyload, %.split.i.i.fold.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.t = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.t, 197
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %.split.i.i
  %i.u = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.q
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !25
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %.split.i.i, %bb.d
  %.pn34 = phi i16 [ %i.w, %bb.d ], [ %.sroa.0.0.copyload.i, %.split.i.i ] ; 3 uses
  %.pn32 = phi ptr [ null, %bb.d ], [ %.sroa.21.0.copyload.i, %.split.i.i ]
  store i16 %.pn34, ptr %2, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.pn32, ptr %i.x, align 8
  %.not.i.i = icmp eq i16 %.pn34, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.y = zext i16 %.pn34 to i64
  %i.z = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aa, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ab = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #39
  %i.ac = extractvalue { i64, i8 } %i.ab, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.e, %bb.f
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.e ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %.not47 = icmp eq i64 %.pn.i.i, 1
  br i1 %.not47, label %bb.g, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.g:                                             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.029, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !344
  %.not48 = icmp eq i32 %i.ae, 162
  br i1 %.not48, label %.preheader.split, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

.preheader.split:                                 ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.029, i64 40
  %i.ag = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.ag, 53
  br i1 %spec.select.i.i.i, label %.split37.us, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.lr.ph

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.lr.ph: ; preds = %.preheader.split
  %i.ah = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.q
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !29 ; 2 uses
  %.not4943.not = icmp eq i16 %i.aj, 0
  br i1 %.not4943.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.lr.ph
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !698
  %wide.trip.count = zext i16 %i.aj to i64
  br label %bb.h

.split37.us:                                      ; preds = %.preheader.split
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

bb.h:                                             ; preds = %.lr.ph, %.split.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.split.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !601 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !344 ; 2 uses
  %i.ap = add i32 %i.ao, -53
  %spec.select.i.i = icmp ult i32 %i.ap, 2
  br i1 %spec.select.i.i, label %.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %i.ao, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread [
    i32 37, label %bb.j
    i32 12, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !896 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !700
  %i.av = icmp ult i32 %i.au, 65
  %i.aw = load ptr, ptr %i.as, align 8
  %spec.select.i.i.i.i.i = select i1 %i.av, ptr %i.as, ptr %i.aw
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !176
  %i.ax = icmp eq i64 %.0.i.i.i.i.i, %indvars.iv
  br i1 %i.ax, label %.split.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

.split.i:                                         ; preds = %bb.h, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.h

.critedge:                                        ; preds = %.split.i, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.lr.ph
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getSplatValueENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.m, ptr %.sroa.04.031, i32 %.sroa.6.030, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.ay, 0 ; 2 uses
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.ay, 1
  %.not35 = icmp eq ptr %.fca.0.extract14, null
  br i1 %.not35, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.az = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.ba = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.az)
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %.split, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

.split:                                           ; preds = %bb.k
  %i.bc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.az, i1 true)
  %switch.tableidx = add nsw i32 %i.bc, -1        ; 2 uses
  %i.bd = icmp ult i32 %switch.tableidx, 4
  br i1 %i.bd, label %switch.lookup, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

switch.lookup:                                    ; preds = %.split
  %i.be = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL26PerformVSetCCToVCTPCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE, i64 %i.be
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !835
  store i64 %i.bg, ptr %4, align 8, !tbaa !835
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !836
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !837
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZL16PerformORCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE:bb.a
  %.fca.1.extract105.i = extractvalue { ptr, i32 } %i.me, 1
  store ptr %.fca.0.extract104.i, ptr %6, align 8
  %.sroa.2107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract105.i, ptr %.sroa.2107.0..sroa_idx.i, align 8
  %i.mf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38
  br label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

bb.by:                                            ; preds = %bb.bv
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0243.0.copyload.i, i64 40 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !698 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !601 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !344
  switch i32 %i.ml, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i: ; preds = %bb.by, %bb.by
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 88
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !896 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !700
  %i.mr = icmp ult i32 %i.mq, 65
  %i.ms = load ptr, ptr %i.mo, align 8
  %spec.select.i.i.i202.i = select i1 %i.mr, ptr %i.mo, ptr %i.ms
  %.0.i.i.i203.i = load i64, ptr %spec.select.i.i.i202.i, align 8, !tbaa !176 ; 2 uses
  %i.mt = trunc i64 %.0.i.i.i203.i to i32         ; 4 uses
  %i.mu = icmp eq i32 %i.lf, -1
  br i1 %i.mu, label %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit207.i, label %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit205.i

_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit205.i: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.mv = xor i32 %i.lf, -1                       ; 2 uses
  %i.mw = sub nuw i32 -2, %i.lf
  %i.mx = or i32 %i.mw, %i.mv                     ; 2 uses
  %i.my = add i32 %i.mx, 1
  %i.mz = and i32 %i.my, %i.mx
  %i.na = icmp eq i32 %i.mz, 0
  %i.nb = xor i32 %i.mt, %i.lf
  %i.nc = icmp eq i32 %i.nb, -1
  %or.cond.i261 = and i1 %i.na, %i.nc
  br i1 %or.cond.i261, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit205.i
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 371
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !185, !range !18, !noundef !19
  %i.nf = trunc nuw i8 %i.ne to i1
  %i.ng = icmp eq i32 %i.lf, -65536
  %or.cond191.i = and i1 %i.ng, %i.nf
  br i1 %or.cond191.i, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nh = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.mt, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.mh, i64 16, i1 false), !tbaa.struct !764
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i64 noundef %i.ni, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract77.i = extractvalue { ptr, i32 } %i.nj, 0
  %.fca.1.extract78.i = extractvalue { ptr, i32 } %i.nj, 1
  store ptr %.fca.0.extract77.i, ptr %8, align 8
  %.sroa.280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract78.i, ptr %.sroa.280.0..sroa_idx.i, align 8
  %i.nk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #38 ; 2 uses
  %.fca.0.extract73.i = extractvalue { ptr, i32 } %i.nk, 0
  %.fca.1.extract74.i = extractvalue { ptr, i32 } %i.nk, 1
  store ptr %.sroa.0232.0.copyload.i, ptr %9, align 8, !tbaa !370
  %.sroa.10.0..sroa_idx240.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ku, ptr %.sroa.10.0..sroa_idx240.i, align 8
  store ptr %.fca.0.extract73.i, ptr %10, align 8, !tbaa !370
  %.sroa.11.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract74.i, ptr %.sroa.11.0..sroa_idx.i263, align 8, !tbaa !303
  %i.nl = and i64 %.0.i.i.i196.i, 4294967295
  %i.nm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i64 noundef %i.nl, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract63.i = extractvalue { ptr, i32 } %i.nm, 0
  %.fca.1.extract64.i = extractvalue { ptr, i32 } %i.nm, 1
  store ptr %.fca.0.extract63.i, ptr %11, align 8
  %.sroa.266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract64.i, ptr %.sroa.266.0..sroa_idx.i, align 8
  %i.nn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #38
  br label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

bb.cb:                                            ; preds = %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit205.i
  %i.no = icmp eq i32 %i.lf, 0
  br i1 %i.no, label %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit.thread.i, label %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit207.i

_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit207.i: ; preds = %bb.cb, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.np = phi i32 [ %i.mv, %bb.cb ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i ] ; 2 uses
  %i.nq = sub nuw i32 -2, %i.np
  %i.nr = or i32 %i.nq, %i.lf                     ; 2 uses
  %i.ns = add i32 %i.nr, 1
  %i.nt = and i32 %i.ns, %i.nr
  %i.nu = icmp eq i32 %i.nt, 0
  %i.nv = icmp eq i32 %i.np, %i.mt
  %or.cond192.i = and i1 %i.nv, %i.nu
  br i1 %or.cond192.i, label %bb.cc, label %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit.thread.i

bb.cc:                                            ; preds = %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit207.i
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 371
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !185, !range !18, !noundef !19
  %i.ny = trunc nuw i8 %i.nx to i1
  %i.nz = icmp eq i32 %i.mt, 65535
  %or.cond193.i = and i1 %i.nz, %i.ny
  br i1 %or.cond193.i, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oa = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.lf, i1 false)
  store ptr %.sroa.0232.0.copyload.i, ptr %12, align 8, !tbaa !370
  %.sroa.10.0..sroa_idx241.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ku, ptr %.sroa.10.0..sroa_idx241.i, align 8
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i64 noundef %i.ob, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract43.i = extractvalue { ptr, i32 } %i.oc, 0
  %.fca.1.extract44.i = extractvalue { ptr, i32 } %i.oc, 1
  store ptr %.fca.0.extract43.i, ptr %13, align 8
  %.sroa.246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract44.i, ptr %.sroa.246.0..sroa_idx.i, align 8
  %i.od = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #38 ; 2 uses
  %.fca.0.extract39.i = extractvalue { ptr, i32 } %i.od, 0
  %.fca.1.extract40.i = extractvalue { ptr, i32 } %i.od, 1
  %i.oe = load ptr, ptr %i.mg, align 8, !tbaa !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i64 16, i1 false), !tbaa.struct !764
  store ptr %.fca.0.extract39.i, ptr %15, align 8, !tbaa !370
  %.sroa.11.0..sroa_idx226.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract40.i, ptr %.sroa.11.0..sroa_idx226.i, align 8, !tbaa !303
  %i.of = and i64 %.0.i.i.i203.i, 4294967295
  %i.og = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i64 noundef %i.of, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract29.i = extractvalue { ptr, i32 } %i.og, 0
  %.fca.1.extract30.i = extractvalue { ptr, i32 } %i.og, 1
  store ptr %.fca.0.extract29.i, ptr %16, align 8
  %.sroa.232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract30.i, ptr %.sroa.232.0..sroa_idx.i, align 8
  %i.oh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #38
  br label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit.thread.i: ; preds = %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit207.i, %bb.cb, %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit.i, %bb.bw, %bb.bv
  %i.oi = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %i.km, ptr nonnull %.sroa.0243.0.copyload.i, i32 %.sroa.10249.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %i.la, i32 noundef 0) #38
  br i1 %i.oi, label %bb.ce, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352

bb.ce:                                            ; preds = %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit.thread.i
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0232.0.copyload.i, i64 24
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !344
  %i.ol = icmp eq i32 %i.ok, 198
  br i1 %i.ol, label %bb.cf, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352

bb.cf:                                            ; preds = %bb.ce
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0232.0.copyload.i, i64 40
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !698 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !601 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !344
  switch i32 %i.or, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352 [
    i32 37, label %bb.cg
    i32 12, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %i.os = icmp eq i32 %i.lf, 0
  br i1 %i.os, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352, label %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit209.i

_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit209.i: ; preds = %bb.cg
  %i.ot = add i32 %i.lf, -1
  %i.ou = or i32 %i.ot, %i.lf                     ; 2 uses
  %i.ov = add i32 %i.ou, 1
  %i.ow = and i32 %i.ov, %i.ou
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %bb.ch, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352

bb.ch:                                            ; preds = %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit209.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.op, i64 88
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !896 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !700
  %i.pd = icmp ult i32 %i.pc, 65
  %i.pe = load ptr, ptr %i.pa, align 8
  %spec.select.i.i.i.i.i262 = select i1 %i.pd, ptr %i.pa, ptr %i.pe
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i262, align 8, !tbaa !176
  %i.pf = trunc i64 %.0.i.i.i.i.i to i32
  %i.pg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.lf, i1 true)
  %.not189.i = icmp eq i32 %i.pg, %i.pf
  br i1 %.not189.i, label %bb.ci, label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352

bb.ci:                                            ; preds = %bb.ch
  store ptr %.sroa.0243.0.copyload.i, ptr %17, align 8, !tbaa !370
  %.sroa.10249.0..sroa_idx250.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x i32> %i.kl, ptr %.sroa.10249.0..sroa_idx250.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.on, i64 16, i1 false), !tbaa.struct !764
  %i.ph = and i64 %.0.i.i.i196.i, 4294967295
  %i.pi = xor i64 %i.ph, 4294967295
  %i.pj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i64 noundef %i.pi, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract8.i = extractvalue { ptr, i32 } %i.pj, 0
  %.fca.1.extract9.i = extractvalue { ptr, i32 } %i.pj, 1
  store ptr %.fca.0.extract8.i, ptr %19, align 8
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract9.i, ptr %.sroa.211.0..sroa_idx.i, align 8
  %i.pk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.km, i32 noundef 542, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #38
  br label %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit

_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352: ; preds = %bb.bt, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.bu, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit198.i, %bb.by, %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit209.i, %bb.bz, %bb.cf, %bb.cc, %bb.ch, %bb.ce, %bb.cg, %_ZN4llvm3ARM22isBitFieldInvertedMaskEj.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread.sink.split

_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit: ; preds = %bb.bx, %bb.ca, %bb.cd, %bb.ci
  %.sink282.i = phi { ptr, i32 } [ %i.pk, %bb.ci ], [ %i.nn, %bb.ca ], [ %i.oh, %bb.cd ], [ %i.mf, %bb.bx ] ; 2 uses
  %.fca.0.extract59.i = extractvalue { ptr, i32 } %.sink282.i, 0
  %.fca.1.extract60.i = extractvalue { ptr, i32 } %.sink282.i, 1
  %i.pl = call { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0, ptr %.fca.0.extract59.i, i32 %.fca.1.extract60.i, i1 noundef zeroext false) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread.sink.split: ; preds = %bb.br, %bb.bs, %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread352
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread:     ; preds = %.lr.ph.i.i245, %_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread.sink.split, %bb.bp, %_ZNK4llvm7SDValue9hasOneUseEv.exit254, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit231.thread
  %i.pm = call fastcc { ptr, i32 } @_ZL18PerformSHLSimplifyPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2) ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.pm, 0 ; 2 uses
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.pm, 1
  %.not371 = icmp eq ptr %.fca.0.extract26, null
  br i1 %.not371, label %bb.cj, label %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread

bb.cj:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0297.0.copyload, i64 24
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !344
  %.not = icmp eq i32 %i.po, 558                  ; 3 uses
  %.sroa.0278.0 = select i1 %.not, ptr %.sroa.0297.0.copyload, ptr %.sroa.0301.0.copyload ; 2 uses
  %.sroa.7.0 = select i1 %.not, i32 %.sroa.13308.0.copyload, i32 %.sroa.9.0.copyload ; 2 uses
  %.sroa.0.0 = select i1 %.not, ptr %.sroa.0301.0.copyload, ptr %.sroa.0297.0.copyload ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 24
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !344
  %i.pr = icmp eq i32 %i.pq, 558
  br i1 %i.pr, label %bb.ck, label %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread

bb.ck:                                            ; preds = %bb.cj
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0278.0, i64 40 ; 3 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !698 ; 2 uses
  %.sroa.023.0.copyload = load ptr, ptr %i.pt, align 8, !tbaa !370
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %.sroa.224.0.copyload = load i32, ptr %.sroa.224.0..sroa_idx, align 8, !tbaa !303
  %i.pu = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.023.0.copyload, i32 %.sroa.224.0.copyload) #38
  br i1 %i.pu, label %bb.cl, label %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread

bb.cl:                                            ; preds = %bb.ck
  %i.pv = load ptr, ptr %i.ps, align 8, !tbaa !698 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  %.sroa.020.0.copyload = load ptr, ptr %i.pw, align 8, !tbaa !370
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !303
  %i.px = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.020.0.copyload, i32 %.sroa.221.0.copyload) #38
  br i1 %i.px, label %bb.cm, label %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  %i.py = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store i32 32, ptr %i.py, align 8, !tbaa !700, !alias.scope !2607
  store i64 4294967294, ptr %40, align 8, !tbaa !176, !alias.scope !2607
  %i.pz = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %i.t, ptr %.sroa.0.0, i32 %.sroa.7.0, ptr noundef nonnull align 8 dereferenceable(12) %40, i32 noundef 0) #38
  %i.qa = load i32, ptr %i.py, align 8, !tbaa !700
  %i.qb = icmp ugt i32 %i.qa, 64
  br i1 %i.qb, label %bb.cn, label %.critedge191

bb.cn:                                            ; preds = %bb.cm
  %i.qc = load ptr, ptr %40, align 8, !tbaa !176  ; 2 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %.critedge191, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.qc) #41
  br label %.critedge191

.critedge191:                                     ; preds = %bb.co, %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  br i1 %i.pz, label %bb.cp, label %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread

bb.cp:                                            ; preds = %.critedge191
  %.sroa.014.0.copyload = load i16, ptr %27, align 8, !tbaa !25
  %.sroa.216.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !341
  store ptr %.sroa.0.0, ptr %41, align 8, !tbaa !370
  %.sroa.7.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx270, align 8, !tbaa !303
  %.sroa.8.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %41, i64 12
  store i32 %.sroa.18.0.copyload, ptr %.sroa.8.0..sroa_idx276, align 4
  %i.qe = load ptr, ptr %i.ps, align 8, !tbaa !698 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 40
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 80
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 120
  %i.qi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.t, i32 noundef 558, ptr noundef nonnull align 8 dereferenceable(12) %26, i16 %.sroa.014.0.copyload, ptr %.sroa.216.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.qf, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.qg, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.qh) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.qi, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.qi, 1
  br label %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread

_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread: ; preds = %.lr.ph.i.i, %bb.cl, %bb.ck, %bb.cj, %bb.ao, %bb.o, %bb.n, %bb.ai, %bb.aj, %_ZN4llvm5APIntD2Ev.exit239, %_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.an, %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit, %.critedge191, %bb.cp, %_ZL25PerformORCombineToSMULWBTPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread336, %bb.k
  %.sroa.23.2 = phi i32 [ %.fca.1.extract91, %bb.k ], [ 0, %.critedge191 ], [ 0, %_ZL25PerformORCombineToSMULWBTPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread336 ], [ %.fca.1.extract70, %bb.ai ], [ %.fca.1.extract60, %bb.aj ], [ 0, %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit ], [ %.fca.1.extract27, %_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread ], [ 0, %bb.an ], [ %.fca.1.extract35, %_ZN4llvm5APIntD2Ev.exit239 ], [ 0, %bb.ao ], [ %.fca.1.extract7.i208, %bb.n ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.fca.1.extract, %bb.cp ], [ 0, %bb.cl ], [ %.fca.1.extract.i206, %bb.o ], [ 0, %bb.cj ], [ 0, %bb.ck ], [ 0, %.lr.ph.i.i ]
  %.sroa.0320.2 = phi ptr [ %.fca.0.extract90, %bb.k ], [ null, %.critedge191 ], [ %0, %_ZL25PerformORCombineToSMULWBTPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread336 ], [ %.fca.0.extract69, %bb.ai ], [ %.fca.0.extract59, %bb.aj ], [ %0, %_ZL21PerformORCombineToBFIPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit ], [ %.fca.0.extract26, %_ZNK4llvm7SDValue9hasOneUseEv.exit254.thread ], [ null, %bb.an ], [ %.fca.0.extract34, %_ZN4llvm5APIntD2Ev.exit239 ], [ null, %bb.ao ], [ %.fca.0.extract6.i207, %bb.n ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.fca.0.extract, %bb.cp ], [ null, %bb.cl ], [ %.fca.0.extract.i205, %bb.o ], [ null, %bb.cj ], [ null, %bb.ck ], [ null, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.qj = load i32, ptr %i.at, align 8, !tbaa !700
  %i.qk = icmp ugt i32 %i.qj, 64
  br i1 %i.qk, label %bb.cq, label %_ZN4llvm5APIntD2Ev.exit265

bb.cq:                                            ; preds = %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread
  %i.ql = load ptr, ptr %29, align 8, !tbaa !176  ; 2 uses
  %i.qm = icmp eq ptr %i.ql, null
  br i1 %i.qm, label %_ZN4llvm5APIntD2Ev.exit265, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZdaPv(ptr noundef nonnull %i.ql) #41
  br label %_ZN4llvm5APIntD2Ev.exit265

_ZN4llvm5APIntD2Ev.exit265:                       ; preds = %_ZL30combineSelectAndUseCommutativePN4llvm6SDNodeEbRNS_14TargetLowering15DAGCombinerInfoE.exit.thread, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.qn = load i32, ptr %i.as, align 8, !tbaa !700
  %i.qo = icmp ugt i32 %i.qn, 64
  br i1 %i.qo, label %bb.cs, label %_ZN4llvm5APIntD2Ev.exit266

bb.cs:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit265
  %i.qp = load ptr, ptr %28, align 8, !tbaa !176  ; 2 uses
  %i.qq = icmp eq ptr %i.qp, null
  br i1 %i.qq, label %_ZN4llvm5APIntD2Ev.exit266, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdaPv(ptr noundef nonnull %i.qp) #41
  br label %_ZN4llvm5APIntD2Ev.exit266

_ZN4llvm5APIntD2Ev.exit266:                       ; preds = %_ZN4llvm5APIntD2Ev.exit265, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.a, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZN4llvm5APIntD2Ev.exit266, %_ZL19PerformORCombine_i1PN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit
  %.sroa.23.3 = phi i32 [ %.sroa.4.0.i, %_ZL19PerformORCombine_i1PN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit ], [ %.sroa.23.2, %_ZN4llvm5APIntD2Ev.exit266 ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %bb.a ]
  %.sroa.0320.3 = phi ptr [ %.sroa.01.0.i, %_ZL19PerformORCombine_i1PN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit ], [ %.sroa.0320.2, %_ZN4llvm5APIntD2Ev.exit266 ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0320.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.23.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL17PerformXORCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.399", align 8 ; 12 uses
  %5 = alloca %"class.llvm::ArrayRef.429", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2539 ; 4 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !885
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = zext i16 %.sroa.0.0.copyload.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 461
  %i.l = load i8, ptr %i.k, align 1, !tbaa !73, !range !18, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 410
  %i.o = load i8, ptr %i.n, align 2, !range !18
  %i.p = trunc nuw i8 %i.o to i1
  %not. = xor i1 %i.m, true
  %i.q = select i1 %not., i1 true, i1 %i.p
  br i1 %i.q, label %bb.c, label %bb.g

end_hunk_12
begin_hunk_13_@_ZL24PerformExtractEltCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE:bb.a

bb.g:                                             ; preds = %.critedge4
  %.sroa.0.0.copyload.i.i122 = load i16, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.21.0.copyload.i.i124 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i123, align 8, !tbaa !341 ; 2 uses
  %.not.i.i127 = icmp eq i16 %.sroa.0.0.copyload.i.i122, 7
  %i.aj = icmp eq ptr %.sroa.21.0.copyload.i.i124, null
  %.not4.i128 = select i1 %.not.i.i127, i1 %i.aj, i1 false
  br i1 %.not4.i128, label %bb.h, label %.critedge6

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2539, !nonnull !19, !align !60
  store ptr %.sroa.0249.0.copyload, ptr %7, align 8, !tbaa !370
  %.sroa.16.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx265, align 8, !tbaa !303
  %.sroa.21.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx279, align 4
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.al, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38 ; 2 uses
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.am, 1
  br label %.critedge104

.critedge6:                                       ; preds = %.critedge4..critedge6_crit_edge, %bb.c, %bb.e, %bb.g
  %.sroa.0.0.copyload.i.i129308 = phi i16 [ %.sroa.0.0.copyload.i.i129308.pre, %.critedge4..critedge6_crit_edge ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i113, %bb.e ], [ %.sroa.0.0.copyload.i.i122, %bb.g ] ; 2 uses
  %.sroa.21.0.copyload.i.i131310 = phi ptr [ %.sroa.21.0.copyload.i.i131310.pre, %.critedge4..critedge6_crit_edge ], [ %.sroa.21.0.copyload.i.i, %bb.c ], [ %.sroa.21.0.copyload.i.i115, %bb.e ], [ %.sroa.21.0.copyload.i.i124, %bb.g ] ; 2 uses
  %.not.i311 = icmp ne i16 %.sroa.0.0.copyload.i.i129308, %.sroa.0.0.copyload.i
  %i.an = icmp ne ptr %.sroa.21.0.copyload.i.i131310, %.sroa.21.0.copyload.i
  %i.ao = select i1 %.not.i311, i1 true, i1 %i.an
  br i1 %i.ao, label %.lr.ph.preheader, label %.critedge104

.lr.ph.preheader:                                 ; preds = %.critedge6
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0249.0.copyload, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.ar = icmp eq i32 %i.aq, 248
  br i1 %i.ar, label %.lr.ph332, label %.critedge8

.lr.ph:                                           ; preds = %.lr.ph332
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0249.0.copyload260, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !344
  %i.au = icmp eq i32 %i.at, 248
  br i1 %i.au, label %.lr.ph332, label %.critedge8, !llvm.loop !2662

.lr.ph332:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0249.0312331 = phi ptr [ %.sroa.0249.0.copyload260, %.lr.ph ], [ %.sroa.0249.0.copyload, %.lr.ph.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0249.0312331, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !698 ; 2 uses
  %.sroa.0249.0.copyload260 = load ptr, ptr %i.aw, align 8, !tbaa !370 ; 5 uses
  %.sroa.16.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.16.0.copyload270 = load i32, ptr %.sroa.16.0..sroa_idx269, align 8, !tbaa !303 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0249.0.copyload260, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !340
  %i.az = zext i32 %.sroa.16.0.copyload270 to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %.sroa.0.0.copyload.i.i129 = load i16, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i130 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.21.0.copyload.i.i131 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i130, align 8, !tbaa !341 ; 2 uses
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i129, %.sroa.0.0.copyload.i
  %i.bb = icmp ne ptr %.sroa.21.0.copyload.i.i131, %.sroa.21.0.copyload.i
  %i.bc = select i1 %.not.i, i1 true, i1 %i.bb
  br i1 %i.bc, label %.lr.ph, label %..critedge8_crit_edge, !llvm.loop !2662

..critedge8_crit_edge:                            ; preds = %.lr.ph332
  br label %.critedge8, !llvm.loop !2662

.critedge8:                                       ; preds = %.lr.ph, %..critedge8_crit_edge, %.lr.ph.preheader
  %.sroa.0249.0.lcssa.ph = phi ptr [ %.sroa.0249.0.copyload, %.lr.ph.preheader ], [ %.sroa.0249.0.copyload260, %..critedge8_crit_edge ], [ %.sroa.0249.0.copyload260, %.lr.ph ]
  %.sroa.16.0.lcssa.ph = phi i32 [ %.sroa.16.0.copyload, %.lr.ph.preheader ], [ %.sroa.16.0.copyload270, %..critedge8_crit_edge ], [ %.sroa.16.0.copyload270, %.lr.ph ]
  %.sroa.0.0.copyload.i.i129.lcssa.ph = phi i16 [ %.sroa.0.0.copyload.i.i129308, %.lr.ph.preheader ], [ %.sroa.0.0.copyload.i, %..critedge8_crit_edge ], [ %.sroa.0.0.copyload.i.i129, %.lr.ph ]
  %.sroa.21.0.copyload.i.i131.lcssa.ph = phi ptr [ %.sroa.21.0.copyload.i.i131310, %.lr.ph.preheader ], [ %.sroa.21.0.copyload.i, %..critedge8_crit_edge ], [ %.sroa.21.0.copyload.i.i131, %.lr.ph ]
  %i.bd = icmp eq i16 %.sroa.0.0.copyload.i.i129.lcssa.ph, %.sroa.0.0.copyload.i
  %i.be = icmp eq ptr %.sroa.21.0.copyload.i.i131.lcssa.ph, %.sroa.21.0.copyload.i
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.critedge104, label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !601 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !344
  switch i32 %i.bj, label %bb.l [
    i32 37, label %bb.j
    i32 12, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !896 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !700
  %i.bp = icmp ult i32 %i.bo, 65
  %i.bq = load ptr, ptr %i.bm, align 8
  %spec.select.i.i.i.i = select i1 %i.bp, ptr %i.bm, ptr %i.bq
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !826
  %i.bt = zext i16 %i.bs to i64
  %i.bu = icmp ult i64 %.0.i.i.i.i, %i.bt
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !698
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.bw, i64 %.0.i.i.i.i ; 2 uses
  %.sroa.0296.0.copyload = load ptr, ptr %i.bx, align 8, !tbaa !370
  %.sroa.13298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.13298.0.copyload = load i32, ptr %.sroa.13298.0..sroa_idx, align 8, !tbaa !303
  br label %.critedge104

bb.l:                                             ; preds = %.critedge8, %bb.i, %bb.a, %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !773
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !340
  %i.cc = zext i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %.sroa.0.0.copyload.i.i143 = load i16, ptr %i.cd, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i144 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.21.0.copyload.i.i145 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i144, align 8, !tbaa !341
  %.not.i.i148 = icmp eq i16 %.sroa.0.0.copyload.i.i143, 73
  %i.ce = icmp eq ptr %.sroa.21.0.copyload.i.i145, null
  %.not4.i149 = select i1 %.not.i.i148, i1 %i.ce, i1 false
  br i1 %.not4.i149, label %bb.m, label %.critedge10

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !601 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !344
  switch i32 %i.ci, label %.critedge10 [
    i32 37, label %bb.n
    i32 12, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.cj = icmp eq i32 %i.l, 248
  br i1 %i.cj, label %bb.o, label %.critedge10

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !698 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !601 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !344
  %i.cp = icmp eq i32 %i.co, 162
  br i1 %i.cp, label %bb.p, label %.critedge10

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !773
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !340
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %.sroa.0.0.copyload.i.i151 = load i16, ptr %i.cv, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i152 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.21.0.copyload.i.i153 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i152, align 8, !tbaa !341
  %.not.i.i156 = icmp eq i16 %.sroa.0.0.copyload.i.i151, 154
  %i.cw = icmp eq ptr %.sroa.21.0.copyload.i.i153, null
  %.not4.i157 = select i1 %.not.i.i156, i1 %i.cw, i1 false
  br i1 %.not4.i157, label %bb.q, label %.critedge10

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !896 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.db = load i32, ptr %i.da, align 8, !tbaa !700
  %i.dc = icmp ult i32 %i.db, 65
  %i.dd = load ptr, ptr %i.cz, align 8
  %spec.select.i.i.i.i158 = select i1 %i.dc, ptr %i.cz, ptr %i.dd
  %.0.i.i.i.i159 = load i64, ptr %spec.select.i.i.i.i158, align 8, !tbaa !176 ; 2 uses
  %i.de = and i64 %.0.i.i.i.i159, 4294967294
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !698
  %i.di = zext i1 %i.df to i64
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.dh, i64 %i.di
  %.sroa.0210.0.copyload = load ptr, ptr %i.dj, align 8, !tbaa !370 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0210.0.copyload, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !344
  %.not = icmp eq i32 %i.dl, 654
  br i1 %.not, label %bb.r, label %.critedge10

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 553
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !461, !range !18, !noundef !19
  %i.do = and i64 %.0.i.i.i.i159, 1
  %i.dp = xor i8 %i.dn, 1
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = xor i64 %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0210.0.copyload, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !698
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dr ; 2 uses
  %.sroa.0296.0.copyload297 = load ptr, ptr %i.du, align 8, !tbaa !370
  %.sroa.13298.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.13298.0.copyload300 = load i32, ptr %.sroa.13298.0..sroa_idx299, align 8, !tbaa !303
  br label %.critedge104

.critedge10:                                      ; preds = %bb.m, %bb.q, %bb.o, %bb.n, %bb.l, %bb.p
  %i.dv = tail call fastcc { ptr, i32 } @_ZL26PerformExtractEltToVMOVRRDPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.dv, 0 ; 2 uses
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.dv, 1
  %.not307 = icmp eq ptr %.fca.0.extract44, null
  br i1 %.not307, label %bb.s, label %.critedge104

bb.s:                                             ; preds = %.critedge10
  %i.dw = load i32, ptr %i.k, align 8, !tbaa !344 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 712
  br i1 %i.dx, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !698
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !601
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !896 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !700
  %i.eg = icmp ult i32 %i.ef, 65
  %i.eh = load ptr, ptr %i.ed, align 8
  %spec.select.i.i.i.i160 = select i1 %i.eg, ptr %i.ed, ptr %i.eh
  %.0.i.i.i.i161 = load i64, ptr %spec.select.i.i.i.i160, align 8, !tbaa !176
  %i.ei = trunc i64 %.0.i.i.i.i161 to i32         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !698 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !601
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !773
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !340
  %i.eq = zext i32 %i.en to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %.sroa.0.0.copyload.i.i162 = load i16, ptr %i.er, align 8, !tbaa !25 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i163 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.21.0.copyload.i.i164 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i163, align 8, !tbaa !341 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i162, ptr %8, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i164, ptr %i.es, align 8
  %.not.i.i167 = icmp eq i16 %.sroa.0.0.copyload.i.i162, 0
  br i1 %.not.i.i167, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.et = add i16 %.sroa.0.0.copyload.i.i162, -163
  %spec.select.i.i.i = icmp ult i16 %i.et, 53
  br i1 %spec.select.i.i.i, label %bb.u, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i176

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.t
  %i.eu = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #39
  br i1 %i.eu, label %bb.u, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i177

bb.u:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3EVT16isScalableVectorEv.exit.i177:      ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.ev = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  store i16 %.sroa.0.0.copyload.i.i162, ptr %9, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.21.0.copyload.i.i164, ptr %i.ew, align 8
  %i.ex = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br i1 %i.ex, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i177
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i176:  ; preds = %.split.i
  %i.ey = zext i16 %.sroa.0.0.copyload.i.i162 to i64
  %i.ez = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !29
  %i.fc = zext i16 %i.fb to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.fd = zext i16 %.sroa.0.0.copyload.i.i162 to i64
  %i.fe = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -2
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !29
  %i.fh = zext i16 %i.fg to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit178

bb.w:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i177
  %i.fi = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit178

_ZNK4llvm3EVT20getVectorNumElementsEv.exit178:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i176, %bb.w
  %.pn = phi i32 [ %i.fc, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i176 ], [ %i.ev, %bb.w ]
  %i.fj = phi i32 [ %i.fh, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i176 ], [ %i.fi, %bb.w ]
  %i.fk = udiv i32 %i.ei, %.pn
  %i.fl = urem i32 %i.ei, %i.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 2 uses
  %i.fo = zext i32 %i.fk to i64
  %i.fp = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false), !tbaa.struct !764
  %i.fq = zext i32 %i.fl to i64
  %i.fr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.fn, i64 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract33 = extractvalue { ptr, i32 } %i.fr, 0
  %.fca.1.extract34 = extractvalue { ptr, i32 } %i.fr, 1
  store ptr %.fca.0.extract33, ptr %11, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract34, ptr %.sroa.236.0..sroa_idx, align 8
  %i.fs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.fn, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #38 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.fs, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.fs, 1
  br label %.critedge104

bb.x:                                             ; preds = %bb.s
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 553
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !461, !range !18, !noundef !19
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = icmp eq i32 %i.dw, 248
  %or.cond = and i1 %i.fw, %i.fv
  br i1 %or.cond, label %bb.y, label %.critedge104

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !698
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !601
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !344
  %i.gc = icmp eq i32 %i.gb, 713
  br i1 %i.gc, label %bb.z, label %.critedge104

bb.z:                                             ; preds = %bb.y
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !698
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !601
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !344
  switch i32 %i.gh, label %.critedge104 [
    i32 37, label %bb.aa
    i32 12, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.gi = call noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
  %i.gj = load ptr, ptr %3, align 8, !tbaa !601
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !698
  %i.gm = call noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %i.gl)
  %.not102 = icmp ugt i64 %i.gi, %i.gm
  br i1 %.not102, label %.critedge104, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !698
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !601
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 88
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !896 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !700
  %i.gv = icmp ult i32 %i.gu, 65
  %i.gw = load ptr, ptr %i.gs, align 8
  %spec.select.i.i.i.i180 = select i1 %i.gv, ptr %i.gs, ptr %i.gw
  %.0.i.i.i.i181 = load i64, ptr %spec.select.i.i.i.i180, align 8, !tbaa !176
  %i.gx = trunc i64 %.0.i.i.i.i181 to i32         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.gy = load ptr, ptr %3, align 8, !tbaa !601   ; 2 uses
  %i.gz = load i32, ptr %i.by, align 8, !tbaa !773
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !340
  %i.hc = zext i32 %i.gz to i64
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.hc ; 2 uses
  %.sroa.0.0.copyload.i.i182 = load i16, ptr %i.hd, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i183 = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.sroa.21.0.copyload.i.i184 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i183, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i182, ptr %12, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i184, ptr %i.he, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !698 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !601
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !773
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !340
  %i.hm = zext i32 %i.hj to i64
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hm ; 2 uses
  %.sroa.0.0.copyload.i.i187 = load i16, ptr %i.hn, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i188 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.sroa.21.0.copyload.i.i189 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i188, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i187, ptr %13, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.21.0.copyload.i.i189, ptr %i.ho, align 8
  %i.hp = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.hq = mul i32 %i.hp, %i.gx
  %i.hr = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.hs = udiv i32 %i.hq, %i.hr                   ; 2 uses
  %i.ht = load ptr, ptr %3, align 8, !tbaa !601
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !698
end_hunk_13
begin_hunk_14_@_ZL28PerformVECTOR_SHUFFLECombinePN4llvm6SDNodeERNS_12SelectionDAGE:bb.a

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.aw = or disjoint i32 %.026.i.i, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !303 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = add nuw i32 %i.av, %i.aq
  %.not20.i.i = icmp eq i32 %i.az, %i.bb
  %or.cond134.i = select i1 %i.ba, i1 true, i1 %.not20.i.i
  br i1 %or.cond134.i, label %bb.j, label %.loopexit127.i

bb.j:                                             ; preds = %bb.i
  %i.bc = add i32 %.026.i.i, 2                    ; 2 uses
  %.not21.not.i.i = icmp ult i32 %i.bc, %i.af
  br i1 %.not21.not.i.i, label %.lr.ph.i.i, label %.loopexit128.i, !llvm.loop !2563

.loopexit128.i:                                   ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.copyload.i, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !698
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.be) #38 ; 2 uses
  %.fca.0.extract42.i = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract43.i = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %.fca.0.extract42.i, ptr %8, align 8
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract43.i, ptr %.sroa.245.0..sroa_idx.i, align 8
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !698
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.bh) #38 ; 2 uses
  %.fca.0.extract35.i = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract36.i = extractvalue { ptr, i32 } %i.bi, 1
  store ptr %.fca.0.extract35.i, ptr %9, align 8
  %.sroa.238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract36.i, ptr %.sroa.238.0..sroa_idx.i, align 8
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract31.i = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract32.i = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract31.i, ptr %10, align 8
  %.sroa.234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract32.i, ptr %.sroa.234.0..sroa_idx.i, align 8
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 657, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38
  br label %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit

.loopexit127.i:                                   ; preds = %bb.i, %.lr.ph.i.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %.sroa.0.0.copyload.i.i86.i = load i16, ptr %i.t, align 8, !tbaa !25 ; 4 uses
  %.sroa.21.0.copyload.i.i88.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i79.i, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i.i86.i, ptr %4, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i88.i, ptr %i.bl, align 8
  %.not.i.i.i89.i = icmp eq i16 %.sroa.0.0.copyload.i.i86.i, 0
  br i1 %.not.i.i.i89.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i96.i, label %.split.i.i90.i

.split.i.i90.i:                                   ; preds = %.loopexit127.i
  %i.bm = add i16 %.sroa.0.0.copyload.i.i86.i, -163
  %spec.select.i.i.i.i91.i = icmp ult i16 %i.bm, 53
  br i1 %spec.select.i.i.i.i91.i, label %bb.k, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i92.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i96.i:   ; preds = %.loopexit127.i
  %i.bn = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i96.i, %.split.i.i90.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i92.i: ; preds = %.split.i.i90.i
  %i.bo = zext i16 %.sroa.0.0.copyload.i.i86.i to i64
  %i.bp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !29
  %i.bs = zext i16 %i.br to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit97.i

bb.l:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i96.i
  %i.bt = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit97.i

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit97.i: ; preds = %bb.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i92.i
  %i.bu = phi i32 [ %i.bs, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i92.i ], [ %i.bt, %bb.l ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %3, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.bv, align 8
  br i1 %.not.i.i.i81.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i111.i, label %.split.i.i99.i

.split.i.i99.i:                                   ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit97.i
  %i.bw = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i.i100.i = icmp ult i16 %i.bw, 53
  br i1 %spec.select.i.i.i.i100.i, label %bb.m, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i101.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i111.i:  ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit97.i
  %i.bx = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i111.i, %.split.i.i99.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i101.i: ; preds = %.split.i.i99.i
  %i.by = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.bz = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !29
  %i.cc = zext i16 %i.cb to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i102.i

bb.n:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i111.i
  %i.cd = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i102.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i102.i: ; preds = %bb.n, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i101.i
  %i.ce = phi i32 [ %i.cc, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i101.i ], [ %i.cd, %bb.n ]
  %.not.i103.i = icmp eq i32 %i.bu, %i.ce
  br i1 %.not.i103.i, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i102.i
  %i.cf = lshr i32 %i.bu, 1
  %.not21.not25.not.i105.i = icmp eq i32 %i.bu, 0
  br i1 %.not21.not25.not.i105.i, label %.loopexit126.i, label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %bb.o, %bb.p
  %.026.i107.i = phi i32 [ %i.cr, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %i.cg = zext i32 %.026.i107.i to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !303 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  %i.ck = lshr exact i32 %.026.i107.i, 1          ; 2 uses
  %i.cl = add nuw i32 %i.ck, %i.cf
  %.not19.i110.i = icmp eq i32 %i.ci, %i.cl
  %or.cond135.i = select i1 %i.cj, i1 true, i1 %.not19.i110.i
  br i1 %or.cond135.i, label %.lr.ph.i106._crit_edge.i, label %.thread

.lr.ph.i106._crit_edge.i:                         ; preds = %.lr.ph.i106.i
  %i.cm = or disjoint i32 %.026.i107.i, 1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !303 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  %.not20.i109.i = icmp eq i32 %i.cp, %i.ck
  %or.cond125.i = select i1 %i.cq, i1 true, i1 %.not20.i109.i
  br i1 %or.cond125.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %.lr.ph.i106._crit_edge.i
  %i.cr = add i32 %.026.i107.i, 2                 ; 2 uses
  %.not21.not.i108.i = icmp ult i32 %i.cr, %i.bu
  br i1 %.not21.not.i108.i, label %.lr.ph.i106.i, label %.loopexit126.i, !llvm.loop !2563

.loopexit126.i:                                   ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.copyload.i, i64 40 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !698
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cu) #38 ; 2 uses
  %.fca.0.extract12.i = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract13.i = extractvalue { ptr, i32 } %i.cv, 1
  store ptr %.fca.0.extract12.i, ptr %11, align 8
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract13.i, ptr %.sroa.215.0..sroa_idx.i, align 8
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !698
  %i.cx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cw) #38 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.cx, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.cx, 1
  store ptr %.fca.0.extract5.i, ptr %12, align 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.28.0..sroa_idx.i, align 8
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.cy, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.cy, 1
  store ptr %.fca.0.extract1.i, ptr %13, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 657, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #38
  br label %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit

.thread:                                          ; preds = %.lr.ph.i106._crit_edge.i, %.lr.ph.i106.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ag

_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.q

_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit: ; preds = %.loopexit128.i, %.loopexit126.i
  %.pn = phi { ptr, i32 } [ %i.bk, %.loopexit128.i ], [ %i.cz, %.loopexit126.i ] ; 2 uses
  %.sroa.0121.0.i = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %.sroa.7.0.i = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %.not111 = icmp eq ptr %.sroa.0121.0.i, null
  br i1 %.not111, label %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit._crit_edge, label %bb.ag

_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit._crit_edge: ; preds = %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !698 ; 2 uses
  %.sroa.095.0.copyload.pre = load ptr, ptr %.pre, align 8, !tbaa !370 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.095.0.copyload.pre, i64 24
  %.pre119 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !344
  br label %bb.q

bb.q:                                             ; preds = %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit._crit_edge, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit.thread
  %i.da = phi i32 [ %.pre119, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit._crit_edge ], [ %i.h, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit.thread ]
  %.sroa.095.0.copyload = phi ptr [ %.sroa.095.0.copyload.pre, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit._crit_edge ], [ %.sroa.0115.0.copyload.i, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit.thread ] ; 2 uses
  %i.db = phi ptr [ %.pre, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit._crit_edge ], [ %i.b, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit.thread ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %.sroa.091.0.copyload = load ptr, ptr %i.dc, align 8, !tbaa !370 ; 3 uses
  %.not = icmp eq i32 %i.da, 165
  br i1 %.not, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.091.0.copyload, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !344
  %.not67 = icmp eq i32 %i.de, 165
  br i1 %.not67, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.095.0.copyload, i64 64
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !826
  %.not68 = icmp eq i16 %i.dg, 2
  br i1 %.not68, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.091.0.copyload, i64 64
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !826
  %.not69 = icmp eq i16 %i.di, 2
  br i1 %.not69, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.095.0.copyload, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !698 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %.sroa.087.0.copyload = load ptr, ptr %i.dl, align 8, !tbaa !370 ; 2 uses
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %.sroa.589.0.copyload = load i32, ptr %.sroa.589.0..sroa_idx, align 8, !tbaa !303
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.091.0.copyload, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !698 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.do, align 8, !tbaa !370 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !303
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 24
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !344
  %i.dr = add i32 %i.dq, -53
  %spec.select.i.i = icmp ult i32 %i.dr, 2
  br i1 %spec.select.i.i, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !344
  %i.du = add i32 %i.dt, -53
  %spec.select.i.i72 = icmp ult i32 %i.du, 2
  br i1 %spec.select.i.i72, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !885
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.dy, align 8, !tbaa !25 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %14, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.dz, align 8
  %.not.i75 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i75, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 112 ; 3 uses
  %i.eb = zext i16 %.sroa.0.0.copyload.i to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !27
  %.not112 = icmp eq ptr %i.ed, null
  br i1 %.not112, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !340
  %i.eg = zext i32 %.sroa.589.0.copyload to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eg
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.eh, align 8, !tbaa !25 ; 2 uses
  %.not.i76 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i76, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit77

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit77: ; preds = %bb.x
  %i.ei = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !27
  %.not113 = icmp eq ptr %i.ek, null
  br i1 %.not113, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit77
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !340
  %i.en = zext i32 %.sroa.5.0.copyload to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.en
  %.sroa.0.0.copyload.i.i78 = load i16, ptr %i.eo, align 8, !tbaa !25 ; 2 uses
  %.not.i83 = icmp eq i16 %.sroa.0.0.copyload.i.i78, 0
  br i1 %.not.i83, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit84

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit84: ; preds = %bb.y
  %i.ep = zext i16 %.sroa.0.0.copyload.i.i78 to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !27
  %.not114 = icmp eq ptr %i.er, null
  br i1 %.not114, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !835
  store i64 %i.et, ptr %15, align 8, !tbaa !835
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !836
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !837
  %i.ex = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dk, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dn) #38 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.ex, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.ex, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  %i.ey = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ey, ptr %16, align 8, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store i32 0, ptr %i.ez, align 8, !tbaa !372
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 16, ptr %i.fa, align 4, !tbaa !373
  %i.fb = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %14) ; 6 uses
  %i.fc = lshr i32 %i.fb, 1                       ; 3 uses
  %.not116 = icmp eq i32 %i.fb, 0
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fe = add i32 %i.fc, %i.fb
  %i.ff = sub i32 %i.fc, %i.fb
  %wide.trip.count = zext i32 %i.fb to i64
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.z
  %.sroa.010.0.copyload = load i16, ptr %14, align 8, !tbaa !25 ; 2 uses
  %.sroa.212.0.copyload = load ptr, ptr %i.dz, align 8, !tbaa !341 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  %i.fg = load i64, ptr %i.es, align 8, !tbaa !835
  store i64 %i.fg, ptr %17, align 8, !tbaa !835
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fi = load i32, ptr %i.ev, align 4, !tbaa !836
  store i32 %i.fi, ptr %i.fh, align 8, !tbaa !837
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.fj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.010.0.copyload, ptr %.sroa.212.0.copyload) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.fj, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.fj, 1
  store ptr %.fca.0.extract1, ptr %18, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.fk = load ptr, ptr %16, align 8, !tbaa !21
  store ptr %i.fk, ptr %19, align 8, !tbaa !1074
  %i.fl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fm = load i32, ptr %i.ez, align 8, !tbaa !372
  %i.fn = zext i32 %i.fm to i64
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !1076
  %i.fo = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.010.0.copyload, ptr %.sroa.212.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %17, ptr %.fca.0.extract29, i32 %.fca.1.extract30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::ArrayRef.721") align 8 %19) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.fo, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.fo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %i.fp = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.ey
  br i1 %i.fq, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.fp) #38
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %._crit_edge, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.ab:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.fr = load ptr, ptr %i.fd, align 8, !tbaa !1134
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !303 ; 5 uses
  %i.fu = icmp slt i32 %i.ft, %i.fc
  br i1 %i.fu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not70 = icmp sge i32 %i.ft, %i.fb
  %i.fv = icmp slt i32 %i.ft, %i.fe
  %or.cond = and i1 %.not70, %i.fv
  %i.fw = add i32 %i.ff, %i.ft
  %spec.select = select i1 %or.cond, i32 %i.fw, i32 -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.063 = phi i32 [ %spec.select, %bb.ac ], [ %i.ft, %bb.ab ] ; 2 uses
  %i.fx = load i32, ptr %i.ez, align 8, !tbaa !372 ; 2 uses
  %i.fy = load i32, ptr %i.fa, align 4, !tbaa !373
  %.not.i85 = icmp ult i32 %i.fx, %i.fy
  br i1 %.not.i85, label %bb.af, label %bb.ae, !prof !452

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %.063)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.fz = zext i32 %i.fx to i64
  %i.ga = load ptr, ptr %16, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fz
  store i32 %.063, ptr %i.gb, align 1
  %i.gc = load i32, ptr %i.ez, align 8, !tbaa !372
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.ez, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.ae, %bb.af
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !2663

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.y, %bb.x, %bb.w, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit77, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit84, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit
  %.sroa.0100.0 = phi ptr [ %.fca.0.extract, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ null, %bb.x ], [ null, %bb.w ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit84 ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit77 ], [ null, %bb.y ]
  %.sroa.10.0 = phi i32 [ %.fca.1.extract, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit84 ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit77 ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %bb.t, %bb.s, %bb.r, %bb.q, %bb.u, %bb.v, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit
  %.sroa.0100.3 = phi ptr [ %.sroa.0121.0.i, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit ], [ null, %bb.q ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.r ], [ %.sroa.0100.0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ], [ null, %bb.v ], [ null, %bb.u ], [ null, %.thread ]
  %.sroa.10.3 = phi i32 [ %.sroa.7.0.i, %_ZL26PerformShuffleVMOVNCombinePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE.exit ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ %.sroa.10.0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %.thread ]
  %i.ge = insertvalue { ptr, i32 } poison, ptr %.sroa.0100.3, 0
  %i.gf = insertvalue { ptr, i32 } %i.ge, i32 %.sroa.10.3, 1
  ret { ptr, i32 } %i.gf
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL22PerformVDUPLANECombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 %.395.val) unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 10 uses
  %6 = alloca [5 x %"struct.llvm::EVT"], align 16 ; 18 uses
  %7 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.429", align 8 ; 6 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 3 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !370 ; 10 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !303
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !25 ; 7 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %11, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.e, align 8
  %i.f = trunc nuw i8 %.395.val to i1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i16 %.sroa.0.0.copyload.i to i64
  %i.h = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !25
  %i.k = insertvalue { i16, ptr } poison, i16 %i.j, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #38
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.d
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 2 uses
  %.not.i39 = icmp eq i16 %i.n, 0
  br i1 %.not.i39, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !885
  %i.s = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.u = zext i16 %i.n to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.e

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %.sroa.023.0 = phi i16 [ %i.n, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 7, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ]
  %.sroa.8.0 = phi ptr [ %i.s, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !835
  store i64 %i.y, ptr %12, align 8, !tbaa !835
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !836
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !837
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !698 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.p, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.023.0, ptr %.sroa.8.0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ac, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ad) #38 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.ae, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !2539, !nonnull !19, !align !60
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.ag = load i64, ptr %i.x, align 8, !tbaa !835
  store i64 %i.ag, ptr %13, align 8, !tbaa !835
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ai = load i32, ptr %i.aa, align 4, !tbaa !836
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !837
  %.sroa.09.0.copyload = load i16, ptr %11, align 8, !tbaa !25
  %.sroa.211.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !341
  store ptr %.fca.0.extract12, ptr %14, align 8, !tbaa !370
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract13, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !303
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.af, i32 noundef 631, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.09.0.copyload, ptr %.sroa.211.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #38 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.aj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.am, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i, label %.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.an, 144
  br i1 %spec.select.i.i.i.i, label %_ZNK4llvm3EVT13is64BitVectorEv.exit.i, label %_ZL13CombineVLDDUPPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.exit

.split.i:                                         ; preds = %bb.f
  %i.ao = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #39
  br i1 %i.ao, label %bb.h, label %_ZL13CombineVLDDUPPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.exit

_ZNK4llvm3EVT13is64BitVectorEv.exit.i:            ; preds = %bb.g
  %i.ap = zext nneg i16 %.sroa.0.0.copyload.i to i64
  %i.aq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ar, align 16
  %i.as = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 64
  br i1 %i.as, label %bb.h, label %_ZL13CombineVLDDUPPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.exit

bb.h:                                             ; preds = %_ZNK4llvm3EVT13is64BitVectorEv.exit.i, %.split.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !344
  %.not.i40 = icmp eq i32 %i.au, 49
  br i1 %.not.i40, label %bb.i, label %_ZL13CombineVLDDUPPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.exit

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !698 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !601
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !896 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !700
  %i.be = icmp ult i32 %i.bd, 65
  %i.bf = load ptr, ptr %i.bb, align 8
  %spec.select.i.i.i.i.i = select i1 %i.be, ptr %i.bb, ptr %i.bf
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !176
  %i.bg = trunc i64 %.0.i.i.i.i.i to i32
  switch i32 %i.bg, label %_ZL13CombineVLDDUPPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE.exit [
    i32 4070, label %bb.l
    i32 4073, label %bb.j
    i32 4076, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.069.i = phi i32 [ 717, %bb.k ], [ 716, %bb.j ], [ 715, %bb.i ]
  %exitcond.not.i.1 = phi i1 [ false, %bb.k ], [ false, %bb.j ], [ true, %bb.i ]
  %exitcond.not.i.2 = phi i1 [ false, %bb.k ], [ true, %bb.j ], [ false, %bb.i ]
  %.068.i = phi i32 [ 4, %bb.k ], [ 3, %bb.j ], [ 2, %bb.i ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 56 ; 2 uses
  %.sroa.0148.0161.i = load ptr, ptr %i.bh, align 8, !tbaa !822 ; 2 uses
  %.not154162.i = icmp eq ptr %.sroa.0148.0161.i, null
  %.pre.i = zext nneg i32 %.068.i to i64          ; 2 uses
  br i1 %.not154162.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %.pre.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !601
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !896 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !700
  %i.bp = icmp ult i32 %i.bo, 65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %spec.select.i.i.i.i76.i = select i1 %i.bp, ptr %i.bq, ptr %i.br
  %.0.i.i.i.i77.i = load i64, ptr %spec.select.i.i.i.i76.i, align 8, !tbaa !176
  %i.bs = and i64 %.0.i.i.i.i77.i, 4294967295
end_hunk_14
begin_hunk_15_@_ZL18PerformVDUPCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE:bb.a
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0136.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.9137.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL18PerformVCVTCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i8 %.398.val) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::BitVector", align 8   ; 9 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 2 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = trunc nuw i8 %.398.val to i1
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !698  ; 2 uses
  %.sroa.018.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !370 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !303
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.f = zext i32 %.sroa.10.0.copyload to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !25 ; 3 uses
  %i.h = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.h, 197
  br i1 %spec.select.i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !344
  %.not = icmp eq i32 %i.j, 101
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !698
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.013.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !370 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !344
  %i.p = icmp eq i32 %i.o, 162
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = zext nneg i16 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.r = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !25
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.v, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.x = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.x, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !340
  %.sroa.0.0.copyload.i.i60 = load i16, ptr %i.z, align 8, !tbaa !25
  %i.aa = zext i16 %.sroa.0.0.copyload.i.i60 to i64
  %i.ab = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !25
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ae ; 2 uses
  %.sroa.2.0..sroa_idx.i62 = getelementptr i8, ptr %i.af, i64 -8
  %.sroa.2.0.copyload.i63 = load i8, ptr %.sroa.2.0..sroa_idx.i62, align 8
  %i.ag = trunc nuw i8 %.sroa.2.0.copyload.i63 to i1
  br i1 %i.ag, label %bb.g, label %.split.i

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

.split.i:                                         ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ah = getelementptr i8, ptr %i.af, i64 -16
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.ah, align 16
  %i.ai = trunc i64 %.sroa.0.0.copyload.i61 to i32 ; 2 uses
  %i.aj = add nsw i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.aj, 53
  br i1 %spec.select.i.i.i, label %bb.h, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.h:                                             ; preds = %.split.i
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %.split.i
  %i.ak = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.q
  %i.al = getelementptr i8, ptr %i.ak, i64 -2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !29 ; 2 uses
  %i.an = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ao = icmp ne i64 %i.an, 32
  %i.ap = icmp ugt i32 %i.ai, 32
  %or.cond = or i1 %i.ao, %i.ap
  br i1 %or.cond, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  switch i16 %i.am, label %.critedge [
    i16 4, label %bb.j
    i16 2, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.aq, ptr %2, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !372
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.as, align 4, !tbaa !373
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.at, align 8, !tbaa !2675
  %i.au = call noundef i32 @_ZNK4llvm17BuildVectorSDNode31getConstantFPSplatPow2ToLog2IntEPNS_9BitVectorEj(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.013.0.copyload, ptr noundef nonnull %2, i32 noundef 33) #38 ; 3 uses
  %i.av = add i32 %i.au, 1
  %or.cond5 = icmp ult i32 %i.av, 2
  %i.aw = icmp sgt i32 %i.au, 32
  %or.cond7 = or i1 %i.aw, %or.cond5
  br i1 %or.cond7, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !835
  store i64 %i.ay, ptr %3, align 8, !tbaa !835
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !836
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !837
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !344
  %i.be = icmp eq i32 %i.bd, 240
  %i.bf = select i1 %i.be, i64 4048, i64 4049
  %i.bg = icmp eq i16 %i.am, 2
  %i.bh = select i1 %i.bg, i16 71, i16 73
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.bi, 1
  store ptr %.fca.0.extract19, ptr %4, align 8
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract20, ptr %.sroa.222.0..sroa_idx, align 8
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !764
  %i.bk = sext i32 %i.au to i64
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract15, ptr %6, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.218.0..sroa_idx, align 8
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.bh, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.bm, 0 ; 2 uses
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.bm, 1 ; 2 uses
  %i.bn = icmp samesign ult i32 %i.ai, 32
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i72 = load i16, ptr %i.bo, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341
  store ptr %.fca.0.extract11, ptr %7, align 8, !tbaa !370
  %.sroa.1429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.1429.0..sroa_idx, align 8, !tbaa !303
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i72, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bp, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.1429.0 = phi i32 [ %.fca.1.extract, %bb.l ], [ %.fca.1.extract12, %bb.k ]
  %.sroa.028.0 = phi ptr [ %.fca.0.extract, %bb.l ], [ %.fca.0.extract11, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.sroa.1429.1 = phi i32 [ %.sroa.1429.0, %bb.m ], [ 0, %bb.j ]
  %.sroa.028.1 = phi ptr [ %.sroa.028.0, %bb.m ], [ null, %bb.j ]
  %i.bq = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.aq
  br i1 %i.br, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.bq) #38
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %_ZN4llvm9BitVectorD2Ev.exit, %bb.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit, %bb.d, %bb.a
  %.sroa.1429.5 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ 0, %bb.d ], [ %.sroa.1429.1, %_ZN4llvm9BitVectorD2Ev.exit ], [ 0, %bb.i ], [ 0, %bb.b ]
  %.sroa.028.5 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ null, %bb.d ], [ %.sroa.028.1, %_ZN4llvm9BitVectorD2Ev.exit ], [ null, %bb.i ], [ null, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.028.5, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.1429.5, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL18PerformFADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i8 %.394.val) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.a = trunc nuw i8 %.394.val to i1
  br i1 %i.a, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !698  ; 5 uses
  %.sroa.013.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !370 ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !303 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.04.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !370 ; 4 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !340  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.f, align 8, !tbaa !25 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !835
  store i64 %i.h, ptr %11, align 8, !tbaa !835
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !836
  store i32 %i.k, ptr %i.i, align 8, !tbaa !837
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !344
  %i.n = icmp eq i32 %i.m, 220
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !344
  %.not.i = icmp eq i32 %i.p, 220
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.10.0.extract.trunc.i = trunc i64 %.sroa.10.0.copyload.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.c ], [ %.sroa.10.0.extract.trunc.i, %bb.d ], [ %.sroa.8.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.013.0.i = phi ptr [ %.sroa.013.0.copyload.i, %bb.c ], [ %.sroa.04.0.copyload.i, %bb.d ], [ %.sroa.013.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.04.0.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.c ], [ %.sroa.013.0.copyload.i, %bb.d ], [ %.sroa.04.0.copyload.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !344
  %.not23.i = icmp eq i32 %i.r, 220
  br i1 %.not23.i, label %bb.f, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.0.0.copyload.i24.i = load i32, ptr %i.s, align 4, !tbaa !303 ; 3 uses
  %i.t = and i32 %.sroa.0.0.copyload.i24.i, 128
  %i.u = icmp ne i32 %i.t, 0                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !698  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %.sroa.014.0.copyload.i = load ptr, ptr %i.x, align 8, !tbaa !370 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload.i, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !344
  %.not.i.i = icmp eq i32 %i.z, 248
  br i1 %.not.i.i, label %bb.g, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !698
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !601 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !344
  %.not12.i.i = icmp eq i32 %i.ae, 656
  br i1 %.not12.i.i, label %bb.h, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !698
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !601
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !896 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !700
  %i.an = icmp ult i32 %i.am, 65
  %i.ao = load ptr, ptr %i.ak, align 8
  %spec.select.i.i.i.i.i.i.i = select i1 %i.an, ptr %i.ak, ptr %i.ao
  %.0.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i.i, align 8, !tbaa !176 ; 4 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 136
  %i.ap = icmp eq ptr %.sroa.21.0.copyload.i.i, null ; 2 uses
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ap, i1 false
  br i1 %.not4.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %.0.i.i.i.i.i.i.i, 1664
  %i.ar = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  %or.cond.i.i = and i1 %i.u, %i.ar
  %or.cond13.i.i = or i1 %i.aq, %or.cond.i.i
  br i1 %or.cond13.i.i, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6

bb.j:                                             ; preds = %bb.h
  %.not.i.i15.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 112
  %.not4.i16.i.i = select i1 %.not.i.i15.i.i, i1 %i.ap, i1 false
  br i1 %.not4.i16.i.i, label %bb.k, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6

bb.k:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %.0.i.i.i.i.i.i.i, 2688
  %i.at = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  %or.cond3.i.i = and i1 %i.u, %i.at
  %or.cond14.i.i = or i1 %i.as, %or.cond3.i.i
  br i1 %or.cond14.i.i, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit, label %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6

_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6: ; preds = %bb.e, %bb.f, %bb.g, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %.sink.split

_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit: ; preds = %bb.i, %bb.k
  store ptr %.sroa.013.0.i, ptr %12, align 8, !tbaa !370
  %.sroa.8.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx17.i, align 8, !tbaa !303
  %.sroa.9.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx23.i, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 99, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.au, i32 %.sroa.0.0.copyload.i24.i) #38 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.av, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.av, 1
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !698
  store ptr %.fca.0.extract5.i, ptr %13, align 8, !tbaa !370
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !303
  store ptr %.sroa.013.0.i, ptr %14, align 8, !tbaa !370
  %.sroa.8.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx19.i, align 8, !tbaa !303
  %.sroa.9.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx25.i, align 4
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 220, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aw, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, i32 %.sroa.0.0.copyload.i24.i) #38 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %bb.l, label %bb.r

.sink.split:                                      ; preds = %bb.a, %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit.thread6
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZL25PerformFAddVSelectCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !698 ; 4 uses
  %.sroa.018.0.copyload.i = load ptr, ptr %i.az, align 8, !tbaa !370 ; 4 uses
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.519.0.copyload.i = load i32, ptr %.sroa.519.0..sroa_idx.i, align 8, !tbaa !303
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.016.0.copyload.i = load ptr, ptr %i.ba, align 8, !tbaa !370 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !303
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i.i9 = load i16, ptr %i.bc, align 8, !tbaa !25 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.21.0.copyload.i.i11 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i10, align 8, !tbaa !341 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !835
  store i64 %i.be, ptr %10, align 8, !tbaa !835
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !836
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !837
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.0.0.copyload.i22.i = load i32, ptr %i.bi, align 4, !tbaa !303 ; 3 uses
  %i.bj = and i32 %.sroa.0.0.copyload.i22.i, 2048
  %.not.i12 = icmp eq i32 %i.bj, 0
  br i1 %.not.i12, label %.sink.split15, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !344
  %.not.i.i13 = icmp eq i32 %i.bl, 48
  br i1 %.not.i.i13, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !698 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !601
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !896 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !700
  %i.bu = icmp ult i32 %i.bt, 65
  %i.bv = load ptr, ptr %i.br, align 8
  %spec.select.i.i.i.i.i.i.i16 = select i1 %i.bu, ptr %i.br, ptr %i.bv
  %.0.i.i.i.i.i.i.i17 = load i64, ptr %spec.select.i.i.i.i.i.i.i16, align 8, !tbaa !176
  %i.bw = and i64 %.0.i.i.i.i.i.i.i17, 4294967295
  %.not15.i.i = icmp eq i64 %i.bw, 3885
  br i1 %.not15.i.i, label %"_ZZL23PerformFADDVCMLACombinePN4llvm6SDNodeERNS_12SelectionDAGEENK3$_0clENS_7SDValueES5_.exit.i", label %bb.o

"_ZZL23PerformFADDVCMLACombinePN4llvm6SDNodeERNS_12SelectionDAGEENK3$_0clENS_7SDValueES5_.exit.i": ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !764
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !764
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store ptr %.sroa.016.0.copyload.i, ptr %9, align 8, !tbaa !370
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.214.0..sroa_idx.i.i, align 8, !tbaa !303
  %i.bz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 99, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.copyload.i.i9, ptr %.sroa.21.0.copyload.i.i11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.by, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, i32 %.sroa.0.0.copyload.i22.i) #38 ; 2 uses
  %.fca.0.extract2.i.i = extractvalue { ptr, i32 } %i.bz, 0
  %.fca.1.extract3.i.i = extractvalue { ptr, i32 } %i.bz, 1
  store ptr %.fca.0.extract2.i.i, ptr %8, align 8
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract3.i.i, ptr %.sroa.25.0..sroa_idx.i.i, align 8
  %i.ca = load ptr, ptr %i.bm, align 8, !tbaa !698 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 160
  %i.cd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.copyload.i.i9, ptr %.sroa.21.0.copyload.i.i11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cb, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cc) #38 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i32 } %i.cd, 0 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i, i64 28
  %.sroa.0.0.copyload.i16.i.i = load i32, ptr %i.ce, align 4, !tbaa !303
  %i.cf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 28
  store i32 %.sroa.0.0.copyload.i16.i.i, ptr %i.cf, align 4, !tbaa !303
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZL23PerformFADDVCMLACombinePN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i, i64 24
end_hunk_15
begin_hunk_16_@_ZL27PerformVECREDUCE_ADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetE:bb.a

bb.ak:                                            ; preds = %.critedge414
  %.fca.1.extract90 = extractvalue { ptr, i32 } %i.dm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #38
  store ptr %.fca.0.extract89, ptr %55, align 8, !tbaa !370
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 %.fca.1.extract90, ptr %.sroa.642.0..sroa_idx, align 8, !tbaa !303
  %i.dn = getelementptr inbounds nuw i8, ptr %55, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dn, ptr noundef nonnull align 8 dereferenceable(12) %15, i64 12, i1 false)
  %i.do = call fastcc { ptr, i32 } @"_ZZL27PerformVECREDUCE_ADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_6clEjNS_8ArrayRefINS_7SDValueEEE"(ptr nonnull %1, ptr nonnull %4, i32 noundef 617, ptr nonnull %55, i64 2) ; 2 uses
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.do, 0
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.do, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #38
  br label %bb.av

.critedge416:                                     ; preds = %.critedge414
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #38
  store i16 73, ptr %56, align 2, !tbaa !453
  %i.dp = call fastcc { ptr, i32 } @"_ZZL27PerformVECREDUCE_ADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_3clENS_3MVTEjNS_8ArrayRefIS8_EERNS_7SDValueE"(ptr noundef nonnull align 8 dereferenceable(32) %10, i16 8, i32 noundef 228, ptr nonnull %56, i64 1, ptr noundef nonnull align 8 dereferenceable(12) %15) ; 2 uses
  %.fca.0.extract77 = extractvalue { ptr, i32 } %i.dp, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #38
  %.not180 = icmp eq ptr %.fca.0.extract77, null
  br i1 %.not180, label %.critedge418, label %bb.al

bb.al:                                            ; preds = %.critedge416
  %.fca.1.extract78 = extractvalue { ptr, i32 } %i.dp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #38
  store ptr %.fca.0.extract77, ptr %57, align 8, !tbaa !370
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i32 %.fca.1.extract78, ptr %.sroa.634.0..sroa_idx, align 8, !tbaa !303
  %i.dq = getelementptr inbounds nuw i8, ptr %57, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dq, ptr noundef nonnull align 8 dereferenceable(12) %15, i64 12, i1 false)
  %i.dr = call fastcc { ptr, i32 } @"_ZZL27PerformVECREDUCE_ADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_6clEjNS_8ArrayRefINS_7SDValueEEE"(ptr nonnull %1, ptr nonnull %4, i32 noundef 618, ptr nonnull %57, i64 2) ; 2 uses
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.dr, 0
  %.fca.1.extract72 = extractvalue { ptr, i32 } %i.dr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  br label %bb.av

.critedge418:                                     ; preds = %.critedge416
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #38
  store i16 48, ptr %58, align 2, !tbaa !453
  %i.ds = call fastcc { ptr, i32 } @"_ZZL27PerformVECREDUCE_ADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_3clENS_3MVTEjNS_8ArrayRefIS8_EERNS_7SDValueE"(ptr noundef nonnull align 8 dereferenceable(32) %10, i16 6, i32 noundef 227, ptr nonnull %58, i64 1, ptr noundef nonnull align 8 dereferenceable(12) %15) ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.ds, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #38
  %.not181 = icmp eq ptr %.fca.0.extract65, null
  br i1 %.not181, label %.critedge420, label %bb.am

bb.am:                                            ; preds = %.critedge418
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.ds, 1
  %.sroa.062.0.copyload = load i16, ptr %2, align 8, !tbaa !25
  %.sroa.264.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  store ptr %.fca.0.extract65, ptr %60, align 8, !tbaa !370
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 %.fca.1.extract66, ptr %.sroa.626.0..sroa_idx, align 8, !tbaa !303
  %i.dt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 621, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %60, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #38 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.dt, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.dt, 1
  store ptr %.fca.0.extract58, ptr %59, align 8
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i32 %.fca.1.extract59, ptr %.sroa.261.0..sroa_idx, align 8
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.062.0.copyload, ptr %.sroa.264.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %59) #38 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.du, 1
  br label %bb.av

.critedge420:                                     ; preds = %.critedge418
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #38
  store i16 48, ptr %61, align 2, !tbaa !453
  %i.dv = call fastcc { ptr, i32 } @"_ZZL27PerformVECREDUCE_ADDCombinePN4llvm6SDNodeERNS_12SelectionDAGEPKNS_12ARMSubtargetEENK3$_3clENS_3MVTEjNS_8ArrayRefIS8_EERNS_7SDValueE"(ptr noundef nonnull align 8 dereferenceable(32) %10, i16 6, i32 noundef 228, ptr nonnull %61, i64 1, ptr noundef nonnull align 8 dereferenceable(12) %15) ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.dv, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #38
  %.not182 = icmp eq ptr %.fca.0.extract48, null
  br i1 %.not182, label %.critedge422, label %bb.an

bb.an:                                            ; preds = %.critedge420
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.dv, 1
  %.sroa.045.0.copyload = load i16, ptr %2, align 8, !tbaa !25
  %.sroa.247.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  store ptr %.fca.0.extract48, ptr %63, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.6.0..sroa_idx19, align 8, !tbaa !303
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 622, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %63, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #38 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.dw, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.dw, 1
  store ptr %.fca.0.extract41, ptr %62, align 8
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i32 %.fca.1.extract42, ptr %.sroa.244.0..sroa_idx, align 8
  %i.dx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.045.0.copyload, ptr %.sroa.247.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %62) #38 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.dx, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.dx, 1
  br label %bb.av

.critedge422:                                     ; preds = %.critedge420
  %.sroa.05.0.copyload = load ptr, ptr %3, align 8, !tbaa !370 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !303
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !344 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 220
  br i1 %i.ea, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge422
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !698 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %.sroa.05.0.copyload11 = load ptr, ptr %i.ed, align 8, !tbaa !370 ; 2 uses
  %.sroa.10.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %.sroa.10.0.copyload13 = load i32, ptr %.sroa.10.0..sroa_idx12, align 8, !tbaa !303
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload11, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !344
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge422
  %i.ee = phi i32 [ %.pre, %bb.ao ], [ %i.dz, %.critedge422 ]
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload13, %bb.ao ], [ %.sroa.10.0.copyload, %.critedge422 ]
  %.sroa.05.0 = phi ptr [ %.sroa.05.0.copyload11, %bb.ao ], [ %.sroa.05.0.copyload, %.critedge422 ] ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 228
  br i1 %i.ef, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !698 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !601 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !344
  %i.el = icmp eq i32 %i.ek, 61
  br i1 %i.el, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !698 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !601 ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !601
  %i.es = icmp eq ptr %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = icmp eq i32 %i.eu, %i.ew
  %i.ey = select i1 %i.es, i1 %i.ex, i1 false
  br i1 %i.ey, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !344
  %i.fb = icmp eq i32 %i.fa, 227
  br i1 %i.fb, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i456 = load i16, ptr %i.fd, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i457 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.21.0.copyload.i458 = load ptr, ptr %.sroa.21.0..sroa_idx.i457, align 8, !tbaa !341
  store ptr %i.ei, ptr %64, align 8, !tbaa !370
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.em, ptr %.sroa.8.0..sroa_idx4, align 8
  %i.fe = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 227, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i456, ptr %.sroa.21.0.copyload.i458, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %64) #38 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.fe, 0 ; 2 uses
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.fe, 1 ; 2 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !601   ; 3 uses
  %i.fg = icmp ne ptr %.sroa.05.0, %i.ff
  %i.fh = load i32, ptr %.sroa.10.0..sroa_idx, align 8
  %i.fi = icmp ne i32 %.sroa.10.0, %i.fh
  %.not3.i = select i1 %i.fg, i1 true, i1 %i.fi
  br i1 %.not3.i, label %bb.au, label %.critedge424

bb.au:                                            ; preds = %bb.at
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i461 = load i16, ptr %i.fk, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i462 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.21.0.copyload.i463 = load ptr, ptr %.sroa.21.0..sroa_idx.i462, align 8, !tbaa !341
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !698 ; 2 uses
  store ptr %.fca.0.extract25, ptr %65, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i32 %.fca.1.extract26, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !303
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.fo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 220, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i461, ptr %.sroa.21.0.copyload.i463, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fm, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %65, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fn) #38 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.fo, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.fo, 1
  br label %.critedge424

.critedge424:                                     ; preds = %bb.au, %bb.at
  %.sroa.031.0 = phi ptr [ %.fca.0.extract18, %bb.au ], [ %.fca.0.extract25, %bb.at ]
  %.sroa.6.0 = phi i32 [ %.fca.1.extract19, %bb.au ], [ %.fca.1.extract26, %bb.at ]
  %.sroa.015.0.copyload = load i16, ptr %2, align 8, !tbaa !25
  %.sroa.217.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !341
  store ptr %.sroa.031.0, ptr %66, align 8, !tbaa !370
  %.sroa.6.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx33, align 8, !tbaa !303
  %i.fp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 405, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.015.0.copyload, ptr %.sroa.217.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %66) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.fp, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.fp, 1
  br label %bb.av

bb.av:                                            ; preds = %.critedge424, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.sroa.31.1 = phi i32 [ %.fca.1.extract317, %bb.e ], [ %.fca.1.extract308, %bb.g ], [ %.fca.1.extract300, %bb.i ], [ %.fca.1.extract292, %bb.k ], [ %.fca.1.extract279, %bb.m ], [ %.fca.1.extract266, %bb.o ], [ %.fca.1.extract257, %bb.q ], [ %.fca.1.extract248, %bb.s ], [ %.fca.1.extract240, %bb.u ], [ %.fca.1.extract232, %bb.w ], [ %.fca.1.extract219, %bb.y ], [ %.fca.1.extract206, %bb.aa ], [ %.fca.1.extract193, %bb.ac ], [ %.fca.1.extract180, %bb.ad ], [ %.fca.1.extract168, %bb.ae ], [ %.fca.1.extract156, %bb.af ], [ %.fca.1.extract139, %bb.ag ], [ %.fca.1.extract122, %bb.ah ], [ %.fca.1.extract109, %bb.ai ], [ %.fca.1.extract96, %bb.aj ], [ %.fca.1.extract84, %bb.ak ], [ %.fca.1.extract72, %bb.al ], [ %.fca.1.extract55, %bb.am ], [ %.fca.1.extract38, %bb.an ], [ %.fca.1.extract, %.critedge424 ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ap ]
  %.sroa.0170.1 = phi ptr [ %.fca.0.extract316, %bb.e ], [ %.fca.0.extract307, %bb.g ], [ %.fca.0.extract299, %bb.i ], [ %.fca.0.extract291, %bb.k ], [ %.fca.0.extract278, %bb.m ], [ %.fca.0.extract265, %bb.o ], [ %.fca.0.extract256, %bb.q ], [ %.fca.0.extract247, %bb.s ], [ %.fca.0.extract239, %bb.u ], [ %.fca.0.extract231, %bb.w ], [ %.fca.0.extract218, %bb.y ], [ %.fca.0.extract205, %bb.aa ], [ %.fca.0.extract192, %bb.ac ], [ %.fca.0.extract179, %bb.ad ], [ %.fca.0.extract167, %bb.ae ], [ %.fca.0.extract155, %bb.af ], [ %.fca.0.extract138, %bb.ag ], [ %.fca.0.extract121, %bb.ah ], [ %.fca.0.extract108, %bb.ai ], [ %.fca.0.extract95, %bb.aj ], [ %.fca.0.extract83, %bb.ak ], [ %.fca.0.extract71, %bb.al ], [ %.fca.0.extract54, %bb.am ], [ %.fca.0.extract37, %bb.an ], [ %.fca.0.extract, %.critedge424 ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.critedge14
  %.sroa.31.2 = phi i32 [ %.fca.1.extract338, %.critedge14 ], [ %.sroa.31.1, %bb.av ]
  %.sroa.0170.2 = phi ptr [ %.fca.0.extract337, %.critedge14 ], [ %.sroa.0170.1, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %bb.aw
  %.sroa.31.3 = phi i32 [ %.sroa.31.2, %bb.aw ], [ 0, %bb.a ]
  %.sroa.0170.3 = phi ptr [ %.sroa.0170.2, %bb.aw ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0170.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.31.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL19PerformVMOVNCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 5 uses
  %.sroa.054.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !370 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.c = load <2 x i32>, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !303 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0.0.copyload48 = load ptr, ptr %i.d, align 8, !tbaa !370 ; 6 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !303 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload48, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !344  ; 3 uses
  %i.h = add i32 %i.g, -53
  %spec.select.i = icmp ult i32 %i.h, 2
  br i1 %spec.select.i, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !601
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !896  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !700
  %i.n = icmp ult i32 %i.m, 65
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %spec.select.i.i.i.i = select i1 %i.n, ptr %i.o, ptr %i.p
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !344
  %i.s = add i32 %i.r, -53
  %spec.select.i32 = icmp ult i32 %i.s, 2
  %i.t = and i64 %.0.i.i.i.i, 4294967295
  %i.u = icmp eq i64 %i.t, 0                      ; 2 uses
  %or.cond.not = and i1 %i.u, %spec.select.i32
  br i1 %or.cond.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.off = add i32 %i.g, -667
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload48, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !698  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !601
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !896 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !700
  %i.ae = icmp ult i32 %i.ad, 65
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i.i.i.i33 = select i1 %i.ae, ptr %i.ab, ptr %i.af
  %.0.i.i.i.i34 = load i64, ptr %spec.select.i.i.i.i33, align 8, !tbaa !176
  %i.ag = icmp eq i64 %.0.i.i.i.i34, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2539, !nonnull !19, !align !60
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload48, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !835
  store i64 %i.ak, ptr %2, align 8, !tbaa !835
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload48, i64 68
  %i.an = load i32, ptr %i.am, align 4, !tbaa !836
  store i32 %i.an, ptr %i.al, align 8, !tbaa !837
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ap, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !341
  store ptr %.sroa.054.0.copyload, ptr %3, align 8, !tbaa !370
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x i32> %i.c, ptr %.sroa.7.0..sroa_idx59, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aq, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.e) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ar, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.w

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !340 ; 2 uses
  %.sroa.0.0.copyload.i35 = load i16, ptr %i.at, align 8, !tbaa !25 ; 4 uses
  %.sroa.21.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.21.0.copyload.i37 = load ptr, ptr %.sroa.21.0..sroa_idx.i36, align 8, !tbaa !341
  store i16 %.sroa.0.0.copyload.i35, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i37, ptr %i.au, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i35, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.f
  %i.av = add i16 %.sroa.0.0.copyload.i35, -163
  %spec.select.i.i.i = icmp ult i16 %i.av, 53
  br i1 %spec.select.i.i.i, label %bb.g, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.f
  %i.aw = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #40
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.ax = zext i16 %.sroa.0.0.copyload.i35 to i64
  %i.ay = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !29
  %i.bb = zext i16 %i.ba to i32
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit

bb.h:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.bc = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br label %_ZN4llvm5APInt13getLowBitsSetEjj.exit

_ZN4llvm5APInt13getLowBitsSetEjj.exit:            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.h
  %i.bd = phi i32 [ %i.bb, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.bc, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 2, ptr %i.be, align 8, !tbaa !700, !alias.scope !2689
  store i64 1, ptr %6, align 8, !tbaa !176, !alias.scope !2689
  call void @_ZN4llvm5APInt8getSplatEjRKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %6) #38
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !700
  %i.bg = icmp ugt i32 %i.bf, 64
  br i1 %i.bg, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit
  %i.bh = load ptr, ptr %6, align 8, !tbaa !176   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvm5APIntD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APInt13getLowBitsSetEjj.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  br i1 %i.u, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !700 ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !700
  %i.bm = icmp ult i32 %i.bl, 65
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %5, align 8, !tbaa !176
  store i64 %i.bn, ptr %7, align 8, !tbaa !176
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %5) #38
  br label %.critedge
end_hunk_16
begin_hunk_17_@_ZL21PerformVQDMULHCombinePN4llvm6SDNodeERNS_12SelectionDAGE:bb.a
  br i1 %i.ew, label %_ZN4llvm3MVT12getIntegerVTEj.exit, label %bb.ai

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ex = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ey = udiv i32 128, %i.ex                     ; 2 uses
  %i.ez = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ey)
  %i.fa = icmp eq i32 %i.ez, 1
  %i.fb = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ey, i1 true)
  %switch.idx.cast.i = trunc nuw nsw i32 %i.fb to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  %.sroa.0.0.i = select i1 %i.fa, i16 %switch.offset.i, i16 0
  %i.fc = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.fd = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %i.fc) ; 3 uses
  %i.fe = load ptr, ptr %i.cz, align 8, !tbaa !698
  %i.ff = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.fd, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fe) #38 ; 2 uses
  %.fca.0.extract132 = extractvalue { ptr, i32 } %i.ff, 0
  %.fca.1.extract133 = extractvalue { ptr, i32 } %i.ff, 1
  %i.fg = load ptr, ptr %i.dm, align 8, !tbaa !698
  %i.fh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.fd, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fg) #38 ; 2 uses
  %.fca.0.extract117 = extractvalue { ptr, i32 } %i.fh, 0
  %.fca.1.extract118 = extractvalue { ptr, i32 } %i.fh, 1
  store ptr %.fca.0.extract132, ptr %6, align 8, !tbaa !370
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract133, ptr %.sroa.6141.0..sroa_idx, align 8, !tbaa !303
  %i.fi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.ep, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38 ; 2 uses
  %.fca.0.extract107 = extractvalue { ptr, i32 } %i.fi, 0
  %.fca.1.extract108 = extractvalue { ptr, i32 } %i.fi, 1
  store ptr %.fca.0.extract117, ptr %7, align 8, !tbaa !370
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract118, ptr %.sroa.6126.0..sroa_idx, align 8, !tbaa !303
  %i.fj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.ep, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38 ; 2 uses
  %.fca.0.extract97 = extractvalue { ptr, i32 } %i.fj, 0
  %.fca.1.extract98 = extractvalue { ptr, i32 } %i.fj, 1
  store ptr %.fca.0.extract107, ptr %8, align 8, !tbaa !370
  %.sroa.6141.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract108, ptr %.sroa.6141.0..sroa_idx142, align 8, !tbaa !303
  store ptr %.fca.0.extract97, ptr %9, align 8, !tbaa !370
  %.sroa.6126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract98, ptr %.sroa.6126.0..sroa_idx127, align 8, !tbaa !303
  %i.fk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 666, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.ep, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #38 ; 2 uses
  %.fca.0.extract87 = extractvalue { ptr, i32 } %i.fk, 0
  %.fca.1.extract88 = extractvalue { ptr, i32 } %i.fk, 1
  store ptr %.fca.0.extract87, ptr %10, align 8, !tbaa !370
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract88, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !303
  %i.fl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 633, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.fd, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38 ; 2 uses
  %.fca.0.extract73 = extractvalue { ptr, i32 } %i.fl, 0
  %.fca.1.extract74 = extractvalue { ptr, i32 } %i.fl, 1
  %.sroa.067.0.copyload = load i16, ptr %4, align 8, !tbaa !25
  %.sroa.269.0.copyload = load ptr, ptr %i.di, align 8, !tbaa !341
  store ptr %.fca.0.extract73, ptr %11, align 8, !tbaa !370
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract74, ptr %.sroa.682.0..sroa_idx, align 8, !tbaa !303
  %i.fm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.067.0.copyload, ptr %.sroa.269.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #38 ; 2 uses
  %.fca.0.extract63 = extractvalue { ptr, i32 } %i.fm, 0
  %.fca.1.extract64 = extractvalue { ptr, i32 } %i.fm, 1
  %.sroa.060.0.copyload = load i16, ptr %3, align 8, !tbaa !25
  %.sroa.262.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !341
  store ptr %.fca.0.extract63, ptr %12, align 8, !tbaa !370
  %.sroa.682.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract64, ptr %.sroa.682.0..sroa_idx83, align 8, !tbaa !303
  %i.fn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 227, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.060.0.copyload, ptr %.sroa.262.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #38
  br label %bb.ao

bb.ai:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  br i1 %.not.i231, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fo = zext i16 %i.eq to i64
  %i.fp = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fo ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 -16
  %.sroa.0.0.copyload.i.i236 = load i64, ptr %i.fq, align 16
  %.sroa.2.0..sroa_idx.i.i237 = getelementptr i8, ptr %i.fp, i64 -8
  %.sroa.2.0.copyload.i.i238 = load i8, ptr %.sroa.2.0..sroa_idx.i.i237, align 8
  %.fca.0.insert.i.i239 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i236, 0
  %.fca.1.insert.i.i240 = insertvalue { i64, i8 } %.fca.0.insert.i.i239, i8 %.sroa.2.0.copyload.i.i238, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit242

bb.ak:                                            ; preds = %bb.ai
  %i.fr = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit242

_ZNK4llvm3EVT13getSizeInBitsEv.exit242:           ; preds = %bb.aj, %bb.ak
  %.pn.i241 = phi { i64, i8 } [ %.fca.1.insert.i.i240, %bb.aj ], [ %i.fr, %bb.ak ] ; 2 uses
  %.fca.1.extract52 = extractvalue { i64, i8 } %.pn.i241, 1
  %i.fs = trunc nuw i8 %.fca.1.extract52 to i1
  br i1 %i.fs, label %bb.al, label %_ZNK4llvm8TypeSizecvmEv.exit243

bb.al:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit242
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.69) #40
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit243:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit242
  %.fca.0.extract51 = extractvalue { i64, i8 } %.pn.i241, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ft, ptr %13, align 8, !tbaa !21
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.fu, align 8, !tbaa !372
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 3, ptr %i.fv, align 4, !tbaa !373
  %i.fw = and i64 %.fca.0.extract51, 549755813760
  %.not301 = icmp eq i64 %i.fw, 0
  br i1 %.not301, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit243
  %i.fx = lshr i64 %.fca.0.extract51, 7
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %wide.trip.count = and i64 %i.fx, 4294967295
  br label %bb.an

._crit_edge.loopexit:                             ; preds = %bb.an
  %.sroa.05.0.copyload.pre = load i16, ptr %4, align 8, !tbaa !25
  %.pre = load ptr, ptr %13, align 8, !tbaa !21
  %.pre304 = load i32, ptr %i.fu, align 8, !tbaa !372
  %i.fy = zext i32 %.pre304 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK4llvm8TypeSizecvmEv.exit243
  %i.fz = phi i64 [ %i.fy, %._crit_edge.loopexit ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit243 ]
  %i.ga = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ft, %_ZNK4llvm8TypeSizecvmEv.exit243 ]
  %.sroa.05.0.copyload = phi i16 [ %.sroa.05.0.copyload.pre, %._crit_edge.loopexit ], [ %i.eq, %_ZNK4llvm8TypeSizecvmEv.exit243 ]
  %.sroa.08.0.copyload = load i16, ptr %3, align 8, !tbaa !25
  %.sroa.210.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !341
  %.sroa.27.0.copyload = load ptr, ptr %i.di, align 8, !tbaa !341
  store ptr %i.ga, ptr %21, align 8, !tbaa !457
  %i.gb = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !460
  %i.gc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.05.0.copyload, ptr %.sroa.27.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %21) #38 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.gc, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.gc, 1
  store ptr %.fca.0.extract1, ptr %20, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.gd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 227, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.08.0.copyload, ptr %.sroa.210.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #38
  %i.ge = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ft
  br i1 %i.gf, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ge) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit: ; preds = %._crit_edge, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.an ] ; 2 uses
  %i.gg = load ptr, ptr %i.cz, align 8, !tbaa !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !764
  %i.gh = trunc nuw i64 %indvars.iv to i32
  %i.gi = mul i32 %i.gh, %.zext
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.gj, ptr noundef nonnull align 8 dereferenceable(12) %5, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract38 = extractvalue { ptr, i32 } %i.gk, 0
  %.fca.1.extract39 = extractvalue { ptr, i32 } %i.gk, 1
  store ptr %.fca.0.extract38, ptr %15, align 8
  store i32 %.fca.1.extract39, ptr %.sroa.241.0..sroa_idx, align 8
  %i.gl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.ep, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #38 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.gl, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.gl, 1
  %i.gm = load ptr, ptr %i.dm, align 8, !tbaa !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !764
  %i.gn = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.gj, ptr noundef nonnull align 8 dereferenceable(12) %5, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.gn, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.gn, 1
  store ptr %.fca.0.extract25, ptr %17, align 8
  store i32 %.fca.1.extract26, ptr %.sroa.228.0..sroa_idx, align 8
  %i.go = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.ep, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #38 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.go, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.go, 1
  store ptr %.fca.0.extract34, ptr %18, align 8, !tbaa !370
  store i32 %.fca.1.extract35, ptr %.sroa.446.0..sroa_idx, align 8, !tbaa !303
  store ptr %.fca.0.extract21, ptr %19, align 8, !tbaa !370
  store i32 %.fca.1.extract22, ptr %.sroa.433.0..sroa_idx, align 8, !tbaa !303
  %i.gp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 666, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %i.ep, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #38 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.gp, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.gp, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %.fca.0.extract13, i32 %.fca.1.extract14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.an, !llvm.loop !3063

bb.ao:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, %_ZN4llvm3MVT12getIntegerVTEj.exit
  %.pn = phi { ptr, i32 } [ %i.fn, %_ZN4llvm3MVT12getIntegerVTEj.exit ], [ %i.gd, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit ] ; 2 uses
  %.sroa.0297.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.25.0 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.ac, %bb.ad, %bb.aa, %bb.ab, %bb.ao
  %.sroa.25.1 = phi i32 [ %.sroa.25.0, %bb.ao ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ]
  %.sroa.0297.1 = phi ptr [ %.sroa.0297.0, %bb.ao ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread: ; preds = %bb.f, %bb.o, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.s, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit222, %bb.t, %.critedge, %bb.z, %bb.y, %bb.x, %bb.m, %bb.h, %bb.i, %bb.j, %bb.k, %_ZNK4llvm3EVT8isVectorEv.exit, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %.split
  %.sroa.25.5 = phi i32 [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ 0, %.split ], [ 0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.y ], [ 0, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit222 ], [ 0, %bb.x ], [ %.sroa.25.1, %.critedge ], [ 0, %bb.z ], [ 0, %bb.o ]
  %.sroa.0297.5 = phi ptr [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.m ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ null, %.split ], [ null, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.y ], [ null, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit222 ], [ null, %bb.x ], [ %.sroa.0297.1, %.critedge ], [ null, %bb.z ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0297.5, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.25.5, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef ptr @_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb(ptr, i32, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm3EVT16isPow2VectorTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !462    ; 3 uses
  %.not.i.i = icmp eq i16 %i.a, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !29
  %i.f = add i16 %i.a, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.f, 53
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %spec.select.i.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %i.e to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #39
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit:    ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.b ], [ %i.g, %bb.c ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.in.i.i to i32
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.sroa.0.0.extract.trunc.i)
  %.not = icmp samesign ult i32 %i.h, 2
  ret i1 %.not
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getSplatValueENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL21AddCombineTo64bitMLALPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %5 = alloca %"class.llvm::SmallVector.425", align 8 ; 14 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.429", align 8 ; 3 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.429", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !601  ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !344  ; 2 uses
  %i.g = icmp eq i32 %i.f, 538                    ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !344
  %.not = icmp eq i32 %i.i, 537
  br i1 %.not, label %.thread, label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.f, 603
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !344
  %.not133 = icmp eq i32 %i.l, 602
  br i1 %.not133, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !698  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !764
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !764
  %i.p = load ptr, ptr %3, align 8, !tbaa !601    ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !601    ; 3 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %.thread
  br i1 %i.g, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !344
  %i.u = and i32 %i.t, -2
  %switch = icmp eq i32 %i.u, 66
  br i1 %switch, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !344
  %i.x = and i32 %i.w, -2
  %switch210 = icmp eq i32 %i.x, 66
  br i1 %switch210, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.y, align 8
  %i.z = tail call fastcc { ptr, i32 } @_ZL24AddCombineTo64BitSMLAL16PN4llvm6SDNodeES1_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr %.val, ptr noundef %2) ; 2 uses
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.z, 1
  br label %bb.ab

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0205.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !370 ; 5 uses
  %.sroa.10207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10207.0.copyload = load i32, ptr %.sroa.10207.0..sroa_idx, align 8, !tbaa !303 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0196.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !370 ; 5 uses
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7198.0.copyload = load i32, ptr %.sroa.7198.0..sroa_idx, align 8, !tbaa !303 ; 4 uses
  %i.ab = icmp eq ptr %.sroa.0205.0.copyload, %.sroa.0196.0.copyload
  br i1 %i.ab, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0205.0.copyload, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !344
  %i.ae = and i32 %i.ad, -2
  %switch.i = icmp eq i32 %i.ae, 66               ; 2 uses
  %spec.select.i = select i1 %switch.i, i32 %.sroa.10207.0.copyload, i32 0 ; 2 uses
  %spec.select4.i = select i1 %switch.i, ptr %.sroa.0205.0.copyload, ptr null ; 2 uses
  %i.af = icmp eq ptr %spec.select4.i, null
  %i.ag = icmp eq i32 %spec.select.i, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false     ; 4 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0196.0.copyload, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !344
  %i.ak = and i32 %i.aj, -2
  %switch.i140 = icmp eq i32 %i.ak, 66            ; 2 uses
  %spec.select.i141 = select i1 %switch.i140, i32 %.sroa.7198.0.copyload, i32 0
  %spec.select4.i142 = select i1 %switch.i140, ptr %.sroa.0196.0.copyload, ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.0188.0 = phi ptr [ %spec.select4.i142, %bb.k ], [ %spec.select4.i, %bb.j ] ; 6 uses
  %.sroa.11.0 = phi i32 [ %spec.select.i141, %bb.k ], [ %spec.select.i, %bb.j ]
  %i.al = icmp eq ptr %.sroa.0188.0, null
  %i.am = icmp eq i32 %.sroa.11.0, 0
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0188.0, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !344
  %i.aq = icmp eq i32 %i.ap, 66                   ; 2 uses
  %i.ar = select i1 %i.aq, i32 587, i32 607
  %i.as = icmp ne ptr %.sroa.0205.0.copyload, %.sroa.0188.0
  %i.at = icmp ne i32 %.sroa.10207.0.copyload, 1
  %.not3.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %.not3.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.au = icmp ne ptr %.sroa.0196.0.copyload, %.sroa.0188.0
  %i.av = icmp ne i32 %.sroa.7198.0.copyload, 1
  %.not3.i149 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %.not3.i149, label %bb.ab, label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.n
  %i.aw = icmp eq ptr %i.p, %.sroa.0188.0
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = select i1 %i.aw, i1 %i.az, i1 false     ; 3 uses
  %.0120 = select i1 %i.ba, ptr %4, ptr null
  %.0119 = select i1 %i.ba, ptr %3, ptr null
  %i.bb = icmp eq ptr %i.q, %.sroa.0188.0
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false     ; 3 uses
  %.1121 = select i1 %i.bf, ptr %3, ptr %.0120    ; 2 uses
  %.1 = select i1 %i.bf, ptr %4, ptr %.0119       ; 3 uses
  %.not138 = icmp eq ptr %.1, null
  br i1 %.not138, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %.critedge
  %.sroa.speculated201 = select i1 %i.ah, ptr %.sroa.0205.0.copyload, ptr %.sroa.0196.0.copyload ; 4 uses
  %i.bg = icmp eq ptr %i.d, %.sroa.speculated201
  br i1 %i.bg, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = call noundef zeroext i1 @_ZNK4llvm6SDNode14hasPredecessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.speculated201, ptr noundef nonnull align 8 dereferenceable(88) %i.d) #38
  br i1 %i.bh, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 6 uses
end_hunk_17
begin_hunk_18_@_ZL18PerformSHLSimplifyPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !896 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !700 ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !700
  %i.bg = icmp ult i32 %i.bf, 65
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !176
  store i64 %i.bh, ptr %4, align 8, !tbaa !176
  br label %_ZN4llvm5APIntC2ERKS0_.exit52

bb.o:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.bc) #38
  br label %_ZN4llvm5APIntC2ERKS0_.exit52

_ZN4llvm5APIntC2ERKS0_.exit52:                    ; preds = %bb.n, %bb.o
  %i.bi = load i32, ptr %i.av, align 8, !tbaa !700 ; 5 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp ult i32 %i.bi, 65                  ; 2 uses
  br i1 %i.bk, label %_ZNK4llvm5APInt3ugeEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit52
  %i.bl = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #39
  %i.bm = sub i32 %i.bi, %i.bl
  %i.bn = icmp ult i32 %i.bm, 65
  br i1 %i.bn, label %_ZNK4llvm5APInt3ugeEm.exit, label %_ZNK4llvm5APInt3ugeEm.exit.thread

_ZNK4llvm5APInt3ugeEm.exit:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit52, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.bo = load ptr, ptr %3, align 8
  %spec.select.i.i.i = select i1 %i.bk, ptr %3, ptr %i.bo
  %.0.i.i.i53 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !176 ; 2 uses
  %.not78 = icmp ult i64 %.0.i.i.i53, %i.bj
  br i1 %.not78, label %bb.p, label %_ZNK4llvm5APInt3ugeEm.exit.thread

bb.p:                                             ; preds = %_ZNK4llvm5APInt3ugeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bp = trunc nuw i64 %.0.i.i.i53 to i32
  %i.bq = sub i32 %i.bi, %i.bp
  call void @_ZN4llvm5APInt14getHighBitsSetEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, i32 noundef %i.bi, i32 noundef %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.bd, align 8, !tbaa !700 ; 2 uses
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !700
  %i.bt = icmp ult i32 %i.bs, 65
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = load i64, ptr %4, align 8, !tbaa !176
  store i64 %i.bu, ptr %7, align 8, !tbaa !176
  br label %_ZN4llvm5APIntC2ERKS0_.exit54

bb.r:                                             ; preds = %bb.p
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %4) #38
  br label %_ZN4llvm5APIntC2ERKS0_.exit54

_ZN4llvm5APIntC2ERKS0_.exit54:                    ; preds = %bb.q, %bb.r
  call void @_ZN4llvmanENS_5APIntERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(12) %5)
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !700
  %i.bx = icmp ult i32 %i.bw, 65
  br i1 %i.bx, label %_ZNK4llvm5APIntneERKS0_.exit, label %bb.s

_ZNK4llvm5APIntneERKS0_.exit:                     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit54
  %i.by = load i64, ptr %6, align 8, !tbaa !176
  %i.bz = load i64, ptr %4, align 8, !tbaa !176
  %i.ca = icmp ne i64 %i.by, %i.bz
  br label %_ZN4llvm5APIntD2Ev.exit

bb.s:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit54
  %i.cb = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %4) #39
  %i.cc = xor i1 %i.cb, true                      ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !176   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN4llvm5APIntD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #41
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APIntneERKS0_.exit, %bb.s, %bb.t
  %i.cf = phi i1 [ %i.ca, %_ZNK4llvm5APIntneERKS0_.exit ], [ %i.cc, %bb.s ], [ %i.cc, %bb.t ]
  %i.cg = load i32, ptr %i.br, align 8, !tbaa !700
  %i.ch = icmp ugt i32 %i.cg, 64
  br i1 %i.ch, label %bb.u, label %_ZN4llvm5APIntD2Ev.exit55

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ci = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN4llvm5APIntD2Ev.exit55, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #41
  br label %_ZN4llvm5APIntD2Ev.exit55

_ZN4llvm5APIntD2Ev.exit55:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br i1 %i.cf, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit55
  call void @_ZN4llvm5APInt11lshrInPlaceERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %3) #38
  %i.ck = call fastcc noundef zeroext i1 @"_ZZL18PerformSHLSimplifyPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetEENK3$_0clERKNS_5APIntE"(ptr noundef nonnull align 8 dereferenceable(12) %4)
  br i1 %i.ck, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = call fastcc noundef zeroext i1 @"_ZZL18PerformSHLSimplifyPN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetEENK3$_0clERKNS_5APIntE"(ptr noundef nonnull align 8 dereferenceable(12) %3)
  br i1 %i.cl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2539, !nonnull !19, !align !60 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !835
  store i64 %i.cp, ptr %8, align 8, !tbaa !835
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !836
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !837
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false)
  %i.cu = load i32, ptr %i.ab, align 8, !tbaa !344
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cn, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.cv, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.cv, 1
  store ptr %.fca.0.extract6, ptr %10, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.29.0..sroa_idx, align 8
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.cn, i32 noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #38 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.cw, 1
  store ptr %.fca.0.extract2, ptr %11, align 8, !tbaa !370
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !303
  %i.cx = load ptr, ptr %i.am, align 8, !tbaa !698
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.cn, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.cy) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cz, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %_ZN4llvm5APIntD2Ev.exit55
  %.sroa.24.2 = phi i32 [ 0, %_ZN4llvm5APIntD2Ev.exit55 ], [ %.fca.1.extract, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ]
  %.sroa.072.2 = phi ptr [ null, %_ZN4llvm5APIntD2Ev.exit55 ], [ %.fca.0.extract, %bb.y ], [ null, %bb.x ], [ null, %bb.w ]
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !700
  %i.dc = icmp ugt i32 %i.db, 64
  br i1 %i.dc, label %bb.aa, label %_ZN4llvm5APIntD2Ev.exit56

bb.aa:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %5, align 8, !tbaa !176   ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4llvm5APIntD2Ev.exit56, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #41
  br label %_ZN4llvm5APIntD2Ev.exit56

_ZN4llvm5APIntD2Ev.exit56:                        ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZNK4llvm5APInt3ugeEm.exit.thread

_ZNK4llvm5APInt3ugeEm.exit.thread:                ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt3ugeEm.exit, %_ZN4llvm5APIntD2Ev.exit56
  %.sroa.24.3 = phi i32 [ %.sroa.24.2, %_ZN4llvm5APIntD2Ev.exit56 ], [ 0, %_ZNK4llvm5APInt3ugeEm.exit ], [ 0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  %.sroa.072.3 = phi ptr [ %.sroa.072.2, %_ZN4llvm5APIntD2Ev.exit56 ], [ null, %_ZNK4llvm5APInt3ugeEm.exit ], [ null, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  %i.df = load i32, ptr %i.bd, align 8, !tbaa !700
  %i.dg = icmp ugt i32 %i.df, 64
  br i1 %i.dg, label %bb.ac, label %_ZN4llvm5APIntD2Ev.exit57

bb.ac:                                            ; preds = %_ZNK4llvm5APInt3ugeEm.exit.thread
  %i.dh = load ptr, ptr %4, align 8, !tbaa !176   ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN4llvm5APIntD2Ev.exit57, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #41
  br label %_ZN4llvm5APIntD2Ev.exit57

_ZN4llvm5APIntD2Ev.exit57:                        ; preds = %_ZNK4llvm5APInt3ugeEm.exit.thread, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.dj = load i32, ptr %i.av, align 8, !tbaa !700
  %i.dk = icmp ugt i32 %i.dj, 64
  br i1 %i.dk, label %bb.ae, label %_ZN4llvm5APIntD2Ev.exit58

bb.ae:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit57
  %i.dl = load ptr, ptr %3, align 8, !tbaa !176   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN4llvm5APIntD2Ev.exit58, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #41
  br label %_ZN4llvm5APIntD2Ev.exit58

_ZN4llvm5APIntD2Ev.exit58:                        ; preds = %_ZN4llvm5APIntD2Ev.exit57, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.f, %bb.f, %bb.e, %bb.e, %bb.g, %.lr.ph, %.critedge, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm5APIntD2Ev.exit58, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit51, %bb.h, %bb.b, %bb.a
  %.sroa.24.5 = phi i32 [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit51 ], [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %.critedge ], [ 0, %bb.b ], [ %.sroa.24.3, %_ZN4llvm5APIntD2Ev.exit58 ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ 0, %.lr.ph ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.f ]
  %.sroa.072.5 = phi ptr [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit51 ], [ null, %bb.a ], [ null, %bb.h ], [ null, %.critedge ], [ null, %bb.b ], [ %.sroa.072.3, %_ZN4llvm5APIntD2Ev.exit58 ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ null, %.lr.ph ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.072.5, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.24.5, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL29PerformADDCombineWithOperandsPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(address) %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %"struct.llvm::EVT", align 8        ; 12 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %11 = alloca %"class.llvm::SmallVector.425", align 8 ; 10 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %13 = alloca %"class.llvm::ArrayRef.429", align 8 ; 6 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %17 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %19 = alloca %"class.llvm::SmallVector.425", align 8 ; 10 uses
  %20 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %21 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %22 = alloca %"class.llvm::ArrayRef.429", align 8 ; 6 uses
  %23 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %24 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.425", align 8 ; 14 uses
  %26 = alloca %"class.llvm::ArrayRef.429", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !344  ; 2 uses
  switch i32 %i.c, label %_ZL17AddCombineToVPADDPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread [
    i32 698, label %bb.c
    i32 696, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340  ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.e, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !341
  %.not.i.i.i.i = icmp ne i16 %.sroa.0.0.copyload.i.i.i, 71
  %i.f = icmp ne ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i.not13.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.f
  %.not.i = icmp ne ptr %1, %3
  %or.cond.not11.i = select i1 %.not4.i.i.not13.i, i1 true, i1 %.not.i
  %i.g = icmp eq i32 %2, %4
  %or.cond9.i = select i1 %or.cond.not11.i, i1 true, i1 %i.g
  br i1 %or.cond9.i, label %_ZL17AddCombineToVPADDPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not.old.i = icmp ne ptr %1, %3
  %.old.i = icmp eq i32 %2, %4
  %or.cond10.i = select i1 %.not.old.i, i1 true, i1 %.old.i
  br i1 %or.cond10.i, label %_ZL17AddCombineToVPADDPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !340  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !25 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !341 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %23, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.j, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.k, 144
  br i1 %spec.select.i.i.i.i, label %_ZNK4llvm3EVT13is64BitVectorEv.exit.i, label %_ZNK4llvm3EVT13is64BitVectorEv.exit.thread.i

_ZNK4llvm3EVT13is64BitVectorEv.exit.thread.i:     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %_ZL17AddCombineToVPADDPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread

.split.i:                                         ; preds = %bb.d
  %i.l = call noundef zeroext i1 @_ZNK4llvm3EVT21isExtended64BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br i1 %i.l, label %bb.f, label %_ZL17AddCombineToVPADDPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread

_ZNK4llvm3EVT13is64BitVectorEv.exit.i:            ; preds = %bb.e
  %i.m = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.n = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 16
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 64
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br i1 %i.p, label %bb.f, label %_ZL17AddCombineToVPADDPN4llvm6SDNodeENS_7SDValueES2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_12ARMSubtargetE.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm3EVT13is64BitVectorEv.exit.i, %.split.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !885  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !835
  store i64 %i.t, ptr %24, align 8, !tbaa !835
  %i.u = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !836
  store i32 %i.w, ptr %i.u, align 8, !tbaa !837
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.x = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.x, ptr %25, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 11 uses
  store i32 0, ptr %i.y, align 8, !tbaa !372
  %i.z = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 4 uses
  store i32 8, ptr %i.z, align 4, !tbaa !373
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !374
  %i.ac = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ab) #38
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i16 %i.af(ptr noundef nonnull align 8 dereferenceable(518435) %i.r, ptr noundef nonnull align 8 dereferenceable(912) %i.ac, i32 noundef 0) #38, !inline_history !3065
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val, i64 noundef 4089, ptr noundef nonnull align 8 dereferenceable(12) %24, i16 %i.ag, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.ah, 0 ; 2 uses
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.ah, 1 ; 2 uses
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !372 ; 2 uses
  %i.aj = load i32, ptr %i.z, align 4, !tbaa !373
  %.not.i32.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i32.i, label %bb.h, label %bb.g, !prof !452

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %.fca.0.extract9.i, i32 %.fca.1.extract10.i)
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %25, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  store ptr %.fca.0.extract9.i, ptr %i.am, align 1
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.fca.1.extract10.i, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %i.an = load i32, ptr %i.y, align 8, !tbaa !372
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.y, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i: ; preds = %bb.h, %bb.g
  %i.ap = phi i32 [ %.pre.i, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !698 ; 2 uses
  %.sroa.06.0.copyload.i = load ptr, ptr %i.ar, align 8, !tbaa !370 ; 2 uses
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.27.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 8, !tbaa !303 ; 2 uses
  %i.as = load i32, ptr %i.z, align 4, !tbaa !373
  %.not.i33.i = icmp ult i32 %i.ap, %i.as
  br i1 %.not.i33.i, label %bb.j, label %bb.i, !prof !452

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %.sroa.06.0.copyload.i, i32 %.sroa.27.0.copyload.i)
  %.pre14.i = load i32, ptr %i.y, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit35.i

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i
  %i.at = zext i32 %i.ap to i64
  %i.au = load ptr, ptr %25, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 2 uses
  store ptr %.sroa.06.0.copyload.i, ptr %i.av, align 1
  %.sroa.32.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %.sroa.27.0.copyload.i, ptr %.sroa.32.0..sroa_idx.i34.i, align 1
  %i.aw = load i32, ptr %i.y, align 8, !tbaa !372
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ax, ptr %i.y, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit35.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit35.i: ; preds = %bb.j, %bb.i
  %i.ay = phi i32 [ %.pre14.i, %bb.i ], [ %i.ax, %bb.j ] ; 2 uses
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !698 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.04.0.copyload.i = load ptr, ptr %i.ba, align 8, !tbaa !370 ; 2 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !303 ; 2 uses
  %i.bb = load i32, ptr %i.z, align 4, !tbaa !373
  %.not.i36.i = icmp ult i32 %i.ay, %i.bb
  br i1 %.not.i36.i, label %bb.l, label %bb.k, !prof !452

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit35.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %.sroa.04.0.copyload.i, i32 %.sroa.25.0.copyload.i)
  %.pre15.i = load i32, ptr %i.y, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit38.i

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit35.i
  %i.bc = zext i32 %i.ay to i64
  %i.bd = load ptr, ptr %25, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  store ptr %.sroa.04.0.copyload.i, ptr %i.be, align 1
  %.sroa.32.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %.sroa.25.0.copyload.i, ptr %.sroa.32.0..sroa_idx.i37.i, align 1
  %i.bf = load i32, ptr %i.y, align 8, !tbaa !372
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %i.y, align 8, !tbaa !372
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit38.i
end_hunk_18
