Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/touchscreeneditor?download=true
inline.NumInlined: 1583
inline.NumDeleted: 768
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN20GUITouchscreenLayout14regenerateMenuEN4core8vector2dIjEE:bb.a
bb.do:                                            ; preds = %bb.dm
  %i.ql = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i.i.i139 = icmp eq i8 %i.ql, 0
  br i1 %.not.i.i.i.i.i.i.i139, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qm = add nsw i32 %i.qd, -1
  store i32 %i.qm, ptr %i.qa, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i140

bb.dq:                                            ; preds = %bb.do
  %i.qn = atomicrmw volatile add ptr %i.qa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i140: ; preds = %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i141 = phi i32 [ %i.qd, %bb.dp ], [ %i.qn, %bb.dq ]
  %i.qo = icmp eq i32 %.0.i.i.i.i.i.i.i.i141, 1
  br i1 %i.qo, label %bb.dr, label %_ZSt8_DestroyISt10shared_ptrIN3gui10IGUIButtonEEEvPT_.exit.i.i.i142, !prof !125

bb.dr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pz) #21
  br label %_ZSt8_DestroyISt10shared_ptrIN3gui10IGUIButtonEEEvPT_.exit.i.i.i142

_ZSt8_DestroyISt10shared_ptrIN3gui10IGUIButtonEEEvPT_.exit.i.i.i142: ; preds = %bb.dr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i140, %bb.dn, %.lr.ph.i.i.i136
  %i.qp = getelementptr inbounds nuw i8, ptr %.05.i.i.i137, i64 16 ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.qp, %i.px
  br i1 %.not.i.i.i143, label %_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i144, label %.lr.ph.i.i.i136, !llvm.loop !16

_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i144: ; preds = %_ZSt8_DestroyISt10shared_ptrIN3gui10IGUIButtonEEEvPT_.exit.i.i.i142
  %.pr.i145 = load ptr, ptr %10, align 8, !tbaa !196
  br label %_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exit.i146

_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exit.i146: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i144, %bb.dl
  %i.qq = phi ptr [ %.pr.i145, %_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i144 ], [ %i.pw, %bb.dl ] ; 3 uses
  %.not.i.i1.i147 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i1.i147, label %_ZNSt6vectorISt10shared_ptrIN3gui10IGUIButtonEESaIS3_EED2Ev.exit149, label %bb.ds

bb.ds:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exit.i146
  %i.qr = load ptr, ptr %i.ov, align 8, !tbaa !197
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qq to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qu) #22
  br label %_ZNSt6vectorISt10shared_ptrIN3gui10IGUIButtonEESaIS3_EED2Ev.exit149

_ZNSt6vectorISt10shared_ptrIN3gui10IGUIButtonEESaIS3_EED2Ev.exit149: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN3gui10IGUIButtonEES3_EvT_S5_RSaIT0_E.exit.i146, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dv

.body127:                                         ; preds = %_ZNSt10shared_ptrIN3gui10IGUIButtonEEC2ERKS2_.exit116
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN3gui10IGUIButtonELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.du

bb.dt:                                            ; preds = %_ZNSt12__shared_ptrIN3gui10IGUIButtonELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN3gui10IGUIButtonEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #21
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.body127
  %.pn43 = phi { ptr, i32 } [ %i.qw, %bb.dt ], [ %i.qv, %.body127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dw

.critedge48:                                      ; preds = %bb.cy
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !193 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !30
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 120
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(308) %i.qy, i1 noundef zeroext false)
  br label %bb.dv

bb.dv:                                            ; preds = %.critedge48, %_ZNSt6vectorISt10shared_ptrIN3gui10IGUIButtonEESaIS3_EED2Ev.exit149, %bb.cz
  ret void

bb.dw:                                            ; preds = %bb.cx, %bb.du, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit51
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit57 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit51 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63 ], [ %.pn43, %bb.du ], [ %.pn40.pn, %bb.cx ]
  resume { ptr, i32 } %.pn43.pn.pn
}

