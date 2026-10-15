Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/data?download=true
inline.NumInlined: 10971
inline.NumDeleted: 3124
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 110
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZN7xgboost13DispatchDTypeIZNS_13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdESA_EUlSD_E_EEDaNS_21ArrayInterfaceHandler4TypeESD_:bb.a

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %.preheader107.i.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i: ; preds = %bb.q
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %41, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap)
  %.pr.i.i9.i.i.i = load ptr, ptr %41, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.not.i.i10.i.i.i = icmp eq ptr %.pr.i.i9.i.i.i, null
  br i1 %.not.i.i10.i.i.i, label %.preheader107.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  %i.fp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %.noexc.i.i12.i.i.i unwind label %bb.s

.noexc.i.i12.i.i.i:                               ; preds = %bb.r
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.fp, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i unwind label %bb.s

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i: ; preds = %.noexc.i.i12.i.i.i
  %i.fq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i unwind label %bb.t ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i
  %i.ft = load ptr, ptr %41, align 8, !tbaa !169  ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !56
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !120
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef %i.fu, i64 noundef %i.fw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i unwind label %bb.t

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.v unwind label %bb.s

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i, %.noexc.i.i12.i.i.i, %bb.r
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i.i11.i.i.i = phi { ptr, i32 } [ %i.fz, %bb.s ], [ %i.ga, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  br label %common.resume

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  %.pr99.i.i.i.i.i = load ptr, ptr %41, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i19.i.i.i = icmp eq ptr %.pr99.i.i.i.i.i, null
  br i1 %.not.i78.i.i19.i.i.i, label %.preheader107.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gb = load ptr, ptr %.pr99.i.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.pr99.i.i.i.i.i, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i: ; preds = %bb.w
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !57
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr99.i.i.i.i.i, i64 noundef 32) #39
  br label %.preheader107.i.i.i.i.i

.preheader107.i.i.i.i.i:                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i, %bb.v, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  %.not128.i.i.i.i.i = icmp eq i64 %.sroa.68.0.copyload.i.i, 0
  br i1 %.not128.i.i.i.i.i, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i.preheader

.lr.ph117.i.i.i.i.i.preheader:                    ; preds = %.preheader107.i.i.i.i.i
  %xtraiter1134 = and i64 %.sroa.68.0.copyload.i.i, 3 ; 3 uses
  %i.gg = icmp ult i64 %.sroa.68.0.copyload.i.i, 4
  br i1 %i.gg, label %.lr.ph117.i.i.i.i.i.epil.preheader, label %.lr.ph117.i.i.i.i.i.preheader.new

.lr.ph117.i.i.i.i.i.preheader.new:                ; preds = %.lr.ph117.i.i.i.i.i.preheader
  %unroll_iter1137 = and i64 %.sroa.68.0.copyload.i.i, -4
  br label %.lr.ph117.i.i.i.i.i

.lr.ph117.i.i.i.i.i:                              ; preds = %.lr.ph117.i.i.i.i.i, %.lr.ph117.i.i.i.i.i.preheader.new
  %.060116.i.i.i.i.i = phi i64 [ 0, %.lr.ph117.i.i.i.i.i.preheader.new ], [ %i.he, %.lr.ph117.i.i.i.i.i ] ; 6 uses
  %niter1138 = phi i64 [ 0, %.lr.ph117.i.i.i.i.i.preheader.new ], [ %niter1138.next.3, %.lr.ph117.i.i.i.i.i ]
  %i.gh = mul i64 %.060116.i.i.i.i.i, %.sroa.05.0.copyload.i.i
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.gh
  %i.gj = mul i64 %.060116.i.i.i.i.i, %i.ba
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !73
  store float %i.gl, ptr %i.gi, align 4, !tbaa !73
  %i.gm = or disjoint i64 %.060116.i.i.i.i.i, 1   ; 2 uses
  %i.gn = mul i64 %i.gm, %.sroa.05.0.copyload.i.i
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.gn
  %i.gp = mul i64 %i.gm, %i.ba
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !73
  store float %i.gr, ptr %i.go, align 4, !tbaa !73
  %i.gs = or disjoint i64 %.060116.i.i.i.i.i, 2   ; 2 uses
  %i.gt = mul i64 %i.gs, %.sroa.05.0.copyload.i.i
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.gt
  %i.gv = mul i64 %i.gs, %i.ba
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !73
  store float %i.gx, ptr %i.gu, align 4, !tbaa !73
  %i.gy = or disjoint i64 %.060116.i.i.i.i.i, 3   ; 2 uses
  %i.gz = mul i64 %i.gy, %.sroa.05.0.copyload.i.i
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i, i64 %i.gz
  %i.hb = mul i64 %i.gy, %i.ba
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !73
  store float %i.hd, ptr %i.ha, align 4, !tbaa !73
  %i.he = add nuw i64 %.060116.i.i.i.i.i, 4       ; 2 uses
  %niter1138.next.3 = add nuw i64 %niter1138, 4   ; 2 uses
  %niter1138.ncmp.3 = icmp eq i64 %niter1138.next.3, %unroll_iter1137
  br i1 %niter1138.ncmp.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit918.unr-lcssa, label %.lr.ph117.i.i.i.i.i, !llvm.loop !932

bb.x:                                             ; preds = %bb.t
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #38
  unreachable

bb.y:                                             ; preds = %bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !149 ; 19 uses
  %.not.i2 = icmp eq ptr %i.hi, null
  br i1 %.not.i2, label %bb.z, label %_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i, !prof !71

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i: ; preds = %bb.y
  %i.hj = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !74 ; 18 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1065, !nonnull !111, !align !121 ; 5 uses
  %.sroa.05.0.copyload.i.i3 = load i64, ptr %i.hm, align 8, !tbaa !57 ; 7 uses
  %.sroa.3.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %.sroa.3.0.copyload.i.i5 = load i64, ptr %.sroa.3.0..sroa_idx.i.i4, align 8, !tbaa !74
  %.sroa.46.0..sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %.sroa.46.0.copyload.i.i7 = load ptr, ptr %.sroa.46.0..sroa_idx.i.i6, align 8, !tbaa !102 ; 12 uses
  %.sroa.57.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %.sroa.57.0.copyload.i.i9 = load ptr, ptr %.sroa.57.0..sroa_idx.i.i8, align 8, !tbaa !102 ; 6 uses
  %.sroa.68.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %.sroa.68.0.copyload.i.i11 = load i64, ptr %.sroa.68.0..sroa_idx.i.i10, align 8, !tbaa !74 ; 25 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1066, !nonnull !111, !align !121
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !274
  %i.hq = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.hp) ; 5 uses
  %i.hr = icmp eq i64 %.sroa.3.0.copyload.i.i5, %.sroa.68.0.copyload.i.i11
  %.not4.i.le.i.i.i.i.i12 = icmp eq i64 %.sroa.05.0.copyload.i.i3, 1
  %or.cond.i.i.i.i13 = select i1 %i.hr, i1 true, i1 %.not4.i.le.i.i.i.i.i12
  %i.hs = icmp eq i32 %i.hq, 1                    ; 2 uses
  br i1 %or.cond.i.i.i.i13, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.hs, label %.preheader.i.i.i.i.i67, label %bb.ab

.preheader.i.i.i.i.i67:                           ; preds = %bb.aa
  %.not137.i.i.i.i.i68 = icmp eq i64 %.sroa.68.0.copyload.i.i11, 0
  br i1 %.not137.i.i.i.i.i68, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i69.preheader

.lr.ph130.i.i.i.i.i69.preheader:                  ; preds = %.preheader.i.i.i.i.i67
  %min.iters.check806 = icmp ugt i64 %.sroa.68.0.copyload.i.i11, 3
  %ident.check804.not = icmp eq i64 %i.hk, 1
  %or.cond896 = select i1 %min.iters.check806, i1 %ident.check804.not, i1 false
  br i1 %or.cond896, label %vector.ph807, label %.lr.ph130.i.i.i.i.i69.preheader919

