Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/rls?download=true
inline.NumInlined: 8216
inline.NumDeleted: 4032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_15RlsLb10RlsRequest23OnRlsCallCompleteLockedEN4absl12lts_202505126StatusE:bb.a
bb.he:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i, %bb.gz
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i ], [ %i.wh, %bb.gz ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #45, !inline_history !1013
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body182

_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache12FindOrInsertERKNS1_10RequestKeyEPSt6vectorINS_13RefCountedPtrINS1_18ChildPolicyWrapperEEESaIS9_EE.exit: ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry8MarkUsedEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_15RlsLb5Cache5EntryENS0_16OrphanableDeleteEED2Ev.exit.i
  %.034.i = phi ptr [ %.val65.i, %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry8MarkUsedEv.exit.i ], [ %i.oe, %_ZNSt10unique_ptrIN9grpc_core12_GLOBAL__N_15RlsLb5Cache5EntryENS0_16OrphanableDeleteEED2Ev.exit.i ], [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 21 uses
  %i.wq = load i64, ptr %31, align 8, !tbaa !96
  store i64 %i.wq, ptr %42, align 8, !tbaa !96
  store i64 55, ptr %31, align 8, !tbaa !96
  %i.wr = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 6 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.wt = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !187
  store <2 x ptr> %i.wt, ptr %i.wr, align 8, !tbaa !187
  %i.wu = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !174
  store ptr %i.ww, ptr %i.wu, align 8, !tbaa !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.wx = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wx, ptr noundef nonnull align 8 dereferenceable(32) %i.wy, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wy, i8 0, i64 32, i1 false), !noalias !1037
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !783 ; 3 uses
  %i.xb = inttoptr i64 %i.xa to ptr               ; 8 uses
  store ptr null, ptr %i.wz, align 8, !tbaa !783
  %i.xc = getelementptr inbounds nuw i8, ptr %.034.i, i64 16 ; 8 uses
  %.val.i.i184 = load ptr, ptr %i.xc, align 8, !tbaa !525, !noalias !1040 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.val.i.i184, i64 128 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.034.i, i64 152 ; 3 uses
  %.val5.i.i185 = load ptr, ptr %i.xe, align 8, !tbaa !743, !noalias !1040
  %i.xf = getelementptr inbounds nuw i8, ptr %.val5.i.i185, i64 16
  %i.xg = invoke fastcc ptr @_ZNSt7__cxx114listIN9grpc_core12_GLOBAL__N_15RlsLb10RequestKeyESaIS4_EE6insertESt20_List_const_iteratorIS4_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.xd, ptr nonnull %i.xd, ptr noundef nonnull align 8 dereferenceable(48) %i.xf)
          to label %.noexc209 unwind label %bb.lt, !inline_history !1043

.noexc209:                                        ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache12FindOrInsertERKNS1_10RequestKeyEPSt6vectorINS_13RefCountedPtrINS1_18ChildPolicyWrapperEEESaIS9_EE.exit
  %.val6.i.i186 = load ptr, ptr %i.xe, align 8, !tbaa !743, !noalias !1040 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.val.i.i184, i64 144 ; 2 uses
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !781, !noalias !1040
  %i.xj = add i64 %i.xi, -1
  store i64 %i.xj, ptr %i.xh, align 8, !tbaa !781, !noalias !1040
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.val6.i.i186) #38, !noalias !1040, !inline_history !1043
  %i.xk = getelementptr inbounds nuw i8, ptr %.val6.i.i186, i64 16
  %i.xl = getelementptr inbounds nuw i8, ptr %.val6.i.i186, i64 32
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !55, !noalias !1040
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.xk, ptr noundef %i.xm)
          to label %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry8MarkUsedEv.exit.i187 unwind label %bb.hf, !noalias !1040, !inline_history !1043

bb.hf:                                            ; preds = %.noexc209
  %i.xn = landingpad { ptr, i32 }
          catch ptr null
  %i.xo = extractvalue { ptr, i32 } %i.xn, 0
  call void @__clang_call_terminate(ptr %i.xo) #42, !noalias !1040, !inline_history !1043
  unreachable

