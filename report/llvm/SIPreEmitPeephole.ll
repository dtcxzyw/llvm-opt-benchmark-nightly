Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIPreEmitPeephole?download=true
inline.NumInlined: 1423
inline.NumDeleted: 781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_117SIPreEmitPeephole3runERN4llvm15MachineFunctionEPNS1_15MachineLoopInfoE:bb.a
  %.not47.i = icmp eq ptr %i.vx, %.sroa.0131.0198
  br i1 %.not47.i, label %.critedge.i74, label %bb.cj, !llvm.loop !198

.critedge.i74:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i73, %.preheader.preheader.i
  call void @_ZN4llvm12MachineInstr15eraseFromBundleEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0131.0198) #15
  %i.vy = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.vz = load i32, ptr %i.y, align 8, !tbaa !125 ; 2 uses
  %i.wa = zext i32 %i.vz to i64
  %.idx.i75 = shl nuw nsw i64 %i.wa, 3
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %.idx.i75
  %.not2876.i = icmp eq i32 %i.vz, 0
  br i1 %.not2876.i, label %.loopexit.i, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.critedge.i74, %.lr.ph78.i
  %.02477.i = phi ptr [ %i.wd, %.lr.ph78.i ], [ %i.vy, %.critedge.i74 ] ; 2 uses
  %i.wc = load ptr, ptr %.02477.i, align 8, !tbaa !128
  call void @_ZN4llvm12MachineInstr15eraseFromBundleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.wc) #15
  %i.wd = getelementptr inbounds nuw i8, ptr %.02477.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %i.wd, %i.wb
  br i1 %.not28.i, label %.loopexit.i, label %.lr.ph78.i

.loopexit.i:                                      ; preds = %bb.dc, %bb.db, %bb.cp, %bb.cn, %bb.cj, %.lr.ph78.i, %.critedge.i74, %bb.ci
  %.1.i69 = phi i1 [ false, %bb.ci ], [ true, %.critedge.i74 ], [ true, %.lr.ph78.i ], [ false, %bb.cj ], [ false, %bb.cn ], [ false, %bb.cp ], [ false, %bb.db ], [ false, %bb.dc ] ; 2 uses
  %i.we = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.x
  br i1 %i.wf, label %_ZNK12_GLOBAL__N_117SIPreEmitPeephole14optimizeSetGPRERN4llvm12MachineInstrES3_.exit, label %bb.dd

bb.dd:                                            ; preds = %.loopexit.i
  call void @free(ptr noundef %i.we) #15
  br label %_ZNK12_GLOBAL__N_117SIPreEmitPeephole14optimizeSetGPRERN4llvm12MachineInstrES3_.exit

_ZNK12_GLOBAL__N_117SIPreEmitPeephole14optimizeSetGPRERN4llvm12MachineInstrES3_.exit: ; preds = %.loopexit.i, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.156. = select i1 %.1.i69, ptr %.156, ptr %.sroa.0131.0198
  %..3 = select i1 %.1.i69, i1 true, i1 %.3202
  br label %bb.de

bb.de:                                            ; preds = %bb.cf, %.lr.ph, %_ZNK12_GLOBAL__N_117SIPreEmitPeephole14optimizeSetGPRERN4llvm12MachineInstrES3_.exit
  %.358 = phi ptr [ %.156, %.lr.ph ], [ %.156., %_ZNK12_GLOBAL__N_117SIPreEmitPeephole14optimizeSetGPRERN4llvm12MachineInstrES3_.exit ], [ %.sroa.0131.0198, %bb.cf ]
  %.254 = phi i32 [ %.153, %.lr.ph ], [ 0, %_ZNK12_GLOBAL__N_117SIPreEmitPeephole14optimizeSetGPRERN4llvm12MachineInstrES3_.exit ], [ 0, %bb.cf ]
  %.5 = phi i1 [ %.3202, %.lr.ph ], [ %..3, %_ZNK12_GLOBAL__N_117SIPreEmitPeephole14optimizeSetGPRERN4llvm12MachineInstrES3_.exit ], [ %.3202, %bb.cf ] ; 2 uses
  %.not154 = icmp eq ptr %i.sa, %i.ax
  br i1 %.not154, label %.loopexit160, label %.lr.ph