vector.ph807:                                     ; preds = %.lr.ph130.i.i.i.i.i69.preheader
  %n.vec808 = and i64 %.sroa.68.0.copyload.i.i11, -4 ; 3 uses
  br label %vector.body809

vector.body809:                                   ; preds = %vector.body809, %vector.ph807
  %index810 = phi i64 [ 0, %vector.ph807 ], [ %index.next813, %vector.body809 ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %index810
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index810 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %wide.load811 = load <2 x double>, ptr %i.hu, align 8, !tbaa !151
  %wide.load812 = load <2 x double>, ptr %i.hv, align 8, !tbaa !151
  %46 = shufflevector <2 x double> %wide.load811, <2 x double> %wide.load812, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %47 = fptrunc <4 x double> %46 to <4 x float>
  store <4 x float> %47, ptr %i.ht, align 4, !tbaa !73
  %index.next813 = add nuw i64 %index810, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next813, %n.vec808
  br i1 %i.hw, label %middle.block814, label %vector.body809, !llvm.loop !933

middle.block814:                                  ; preds = %vector.body809
  %cmp.n815 = icmp eq i64 %.sroa.68.0.copyload.i.i11, %n.vec808
  br i1 %cmp.n815, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i69.preheader919

.lr.ph130.i.i.i.i.i69.preheader919:               ; preds = %.lr.ph130.i.i.i.i.i69.preheader, %middle.block814
  %.0129.i.i.i.i.i70.ph = phi i64 [ 0, %.lr.ph130.i.i.i.i.i69.preheader ], [ %n.vec808, %middle.block814 ] ; 3 uses
  %xtraiter1131 = and i64 %.sroa.68.0.copyload.i.i11, 3 ; 2 uses
  %lcmp.mod1132.not = icmp eq i64 %xtraiter1131, 0
  br i1 %lcmp.mod1132.not, label %.lr.ph130.i.i.i.i.i69.prol.loopexit, label %.lr.ph130.i.i.i.i.i69.prol

.lr.ph130.i.i.i.i.i69.prol:                       ; preds = %.lr.ph130.i.i.i.i.i69.preheader919, %.lr.ph130.i.i.i.i.i69.prol
  %.0129.i.i.i.i.i70.prol = phi i64 [ %i.ic, %.lr.ph130.i.i.i.i.i69.prol ], [ %.0129.i.i.i.i.i70.ph, %.lr.ph130.i.i.i.i.i69.preheader919 ] ; 3 uses
  %prol.iter1133 = phi i64 [ %prol.iter1133.next, %.lr.ph130.i.i.i.i.i69.prol ], [ 0, %.lr.ph130.i.i.i.i.i69.preheader919 ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %.0129.i.i.i.i.i70.prol
  %i.hy = mul i64 %.0129.i.i.i.i.i70.prol, %i.hk
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !151
  %i.ib = fptrunc double %i.ia to float
  store float %i.ib, ptr %i.hx, align 4, !tbaa !73
  %i.ic = add nuw i64 %.0129.i.i.i.i.i70.prol, 1  ; 2 uses
  %prol.iter1133.next = add i64 %prol.iter1133, 1 ; 2 uses
  %prol.iter1133.cmp.not = icmp eq i64 %prol.iter1133.next, %xtraiter1131
  br i1 %prol.iter1133.cmp.not, label %.lr.ph130.i.i.i.i.i69.prol.loopexit, label %.lr.ph130.i.i.i.i.i69.prol, !llvm.loop !934

.lr.ph130.i.i.i.i.i69.prol.loopexit:              ; preds = %.lr.ph130.i.i.i.i.i69.prol, %.lr.ph130.i.i.i.i.i69.preheader919
  %.0129.i.i.i.i.i70.unr = phi i64 [ %.0129.i.i.i.i.i70.ph, %.lr.ph130.i.i.i.i.i69.preheader919 ], [ %i.ic, %.lr.ph130.i.i.i.i.i69.prol ]
  %i.id = sub i64 %.0129.i.i.i.i.i70.ph, %.sroa.68.0.copyload.i.i11
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i69

.lr.ph130.i.i.i.i.i69:                            ; preds = %.lr.ph130.i.i.i.i.i69.prol.loopexit, %.lr.ph130.i.i.i.i.i69
  %.0129.i.i.i.i.i70 = phi i64 [ %i.jc, %.lr.ph130.i.i.i.i.i69 ], [ %.0129.i.i.i.i.i70.unr, %.lr.ph130.i.i.i.i.i69.prol.loopexit ] ; 6 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %.0129.i.i.i.i.i70
  %i.ig = mul i64 %.0129.i.i.i.i.i70, %i.hk
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !151
  %i.ij = fptrunc double %i.ii to float
  store float %i.ij, ptr %i.if, align 4, !tbaa !73
  %i.ik = add nuw i64 %.0129.i.i.i.i.i70, 1       ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %i.ik
  %i.im = mul i64 %i.ik, %i.hk
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.im
  %i.io = load double, ptr %i.in, align 8, !tbaa !151
  %i.ip = fptrunc double %i.io to float
  store float %i.ip, ptr %i.il, align 4, !tbaa !73
  %i.iq = add nuw i64 %.0129.i.i.i.i.i70, 2       ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %i.iq
  %i.is = mul i64 %i.iq, %i.hk
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !151
  %i.iv = fptrunc double %i.iu to float
  store float %i.iv, ptr %i.ir, align 4, !tbaa !73
  %i.iw = add nuw i64 %.0129.i.i.i.i.i70, 3       ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %i.iw
  %i.iy = mul i64 %i.iw, %i.hk
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.iy
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !151
  %i.jb = fptrunc double %i.ja to float
  store float %i.jb, ptr %i.ix, align 4, !tbaa !73
  %i.jc = add nuw i64 %.0129.i.i.i.i.i70, 4       ; 2 uses
  %exitcond149.not.i.i.i.i.i71.3 = icmp eq i64 %i.jc, %.sroa.68.0.copyload.i.i11
  br i1 %exitcond149.not.i.i.i.i.i71.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i69, !llvm.loop !935

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 %i.hq, ptr %i.am, align 4, !tbaa !65, !noalias !1069
  store i32 1, ptr %i.an, align 4, !tbaa !65, !noalias !1069
  %.not.i.i.i.i.i.i44 = icmp slt i32 %i.hq, 1
  br i1 %.not.i.i.i.i.i.i44, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i51, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i45

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i45: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.preheader112.i.i.i.i.i46

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i51: ; preds = %bb.ab
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %39, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an)
  %.pr.i.i.i.i.i52 = load ptr, ptr %39, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %.not.i.i.i.i.i53 = icmp eq ptr %.pr.i.i.i.i.i52, null
  br i1 %.not.i.i.i.i.i53, label %.preheader112.i.i.i.i.i46, label %bb.ac

bb.ac:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.jd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %.noexc.i.i.i.i.i55 unwind label %bb.ad

.noexc.i.i.i.i.i55:                               ; preds = %bb.ac
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jd, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i56 unwind label %bb.ad

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i56: ; preds = %.noexc.i.i.i.i.i55
  %i.je = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i57 unwind label %bb.ae ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i57: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i56
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i58 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i58: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i57
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i59 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i58
  %i.jh = load ptr, ptr %39, align 8, !tbaa !169  ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !56
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !120
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef %i.ji, i64 noundef %i.jk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i60 unwind label %bb.ae

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i59
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i61 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i61: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i60
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %bb.ag unwind label %bb.ad

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i61, %.noexc.i.i.i.i.i55, %bb.ac
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i58, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i57, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i56
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.i.i.i.i.i54 = phi { ptr, i32 } [ %i.jn, %bb.ad ], [ %i.jo, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %common.resume

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  %.pr104.i.i.i.i.i62 = load ptr, ptr %39, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i.i.i.i63 = icmp eq ptr %.pr104.i.i.i.i.i62, null
  br i1 %.not.i78.i.i.i.i.i63, label %.preheader112.i.i.i.i.i46, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jp = load ptr, ptr %.pr104.i.i.i.i.i62, align 8, !tbaa !56 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.pr104.i.i.i.i.i62, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i64: ; preds = %bb.ah
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !57
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i65

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i65: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i64
  call void @_ZdlPvm(ptr noundef nonnull %.pr104.i.i.i.i.i62, i64 noundef 32) #39
  br label %.preheader112.i.i.i.i.i46

.preheader112.i.i.i.i.i46:                        ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i65, %bb.ag, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i51, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %.not133.i.i.i.i.i47 = icmp eq i64 %.sroa.68.0.copyload.i.i11, 0
  br i1 %.not133.i.i.i.i.i47, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i48.preheader

.lr.ph122.i.i.i.i.i48.preheader:                  ; preds = %.preheader112.i.i.i.i.i46
  %min.iters.check792 = icmp ugt i64 %.sroa.68.0.copyload.i.i11, 3
  %ident.check790.not = icmp eq i64 %i.hk, 1
  %or.cond897 = select i1 %min.iters.check792, i1 %ident.check790.not, i1 false
  br i1 %or.cond897, label %vector.ph793, label %.lr.ph122.i.i.i.i.i48.preheader921

vector.ph793:                                     ; preds = %.lr.ph122.i.i.i.i.i48.preheader
  %n.vec794 = and i64 %.sroa.68.0.copyload.i.i11, -4 ; 3 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph793
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next799, %vector.body795 ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %index796
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index796 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load797 = load <2 x double>, ptr %i.jv, align 8, !tbaa !151
  %wide.load798 = load <2 x double>, ptr %i.jw, align 8, !tbaa !151
  %48 = shufflevector <2 x double> %wide.load797, <2 x double> %wide.load798, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %49 = fptrunc <4 x double> %48 to <4 x float>
  store <4 x float> %49, ptr %i.ju, align 4, !tbaa !73
  %index.next799 = add nuw i64 %index796, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next799, %n.vec794
  br i1 %i.jx, label %middle.block800, label %vector.body795, !llvm.loop !938

middle.block800:                                  ; preds = %vector.body795
  %cmp.n801 = icmp eq i64 %.sroa.68.0.copyload.i.i11, %n.vec794
  br i1 %cmp.n801, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i48.preheader921

.lr.ph122.i.i.i.i.i48.preheader921:               ; preds = %.lr.ph122.i.i.i.i.i48.preheader, %middle.block800
  %.060121.i.i.i.i.i49.ph = phi i64 [ 0, %.lr.ph122.i.i.i.i.i48.preheader ], [ %n.vec794, %middle.block800 ] ; 3 uses
  %xtraiter1128 = and i64 %.sroa.68.0.copyload.i.i11, 3 ; 2 uses
  %lcmp.mod1129.not = icmp eq i64 %xtraiter1128, 0
  br i1 %lcmp.mod1129.not, label %.lr.ph122.i.i.i.i.i48.prol.loopexit, label %.lr.ph122.i.i.i.i.i48.prol

.lr.ph122.i.i.i.i.i48.prol:                       ; preds = %.lr.ph122.i.i.i.i.i48.preheader921, %.lr.ph122.i.i.i.i.i48.prol
  %.060121.i.i.i.i.i49.prol = phi i64 [ %i.kd, %.lr.ph122.i.i.i.i.i48.prol ], [ %.060121.i.i.i.i.i49.ph, %.lr.ph122.i.i.i.i.i48.preheader921 ] ; 3 uses
  %prol.iter1130 = phi i64 [ %prol.iter1130.next, %.lr.ph122.i.i.i.i.i48.prol ], [ 0, %.lr.ph122.i.i.i.i.i48.preheader921 ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %.060121.i.i.i.i.i49.prol
  %i.jz = mul i64 %.060121.i.i.i.i.i49.prol, %i.hk
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !151
  %i.kc = fptrunc double %i.kb to float
  store float %i.kc, ptr %i.jy, align 4, !tbaa !73
  %i.kd = add nuw i64 %.060121.i.i.i.i.i49.prol, 1 ; 2 uses
  %prol.iter1130.next = add i64 %prol.iter1130, 1 ; 2 uses
  %prol.iter1130.cmp.not = icmp eq i64 %prol.iter1130.next, %xtraiter1128
  br i1 %prol.iter1130.cmp.not, label %.lr.ph122.i.i.i.i.i48.prol.loopexit, label %.lr.ph122.i.i.i.i.i48.prol, !llvm.loop !939

.lr.ph122.i.i.i.i.i48.prol.loopexit:              ; preds = %.lr.ph122.i.i.i.i.i48.prol, %.lr.ph122.i.i.i.i.i48.preheader921
  %.060121.i.i.i.i.i49.unr = phi i64 [ %.060121.i.i.i.i.i49.ph, %.lr.ph122.i.i.i.i.i48.preheader921 ], [ %i.kd, %.lr.ph122.i.i.i.i.i48.prol ]
  %i.ke = sub i64 %.060121.i.i.i.i.i49.ph, %.sroa.68.0.copyload.i.i11
  %i.kf = icmp ugt i64 %i.ke, -4
  br i1 %i.kf, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i48

.lr.ph122.i.i.i.i.i48:                            ; preds = %.lr.ph122.i.i.i.i.i48.prol.loopexit, %.lr.ph122.i.i.i.i.i48
  %.060121.i.i.i.i.i49 = phi i64 [ %i.ld, %.lr.ph122.i.i.i.i.i48 ], [ %.060121.i.i.i.i.i49.unr, %.lr.ph122.i.i.i.i.i48.prol.loopexit ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %.060121.i.i.i.i.i49
  %i.kh = mul i64 %.060121.i.i.i.i.i49, %i.hk
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.kh
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !151
  %i.kk = fptrunc double %i.kj to float
  store float %i.kk, ptr %i.kg, align 4, !tbaa !73
  %i.kl = add nuw i64 %.060121.i.i.i.i.i49, 1     ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %i.kl
  %i.kn = mul i64 %i.kl, %i.hk
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.kn
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !151
  %i.kq = fptrunc double %i.kp to float
  store float %i.kq, ptr %i.km, align 4, !tbaa !73
  %i.kr = add nuw i64 %.060121.i.i.i.i.i49, 2     ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %i.kr
  %i.kt = mul i64 %i.kr, %i.hk
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !151
  %i.kw = fptrunc double %i.kv to float
  store float %i.kw, ptr %i.ks, align 4, !tbaa !73
  %i.kx = add nuw i64 %.060121.i.i.i.i.i49, 3     ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i7, i64 %i.kx
  %i.kz = mul i64 %i.kx, %i.hk
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !151
  %i.lc = fptrunc double %i.lb to float
  store float %i.lc, ptr %i.ky, align 4, !tbaa !73
  %i.ld = add nuw i64 %.060121.i.i.i.i.i49, 4     ; 2 uses
  %exitcond145.not.i.i.i.i.i50.3 = icmp eq i64 %i.ld, %.sroa.68.0.copyload.i.i11
  br i1 %exitcond145.not.i.i.i.i.i50.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i48, !llvm.loop !940

bb.ai:                                            ; preds = %bb.ae
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #38
  unreachable

bb.aj:                                            ; preds = %_ZN7xgboost6common4SpanIKdLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.hs, label %.preheader.i.i23.i.i.i39, label %bb.ak

.preheader.i.i23.i.i.i39:                         ; preds = %bb.aj
  %.not132.i.i.i.i.i40 = icmp eq i64 %.sroa.68.0.copyload.i.i11, 0
  br i1 %.not132.i.i.i.i.i40, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i41.preheader

.lr.ph125.i.i.i.i.i41.preheader:                  ; preds = %.preheader.i.i23.i.i.i39
  %xtraiter1123 = and i64 %.sroa.68.0.copyload.i.i11, 1
  %i.lg = icmp eq i64 %.sroa.68.0.copyload.i.i11, 1
  br i1 %i.lg, label %.lr.ph125.i.i.i.i.i41.epil.preheader, label %.lr.ph125.i.i.i.i.i41.preheader.new

.lr.ph125.i.i.i.i.i41.preheader.new:              ; preds = %.lr.ph125.i.i.i.i.i41.preheader
  %unroll_iter1126 = and i64 %.sroa.68.0.copyload.i.i11, -2
  br label %.lr.ph125.i.i.i.i.i41

.lr.ph125.i.i.i.i.i41:                            ; preds = %.lr.ph125.i.i.i.i.i41, %.lr.ph125.i.i.i.i.i41.preheader.new
  %.0124.i.i.i.i.i42 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i41.preheader.new ], [ %i.lu, %.lr.ph125.i.i.i.i.i41 ] ; 4 uses
  %niter1127 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i41.preheader.new ], [ %niter1127.next.1, %.lr.ph125.i.i.i.i.i41 ]
  %i.lh = mul i64 %.0124.i.i.i.i.i42, %.sroa.05.0.copyload.i.i3
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i9, i64 %i.lh
  %i.lj = mul i64 %.0124.i.i.i.i.i42, %i.hk
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.lj
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !151
  %i.lm = fptrunc double %i.ll to float
  store float %i.lm, ptr %i.li, align 4, !tbaa !73
  %i.ln = or disjoint i64 %.0124.i.i.i.i.i42, 1   ; 2 uses
  %i.lo = mul i64 %i.ln, %.sroa.05.0.copyload.i.i3
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i9, i64 %i.lo
  %i.lq = mul i64 %i.ln, %i.hk
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.lq
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !151
  %i.lt = fptrunc double %i.ls to float
  store float %i.lt, ptr %i.lp, align 4, !tbaa !73
  %i.lu = add nuw i64 %.0124.i.i.i.i.i42, 2       ; 2 uses
  %niter1127.next.1 = add nuw i64 %niter1127, 2   ; 2 uses
  %niter1127.ncmp.1 = icmp eq i64 %niter1127.next.1, %unroll_iter1126
  br i1 %niter1127.ncmp.1, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit923.unr-lcssa, label %.lr.ph125.i.i.i.i.i41, !llvm.loop !941

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i32 %i.hq, ptr %i.ak, align 4, !tbaa !65, !noalias !1070
  store i32 1, ptr %i.al, align 4, !tbaa !65, !noalias !1070
  %.not.i.i.i6.i.i.i14 = icmp slt i32 %i.hq, 1
  br i1 %.not.i.i.i6.i.i.i14, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i21, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i15

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i15: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.preheader107.i.i.i.i.i16

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i21: ; preds = %bb.ak
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %37, ptr noundef nonnull align 4 dereferenceable(4) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.al)
  %.pr.i.i9.i.i.i22 = load ptr, ptr %37, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.not.i.i10.i.i.i23 = icmp eq ptr %.pr.i.i9.i.i.i22, null
  br i1 %.not.i.i10.i.i.i23, label %.preheader107.i.i.i.i.i16, label %bb.al

bb.al:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.lv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %.noexc.i.i12.i.i.i27 unwind label %bb.am

.noexc.i.i12.i.i.i27:                             ; preds = %bb.al
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.lv, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i28 unwind label %bb.am

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i28: ; preds = %.noexc.i.i12.i.i.i27
  %i.lw = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i29 unwind label %bb.an ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i29: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i28
  %i.lx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i30 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i30: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i29
  %i.ly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i31 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i31: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i30
  %i.lz = load ptr, ptr %37, align 8, !tbaa !169  ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !56
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !120
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef %i.ma, i64 noundef %i.mc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i32 unwind label %bb.an

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i31
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i33 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i33: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i32
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %bb.ap unwind label %bb.am

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i33, %.noexc.i.i12.i.i.i27, %bb.al
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i30, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i29, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i28
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %38)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i.i11.i.i.i24 = phi { ptr, i32 } [ %i.mf, %bb.am ], [ %i.mg, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %common.resume

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  %.pr99.i.i.i.i.i34 = load ptr, ptr %37, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i19.i.i.i35 = icmp eq ptr %.pr99.i.i.i.i.i34, null
  br i1 %.not.i78.i.i19.i.i.i35, label %.preheader107.i.i.i.i.i16, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mh = load ptr, ptr %.pr99.i.i.i.i.i34, align 8, !tbaa !56 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.pr99.i.i.i.i.i34, i64 16 ; 2 uses
  %i.mj = icmp eq ptr %i.mh, %i.mi
end_hunk_0
begin_hunk_1_@_ZN7xgboost13DispatchDTypeIZNS_13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdESA_EUlSD_E_EEDaNS_21ArrayInterfaceHandler4TypeESD_:bb.a
  %niter1059.next.1 = add nuw i64 %niter1059, 2   ; 2 uses
  %niter1059.ncmp.1 = icmp eq i64 %niter1059.next.1, %unroll_iter1058
  br i1 %niter1059.ncmp.1, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit945.unr-lcssa, label %.lr.ph125.i.i.i.i.i321, !llvm.loop !991

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 %i.ady, ptr %i.u, align 4, !tbaa !65, !noalias !1082
  store i32 1, ptr %i.v, align 4, !tbaa !65, !noalias !1082
  %.not.i.i.i6.i.i.i294 = icmp slt i32 %i.ady, 1
  br i1 %.not.i.i.i6.i.i.i294, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i301, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i295

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i295: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.preheader107.i.i.i.i.i296

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i301: ; preds = %bb.dm
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %21, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
  %.pr.i.i9.i.i.i302 = load ptr, ptr %21, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not.i.i10.i.i.i303 = icmp eq ptr %.pr.i.i9.i.i.i302, null
  br i1 %.not.i.i10.i.i.i303, label %.preheader107.i.i.i.i.i296, label %bb.dn

bb.dn:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i301
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.aij = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %.noexc.i.i12.i.i.i307 unwind label %bb.do

.noexc.i.i12.i.i.i307:                            ; preds = %bb.dn
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aij, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i308 unwind label %bb.do

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i308: ; preds = %.noexc.i.i12.i.i.i307
  %i.aik = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i309 unwind label %bb.dp ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i309: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i308
  %i.ail = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aik, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i310 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i310: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i309
  %i.aim = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aik, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i311 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i311: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i310
  %i.ain = load ptr, ptr %21, align 8, !tbaa !169 ; 2 uses
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !56
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !120
  %i.air = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aik, ptr noundef %i.aio, i64 noundef %i.aiq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i312 unwind label %bb.dp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i312: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i311
  %i.ais = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.air, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i313 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i313: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i312
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.dr unwind label %bb.do

bb.do:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i313, %.noexc.i.i12.i.i.i307, %bb.dn
  %i.ait = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i312, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i311, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i310, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i309, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i308
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.pn.i.i11.i.i.i304 = phi { ptr, i32 } [ %i.ait, %bb.do ], [ %i.aiu, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %common.resume

bb.dr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %.pr99.i.i.i.i.i314 = load ptr, ptr %21, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i19.i.i.i315 = icmp eq ptr %.pr99.i.i.i.i.i314, null
  br i1 %.not.i78.i.i19.i.i.i315, label %.preheader107.i.i.i.i.i296, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aiv = load ptr, ptr %.pr99.i.i.i.i.i314, align 8, !tbaa !56 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.pr99.i.i.i.i.i314, i64 16 ; 2 uses
  %i.aix = icmp eq ptr %i.aiv, %i.aiw
  br i1 %i.aix, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i316: ; preds = %bb.ds
  %i.aiy = load i64, ptr %i.aiw, align 8, !tbaa !57
  %i.aiz = add i64 %i.aiy, 1
  call void @_ZdlPvm(ptr noundef %i.aiv, i64 noundef %i.aiz) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i317

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i317: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20.i.i.i316
  call void @_ZdlPvm(ptr noundef nonnull %.pr99.i.i.i.i.i314, i64 noundef 32) #39
  br label %.preheader107.i.i.i.i.i296

.preheader107.i.i.i.i.i296:                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i21.i.i.i317, %bb.dr, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i301, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %.not128.i.i.i.i.i297 = icmp eq i64 %.sroa.68.0.copyload.i.i291, 0
  br i1 %.not128.i.i.i.i.i297, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph117.i.i.i.i.i298.preheader

.lr.ph117.i.i.i.i.i298.preheader:                 ; preds = %.preheader107.i.i.i.i.i296
  %xtraiter1050 = and i64 %.sroa.68.0.copyload.i.i291, 1
  %i.aja = icmp eq i64 %.sroa.68.0.copyload.i.i291, 1
  br i1 %i.aja, label %.lr.ph117.i.i.i.i.i298.epil.preheader, label %.lr.ph117.i.i.i.i.i298.preheader.new

.lr.ph117.i.i.i.i.i298.preheader.new:             ; preds = %.lr.ph117.i.i.i.i.i298.preheader
  %unroll_iter1053 = and i64 %.sroa.68.0.copyload.i.i291, -2
  br label %.lr.ph117.i.i.i.i.i298

.lr.ph117.i.i.i.i.i298:                           ; preds = %.lr.ph117.i.i.i.i.i298, %.lr.ph117.i.i.i.i.i298.preheader.new
  %.060116.i.i.i.i.i299 = phi i64 [ 0, %.lr.ph117.i.i.i.i.i298.preheader.new ], [ %i.ajo, %.lr.ph117.i.i.i.i.i298 ] ; 4 uses
  %niter1054 = phi i64 [ 0, %.lr.ph117.i.i.i.i.i298.preheader.new ], [ %niter1054.next.1, %.lr.ph117.i.i.i.i.i298 ]
  %i.ajb = mul i64 %.060116.i.i.i.i.i299, %.sroa.05.0.copyload.i.i283
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i289, i64 %i.ajb
  %i.ajd = mul i64 %.060116.i.i.i.i.i299, %i.ads
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %i.ajd
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !65
  %i.ajg = sitofp i32 %i.ajf to float
  store float %i.ajg, ptr %i.ajc, align 4, !tbaa !73
  %i.ajh = or disjoint i64 %.060116.i.i.i.i.i299, 1 ; 2 uses
  %i.aji = mul i64 %i.ajh, %.sroa.05.0.copyload.i.i283
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i289, i64 %i.aji
  %i.ajk = mul i64 %i.ajh, %i.ads
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !65
  %i.ajn = sitofp i32 %i.ajm to float
  store float %i.ajn, ptr %i.ajj, align 4, !tbaa !73
  %i.ajo = add nuw i64 %.060116.i.i.i.i.i299, 2   ; 2 uses
  %niter1054.next.1 = add nuw i64 %niter1054, 2   ; 2 uses
  %niter1054.ncmp.1 = icmp eq i64 %niter1054.next.1, %unroll_iter1053
  br i1 %niter1054.ncmp.1, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit946.unr-lcssa, label %.lr.ph117.i.i.i.i.i298, !llvm.loop !994

bb.dt:                                            ; preds = %bb.dp
  %i.ajp = landingpad { ptr, i32 }
          catch ptr null
  %i.ajq = extractvalue { ptr, i32 } %i.ajp, 0
  call void @__clang_call_terminate(ptr %i.ajq) #38
  unreachable

bb.du:                                            ; preds = %bb.a
  %i.ajr = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !149 ; 19 uses
  %.not.i352 = icmp eq ptr %i.ajs, null
  br i1 %.not.i352, label %bb.dv, label %_ZN7xgboost6common4SpanIKlLm18446744073709551615EEC2EPS2_m.exit.i, !prof !71

bb.dv:                                            ; preds = %bb.du
  tail call void @_ZSt9terminatev() #38
  unreachable

_ZN7xgboost6common4SpanIKlLm18446744073709551615EEC2EPS2_m.exit.i: ; preds = %bb.du
  %i.ajt = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !74 ; 18 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !1065, !nonnull !111, !align !121 ; 5 uses
  %.sroa.05.0.copyload.i.i353 = load i64, ptr %i.ajw, align 8, !tbaa !57 ; 7 uses
  %.sroa.3.0..sroa_idx.i.i354 = getelementptr inbounds nuw i8, ptr %i.ajw, i64 16
  %.sroa.3.0.copyload.i.i355 = load i64, ptr %.sroa.3.0..sroa_idx.i.i354, align 8, !tbaa !74
  %.sroa.46.0..sroa_idx.i.i356 = getelementptr inbounds nuw i8, ptr %i.ajw, i64 24
  %.sroa.46.0.copyload.i.i357 = load ptr, ptr %.sroa.46.0..sroa_idx.i.i356, align 8, !tbaa !102 ; 12 uses
  %.sroa.57.0..sroa_idx.i.i358 = getelementptr inbounds nuw i8, ptr %i.ajw, i64 32
  %.sroa.57.0.copyload.i.i359 = load ptr, ptr %.sroa.57.0..sroa_idx.i.i358, align 8, !tbaa !102 ; 6 uses
  %.sroa.68.0..sroa_idx.i.i360 = getelementptr inbounds nuw i8, ptr %i.ajw, i64 40
  %.sroa.68.0.copyload.i.i361 = load i64, ptr %.sroa.68.0..sroa_idx.i.i360, align 8, !tbaa !74 ; 25 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !1066, !nonnull !111, !align !121
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !274
  %i.aka = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.ajz) ; 5 uses
  %i.akb = icmp eq i64 %.sroa.3.0.copyload.i.i355, %.sroa.68.0.copyload.i.i361
  %.not4.i.le.i.i.i.i.i362 = icmp eq i64 %.sroa.05.0.copyload.i.i353, 1
  %or.cond.i.i.i.i363 = select i1 %i.akb, i1 true, i1 %.not4.i.le.i.i.i.i.i362
  %i.akc = icmp eq i32 %i.aka, 1                  ; 2 uses
  br i1 %or.cond.i.i.i.i363, label %bb.dw, label %bb.ef

bb.dw:                                            ; preds = %_ZN7xgboost6common4SpanIKlLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.akc, label %.preheader.i.i.i.i.i417, label %bb.dx

.preheader.i.i.i.i.i417:                          ; preds = %bb.dw
  %.not137.i.i.i.i.i418 = icmp eq i64 %.sroa.68.0.copyload.i.i361, 0
  br i1 %.not137.i.i.i.i.i418, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i419.preheader

.lr.ph130.i.i.i.i.i419.preheader:                 ; preds = %.preheader.i.i.i.i.i417
  %min.iters.check538 = icmp ugt i64 %.sroa.68.0.copyload.i.i361, 3
  %ident.check536.not = icmp eq i64 %i.aju, 1
  %or.cond904 = select i1 %min.iters.check538, i1 %ident.check536.not, i1 false
  br i1 %or.cond904, label %vector.ph539, label %.lr.ph130.i.i.i.i.i419.preheader947

vector.ph539:                                     ; preds = %.lr.ph130.i.i.i.i.i419.preheader
  %n.vec540 = and i64 %.sroa.68.0.copyload.i.i361, -4 ; 3 uses
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph539
  %index542 = phi i64 [ 0, %vector.ph539 ], [ %index.next545, %vector.body541 ] ; 3 uses
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %index542
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %index542 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  %wide.load543 = load <2 x i64>, ptr %i.ake, align 8, !tbaa !74
  %wide.load544 = load <2 x i64>, ptr %i.akf, align 8, !tbaa !74
  %50 = shufflevector <2 x i64> %wide.load543, <2 x i64> %wide.load544, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %51 = sitofp <4 x i64> %50 to <4 x float>
  store <4 x float> %51, ptr %i.akd, align 4, !tbaa !73
  %index.next545 = add nuw i64 %index542, 4       ; 2 uses
  %i.akg = icmp eq i64 %index.next545, %n.vec540
  br i1 %i.akg, label %middle.block546, label %vector.body541, !llvm.loop !995

middle.block546:                                  ; preds = %vector.body541
  %cmp.n547 = icmp eq i64 %.sroa.68.0.copyload.i.i361, %n.vec540
  br i1 %cmp.n547, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i419.preheader947

.lr.ph130.i.i.i.i.i419.preheader947:              ; preds = %.lr.ph130.i.i.i.i.i419.preheader, %middle.block546
  %.0129.i.i.i.i.i420.ph = phi i64 [ 0, %.lr.ph130.i.i.i.i.i419.preheader ], [ %n.vec540, %middle.block546 ] ; 3 uses
  %xtraiter1047 = and i64 %.sroa.68.0.copyload.i.i361, 3 ; 2 uses
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1047, 0
  br i1 %lcmp.mod1048.not, label %.lr.ph130.i.i.i.i.i419.prol.loopexit, label %.lr.ph130.i.i.i.i.i419.prol

.lr.ph130.i.i.i.i.i419.prol:                      ; preds = %.lr.ph130.i.i.i.i.i419.preheader947, %.lr.ph130.i.i.i.i.i419.prol
  %.0129.i.i.i.i.i420.prol = phi i64 [ %i.akm, %.lr.ph130.i.i.i.i.i419.prol ], [ %.0129.i.i.i.i.i420.ph, %.lr.ph130.i.i.i.i.i419.preheader947 ] ; 3 uses
  %prol.iter1049 = phi i64 [ %prol.iter1049.next, %.lr.ph130.i.i.i.i.i419.prol ], [ 0, %.lr.ph130.i.i.i.i.i419.preheader947 ]
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %.0129.i.i.i.i.i420.prol
  %i.aki = mul i64 %.0129.i.i.i.i.i420.prol, %i.aju
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.aki
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !74
  %i.akl = sitofp i64 %i.akk to float
  store float %i.akl, ptr %i.akh, align 4, !tbaa !73
  %i.akm = add nuw i64 %.0129.i.i.i.i.i420.prol, 1 ; 2 uses
  %prol.iter1049.next = add i64 %prol.iter1049, 1 ; 2 uses
  %prol.iter1049.cmp.not = icmp eq i64 %prol.iter1049.next, %xtraiter1047
  br i1 %prol.iter1049.cmp.not, label %.lr.ph130.i.i.i.i.i419.prol.loopexit, label %.lr.ph130.i.i.i.i.i419.prol, !llvm.loop !996

.lr.ph130.i.i.i.i.i419.prol.loopexit:             ; preds = %.lr.ph130.i.i.i.i.i419.prol, %.lr.ph130.i.i.i.i.i419.preheader947
  %.0129.i.i.i.i.i420.unr = phi i64 [ %.0129.i.i.i.i.i420.ph, %.lr.ph130.i.i.i.i.i419.preheader947 ], [ %i.akm, %.lr.ph130.i.i.i.i.i419.prol ]
  %i.akn = sub i64 %.0129.i.i.i.i.i420.ph, %.sroa.68.0.copyload.i.i361
  %i.ako = icmp ugt i64 %i.akn, -4
  br i1 %i.ako, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i419

.lr.ph130.i.i.i.i.i419:                           ; preds = %.lr.ph130.i.i.i.i.i419.prol.loopexit, %.lr.ph130.i.i.i.i.i419
  %.0129.i.i.i.i.i420 = phi i64 [ %i.alm, %.lr.ph130.i.i.i.i.i419 ], [ %.0129.i.i.i.i.i420.unr, %.lr.ph130.i.i.i.i.i419.prol.loopexit ] ; 6 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %.0129.i.i.i.i.i420
  %i.akq = mul i64 %.0129.i.i.i.i.i420, %i.aju
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.akq
  %i.aks = load i64, ptr %i.akr, align 8, !tbaa !74
  %i.akt = sitofp i64 %i.aks to float
  store float %i.akt, ptr %i.akp, align 4, !tbaa !73
  %i.aku = add nuw i64 %.0129.i.i.i.i.i420, 1     ; 2 uses
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %i.aku
  %i.akw = mul i64 %i.aku, %i.aju
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.akw
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !74
  %i.akz = sitofp i64 %i.aky to float
  store float %i.akz, ptr %i.akv, align 4, !tbaa !73
  %i.ala = add nuw i64 %.0129.i.i.i.i.i420, 2     ; 2 uses
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %i.ala
  %i.alc = mul i64 %i.ala, %i.aju
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.alc
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !74
  %i.alf = sitofp i64 %i.ale to float
  store float %i.alf, ptr %i.alb, align 4, !tbaa !73
  %i.alg = add nuw i64 %.0129.i.i.i.i.i420, 3     ; 2 uses
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %i.alg
  %i.ali = mul i64 %i.alg, %i.aju
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.ali
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !74
  %i.all = sitofp i64 %i.alk to float
  store float %i.all, ptr %i.alh, align 4, !tbaa !73
  %i.alm = add nuw i64 %.0129.i.i.i.i.i420, 4     ; 2 uses
  %exitcond149.not.i.i.i.i.i421.3 = icmp eq i64 %i.alm, %.sroa.68.0.copyload.i.i361
  br i1 %exitcond149.not.i.i.i.i.i421.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph130.i.i.i.i.i419, !llvm.loop !997

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i32 %i.aka, ptr %i.s, align 4, !tbaa !65, !noalias !1083
  store i32 1, ptr %i.t, align 4, !tbaa !65, !noalias !1083
  %.not.i.i.i.i.i.i394 = icmp slt i32 %i.aka, 1
  br i1 %.not.i.i.i.i.i.i394, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i401, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i395

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i395: ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.preheader112.i.i.i.i.i396

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i401: ; preds = %bb.dx
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  %.pr.i.i.i.i.i402 = load ptr, ptr %19, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not.i.i.i.i.i403 = icmp eq ptr %.pr.i.i.i.i.i402, null
  br i1 %.not.i.i.i.i.i403, label %.preheader112.i.i.i.i.i396, label %bb.dy

bb.dy:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i401
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.aln = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc.i.i.i.i.i405 unwind label %bb.dz

.noexc.i.i.i.i.i405:                              ; preds = %bb.dy
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aln, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i406 unwind label %bb.dz

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i406: ; preds = %.noexc.i.i.i.i.i405
  %i.alo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i407 unwind label %bb.ea ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i407: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i406
  %i.alp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alo, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i408 unwind label %bb.ea ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i408: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i407
  %i.alq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alo, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i409 unwind label %bb.ea ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i409: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i408
  %i.alr = load ptr, ptr %19, align 8, !tbaa !169 ; 2 uses
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !56
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !120
  %i.alv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alo, ptr noundef %i.als, i64 noundef %i.alu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i410 unwind label %bb.ea

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i410: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i409
  %i.alw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alv, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i411 unwind label %bb.ea ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i411: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i410
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ec unwind label %bb.dz

bb.dz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i411, %.noexc.i.i.i.i.i405, %bb.dy
  %i.alx = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i410, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i.i.i.i409, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i408, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i407, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i.i406
  %i.aly = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn.i.i.i.i.i404 = phi { ptr, i32 } [ %i.alx, %bb.dz ], [ %i.aly, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %common.resume

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i.i.i.i411
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %.pr104.i.i.i.i.i412 = load ptr, ptr %19, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i.i.i.i413 = icmp eq ptr %.pr104.i.i.i.i.i412, null
  br i1 %.not.i78.i.i.i.i.i413, label %.preheader112.i.i.i.i.i396, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.alz = load ptr, ptr %.pr104.i.i.i.i.i412, align 8, !tbaa !56 ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.pr104.i.i.i.i.i412, i64 16 ; 2 uses
  %i.amb = icmp eq ptr %i.alz, %i.ama
  br i1 %i.amb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i414: ; preds = %bb.ed
  %i.amc = load i64, ptr %i.ama, align 8, !tbaa !57
  %i.amd = add i64 %i.amc, 1
  call void @_ZdlPvm(ptr noundef %i.alz, i64 noundef %i.amd) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i415

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i415: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i414
  call void @_ZdlPvm(ptr noundef nonnull %.pr104.i.i.i.i.i412, i64 noundef 32) #39
  br label %.preheader112.i.i.i.i.i396

.preheader112.i.i.i.i.i396:                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i415, %bb.ec, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i401, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %.not133.i.i.i.i.i397 = icmp eq i64 %.sroa.68.0.copyload.i.i361, 0
  br i1 %.not133.i.i.i.i.i397, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i398.preheader

.lr.ph122.i.i.i.i.i398.preheader:                 ; preds = %.preheader112.i.i.i.i.i396
  %min.iters.check524 = icmp ugt i64 %.sroa.68.0.copyload.i.i361, 3
  %ident.check522.not = icmp eq i64 %i.aju, 1
  %or.cond905 = select i1 %min.iters.check524, i1 %ident.check522.not, i1 false
  br i1 %or.cond905, label %vector.ph525, label %.lr.ph122.i.i.i.i.i398.preheader949

vector.ph525:                                     ; preds = %.lr.ph122.i.i.i.i.i398.preheader
  %n.vec526 = and i64 %.sroa.68.0.copyload.i.i361, -4 ; 3 uses
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph525
  %index528 = phi i64 [ 0, %vector.ph525 ], [ %index.next531, %vector.body527 ] ; 3 uses
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %index528
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %index528 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 16
  %wide.load529 = load <2 x i64>, ptr %i.amf, align 8, !tbaa !74
  %wide.load530 = load <2 x i64>, ptr %i.amg, align 8, !tbaa !74
  %52 = shufflevector <2 x i64> %wide.load529, <2 x i64> %wide.load530, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %53 = sitofp <4 x i64> %52 to <4 x float>
  store <4 x float> %53, ptr %i.ame, align 4, !tbaa !73
  %index.next531 = add nuw i64 %index528, 4       ; 2 uses
  %i.amh = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.amh, label %middle.block532, label %vector.body527, !llvm.loop !1000

middle.block532:                                  ; preds = %vector.body527
  %cmp.n533 = icmp eq i64 %.sroa.68.0.copyload.i.i361, %n.vec526
  br i1 %cmp.n533, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i398.preheader949

.lr.ph122.i.i.i.i.i398.preheader949:              ; preds = %.lr.ph122.i.i.i.i.i398.preheader, %middle.block532
  %.060121.i.i.i.i.i399.ph = phi i64 [ 0, %.lr.ph122.i.i.i.i.i398.preheader ], [ %n.vec526, %middle.block532 ] ; 3 uses
  %xtraiter1044 = and i64 %.sroa.68.0.copyload.i.i361, 3 ; 2 uses
  %lcmp.mod1045.not = icmp eq i64 %xtraiter1044, 0
  br i1 %lcmp.mod1045.not, label %.lr.ph122.i.i.i.i.i398.prol.loopexit, label %.lr.ph122.i.i.i.i.i398.prol

.lr.ph122.i.i.i.i.i398.prol:                      ; preds = %.lr.ph122.i.i.i.i.i398.preheader949, %.lr.ph122.i.i.i.i.i398.prol
  %.060121.i.i.i.i.i399.prol = phi i64 [ %i.amn, %.lr.ph122.i.i.i.i.i398.prol ], [ %.060121.i.i.i.i.i399.ph, %.lr.ph122.i.i.i.i.i398.preheader949 ] ; 3 uses
  %prol.iter1046 = phi i64 [ %prol.iter1046.next, %.lr.ph122.i.i.i.i.i398.prol ], [ 0, %.lr.ph122.i.i.i.i.i398.preheader949 ]
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %.060121.i.i.i.i.i399.prol
  %i.amj = mul i64 %.060121.i.i.i.i.i399.prol, %i.aju
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.amj
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !74
  %i.amm = sitofp i64 %i.aml to float
  store float %i.amm, ptr %i.ami, align 4, !tbaa !73
  %i.amn = add nuw i64 %.060121.i.i.i.i.i399.prol, 1 ; 2 uses
  %prol.iter1046.next = add i64 %prol.iter1046, 1 ; 2 uses
  %prol.iter1046.cmp.not = icmp eq i64 %prol.iter1046.next, %xtraiter1044
  br i1 %prol.iter1046.cmp.not, label %.lr.ph122.i.i.i.i.i398.prol.loopexit, label %.lr.ph122.i.i.i.i.i398.prol, !llvm.loop !1001

.lr.ph122.i.i.i.i.i398.prol.loopexit:             ; preds = %.lr.ph122.i.i.i.i.i398.prol, %.lr.ph122.i.i.i.i.i398.preheader949
  %.060121.i.i.i.i.i399.unr = phi i64 [ %.060121.i.i.i.i.i399.ph, %.lr.ph122.i.i.i.i.i398.preheader949 ], [ %i.amn, %.lr.ph122.i.i.i.i.i398.prol ]
  %i.amo = sub i64 %.060121.i.i.i.i.i399.ph, %.sroa.68.0.copyload.i.i361
  %i.amp = icmp ugt i64 %i.amo, -4
  br i1 %i.amp, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i398

.lr.ph122.i.i.i.i.i398:                           ; preds = %.lr.ph122.i.i.i.i.i398.prol.loopexit, %.lr.ph122.i.i.i.i.i398
  %.060121.i.i.i.i.i399 = phi i64 [ %i.ann, %.lr.ph122.i.i.i.i.i398 ], [ %.060121.i.i.i.i.i399.unr, %.lr.ph122.i.i.i.i.i398.prol.loopexit ] ; 6 uses
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %.060121.i.i.i.i.i399
  %i.amr = mul i64 %.060121.i.i.i.i.i399, %i.aju
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.amr
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !74
  %i.amu = sitofp i64 %i.amt to float
  store float %i.amu, ptr %i.amq, align 4, !tbaa !73
  %i.amv = add nuw i64 %.060121.i.i.i.i.i399, 1   ; 2 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %i.amv
  %i.amx = mul i64 %i.amv, %i.aju
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.amx
  %i.amz = load i64, ptr %i.amy, align 8, !tbaa !74
  %i.ana = sitofp i64 %i.amz to float
  store float %i.ana, ptr %i.amw, align 4, !tbaa !73
  %i.anb = add nuw i64 %.060121.i.i.i.i.i399, 2   ; 2 uses
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %i.anb
  %i.and = mul i64 %i.anb, %i.aju
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.and
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !74
  %i.ang = sitofp i64 %i.anf to float
  store float %i.ang, ptr %i.anc, align 4, !tbaa !73
  %i.anh = add nuw i64 %.060121.i.i.i.i.i399, 3   ; 2 uses
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.0.copyload.i.i357, i64 %i.anh
  %i.anj = mul i64 %i.anh, %i.aju
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.anj
  %i.anl = load i64, ptr %i.ank, align 8, !tbaa !74
  %i.anm = sitofp i64 %i.anl to float
  store float %i.anm, ptr %i.ani, align 4, !tbaa !73
  %i.ann = add nuw i64 %.060121.i.i.i.i.i399, 4   ; 2 uses
  %exitcond145.not.i.i.i.i.i400.3 = icmp eq i64 %i.ann, %.sroa.68.0.copyload.i.i361
  br i1 %exitcond145.not.i.i.i.i.i400.3, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph122.i.i.i.i.i398, !llvm.loop !1002

bb.ee:                                            ; preds = %bb.ea
  %i.ano = landingpad { ptr, i32 }
          catch ptr null
  %i.anp = extractvalue { ptr, i32 } %i.ano, 0
  call void @__clang_call_terminate(ptr %i.anp) #38
  unreachable

bb.ef:                                            ; preds = %_ZN7xgboost6common4SpanIKlLm18446744073709551615EEC2EPS2_m.exit.i
  br i1 %i.akc, label %.preheader.i.i23.i.i.i389, label %bb.eg

.preheader.i.i23.i.i.i389:                        ; preds = %bb.ef
  %.not132.i.i.i.i.i390 = icmp eq i64 %.sroa.68.0.copyload.i.i361, 0
  br i1 %.not132.i.i.i.i.i390, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit, label %.lr.ph125.i.i.i.i.i391.preheader

.lr.ph125.i.i.i.i.i391.preheader:                 ; preds = %.preheader.i.i23.i.i.i389
  %xtraiter1039 = and i64 %.sroa.68.0.copyload.i.i361, 1
  %i.anq = icmp eq i64 %.sroa.68.0.copyload.i.i361, 1
  br i1 %i.anq, label %.lr.ph125.i.i.i.i.i391.epil.preheader, label %.lr.ph125.i.i.i.i.i391.preheader.new

.lr.ph125.i.i.i.i.i391.preheader.new:             ; preds = %.lr.ph125.i.i.i.i.i391.preheader
  %unroll_iter1042 = and i64 %.sroa.68.0.copyload.i.i361, -2
  br label %.lr.ph125.i.i.i.i.i391

.lr.ph125.i.i.i.i.i391:                           ; preds = %.lr.ph125.i.i.i.i.i391, %.lr.ph125.i.i.i.i.i391.preheader.new
  %.0124.i.i.i.i.i392 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i391.preheader.new ], [ %i.aoe, %.lr.ph125.i.i.i.i.i391 ] ; 4 uses
  %niter1043 = phi i64 [ 0, %.lr.ph125.i.i.i.i.i391.preheader.new ], [ %niter1043.next.1, %.lr.ph125.i.i.i.i.i391 ]
  %i.anr = mul i64 %.0124.i.i.i.i.i392, %.sroa.05.0.copyload.i.i353
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i359, i64 %i.anr
  %i.ant = mul i64 %.0124.i.i.i.i.i392, %i.aju
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.ant
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !74
  %i.anw = sitofp i64 %i.anv to float
  store float %i.anw, ptr %i.ans, align 4, !tbaa !73
  %i.anx = or disjoint i64 %.0124.i.i.i.i.i392, 1 ; 2 uses
  %i.any = mul i64 %i.anx, %.sroa.05.0.copyload.i.i353
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.57.0.copyload.i.i359, i64 %i.any
  %i.aoa = mul i64 %i.anx, %i.aju
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %i.aoa
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !74
  %i.aod = sitofp i64 %i.aoc to float
  store float %i.aod, ptr %i.anz, align 4, !tbaa !73
  %i.aoe = add nuw i64 %.0124.i.i.i.i.i392, 2     ; 2 uses
  %niter1043.next.1 = add nuw i64 %niter1043, 2   ; 2 uses
  %niter1043.ncmp.1 = icmp eq i64 %niter1043.next.1, %unroll_iter1042
  br i1 %niter1043.ncmp.1, label %_ZZN7xgboost13DispatchDTypeILi1EZNS_12_GLOBAL__N_118CopyTensorInfoImplILi1EfEEvPKNS_7ContextENS_4JsonEPNS_6linalg6TensorIT0_XT_EEEEUlOT_E_EEvNS_14ArrayInterfaceIXT_EXeqT_Li1EEEENS_9DeviceOrdES9_ENKUlSC_E_clIfEEDaSC_.exit.loopexit951.unr-lcssa, label %.lr.ph125.i.i.i.i.i391, !llvm.loop !1003

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %i.aka, ptr %i.q, align 4, !tbaa !65, !noalias !1084
  store i32 1, ptr %i.r, align 4, !tbaa !65, !noalias !1084
  %.not.i.i.i6.i.i.i364 = icmp slt i32 %i.aka, 1
  br i1 %.not.i.i.i6.i.i.i364, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i371, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i365

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i7.i.i.i365: ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.preheader107.i.i.i.i.i366

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i371: ; preds = %bb.eg
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  %.pr.i.i9.i.i.i372 = load ptr, ptr %17, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not.i.i10.i.i.i373 = icmp eq ptr %.pr.i.i9.i.i.i372, null
  br i1 %.not.i.i10.i.i.i373, label %.preheader107.i.i.i.i.i366, label %bb.eh

bb.eh:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i8.i.i.i371
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.aof = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %.noexc.i.i12.i.i.i377 unwind label %bb.ei

.noexc.i.i12.i.i.i377:                            ; preds = %bb.eh
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aof, ptr noundef nonnull @.str.200, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i378 unwind label %bb.ei

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i378: ; preds = %.noexc.i.i12.i.i.i377
  %i.aog = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i379 unwind label %bb.ej ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i379: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i378
  %i.aoh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aog, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i380 unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i380: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i379
  %i.aoi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aog, ptr noundef nonnull @.str.201, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i381 unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i381: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i380
  %i.aoj = load ptr, ptr %17, align 8, !tbaa !169 ; 2 uses
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !56
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !120
  %i.aon = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aog, ptr noundef %i.aok, i64 noundef %i.aom)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i382 unwind label %bb.ej

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i382: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i381
  %i.aoo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aon, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i383 unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i383: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i382
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.el unwind label %bb.ei

bb.ei:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i383, %.noexc.i.i12.i.i.i377, %bb.eh
  %i.aop = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i17.i.i.i382, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74.i.i16.i.i.i381, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i15.i.i.i380, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i14.i.i.i379, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i13.i.i.i378
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ek unwind label %bb.en

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn.i.i11.i.i.i374 = phi { ptr, i32 } [ %i.aop, %bb.ei ], [ %i.aoq, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %common.resume

bb.el:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77.i.i18.i.i.i383
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %.pr99.i.i.i.i.i384 = load ptr, ptr %17, align 8, !tbaa !169 ; 4 uses
  %.not.i78.i.i19.i.i.i385 = icmp eq ptr %.pr99.i.i.i.i.i384, null
  br i1 %.not.i78.i.i19.i.i.i385, label %.preheader107.i.i.i.i.i366, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aor = load ptr, ptr %.pr99.i.i.i.i.i384, align 8, !tbaa !56 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.pr99.i.i.i.i.i384, i64 16 ; 2 uses
  %i.aot = icmp eq ptr %i.aor, %i.aos
end_hunk_1