declare { i64, i64 } @_ZN12ButtonLayout7getRectE19touch_gui_button_idN4core8vector2dIjEEiP20ISimpleTextureSource(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef zeroext, i64, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN12ButtonLayout10getTextureE19touch_gui_button_idP20ISimpleTextureSource(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @_ZN12ButtonLayout17getMissingButtonsEv(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

declare void @_Z18layout_button_gridN4core8vector2dIjEEP20ISimpleTextureSourceRKSt6vectorI19touch_gui_button_idSaIS5_EERKSt8functionIFvS5_NS0_IiEENS_4rectIiEEEE(i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20GUITouchscreenLayout20interpolateGUIImagesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1024) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !104
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.sroa.038.048 = load ptr, ptr %i.d, align 8, !tbaa !113 ; 2 uses
  %.not4149 = icmp eq ptr %.sroa.038.048, null
  br i1 %.not4149, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.038.050 = phi ptr [ %.sroa.038.048, %.lr.ph ], [ %.sroa.038.0, %bb.ad ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.038.050, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.038.050, i64 16
  %i.l = load i32, ptr %i.a, align 4, !tbaa !104
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.e, align 4, !tbaa !111
  %i.n = load i8, ptr %i.j, align 1, !tbaa !138
  %i.o = icmp ne i8 %i.m, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i1 [ true, %bb.c ], [ %i.o, %bb.d ]
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !182  ; 25 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.s = bitcast i64 %.sroa.0.0.copyload.i to <2 x i32>
  %i.t = load i64, ptr %i.f, align 8, !tbaa !199
  %.not.not.i.i.i = icmp eq i64 %i.t, 0
  %i.u = load i8, ptr %i.j, align 8               ; 4 uses
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !113 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !138
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %_ZNSt13unordered_mapI19touch_gui_button_idN4core8vector2dIiEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S3_EEE2atERS9_.exit, label %.preheader, !llvm.loop !294

bb.g:                                             ; preds = %bb.e
  %i.y = zext i8 %i.u to i64
  %i.z = load i64, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %i.aa = urem i64 %i.y, %i.z                     ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !139 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !138
  %i.ah = icmp eq i8 %i.u, %i.ag
  br i1 %i.ah, label %_ZNSt13unordered_mapI19touch_gui_button_idN4core8vector2dIiEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S3_EEE2atERS9_.exit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.ai = icmp eq i8 %i.u, %i.al
  br i1 %i.ai, label %_ZNSt13unordered_mapI19touch_gui_button_idN4core8vector2dIiEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S3_EEE2atERS9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !113 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !138 ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = urem i64 %i.am, %i.z
  %.not19.i.i.i.i.i = icmp eq i64 %i.an, %i.aa
  br i1 %.not19.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.j
  br label %.loopexit.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.13) #24
  unreachable

_ZNSt13unordered_mapI19touch_gui_button_idN4core8vector2dIiEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S3_EEE2atERS9_.exit: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 12
  %i.ap = load i64, ptr %i.ao, align 4, !tbaa !124 ; 3 uses
  %i.aq = bitcast i64 %i.ap to <2 x i32>
  %i.ar = bitcast i64 %.sroa.0.0.copyload.i to <2 x i32> ; 2 uses
  %i.as = sitofp nsz <2 x i32> %i.ar to <2 x float> ; 3 uses
  %i.at = bitcast i64 %i.ap to <2 x i32>
  %i.au = sitofp nsz <2 x i32> %i.at to <2 x float> ; 5 uses
  br i1 %i.p, label %bb.k, label %bb.u

bb.k:                                             ; preds = %_ZNSt13unordered_mapI19touch_gui_button_idN4core8vector2dIiEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S3_EEE2atERS9_.exit
  %foldExtExtBinop = fsub nsz <2 x float> %i.as, %i.au
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop76 = fsub nsz <2 x float> %i.as, %i.au ; 2 uses
  %foldExtExtBinop78 = fmul nsz <2 x float> %foldExtExtBinop76, %foldExtExtBinop76
  %i.aw = extractelement <2 x float> %foldExtExtBinop78, i64 1
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.aw)
  %i.ay = tail call nsz noundef float @llvm.sqrt.f32(float %i.ax)
  %i.az = fcmp nsz ogt float %i.ay, 2.000000e+00
  br i1 %i.az, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ba = fpext nsz <2 x float> %i.au to <2 x double>
  %i.bb = fpext nnan ninf nsz <2 x float> %i.as to <2 x double>
  %i.bc = fmul nnan nsz <2 x double> %i.bb, splat (double 5.000000e-01)
  %i.bd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bc)
  %i.be = fptrunc nsz <2 x double> %i.bd to <2 x float>
  %i.bf = fadd nsz <2 x float> %i.be, splat (float 5.000000e-01)
  %i.bg = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.bf)
  %i.bh = fptosi <2 x float> %i.bg to <2 x i32>   ; 4 uses
  %i.bi = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.bj = sub nsw <2 x i32> %i.bi, %i.ar
  %i.bk = add nsw <2 x i32> %i.bj, %i.bh          ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !152 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bn, align 8, !tbaa !124 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !124 ; 2 uses
  %i.bo = sub i64 %.sroa.2.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  %.sroa.7.12.extract.shift.i.i = lshr i64 %.sroa.2.0.copyload.i.i.i, 32
  %.sroa.7.12.extract.trunc.i.i = trunc nuw i64 %.sroa.7.12.extract.shift.i.i to i32
  %.sroa.016.4.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.016.4.extract.trunc.i.i = trunc nuw i64 %.sroa.016.4.extract.shift.i.i to i32
  %i.bp = sub nsw i32 %.sroa.7.12.extract.trunc.i.i, %.sroa.016.4.extract.trunc.i.i
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %i.bo to i32
  %i.bq = sitofp nsz i32 %.sroa.01.0.extract.trunc.i.i to float ; 2 uses
  %i.br = sitofp nsz i32 %i.bp to float           ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !159
  %i.bu = icmp eq i32 %i.bt, 3
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = extractelement <2 x i32> %i.bh, i64 0
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = fdiv nsz float %i.bw, %i.bq
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store float %i.bx, ptr %i.by, align 8, !tbaa !163
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 284
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !160
  %i.cb = icmp eq i32 %i.ca, 3
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = extractelement <2 x i32> %i.bk, i64 0
  %i.cd = sitofp nsz i32 %i.cc to float
  %i.ce = fdiv nsz float %i.cd, %i.bq
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store float %i.ce, ptr %i.cf, align 8, !tbaa !164
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !161
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = extractelement <2 x i32> %i.bh, i64 1
  %i.ck = sitofp nsz i32 %i.cj to float
  %i.cl = fdiv nsz float %i.ck, %i.br
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 132
  store float %i.cl, ptr %i.cm, align 4, !tbaa !165
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 292
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !162
  %i.cp = icmp eq i32 %i.co, 3
  br i1 %i.cp, label %bb.t, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit

bb.t:                                             ; preds = %bb.s
  %i.cq = extractelement <2 x i32> %i.bk, i64 1
  %i.cr = sitofp nsz i32 %i.cq to float
  %i.cs = fdiv nsz float %i.cr, %i.br
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 140
  store float %i.cs, ptr %i.ct, align 4, !tbaa !166
  br label %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit

_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit: ; preds = %bb.l, %bb.s, %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <2 x i32> %i.bh, ptr %i.cu, align 8, !tbaa !124
  br label %bb.ad

bb.u:                                             ; preds = %bb.k, %_ZNSt13unordered_mapI19touch_gui_button_idN4core8vector2dIiEESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S3_EEE2atERS9_.exit
  %i.cv = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.cw = sub nsw <2 x i32> %i.cv, %i.s
  %i.cx = add nsw <2 x i32> %i.cw, %i.aq          ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !152 ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i13, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit25, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %.sroa.0.0.copyload.i.i.i14 = load i64, ptr %i.da, align 8, !tbaa !124 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %.sroa.2.0.copyload.i.i.i16 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i15, align 8, !tbaa !124 ; 2 uses
  %i.db = sub i64 %.sroa.2.0.copyload.i.i.i16, %.sroa.0.0.copyload.i.i.i14
  %.sroa.7.12.extract.shift.i.i17 = lshr i64 %.sroa.2.0.copyload.i.i.i16, 32
  %.sroa.7.12.extract.trunc.i.i18 = trunc nuw i64 %.sroa.7.12.extract.shift.i.i17 to i32
  %.sroa.016.4.extract.shift.i.i19 = lshr i64 %.sroa.0.0.copyload.i.i.i14, 32
  %.sroa.016.4.extract.trunc.i.i20 = trunc nuw i64 %.sroa.016.4.extract.shift.i.i19 to i32
  %i.dc = sub nsw i32 %.sroa.7.12.extract.trunc.i.i18, %.sroa.016.4.extract.trunc.i.i20
  %.sroa.01.0.extract.trunc.i.i21 = trunc i64 %i.db to i32
  %i.dd = sitofp nsz i32 %.sroa.01.0.extract.trunc.i.i21 to float ; 2 uses
  %i.de = sitofp nsz i32 %i.dc to float           ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !159
  %i.dh = icmp eq i32 %i.dg, 3
  br i1 %i.dh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.di = extractelement <2 x float> %i.au, i64 0
  %i.dj = fdiv nsz float %i.di, %i.dd
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store float %i.dj, ptr %i.dk, align 8, !tbaa !163
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 284
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !160
  %i.dn = icmp eq i32 %i.dm, 3
  br i1 %i.dn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.do = extractelement <2 x i32> %i.cx, i64 0
  %i.dp = sitofp nsz i32 %i.do to float
  %i.dq = fdiv nsz float %i.dp, %i.dd
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  store float %i.dq, ptr %i.dr, align 8, !tbaa !164
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !161
  %i.du = icmp eq i32 %i.dt, 3
  br i1 %i.du, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dv = extractelement <2 x float> %i.au, i64 1
  %i.dw = fdiv nsz float %i.dv, %i.de
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 132
  store float %i.dw, ptr %i.dx, align 4, !tbaa !165
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 292
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !162
  %i.ea = icmp eq i32 %i.dz, 3
  br i1 %i.ea, label %bb.ac, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit25