.loopexit160:                                     ; preds = %bb.de, %bb.ce, %_ZN12_GLOBAL__N_117SIPreEmitPeephole17removeExeczBranchERN4llvm12MachineInstrERNS1_17MachineBasicBlockE.exit
  %.6 = phi i1 [ %.2, %_ZN12_GLOBAL__N_117SIPreEmitPeephole17removeExeczBranchERN4llvm12MachineInstrERNS1_17MachineBasicBlockE.exit ], [ %.2, %bb.ce ], [ %.5, %bb.de ] ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0140.0206, i64 8
  %.sroa.0140.0 = load ptr, ptr %i.wg, align 8, !tbaa !319 ; 2 uses
  %.not150 = icmp eq ptr %.sroa.0140.0, %i.j
  br i1 %.not150, label %._crit_edge, label %bb.b

bb.df:                                            ; preds = %.lr.ph224, %_ZN4llvm16TargetSchedModelD2Ev.exit
  %.sroa.0127.0223 = phi ptr [ %.sroa.0127.0221, %.lr.ph224 ], [ %.sroa.0127.0, %_ZN4llvm16TargetSchedModelD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.wh = load ptr, ptr %0, align 8, !tbaa !47    ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 528 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(298) %14, ptr noundef nonnull align 8 dereferenceable(298) %i.wi, i64 208, i1 false)
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 736
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !124
  store i32 0, ptr %i.af, align 8, !tbaa !125
  store i32 16, ptr %i.ag, align 4, !tbaa !126
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 744 ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !125 ; 5 uses
  %.not.i.i.i85 = icmp eq i32 %i.wl, 0
  %i.wm = icmp eq ptr %14, %i.wi
  %or.cond.i.i = or i1 %i.wm, %.not.i.i.i85
  br i1 %or.cond.i.i, label %_ZN4llvm16TargetSchedModelC2ERKS0_.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wn = icmp ugt i32 %i.wl, 16
  br i1 %i.wn, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.dg
  %i.wo = zext i32 %i.wl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull %i.ae, i64 noundef %i.wo, i64 noundef 4) #15
  %.pre.i.i = load i32, ptr %i.wk, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i86 = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i86, label %.sink.split.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i
  %.pre.i87 = load ptr, ptr %i.ad, align 8, !tbaa !124
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.dg
  %i.wp = phi ptr [ %.pre.i87, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.ae, %bb.dg ]
  %i.wq = phi i32 [ %.pre.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.wl, %bb.dg ]
  %i.wr = zext i32 %i.wq to i64
  %i.ws = load ptr, ptr %i.wj, align 8, !tbaa !124
  %gepdiff.i.i.i = shl nuw nsw i64 %i.wr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wp, ptr align 4 %i.ws, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i
  store i32 %i.wl, ptr %i.af, align 8, !tbaa !125
  br label %_ZN4llvm16TargetSchedModelC2ERKS0_.exit

_ZN4llvm16TargetSchedModelC2ERKS0_.exit:          ; preds = %bb.df, %.sink.split.i.i.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wh, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ah, ptr noundef nonnull align 8 dereferenceable(10) %i.wt, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 24, i1 false)
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !124
  store i32 0, ptr %i.ak, align 8, !tbaa !125
  store i32 0, ptr %i.al, align 4, !tbaa !126
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0127.0223, i64 56
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !127 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0127.0223, i64 48 ; 2 uses
  %.not152212 = icmp eq ptr %i.wv, %i.ww
  br i1 %.not152212, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj0EED2Ev.exit.i, label %.lr.ph214

._crit_edge215:                                   ; preds = %bb.em
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !124 ; 3 uses
  %.pre249 = load i32, ptr %i.ak, align 8, !tbaa !125 ; 2 uses
  %i.wx = zext i32 %.pre249 to i64
  %.idx = shl nuw nsw i64 %i.wx, 3
  %i.wy = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not216 = icmp eq i32 %.pre249, 0
  br i1 %.not216, label %._crit_edge220, label %.lr.ph219

.lr.ph214:                                        ; preds = %_ZN4llvm16TargetSchedModelC2ERKS0_.exit, %bb.em
  %.sroa.0122.0213 = phi ptr [ %i.xa, %bb.em ], [ %i.wv, %_ZN4llvm16TargetSchedModelC2ERKS0_.exit ] ; 6 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.0122.0213, i64 8 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !127 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0122.0213, i64 16
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !485
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !487
  %i.xf = and i64 %i.xe, 18014398509481984
  %.not3.i = icmp ne i64 %i.xf, 0
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0122.0213, i64 52
  %i.xh = load i32, ptr %i.xg, align 4
  %i.xi = add i32 %i.xh, -5872
  %spec.select.i97 = icmp ult i32 %i.xi, -2
  %i.xj = select i1 %.not3.i, i1 %spec.select.i97, i1 false
  br i1 %i.xj, label %bb.dh, label %bb.em