_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry8MarkUsedEv.exit.i187: ; preds = %.noexc209
  call void @_ZdlPvm(ptr noundef nonnull %.val6.i.i186, i64 noundef 64) #41, !noalias !1040, !inline_history !1043
  store ptr %i.xg, ptr %i.xe, align 8, !tbaa !782, !noalias !1040
  %i.xp = load i64, ptr %42, align 8, !tbaa !96, !noalias !1040 ; 5 uses
  %i.xq = icmp eq i64 %i.xp, 1
  br i1 %i.xq, label %bb.im, label %bb.hg

bb.hg:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry8MarkUsedEv.exit.i187
  %i.xr = getelementptr inbounds nuw i8, ptr %.034.i, i64 32 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !96, !noalias !1040 ; 3 uses
  %.not.i.i188 = icmp eq i64 %i.xp, %i.xs
  br i1 %.not.i.i188, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.xt = trunc i64 %i.xp to i1
  br i1 %i.xt, label %_ZN4absl12lts_202505126Status3RefEm.exit.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.xu = inttoptr i64 %i.xp to ptr
  %i.xv = atomicrmw add ptr %i.xu, i32 1 monotonic, align 4, !noalias !1040 ; 0 uses
  %.pre.i.i = load i64, ptr %42, align 8, !tbaa !96, !noalias !1040
  br label %_ZN4absl12lts_202505126Status3RefEm.exit.i.i

_ZN4absl12lts_202505126Status3RefEm.exit.i.i:     ; preds = %bb.hi, %bb.hh
  %i.xw = phi i64 [ %i.xp, %bb.hh ], [ %.pre.i.i, %bb.hi ]
  store i64 %i.xw, ptr %i.xr, align 8, !tbaa !96, !noalias !1040
  %i.xx = trunc i64 %i.xs to i1
  br i1 %i.xx, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit.i, label %bb.hj

bb.hj:                                            ; preds = %_ZN4absl12lts_202505126Status3RefEm.exit.i.i
  %i.xy = inttoptr i64 %i.xs to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.xy)
          to label %_ZN4absl12lts_202505126StatusaSERKS1_.exit.i unwind label %bb.lt, !inline_history !1043

_ZN4absl12lts_202505126StatusaSERKS1_.exit.i:     ; preds = %bb.hj, %_ZN4absl12lts_202505126Status3RefEm.exit.i.i, %bb.hg
  %.not.i189 = icmp eq i64 %i.xa, 0
  br i1 %.not.i189, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %_ZN4absl12lts_202505126StatusaSERKS1_.exit.i
  %i.xz = getelementptr inbounds nuw i8, ptr %.034.i, i64 40 ; 2 uses
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !783, !noalias !1040 ; 2 uses
  store ptr %i.xb, ptr %i.xz, align 8, !tbaa !783, !noalias !1040
  %.not.i.i.i.i.i = icmp eq ptr %i.ya, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i.sink.split

bb.hl:                                            ; preds = %_ZN4absl12lts_202505126StatusaSERKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !1044
  %i.yb = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 1000, ptr %7, align 8, !tbaa !25, !noalias !1044
  %i.yc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x double> <double 1.600000e+00, double 2.000000e-01>, ptr %i.yc, align 8, !tbaa !1020, !noalias !1044
  store i64 120000, ptr %i.yb, align 8, !tbaa !25, !noalias !1044
  %i.yd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %.noexc211 unwind label %bb.lt, !inline_history !1043 ; 3 uses

.noexc211:                                        ; preds = %bb.hl
  invoke void @_ZN9grpc_core7BackOffC1ERKNS0_7OptionsE(ptr noundef nonnull align 16 dereferenceable(64) %i.yd, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN9grpc_core12_GLOBAL__N_121MakeCacheEntryBackoffEv.exit.i unwind label %bb.hm, !noalias !1047, !inline_history !1043

bb.hm:                                            ; preds = %.noexc211
  %i.ye = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef 64) #41, !noalias !1047, !inline_history !1043
  br label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EED2Ev.exit251