bb.ac:                                            ; preds = %bb.ab
  %i.eb = extractelement <2 x i32> %i.cx, i64 1
  %i.ec = sitofp nsz i32 %i.eb to float
  %i.ed = fdiv nsz float %i.ec, %i.de
  %i.ee = getelementptr inbounds nuw i8, ptr %i.q, i64 140
  store float %i.ed, ptr %i.ee, align 4, !tbaa !166
  br label %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit25

_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit25: ; preds = %bb.u, %bb.ab, %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i64 %i.ap, ptr %i.ef, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit25, %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit
  %i.eg = phi <2 x i32> [ %i.cx, %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit25 ], [ %i.bk, %_ZN3gui11IGUIElement19setRelativePositionERKN4core8vector2dIiEE.exit ]
  %.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store <2 x i32> %i.eg, ptr %.sroa.7.0..sroa_idx.i23, align 8, !tbaa !124
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(308) %i.q)
  %.sroa.038.0 = load ptr, ptr %.sroa.038.050, align 8, !tbaa !113 ; 2 uses
  %.not41 = icmp eq ptr %.sroa.038.0, null
  br i1 %.not41, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.ad, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15layout_menu_rowN4core8vector2dIjEERKSt6vectorISt10shared_ptrIN3gui10IGUIButtonEESaIS6_EESA_b(i64 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %.sroa.020.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = tail call nsz noundef float @_ZN15RenderingEngine17getDisplayDensityEv()
  %i.b = fmul nsz float %i.a, 4.000000e+00
  %i.c = fptosi float %i.b to i32                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !295    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295  ; 2 uses
  %.not54 = icmp eq ptr %i.d, %i.f
  br i1 %.not54, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = phi <2 x i32> [ zeroinitializer, %bb.a ], [ %i.ax, %.lr.ph ] ; 2 uses
  %i.h = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
end_hunk_0