bb.dh:                                            ; preds = %.lr.ph214
  %i.xk = call noundef ptr @_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(298) %14, ptr noundef nonnull %.sroa.0122.0213) #15
  %i.xl = load ptr, ptr %i.am, align 8, !tbaa !494
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 184
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !495
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 2
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !497
  %i.xq = zext i16 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [6 x i8], ptr %i.xn, i64 %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 2
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !499
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0122.0213, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !74
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.xx = load ptr, ptr %0, align 8, !tbaa !47    ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 528 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(298) %5, ptr noundef nonnull align 8 dereferenceable(298) %i.xy, i64 208, i1 false)
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 736
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !124
  store i32 0, ptr %i.ap, align 8, !tbaa !125
  store i32 16, ptr %i.aq, align 4, !tbaa !126
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 744 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !125 ; 5 uses
  %.not.i.i.i.i98 = icmp eq i32 %i.yb, 0
  %i.yc = icmp eq ptr %5, %i.xy
  %or.cond.i.i.i99 = or i1 %i.yc, %.not.i.i.i.i98
  br i1 %or.cond.i.i.i99, label %_ZN4llvm16TargetSchedModelC2ERKS0_.exit.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.yd = icmp ugt i32 %i.yb, 16
  br i1 %i.yd, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.di
  %i.ye = zext i32 %i.yb to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull %i.ao, i64 noundef %i.ye, i64 noundef 4) #15
  %.pre.i.i.i = load i32, ptr %i.ya, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i109 = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i109, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i110 = load ptr, ptr %i.an, align 8, !tbaa !124
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.di
  %i.yf = phi ptr [ %.pre.i.i110, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.ao, %bb.di ]
  %i.yg = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.yb, %bb.di ]
  %i.yh = zext i32 %i.yg to i64
  %i.yi = load ptr, ptr %i.xz, align 8, !tbaa !124
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.yh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yf, ptr align 4 %i.yi, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.yb, ptr %i.ap, align 8, !tbaa !125
  br label %_ZN4llvm16TargetSchedModelC2ERKS0_.exit.i

_ZN4llvm16TargetSchedModelC2ERKS0_.exit.i:        ; preds = %.sink.split.i.i.i.i, %bb.dh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xx, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ar, ptr noundef nonnull align 8 dereferenceable(10) %i.yj, i64 10, i1 false)
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0122.0213, i64 32
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !117
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !118
  %.fr.i = freeze i32 %i.yn                       ; 4 uses
  %16 = load ptr, ptr %i.wz, align 8, !tbaa !127  ; 2 uses
  %.not8492.i = icmp eq ptr %16, %i.xw
  br i1 %.not8492.i, label %.thread.i101, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %_ZN4llvm16TargetSchedModelC2ERKS0_.exit.i
  %i.yo = zext i16 %i.xt to i32
  %i.yp = add nsw i32 %i.yo, -1                   ; 2 uses
  %i.yq = add i32 %.fr.i, -1
  %i.yr = icmp ult i32 %i.yq, 1073741823
  br label %_ZN12_GLOBAL__N_117SIPreEmitPeephole19mapToUnpackedOpcodeERN4llvm12MachineInstrE.exit.i

_ZN12_GLOBAL__N_117SIPreEmitPeephole19mapToUnpackedOpcodeERN4llvm12MachineInstrE.exit.i: ; preds = %.thread80.i, %.lr.ph95.i
  %.094.i = phi i32 [ 0, %.lr.ph95.i ], [ %.283.i, %.thread80.i ] ; 3 uses
  %.sroa.060.093.i = phi ptr [ %16, %.lr.ph95.i ], [ %i.ahc, %.thread80.i ] ; 24 uses
  %i.ys = getelementptr i8, ptr %.sroa.060.093.i, i64 52 ; 2 uses
  %.val.i100 = load i32, ptr %i.ys, align 4, !tbaa !73
  %switch.tableidx = add i32 %.val.i100, -10619   ; 2 uses
  %i.yt = icmp ugt i32 %switch.tableidx, 47
  %switch.cast = zext nneg i32 %switch.tableidx to i48
  %switch.downshift = lshr i48 140737488224254, %switch.cast
  %switch.masked = trunc i48 %switch.downshift to i1
  %i.yu = select i1 %i.yt, i1 true, i1 %switch.masked ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.060.093.i, i64 16
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !485
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.yy = load i64, ptr %i.yx, align 8, !tbaa !488 ; 2 uses
  %i.yz = and i64 %i.yy, 16
  %.not85.i = icmp eq i64 %i.yz, 0
  br i1 %.not85.i, label %bb.dj, label %.thread80.i