_ZN9grpc_core12_GLOBAL__N_121MakeCacheEntryBackoffEv.exit.i: ; preds = %.noexc211
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !1044
  %i.yf = getelementptr inbounds nuw i8, ptr %.034.i, i64 40 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !783, !noalias !1040 ; 2 uses
  store ptr %i.yd, ptr %i.yf, align 8, !tbaa !783, !noalias !1040
  %.not.i.i.i.i89.i = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i.i89.i, label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i.sink.split

_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i.sink.split: ; preds = %_ZN9grpc_core12_GLOBAL__N_121MakeCacheEntryBackoffEv.exit.i, %bb.hk
  %.sink = phi ptr [ %i.ya, %bb.hk ], [ %i.yg, %_ZN9grpc_core12_GLOBAL__N_121MakeCacheEntryBackoffEv.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 64) #41, !noalias !1040
  br label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i.sink.split, %_ZN9grpc_core12_GLOBAL__N_121MakeCacheEntryBackoffEv.exit.i, %bb.hk
  %i.yh = getelementptr inbounds nuw i8, ptr %.034.i, i64 40
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !783, !noalias !1040
  %i.yj = invoke i64 @_ZN9grpc_core7BackOff16NextAttemptDelayEv(ptr noundef nonnull align 16 dereferenceable(64) %i.yi)
          to label %.noexc214 unwind label %bb.lt, !inline_history !1043 ; 10 uses

.noexc214:                                        ; preds = %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EEaSEOS4_.exit.i
  br i1 %.not.i.i.i.i166, label %_ZN9grpc_core9Timestamp3NowEv.exit.i, label %bb.hn

bb.hn:                                            ; preds = %.noexc214
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZN9grpc_core9Timestamp3NowEv.exit.i unwind label %bb.lt, !inline_history !1043

_ZN9grpc_core9Timestamp3NowEv.exit.i:             ; preds = %bb.hn, %.noexc214
  %i.yk = load ptr, ptr %i.mq, align 8, !tbaa !701, !noalias !1040 ; 2 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !9, !noalias !1040
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !1040
  %i.yn = invoke i64 %i.ym(ptr noundef nonnull align 8 dereferenceable(8) %i.yk)
          to label %.noexc216 unwind label %bb.lt, !inline_history !1043 ; 11 uses

.noexc216:                                        ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i
  %i.yo = icmp eq i64 %i.yn, 9223372036854775807  ; 2 uses
  %i.yp = icmp eq i64 %i.yj, 9223372036854775807
  %or.cond.i.i.i = or i1 %i.yp, %i.yo
  br i1 %or.cond.i.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i, label %bb.ho

bb.ho:                                            ; preds = %.noexc216
  %i.yq = icmp eq i64 %i.yn, -9223372036854775808
  %i.yr = icmp eq i64 %i.yj, -9223372036854775808
  %or.cond9.i.i.i = or i1 %i.yr, %i.yq
  br i1 %or.cond9.i.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ys = icmp sgt i64 %i.yn, 0
  br i1 %i.ys, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.yt = sub nuw nsw i64 9223372036854775807, %i.yn
  %i.yu = icmp sgt i64 %i.yj, %i.yt
  br i1 %i.yu, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i, label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  %i.yv = sub nsw i64 -9223372036854775808, %i.yn
  %i.yw = icmp slt i64 %i.yj, %i.yv
  br i1 %i.yw, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.yx = add nsw i64 %i.yn, %i.yj
  br label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i