bb.dj:                                            ; preds = %_ZN12_GLOBAL__N_117SIPreEmitPeephole19mapToUnpackedOpcodeERN4llvm12MachineInstrE.exit.i
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.060.093.i, i64 44
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !115 ; 2 uses
  %i.zc = and i32 %i.zb, 12
  %i.zd = icmp eq i32 %i.zc, 0
  %i.ze = and i32 %i.zb, 4
  %i.zf = icmp ne i32 %i.ze, 0
  %or.cond.i.i55.i = or i1 %i.zd, %i.zf
  br i1 %or.cond.i.i55.i, label %.split.i108, label %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i

.split.i108:                                      ; preds = %bb.dj
  %i.zg = and i64 %i.yy, 512
  %.not86.i = icmp eq i64 %i.zg, 0
  br i1 %.not86.i, label %bb.dk, label %.thread.i101

_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i: ; preds = %bb.dj
  %i.zh = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.060.093.i, i64 noundef 512, i32 noundef 1) #15
  br i1 %i.zh, label %.thread.i101, label %bb.dk

bb.dk:                                            ; preds = %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i, %.split.i108
  %i.zi = load ptr, ptr %0, align 8, !tbaa !47
  %i.zj = call noundef zeroext i1 @_ZNK4llvm11SIInstrInfo14isNeverCoissueERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(840) %i.zi, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.060.093.i) #15
  %or.cond.not.i = and i1 %i.yu, %i.zj
  br i1 %or.cond.not.i, label %.thread.i101, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zk = call noundef zeroext i1 @_ZN4llvm11SIInstrInfo20modifiesModeRegisterERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.060.093.i) #15
  br i1 %i.zk, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.zl = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.zm = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.060.093.i, i32 2, ptr noundef %i.zl, i1 noundef zeroext false, i1 noundef zeroext true) #15
  %.not87.i = icmp eq i32 %i.zm, -1
  br i1 %.not87.i, label %bb.dn, label %.thread.i101

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.zn = call noundef ptr @_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(298) %5, ptr noundef nonnull %.sroa.060.093.i) #15
  %i.zo = load ptr, ptr %i.as, align 8, !tbaa !494
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 184
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !495
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 2
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !497
  %i.zt = zext i16 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [6 x i8], ptr %i.zq, i64 %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 2
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !499
  %i.zx = zext i16 %i.zw to i32
  %i.zy = add nsw i32 %.094.i, %i.zx              ; 2 uses
  %.not.i102 = icmp slt i32 %i.zy, %i.yp
  br i1 %.not.i102, label %bb.do, label %.thread.i101

bb.do:                                            ; preds = %bb.dn
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.060.093.i, i64 32 ; 2 uses
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !117 ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.060.093.i, i64 40
  %i.aac = load i24, ptr %i.aab, align 8          ; 2 uses
  %i.aad = zext i24 %i.aac to i64
  %.idx.i103 = shl nuw nsw i64 %i.aad, 5
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %.idx.i103 ; 2 uses
  %.not5490.i = icmp eq i24 %i.aac, 0
  br i1 %.not5490.i, label %.critedge.i105, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %bb.do
  br i1 %i.yr, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i104, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.us.i
  %.04691.us.i = phi ptr [ %i.aal, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.us.i ], [ %i.aaa, %.lr.ph.i104 ] ; 3 uses
  %i.aaf = load i32, ptr %.04691.us.i, align 8
  %i.aag = and i32 %i.aaf, 255
  %i.aah = icmp eq i32 %i.aag, 0
  br i1 %i.aah, label %bb.dp, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.us.i