_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i: ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.ho, %.noexc216
  %.0.i.i.i = phi i64 [ -9223372036854775808, %bb.ho ], [ 9223372036854775807, %.noexc216 ], [ -9223372036854775808, %bb.hr ], [ %i.yx, %bb.hs ], [ 9223372036854775807, %bb.hq ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.034.i, i64 48
  store i64 %.0.i.i.i, ptr %i.yy, align 8, !tbaa !25, !noalias !1040
  switch i64 %i.yj, label %bb.ht [
    i64 9223372036854775807, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i
    i64 -9223372036854775808, label %_ZN9grpc_coremlENS_8DurationEd.exit.i
  ]

bb.ht:                                            ; preds = %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i
  %i.yz = sitofp i64 %i.yj to double
  %i.za = fmul nnan double %i.yz, 2.000000e+00
  %i.zb = fdiv nnan double %i.za, 1.000000e+03
  %i.zc = fmul nnan double %i.zb, 1.000000e+03    ; 3 uses
  %i.zd = fcmp ult double %i.zc, f0x43E0000000000000
  %.inv.i.i.i = fcmp ole double %i.zc, f0xC3E0000000000000
  %spec.select4.i.i.i = select i1 %.inv.i.i.i, double f0xC3E0000000000000, double %i.zc
  %spec.select.i.i.i = fptosi double %spec.select4.i.i.i to i64
  %.sroa.0.0.i.i.i = select i1 %i.zd, i64 %spec.select.i.i.i, i64 9223372036854775807
  br label %_ZN9grpc_coremlENS_8DurationEd.exit.i

_ZN9grpc_coremlENS_8DurationEd.exit.i:            ; preds = %bb.ht, %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i
  %.sroa.04.0.i.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.ht ], [ %i.yj, %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i ] ; 5 uses
  %i.ze = icmp eq i64 %.sroa.04.0.i.i, 9223372036854775807
  %or.cond.i.i93.i = or i1 %i.yo, %i.ze
  br i1 %or.cond.i.i93.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i, label %bb.hu

bb.hu:                                            ; preds = %_ZN9grpc_coremlENS_8DurationEd.exit.i
  %i.zf = icmp eq i64 %i.yn, -9223372036854775808
  %i.zg = icmp eq i64 %.sroa.04.0.i.i, -9223372036854775808
  %or.cond9.i.i94.i = or i1 %i.zf, %i.zg
  br i1 %or.cond9.i.i94.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.zh = icmp sgt i64 %i.yn, 0
  br i1 %i.zh, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.zi = sub nuw nsw i64 9223372036854775807, %i.yn
  %i.zj = icmp sgt i64 %.sroa.04.0.i.i, %i.zi
  br i1 %i.zj, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i, label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  %i.zk = sub nsw i64 -9223372036854775808, %i.yn
  %i.zl = icmp slt i64 %.sroa.04.0.i.i, %i.zk
  br i1 %i.zl, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.zm = add nsw i64 %.sroa.04.0.i.i, %i.yn
  br label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i

_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i: ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hu, %_ZN9grpc_coremlENS_8DurationEd.exit.i, %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i
  %.0.i.i95.i = phi i64 [ -9223372036854775808, %bb.hu ], [ 9223372036854775807, %_ZN9grpc_coremlENS_8DurationEd.exit.i ], [ -9223372036854775808, %bb.hx ], [ %i.zm, %bb.hy ], [ 9223372036854775807, %bb.hw ], [ %i.yj, %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit.i ]
  %i.zn = getelementptr inbounds nuw i8, ptr %.034.i, i64 56
  store i64 %.0.i.i95.i, ptr %i.zn, align 8, !tbaa !25, !noalias !1040
  %i.zo = getelementptr inbounds nuw i8, ptr %.034.i, i64 8 ; 2 uses
  %i.zp = atomicrmw add ptr %i.zo, i64 1 monotonic, align 8, !noalias !1050 ; 0 uses
  %i.zq = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39
          to label %.noexc.i191 unwind label %bb.ik, !noalias !1040, !inline_history !1053 ; 9 uses