bb.dp:                                            ; preds = %.lr.ph.split.us.i
  %i.aai = getelementptr inbounds nuw i8, ptr %.04691.us.i, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !118 ; 2 uses
  %.not88.us.i = icmp ne i32 %i.aaj, 0
  %i.aak = icmp eq i32 %.fr.i, %i.aaj
  %or.cond.i = and i1 %.not88.us.i, %i.aak
  br i1 %or.cond.i, label %.thread.i101, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.us.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.us.i: ; preds = %bb.dp, %.lr.ph.split.us.i
  %i.aal = getelementptr inbounds nuw i8, ptr %.04691.us.i, i64 32 ; 2 uses
  %.not54.us.i = icmp eq ptr %i.aal, %i.aae
  br i1 %.not54.us.i, label %.critedge.i105, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i104, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i
  %.04691.i = phi ptr [ %i.aav, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i ], [ %i.aaa, %.lr.ph.i104 ] ; 3 uses
  %i.aam = load i32, ptr %.04691.i, align 8
  %i.aan = and i32 %i.aam, 255
  %i.aao = icmp eq i32 %i.aan, 0
  br i1 %i.aao, label %bb.dq, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i

bb.dq:                                            ; preds = %.lr.ph.split.i
  %i.aap = getelementptr inbounds nuw i8, ptr %.04691.i, i64 4
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !118 ; 4 uses
  %.not88.i = icmp eq i32 %i.aaq, 0
  br i1 %.not88.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aar = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.aas = icmp eq i32 %.fr.i, %i.aaq
  br i1 %i.aas, label %.thread.i101, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aat = icmp ult i32 %i.aaq, 1073741824
  br i1 %i.aat, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i: ; preds = %bb.ds
  %i.aau = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.aar, i32 %.fr.i, i32 %i.aaq) #15
  br i1 %i.aau, label %.thread.i101, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %bb.ds, %bb.dq, %.lr.ph.split.i
  %i.aav = getelementptr inbounds nuw i8, ptr %.04691.i, i64 32 ; 2 uses
  %.not54.i = icmp eq ptr %i.aav, %i.aae
  br i1 %.not54.i, label %.critedge.i105, label %.lr.ph.split.i

.critedge.i105:                                   ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread66.i, %bb.do
  br i1 %i.yu, label %.thread80.i, label %bb.dt

bb.dt:                                            ; preds = %.critedge.i105
  %i.aaw = load i32, ptr %i.ys, align 4, !tbaa !73
  %i.aax = load ptr, ptr %i.zz, align 8, !tbaa !117
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !118
  %i.aba = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.abb = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.aba, i32 %i.aaz, i32 noundef 3) #15 ; 9 uses
  %i.abc = load ptr, ptr %0, align 8, !tbaa !47   ; 2 uses
  %i.abd = call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.abc, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.060.093.i, i8 noundef zeroext 1) #18 ; 3 uses
  %.not.i.i106 = icmp eq ptr %i.abd, null
  br i1 %.not.i.i106, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread75.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abe = load i32, ptr %i.abd, align 8
  %i.abf = and i32 %i.abe, 255
  %i.abg = icmp eq i32 %i.abf, 0
  br i1 %i.abg, label %bb.dv, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread75.i.i

bb.dv:                                            ; preds = %bb.du
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 4
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !118
  %i.abj = call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.abc, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.060.093.i, i8 noundef zeroext 31) #18
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !118
  %i.abm = and i64 %i.abl, 8
  %.not51.i.i = icmp eq i64 %i.abm, 0
  %i.abn = load ptr, ptr %i.g, align 8, !tbaa !48
  %..i.i = select i1 %.not51.i.i, i32 3, i32 11
  %i.abo = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.abn, i32 %i.abi, i32 noundef %..i.i) #15 ; 3 uses
  %i.abp = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.abq = icmp eq i32 %i.abb, %i.abo
  br i1 %i.abq, label %.thread.i101, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abr = add i32 %i.abb, -1
  %i.abs = icmp ult i32 %i.abr, 1073741823
  %i.abt = add i32 %i.abo, -1
  %i.abu = icmp ult i32 %i.abt, 1073741823
  %or.cond.i.i57.i = and i1 %i.abs, %i.abu
  br i1 %or.cond.i.i57.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread75.i.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i.i: ; preds = %bb.dw
  %i.abv = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.abp, i32 %i.abb, i32 %i.abo) #15
  br i1 %i.abv, label %.thread.i101, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread75.i.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread75.i.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i.i, %bb.dw, %bb.du, %bb.dt
  %i.abw = load ptr, ptr %0, align 8, !tbaa !47   ; 2 uses
  %i.abx = call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.abw, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.060.093.i, i8 noundef zeroext 25) #18 ; 3 uses
  %.not52.i.i = icmp eq ptr %i.abx, null
  br i1 %.not52.i.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit58.thread78.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread75.i.i
end_hunk_0