.noexc.i191:                                      ; preds = %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1054
  store i64 %i.yj, ptr %5, align 8, !noalias !1054
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8 ; 2 uses
  store i64 1, ptr %i.zr, align 8, !tbaa !337, !noalias !1054
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerE, i64 16), ptr %i.zq, align 8, !tbaa !9, !noalias !1054
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 16 ; 2 uses
  store ptr %.034.i, ptr %i.zs, align 8, !tbaa !803, !noalias !1054
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zq, i64 40 ; 3 uses
  store i8 0, ptr %i.zu, align 8, !tbaa !446, !noalias !1054
  %.val.i.i.i = load ptr, ptr %i.xc, align 8, !tbaa !525, !noalias !1054
  %i.zv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !357, !noalias !1054 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !9, !noalias !1054
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 72
  %i.zz = load ptr, ptr %i.zy, align 8, !noalias !1054
  %i.aaa = invoke noundef ptr %i.zz(ptr noundef nonnull align 8 dereferenceable(8) %i.zw)
          to label %bb.hz unwind label %bb.id, !noalias !1054, !inline_history !1057 ; 2 uses

bb.hz:                                            ; preds = %.noexc.i191
  %i.aab = invoke i64 @_ZNK9grpc_core8DurationcvNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ia unwind label %bb.id, !noalias !1054, !inline_history !1057

bb.ia:                                            ; preds = %bb.hz
  %i.aac = atomicrmw add ptr %i.zr, i64 1 monotonic, align 8, !noalias !1058 ; 0 uses
  store ptr %i.zq, ptr %6, align 16, !tbaa !1061, !noalias !1054
  %i.aad = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerC1ENS3_13RefCountedPtrIS7_EENS3_8DurationEE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.aad, align 8, !tbaa !457, !noalias !1054
  %i.aae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerC1ENS3_13RefCountedPtrIS7_EENS3_8DurationEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESF_", ptr %i.aae, align 16, !tbaa !459, !noalias !1054
  %i.aaf = load ptr, ptr %i.aaa, align 8, !tbaa !9, !noalias !1054
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 88
  %i.aah = load ptr, ptr %i.aag, align 8, !noalias !1054
  %i.aai = invoke { i64, i64 } %i.aah(ptr noundef nonnull align 8 dereferenceable(24) %i.aaa, i64 %i.aab, ptr noundef nonnull align 16 %6)
          to label %bb.ib unwind label %bb.ie, !noalias !1054, !inline_history !1057 ; 2 uses

bb.ib:                                            ; preds = %bb.ia
  %i.aaj = extractvalue { i64, i64 } %i.aai, 0
  %i.aak = extractvalue { i64, i64 } %i.aai, 1
  %i.aal = load i8, ptr %i.zu, align 8, !tbaa !446, !range !63, !noalias !1054, !noundef !64
  %i.aam = trunc nuw i8 %i.aal to i1
  store i64 %i.aaj, ptr %i.zt, align 8, !noalias !1054
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  store i64 %i.aak, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1054
  br i1 %i.aam, label %bb.ih, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  store i8 1, ptr %i.zu, align 8, !tbaa !446, !noalias !1054
  br label %bb.ih

bb.id:                                            ; preds = %bb.hz, %.noexc.i191
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %"_ZZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerC1ENS_13RefCountedPtrIS3_EENS_8DurationEEN3$_0D2Ev.exit13.i.i.i"

bb.ie:                                            ; preds = %bb.ia
  %i.aao = landingpad { ptr, i32 }
          cleanup
  %i.aap = load ptr, ptr %i.aae, align 16, !tbaa !459, !noalias !1054
  call void %i.aap(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %6) #38, !noalias !1054, !inline_history !1063
  br label %"_ZZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerC1ENS_13RefCountedPtrIS3_EENS_8DurationEEN3$_0D2Ev.exit13.i.i.i"

"_ZZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerC1ENS_13RefCountedPtrIS3_EENS_8DurationEEN3$_0D2Ev.exit13.i.i.i": ; preds = %bb.ie, %bb.id
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.aan, %bb.id ], [ %i.aao, %bb.ie ]
  %.val9.i.i.i = load ptr, ptr %i.zs, align 8, !tbaa !803, !noalias !1054 ; 3 uses
  %.not.i.i.i.i192 = icmp eq ptr %.val9.i.i.i, null
  br i1 %.not.i.i.i.i192, label %.body.thread.i, label %bb.if

bb.if:                                            ; preds = %"_ZZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerC1ENS_13RefCountedPtrIS3_EENS_8DurationEEN3$_0D2Ev.exit13.i.i.i"
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val9.i.i.i, i64 8
  %i.aar = atomicrmw sub ptr %i.aaq, i64 1 acq_rel, align 8, !noalias !1054
  %i.aas = icmp eq i64 %i.aar, 1
  br i1 %i.aas, label %bb.ig, label %.body.thread.i, !prof !67

bb.ig:                                            ; preds = %bb.if
  call fastcc void @_ZNK9grpc_core11UnrefDeleteclINS_12_GLOBAL__N_15RlsLb5Cache5EntryEEEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %.val9.i.i.i), !noalias !1054, !inline_history !1064
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %bb.ig, %bb.if, %"_ZZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimerC1ENS_13RefCountedPtrIS3_EENS_8DurationEEN3$_0D2Ev.exit13.i.i.i"
  call void @_ZdlPvm(ptr noundef nonnull %i.zq, i64 noundef 48) #41, !noalias !1054, !inline_history !1053
  br label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EED2Ev.exit251

bb.ih:                                            ; preds = %bb.ic, %bb.ib
  %i.aat = load ptr, ptr %i.aae, align 16, !tbaa !459, !noalias !1054
  call void %i.aat(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %6) #38, !noalias !1054, !inline_history !1063
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1054
  %i.aau = getelementptr inbounds nuw i8, ptr %.034.i, i64 64 ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !663, !noalias !1040 ; 2 uses
  store ptr %i.zq, ptr %i.aau, align 8, !tbaa !663, !noalias !1040
  %.not.i.i.i.i97.i = icmp eq ptr %i.aav, null
  br i1 %.not.i.i.i.i97.i, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_15RlsLb5Cache5EntryEED2Ev.exit.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  invoke void @_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry12BackoffTimer6OrphanEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aav)
          to label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_15RlsLb5Cache5EntryEED2Ev.exit.i unwind label %bb.ij, !noalias !1040, !inline_history !1065

bb.ij:                                            ; preds = %bb.ii
  %i.aaw = landingpad { ptr, i32 }
          catch ptr null
  %i.aax = extractvalue { ptr, i32 } %i.aaw, 0
  call void @__clang_call_terminate(ptr %i.aax) #42, !noalias !1040, !inline_history !1043
  unreachable

_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_15RlsLb5Cache5EntryEED2Ev.exit.i: ; preds = %bb.ii, %bb.ih
  %.val59.i = load ptr, ptr %i.xc, align 8, !tbaa !525, !noalias !1040
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_15RlsLb17UpdatePickerAsyncEv(ptr noundef nonnull align 8 dereferenceable(400) %.val59.i)
          to label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EED2Ev.exit unwind label %bb.lt, !inline_history !1043

bb.ik:                                            ; preds = %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit96.i
  %i.aay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaz = atomicrmw sub ptr %i.zo, i64 1 acq_rel, align 8, !noalias !1040
  %i.aba = icmp eq i64 %i.aaz, 1
  br i1 %i.aba, label %bb.il, label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EED2Ev.exit251, !prof !67

bb.il:                                            ; preds = %bb.ik
  call fastcc void @_ZNK9grpc_core11UnrefDeleteclINS_12_GLOBAL__N_15RlsLb5Cache5EntryEEEvPT_(ptr noundef nonnull align 8 dereferenceable(160) %.034.i), !noalias !1040, !inline_history !1066
  br label %_ZNSt10unique_ptrIN9grpc_core7BackOffESt14default_deleteIS1_EED2Ev.exit251

bb.im:                                            ; preds = %_ZN9grpc_core12_GLOBAL__N_15RlsLb5Cache5Entry8MarkUsedEv.exit.i187
  %i.abb = getelementptr inbounds nuw i8, ptr %.034.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.abb, i64 32, i1 false), !tbaa.struct !877, !noalias !1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.abb, ptr noundef nonnull align 8 dereferenceable(32) %i.wx, i64 32, i1 false), !tbaa.struct !877, !noalias !1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wx, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !877, !noalias !1040
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %.not.i.i.i.i166, label %_ZN9grpc_core9Timestamp3NowEv.exit103.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZN9grpc_core9Timestamp3NowEv.exit103.i unwind label %bb.lt, !inline_history !1043

_ZN9grpc_core9Timestamp3NowEv.exit103.i:          ; preds = %bb.in, %bb.im
  %i.abc = load ptr, ptr %i.mq, align 8, !tbaa !701, !noalias !1040 ; 2 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !9, !noalias !1040
  %i.abe = load ptr, ptr %i.abd, align 8, !noalias !1040
  %i.abf = invoke i64 %i.abe(ptr noundef nonnull align 8 dereferenceable(8) %i.abc)
          to label %.noexc219 unwind label %bb.lt, !inline_history !1043 ; 11 uses

.noexc219:                                        ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit103.i
  %.val58.i = load ptr, ptr %i.xc, align 8, !tbaa !525, !noalias !1040
  %i.abg = getelementptr inbounds nuw i8, ptr %.val58.i, i64 328
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !343, !noalias !1040 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 112
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.abi, align 8, !tbaa !25, !noalias !1040 ; 5 uses
  %i.abj = icmp eq i64 %i.abf, 9223372036854775807 ; 2 uses
  %i.abk = icmp eq i64 %.sroa.0.0.copyload.i.i, 9223372036854775807
  %or.cond.i.i104.i = or i1 %i.abj, %i.abk
  br i1 %or.cond.i.i104.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit107.i, label %bb.io

bb.io:                                            ; preds = %.noexc219
  %i.abl = icmp eq i64 %i.abf, -9223372036854775808
  %i.abm = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775808
  %or.cond9.i.i105.i = or i1 %i.abl, %i.abm
  br i1 %or.cond9.i.i105.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit107.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.abn = icmp sgt i64 %i.abf, 0
  br i1 %i.abn, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.abo = sub nuw nsw i64 9223372036854775807, %i.abf
  %i.abp = icmp sgt i64 %.sroa.0.0.copyload.i.i, %i.abo
  br i1 %i.abp, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit107.i, label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %i.abq = sub nsw i64 -9223372036854775808, %i.abf
  %i.abr = icmp slt i64 %.sroa.0.0.copyload.i.i, %i.abq
  br i1 %i.abr, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit107.i, label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.abs = add nsw i64 %.sroa.0.0.copyload.i.i, %i.abf
  br label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit107.i

_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit107.i: ; preds = %bb.is, %bb.ir, %bb.iq, %bb.io, %.noexc219
  %.0.i.i106.i = phi i64 [ -9223372036854775808, %bb.io ], [ 9223372036854775807, %.noexc219 ], [ -9223372036854775808, %bb.ir ], [ %i.abs, %bb.is ], [ 9223372036854775807, %bb.iq ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.034.i, i64 128
  store i64 %.0.i.i106.i, ptr %i.abt, align 8, !tbaa !25, !noalias !1040
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abh, i64 120
  %.sroa.0.0.copyload.i108.i = load i64, ptr %i.abu, align 8, !tbaa !25, !noalias !1040 ; 5 uses
  %i.abv = icmp eq i64 %.sroa.0.0.copyload.i108.i, 9223372036854775807
  %or.cond.i.i109.i = or i1 %i.abj, %i.abv
  br i1 %or.cond.i.i109.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit112.i, label %bb.it

bb.it:                                            ; preds = %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit107.i
  %i.abw = icmp eq i64 %i.abf, -9223372036854775808
  %i.abx = icmp eq i64 %.sroa.0.0.copyload.i108.i, -9223372036854775808
  %or.cond9.i.i110.i = or i1 %i.abw, %i.abx
  br i1 %or.cond9.i.i110.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit112.i, label %bb.iu

end_hunk_0
