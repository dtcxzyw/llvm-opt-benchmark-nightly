Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/util?download=true
inline.NumInlined: 6631
inline.NumDeleted: 2675
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %83) #19, !noalias !2765
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19, !noalias !2765
  br label %common.resume

_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitERKNS_19FixedSizeBinaryTypeE.exit: ; preds = %bb.gk, %bb.gm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i213, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19, !noalias !2765
  br label %bb.ajp

bb.gs:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19, !noalias !2766
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i216 = load ptr, ptr %i.xo, align 8, !tbaa !260, !noalias !2766
  %i.xp = getelementptr inbounds nuw i8, ptr %.val.i216, i64 48
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !2768, !noalias !2766
  store i64 %i.xq, ptr %i.g, align 8, !tbaa !157, !noalias !2766
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.g, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19, !noalias !2766
  br label %bb.ajp

bb.gt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19, !noalias !2769
  %i.xr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i217 = load ptr, ptr %i.xr, align 8, !tbaa !260, !noalias !2769
  %i.xs = getelementptr inbounds nuw i8, ptr %.val.i217, i64 44
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !2771, !noalias !2769
  store i32 %i.xt, ptr %i.f, align 4, !tbaa !42, !noalias !2769
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.f, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19, !noalias !2769
  br label %bb.ajp

bb.gu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19, !noalias !2772
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i218 = load ptr, ptr %i.xu, align 8, !tbaa !260, !noalias !2772
  %i.xv = getelementptr inbounds nuw i8, ptr %.val.i218, i64 48
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !2774, !noalias !2772
  store i64 %i.xw, ptr %i.e, align 8, !tbaa !157, !noalias !2772
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.e, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19, !noalias !2772
  br label %bb.ajp

bb.gv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !2775
  %i.xx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i219 = load ptr, ptr %i.xx, align 8, !tbaa !260, !noalias !2775
  %i.xy = getelementptr inbounds nuw i8, ptr %.val.i219, i64 48
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !2777, !noalias !2775
  store i64 %i.xz, ptr %i.d, align 8, !tbaa !157, !noalias !2775
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.d, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !2775
  br label %bb.ajp

bb.gw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !2778
  %i.ya = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i220 = load ptr, ptr %i.ya, align 8, !tbaa !260, !noalias !2778
  %i.yb = getelementptr inbounds nuw i8, ptr %.val.i220, i64 44
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !2780, !noalias !2778
  store i32 %i.yc, ptr %i.c, align 4, !tbaa !42, !noalias !2778
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.c, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !2778
  br label %bb.ajp

bb.gx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !2781
  %i.yd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i221 = load ptr, ptr %i.yd, align 8, !tbaa !260, !noalias !2781
  %i.ye = getelementptr inbounds nuw i8, ptr %.val.i221, i64 48
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !2783, !noalias !2781
  store i64 %i.yf, ptr %i.b, align 8, !tbaa !157, !noalias !2781
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.b, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !2781
  br label %bb.ajp

bb.gy:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19, !noalias !2784
  %i.yg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i222 = load ptr, ptr %i.yg, align 8, !tbaa !260, !noalias !2784
  %i.yh = getelementptr inbounds nuw i8, ptr %.val.i222, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, ptr noundef nonnull align 8 dereferenceable(16) %i.yh, i64 16, i1 false), !tbaa.struct !2785, !noalias !2784
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %82, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19, !noalias !2784
  br label %bb.ajp

bb.gz:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !2786
  %i.yi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i223 = load ptr, ptr %i.yi, align 8, !tbaa !260, !noalias !2786
  %i.yj = getelementptr inbounds nuw i8, ptr %.val.i223, i64 44
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !2788, !noalias !2786
  store i32 %i.yk, ptr %i.a, align 4, !tbaa !42, !noalias !2786
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !2786
  br label %bb.ajp

bb.ha:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19, !noalias !2789
  %i.yl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i224 = load ptr, ptr %i.yl, align 8, !tbaa !260, !noalias !2789
  %i.ym = getelementptr inbounds nuw i8, ptr %.val.i224, i64 44
  %i.yn = load i64, ptr %i.ym, align 4, !noalias !2789
  store i64 %i.yn, ptr %81, align 8, !noalias !2789
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %81, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19, !noalias !2789
  br label %bb.ajp

bb.hb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19, !noalias !2790
  %i.yo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i225 = load ptr, ptr %i.yo, align 8, !tbaa !260, !noalias !2790
  %i.yp = getelementptr inbounds nuw i8, ptr %.val.i225, i64 44
  %i.yq = load i32, ptr %i.yp, align 4, !noalias !2790
  store i32 %i.yq, ptr %80, align 4, !noalias !2790
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %80, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19, !noalias !2790
  br label %bb.ajp

bb.hc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #19, !noalias !2791
  %i.yr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i226 = load ptr, ptr %i.yr, align 8, !tbaa !260, !noalias !2791
  %i.ys = getelementptr inbounds nuw i8, ptr %.val.i226, i64 48
  %i.yt = load i64, ptr %i.ys, align 8, !noalias !2791
  store i64 %i.yt, ptr %79, align 8, !noalias !2791
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %79, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19, !noalias !2791
  br label %bb.ajp

bb.hd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #19, !noalias !2792
  %i.yu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i227 = load ptr, ptr %i.yu, align 8, !tbaa !260, !noalias !2792
  %i.yv = getelementptr inbounds nuw i8, ptr %.val.i227, i64 48
  %i.yw = load <2 x i64>, ptr %i.yv, align 8, !noalias !2792
  store <2 x i64> %i.yw, ptr %78, align 16, !noalias !2792
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %78, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19, !noalias !2792
  br label %bb.ajp

bb.he:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #19, !noalias !2793
  %i.yx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !260, !noalias !2793, !nonnull !104, !align !137
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(32) %i.yz, i64 32, i1 false), !noalias !2793
  call fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory16FinishFixedWidthEPKvm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %77, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19, !noalias !2793
  br label %bb.ajp

bb.hf:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #19, !noalias !2794
  %i.za = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !199, !noalias !2794 ; 9 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val24.i = load ptr, ptr %i.zc, align 8, !tbaa !260, !noalias !2794 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.val24.i, i64 48 ; 2 uses
  %i.ze = icmp ugt i64 %i.zb, 576460752303423487
  br i1 %i.ze, label %.noexc.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.hf
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23, !noalias !2794
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.hf
  %.not.i.i.i.i.i228 = icmp eq i64 %i.zb, 0
  br i1 %.not.i.i.i.i.i228, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.zf = getelementptr inbounds nuw i8, ptr %72, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, i8 0, i64 24, i1 false), !noalias !2794
  br label %.loopexit.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.zg = shl nuw nsw i64 %i.zb, 4
  %i.zh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zg) #20, !noalias !2794 ; 6 uses
  store ptr %i.zh, ptr %72, align 8, !tbaa !211, !noalias !2794
  %i.zi = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 4 uses
  store ptr %i.zh, ptr %i.zi, align 8, !tbaa !209, !noalias !2794
  %i.zj = getelementptr inbounds nuw [16 x i8], ptr %i.zh, i64 %i.zb
  %i.zk = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr %i.zj, ptr %i.zk, align 8, !tbaa !210, !noalias !2794
  %i.zl = getelementptr inbounds nuw i8, ptr %.val24.i, i64 56 ; 2 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !114, !noalias !2794 ; 2 uses
  %i.zn = icmp eq ptr %i.zm, null
  br i1 %i.zn, label %.lr.ph.i.i.i.i.i.split.us.i.i, label %.lr.ph.i.i.i.i.i.split.i.i

.lr.ph.i.i.i.i.i.split.us.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.zo = load ptr, ptr %i.zd, align 8, !tbaa !200, !noalias !2794
  %i.zp = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.zo, i64 0 ; 9 uses
  %xtraiter1149 = and i64 %i.zb, 7                ; 2 uses
  %lcmp.mod1150.not = icmp eq i64 %xtraiter1149, 0
  br i1 %lcmp.mod1150.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol
  %.09.i.i.i.i.i.us.i.i.prol = phi ptr [ %i.zr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ], [ %i.zh, %.lr.ph.i.i.i.i.i.split.us.i.i ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i.prol = phi i64 [ %i.zq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ], [ %i.zb, %.lr.ph.i.i.i.i.i.split.us.i.i ]
  %prol.iter1151 = phi i64 [ %prol.iter1151.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i ]
  store <2 x ptr> %i.zp, ptr %.09.i.i.i.i.i.us.i.i.prol, align 8, !tbaa !116, !noalias !2794
  %i.zq = add nsw i64 %.068.i.i.i.i.i.us.i.i.prol, -1 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i.prol, i64 16 ; 3 uses
  %prol.iter1151.next = add i64 %prol.iter1151, 1 ; 2 uses
  %prol.iter1151.cmp.not = icmp eq i64 %prol.iter1151.next, %xtraiter1149
  br i1 %prol.iter1151.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol, !llvm.loop !2468

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol, %.lr.ph.i.i.i.i.i.split.us.i.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.split.us.i.i ], [ %i.zr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ]
  %.09.i.i.i.i.i.us.i.i.unr = phi ptr [ %i.zh, %.lr.ph.i.i.i.i.i.split.us.i.i ], [ %i.zr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ]
  %.068.i.i.i.i.i.us.i.i.unr = phi i64 [ %i.zb, %.lr.ph.i.i.i.i.i.split.us.i.i ], [ %i.zq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol ]
  %i.zs = icmp ult i64 %i.zb, 8
  br i1 %i.zs, label %.loopexit.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i
  %.09.i.i.i.i.i.us.i.i = phi ptr [ %i.aab, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i ], [ %.09.i.i.i.i.i.us.i.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i = phi i64 [ %i.aaa, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i ], [ %.068.i.i.i.i.i.us.i.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit ]
  store <2 x ptr> %i.zp, ptr %.09.i.i.i.i.i.us.i.i, align 8, !tbaa !116, !noalias !2794
  %i.zt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 16
  store <2 x ptr> %i.zp, ptr %i.zt, align 8, !tbaa !116, !noalias !2794
  %i.zu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 32
  store <2 x ptr> %i.zp, ptr %i.zu, align 8, !tbaa !116, !noalias !2794
  %i.zv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 48
  store <2 x ptr> %i.zp, ptr %i.zv, align 8, !tbaa !116, !noalias !2794
  %i.zw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 64
  store <2 x ptr> %i.zp, ptr %i.zw, align 8, !tbaa !116, !noalias !2794
  %i.zx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 80
  store <2 x ptr> %i.zp, ptr %i.zx, align 8, !tbaa !116, !noalias !2794
  %i.zy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 96
  store <2 x ptr> %i.zp, ptr %i.zy, align 8, !tbaa !116, !noalias !2794
  %i.zz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 112
  store <2 x ptr> %i.zp, ptr %i.zz, align 8, !tbaa !116, !noalias !2794
  %i.aaa = add nsw i64 %.068.i.i.i.i.i.us.i.i, -8 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i.7 = icmp eq i64 %i.aaa, 0
  br i1 %.not.i.i.i.i.i.us.i.i.7, label %.loopexit.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i, !llvm.loop !2469

.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i:       ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.pr.i.i230 = load ptr, ptr %i.zl, align 8, !tbaa !114, !noalias !2794
  br label %.lr.ph.i.i.i.i.i.split.i.i

.lr.ph.i.i.i.i.i.split.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i
  %i.aac = phi ptr [ %.pr.i.i230, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i ], [ %i.zm, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.aal, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i ], [ %i.zh, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.aak, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i ], [ %i.zb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aad = load ptr, ptr %i.zd, align 8, !tbaa !200, !noalias !2794
  store ptr %i.aad, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !200, !noalias !2794
  %i.aae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  store ptr %i.aac, ptr %i.aae, align 8, !tbaa !114, !noalias !2794
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i.i
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 8 ; 3 uses
  %i.aag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2794
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aah = load i32, ptr %i.aaf, align 4, !tbaa !42, !noalias !2794
  %i.aai = add nsw i32 %i.aah, 1
  store i32 %i.aai, ptr %i.aaf, align 4, !tbaa !42, !noalias !2794
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.hi:                                            ; preds = %bb.hg
  %i.aaj = atomicrmw volatile add ptr %i.aaf, i32 1 acq_rel, align 4, !noalias !2794 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.hi, %bb.hh, %.lr.ph.i.i.i.i.i.split.i.i
  %i.aak = add nsw i64 %.068.i.i.i.i.i.i.i, -1    ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i229 = icmp eq i64 %i.aak, 0
  br i1 %.not.i.i.i.i.i.i.i229, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i, !llvm.loop !2470

.loopexit.i:                                      ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i
  %i.aam = phi ptr [ %i.zf, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.zi, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit ], [ %i.zi, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i ], [ %i.zi, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i ], [ %i.aab, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i ], [ %.lcssa.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i.prol.loopexit ], [ %i.aal, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.aam, align 8, !tbaa !209, !noalias !2794
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #19, !noalias !2794
  %i.aan = load ptr, ptr %2, align 8, !tbaa !198, !noalias !2794
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %73, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef %i.aan)
          to label %bb.hj unwind label %bb.hl, !noalias !2794

bb.hj:                                            ; preds = %.loopexit.i
  %i.aao = load ptr, ptr %73, align 8, !tbaa !91, !noalias !2794
  %i.aap = icmp eq ptr %i.aao, null
  br i1 %i.aap, label %bb.hn, label %bb.hk, !prof !92

bb.hk:                                            ; preds = %bb.hj
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !2794
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i231 unwind label %bb.hm

bb.hl:                                            ; preds = %.loopexit.i
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.hm:                                            ; preds = %bb.hk
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

bb.hn:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #19, !noalias !2794
  call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  call void @llvm.experimental.noalias.scope.decl(metadata !2796)
  %i.aas = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.aau = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.aav = load <2 x ptr>, ptr %i.aas, align 8, !tbaa !116, !noalias !2797
  store ptr null, ptr %i.aau, align 8, !tbaa !114, !noalias !2797
  store <2 x ptr> %i.aav, ptr %74, align 16, !tbaa !116, !alias.scope !2798, !noalias !2794
  store ptr null, ptr %i.aas, align 8, !tbaa !200, !noalias !2797
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19, !noalias !2794
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false), !noalias !2794
  %.val.i234 = load ptr, ptr %i.zc, align 8, !tbaa !260, !noalias !2794
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val.i234, i64 48
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !200, !noalias !2794
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !67, !noalias !2794
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !207, !noalias !2794
  %i.abc = trunc i64 %i.abb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19, !noalias !2794
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory19CreateOffsetsBufferIiEENS_6StatusET_PSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable align 8 %76, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.abc, ptr noundef %75)
          to label %_ZN5arrow6StatusD2Ev.exit.i235 unwind label %bb.ho, !noalias !2794

_ZN5arrow6StatusD2Ev.exit.i235:                   ; preds = %bb.hn
  %i.abd = load ptr, ptr %76, align 8, !tbaa !91, !noalias !2794 ; 2 uses
  store ptr %i.abd, ptr %0, align 8, !tbaa !91, !alias.scope !2794
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19, !noalias !2794
  %i.abe = icmp eq ptr %i.abd, null
  br i1 %i.abe, label %_ZN5arrow6StatusD2Ev.exit30.i241, label %.critedge.i

bb.ho:                                            ; preds = %bb.hn
  %i.abf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19, !noalias !2794
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit30.i241:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i235
  %i.abg = load ptr, ptr %i.zc, align 8, !tbaa !260, !noalias !2794, !nonnull !104, !align !137
  %i.abh = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #20
          to label %.noexc31.i unwind label %bb.hv, !noalias !2794 ; 6 uses

.noexc31.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit30.i241
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  store i32 1, ptr %i.abj, align 8, !tbaa !110, !noalias !2799
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abh, i64 12
  store i32 1, ptr %i.abk, align 4, !tbaa !111, !noalias !2799
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.abh, align 8, !tbaa !113, !noalias !2799
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abh, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow9ListArrayEJRKSt10shared_ptrINS0_8DataTypeEERlRS2_INS0_6BufferEERS2_INS0_5ArrayEEEEvPT_DpOT0_(ptr noundef nonnull %i.abl, ptr noundef nonnull align 8 dereferenceable(16) %i.abi, ptr noundef nonnull align 8 dereferenceable(8) %i.za, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %74)
          to label %_ZSt11make_sharedIN5arrow9ListArrayEJRKSt10shared_ptrINS0_8DataTypeEERlRS2_INS0_6BufferEERS2_INS0_5ArrayEEEES2_IT_EDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !2799

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc31.i
  %i.abm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.abh, i64 noundef 80) #21, !noalias !2799
  br label %.body.i

_ZSt11make_sharedIN5arrow9ListArrayEJRKSt10shared_ptrINS0_8DataTypeEERlRS2_INS0_6BufferEERS2_INS0_5ArrayEEEES2_IT_EDpOT0_.exit.i: ; preds = %.noexc31.i
  %i.abn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.abl, ptr %i.abn, align 8, !tbaa !171, !noalias !2794
  %i.abo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !114, !noalias !2794 ; 8 uses
  store ptr %i.abh, ptr %i.abo, align 8, !tbaa !114, !noalias !2794
  %.not.i.i.i.i32.i = icmp eq ptr %i.abp, null
  br i1 %.not.i.i.i.i32.i, label %_ZNSt12__shared_ptrIN5arrow9ListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.hp

bb.hp:                                            ; preds = %_ZSt11make_sharedIN5arrow9ListArrayEJRKSt10shared_ptrINS0_8DataTypeEERlRS2_INS0_6BufferEERS2_INS0_5ArrayEEEES2_IT_EDpOT0_.exit.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8 ; 4 uses
  %i.abr = load atomic i64, ptr %i.abq acquire, align 8, !noalias !2794 ; 2 uses
  %i.abs = icmp eq i64 %i.abr, 4294967297
  %i.abt = trunc i64 %i.abr to i32                ; 2 uses
  br i1 %i.abs, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  store i32 0, ptr %i.abq, align 8, !tbaa !110, !noalias !2794
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 12
  store i32 0, ptr %i.abu, align 4, !tbaa !111, !noalias !2794
  %i.abv = load ptr, ptr %i.abp, align 8, !tbaa !113, !noalias !2794
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.abx = load ptr, ptr %i.abw, align 8, !noalias !2794
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #19, !noalias !2794, !inline_history !2477
  %i.aby = load ptr, ptr %i.abp, align 8, !tbaa !113, !noalias !2794
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = load ptr, ptr %i.abz, align 8, !noalias !2794
  call void %i.aca(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #19, !noalias !2794, !inline_history !2477
  br label %_ZNSt12__shared_ptrIN5arrow9ListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.hr:                                            ; preds = %bb.hp
  %i.acb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2794
  %.not.i.i.i.i.i.i242 = icmp eq i8 %i.acb, 0
  br i1 %.not.i.i.i.i.i.i242, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.acc = add nsw i32 %i.abt, -1
  store i32 %i.acc, ptr %i.abq, align 8, !tbaa !42, !noalias !2794
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i243

bb.ht:                                            ; preds = %bb.hr
  %i.acd = atomicrmw volatile add ptr %i.abq, i32 -1 acq_rel, align 4, !noalias !2794
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i243

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i243: ; preds = %bb.ht, %bb.hs
  %.0.i.i.i.i.i.i.i244 = phi i32 [ %i.abt, %bb.hs ], [ %i.acd, %bb.ht ]
  %i.ace = icmp eq i32 %.0.i.i.i.i.i.i.i244, 1
  br i1 %i.ace, label %bb.hu, label %_ZNSt12__shared_ptrIN5arrow9ListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !118

bb.hu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i243
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abp) #19, !noalias !2794
  br label %_ZNSt12__shared_ptrIN5arrow9ListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow9ListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.hu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i243, %bb.hq, %_ZSt11make_sharedIN5arrow9ListArrayEJRKSt10shared_ptrINS0_8DataTypeEERlRS2_INS0_6BufferEERS2_INS0_5ArrayEEEES2_IT_EDpOT0_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !2800
  br label %.critedge.i

bb.hv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit30.i241
  %i.acf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.critedge.i:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow9ListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit.i235
  %i.acg = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !114, !noalias !2794 ; 8 uses
  %.not.i.i33.i = icmp eq ptr %i.ach, null
  br i1 %.not.i.i33.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i236, label %bb.hw

bb.hw:                                            ; preds = %.critedge.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  store i32 0, ptr %i.adr, align 8, !tbaa !110
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adq, i64 12
  store i32 0, ptr %i.adv, align 4, !tbaa !111
  %i.adw = load ptr, ptr %i.adq, align 8, !tbaa !113
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %i.ady = load ptr, ptr %i.adx, align 8
  call void %i.ady(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #19, !inline_history !2482
  %i.adz = load ptr, ptr %i.adq, align 8, !tbaa !113
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aeb = load ptr, ptr %i.aea, align 8
  call void %i.aeb(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #19, !inline_history !2482
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i

bb.il:                                            ; preds = %bb.ij
  %i.aec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2794
  %.not.i.i.i.i.i.i42.i = icmp eq i8 %i.aec, 0
  br i1 %.not.i.i.i.i.i.i42.i, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aed = add nsw i32 %i.adu, -1
  store i32 %i.aed, ptr %i.adr, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232

bb.in:                                            ; preds = %bb.il
  %i.aee = atomicrmw volatile add ptr %i.adr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232: ; preds = %bb.in, %bb.im
  %.0.i.i.i.i.i.i.i.i233 = phi i32 [ %i.adu, %bb.im ], [ %i.aee, %bb.in ]
  %i.aef = icmp eq i32 %.0.i.i.i.i.i.i.i.i233, 1
  br i1 %i.aef, label %bb.io, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i, !prof !118

bb.io:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i: ; preds = %bb.io, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232, %bb.ik, %bb.ii
  %.pr.i43.i = load ptr, ptr %73, align 8, !tbaa !91, !noalias !2794 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %.pr.i43.i, null
  br i1 %.not.i.i44.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i, !prof !156

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i231
  %i.aeg = phi ptr [ %.pr.i43.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i ], [ %i.adn, %_ZN5arrow6StatusC2ERKS0_.exit.i231 ]
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 1
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !102, !range !103, !noundef !104
  %i.aej = trunc nuw i8 %i.aei to i1
  br i1 %i.aej, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i, label %bb.ip

bb.ip:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %73) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i: ; preds = %bb.ip, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19, !noalias !2794
  %i.aek = load ptr, ptr %72, align 8, !tbaa !211, !noalias !2794 ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !209, !noalias !2794 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aek, %i.aem
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.afe, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i ], [ %i.aek, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i ] ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i, label %bb.iq

bb.iq:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 4 uses
  %i.aeq = load atomic i64, ptr %i.aep acquire, align 8 ; 2 uses
  %i.aer = icmp eq i64 %i.aeq, 4294967297
  %i.aes = trunc i64 %i.aeq to i32                ; 2 uses
  br i1 %i.aer, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  store i32 0, ptr %i.aep, align 8, !tbaa !110
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeo, i64 12
  store i32 0, ptr %i.aet, align 4, !tbaa !111
  %i.aeu = load ptr, ptr %i.aeo, align 8, !tbaa !113
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = load ptr, ptr %i.aev, align 8
  call void %i.aew(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #19, !inline_history !2483
  %i.aex = load ptr, ptr %i.aeo, align 8, !tbaa !113
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 24
  %i.aez = load ptr, ptr %i.aey, align 8
  call void %i.aez(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #19, !inline_history !2483
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i

bb.is:                                            ; preds = %bb.iq
  %i.afa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2794
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.afa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.afb = add nsw i32 %i.aes, -1
  store i32 %i.afb, ptr %i.aep, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.iu:                                            ; preds = %bb.is
  %i.afc = atomicrmw volatile add ptr %i.aep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.iu, %bb.it
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aes, %bb.it ], [ %i.afc, %bb.iu ]
  %i.afd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.afd, label %bb.iv, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i, !prof !118

bb.iv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i: ; preds = %bb.iv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.ir, %.lr.ph.i.i.i.i
  %i.afe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i45.i = icmp eq ptr %i.afe, %i.aem
  br i1 %.not.i.i.i45.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i
  %.pr.i46.i = load ptr, ptr %72, align 8, !tbaa !211, !noalias !2794
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i
  %i.aff = phi ptr [ %.pr.i46.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aek, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aff, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_8ListTypeEEENSt9enable_ifIXsr23is_var_length_list_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.afg = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !210, !noalias !2794
  %i.afi = ptrtoint ptr %i.afh to i64
  %i.afj = ptrtoint ptr %i.aff to i64
  %i.afk = sub i64 %i.afi, %i.afj
  call void @_ZdlPvm(ptr noundef nonnull %i.aff, i64 noundef %i.afk) #21
  br label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_8ListTypeEEENSt9enable_ifIXsr23is_var_length_list_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.ix:                                            ; preds = %.body.i, %bb.hm
  %.pn20.i = phi { ptr, i32 } [ %i.aar, %bb.hm ], [ %.pn17.i, %.body.i ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %73) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19, !noalias !2794
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.hl
  %.pn20.pn.i = phi { ptr, i32 } [ %.pn20.i, %bb.ix ], [ %i.aaq, %bb.hl ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %72) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19, !noalias !2794
  br label %common.resume

_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_8ListTypeEEENSt9enable_ifIXsr23is_var_length_list_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19, !noalias !2794
  br label %bb.ajp

bb.iz:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2801)
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #19, !noalias !2801
  %i.afl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !199, !noalias !2801 ; 9 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val24.i245 = load ptr, ptr %i.afn, align 8, !tbaa !260, !noalias !2801 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.val24.i245, i64 48 ; 2 uses
  %i.afp = icmp ugt i64 %i.afm, 576460752303423487
  br i1 %i.afp, label %.noexc.i314, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i246

.noexc.i314:                                      ; preds = %bb.iz
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23, !noalias !2801
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i246: ; preds = %bb.iz
  %.not.i.i.i.i.i247 = icmp eq i64 %i.afm, 0
  br i1 %.not.i.i.i.i.i247, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i313, label %.lr.ph.i.i.i.i.i.i.i248

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i313: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i246
  %i.afq = getelementptr inbounds nuw i8, ptr %66, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false), !noalias !2801
  br label %.loopexit.i258

.lr.ph.i.i.i.i.i.i.i248:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i246
  %i.afr = shl nuw nsw i64 %i.afm, 4
  %i.afs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afr) #20, !noalias !2801 ; 6 uses
  store ptr %i.afs, ptr %66, align 8, !tbaa !211, !noalias !2801
  %i.aft = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 4 uses
  store ptr %i.afs, ptr %i.aft, align 8, !tbaa !209, !noalias !2801
  %i.afu = getelementptr inbounds nuw [16 x i8], ptr %i.afs, i64 %i.afm
  %i.afv = getelementptr inbounds nuw i8, ptr %66, i64 16
  store ptr %i.afu, ptr %i.afv, align 8, !tbaa !210, !noalias !2801
  %i.afw = getelementptr inbounds nuw i8, ptr %.val24.i245, i64 56 ; 2 uses
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !114, !noalias !2801 ; 2 uses
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %.lr.ph.i.i.i.i.i.split.us.i.i308, label %.lr.ph.i.i.i.i.i.split.i.i249

.lr.ph.i.i.i.i.i.split.us.i.i308:                 ; preds = %.lr.ph.i.i.i.i.i.i.i248
  %i.afz = load ptr, ptr %i.afo, align 8, !tbaa !200, !noalias !2801
  %i.aga = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.afz, i64 0 ; 9 uses
  %xtraiter1146 = and i64 %i.afm, 7               ; 2 uses
  %lcmp.mod1147.not = icmp eq i64 %xtraiter1146, 0
  br i1 %lcmp.mod1147.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i308, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol
  %.09.i.i.i.i.i.us.i.i310.prol = phi ptr [ %i.agc, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ], [ %i.afs, %.lr.ph.i.i.i.i.i.split.us.i.i308 ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i311.prol = phi i64 [ %i.agb, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ], [ %i.afm, %.lr.ph.i.i.i.i.i.split.us.i.i308 ]
  %prol.iter1148 = phi i64 [ %prol.iter1148.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i308 ]
  store <2 x ptr> %i.aga, ptr %.09.i.i.i.i.i.us.i.i310.prol, align 8, !tbaa !116, !noalias !2801
  %i.agb = add nsw i64 %.068.i.i.i.i.i.us.i.i311.prol, -1 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310.prol, i64 16 ; 3 uses
  %prol.iter1148.next = add i64 %prol.iter1148, 1 ; 2 uses
  %prol.iter1148.cmp.not = icmp eq i64 %prol.iter1148.next, %xtraiter1146
  br i1 %prol.iter1148.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol, !llvm.loop !2486

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol, %.lr.ph.i.i.i.i.i.split.us.i.i308
  %.lcssa1128.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.split.us.i.i308 ], [ %i.agc, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ]
  %.09.i.i.i.i.i.us.i.i310.unr = phi ptr [ %i.afs, %.lr.ph.i.i.i.i.i.split.us.i.i308 ], [ %i.agc, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ]
  %.068.i.i.i.i.i.us.i.i311.unr = phi i64 [ %i.afm, %.lr.ph.i.i.i.i.i.split.us.i.i308 ], [ %i.agb, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol ]
  %i.agd = icmp ult i64 %i.afm, 8
  br i1 %i.agd, label %.loopexit.i258, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309
  %.09.i.i.i.i.i.us.i.i310 = phi ptr [ %i.agm, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309 ], [ %.09.i.i.i.i.i.us.i.i310.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i311 = phi i64 [ %i.agl, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309 ], [ %.068.i.i.i.i.i.us.i.i311.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit ]
  store <2 x ptr> %i.aga, ptr %.09.i.i.i.i.i.us.i.i310, align 8, !tbaa !116, !noalias !2801
  %i.age = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 16
  store <2 x ptr> %i.aga, ptr %i.age, align 8, !tbaa !116, !noalias !2801
  %i.agf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 32
  store <2 x ptr> %i.aga, ptr %i.agf, align 8, !tbaa !116, !noalias !2801
  %i.agg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 48
  store <2 x ptr> %i.aga, ptr %i.agg, align 8, !tbaa !116, !noalias !2801
  %i.agh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 64
  store <2 x ptr> %i.aga, ptr %i.agh, align 8, !tbaa !116, !noalias !2801
  %i.agi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 80
  store <2 x ptr> %i.aga, ptr %i.agi, align 8, !tbaa !116, !noalias !2801
  %i.agj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 96
  store <2 x ptr> %i.aga, ptr %i.agj, align 8, !tbaa !116, !noalias !2801
  %i.agk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 112
  store <2 x ptr> %i.aga, ptr %i.agk, align 8, !tbaa !116, !noalias !2801
  %i.agl = add nsw i64 %.068.i.i.i.i.i.us.i.i311, -8 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i310, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i312.7 = icmp eq i64 %i.agl, 0
  br i1 %.not.i.i.i.i.i.us.i.i312.7, label %.loopexit.i258, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309, !llvm.loop !2469

.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i256:    ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254
  %.pr.i.i257 = load ptr, ptr %i.afw, align 8, !tbaa !114, !noalias !2801
  br label %.lr.ph.i.i.i.i.i.split.i.i249

.lr.ph.i.i.i.i.i.split.i.i249:                    ; preds = %.lr.ph.i.i.i.i.i.i.i248, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i256
  %i.agn = phi ptr [ %.pr.i.i257, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i256 ], [ %i.afx, %.lr.ph.i.i.i.i.i.i.i248 ] ; 3 uses
  %.09.i.i.i.i.i.i.i250 = phi ptr [ %i.agw, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i256 ], [ %i.afs, %.lr.ph.i.i.i.i.i.i.i248 ] ; 3 uses
  %.068.i.i.i.i.i.i.i251 = phi i64 [ %i.agv, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i256 ], [ %i.afm, %.lr.ph.i.i.i.i.i.i.i248 ]
  %i.ago = load ptr, ptr %i.afo, align 8, !tbaa !200, !noalias !2801
  store ptr %i.ago, ptr %.09.i.i.i.i.i.i.i250, align 8, !tbaa !200, !noalias !2801
  %i.agp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i250, i64 8
  store ptr %i.agn, ptr %i.agp, align 8, !tbaa !114, !noalias !2801
  %.not.i.i.i.i.i.i.i.i.i.i.i252 = icmp eq ptr %i.agn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i252, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254, label %bb.ja

bb.ja:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i.i249
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 8 ; 3 uses
  %i.agr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2801
  %.not.i.i.i.i.i.i.i.i.i.i.i.i253 = icmp eq i8 %i.agr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i253, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.ags = load i32, ptr %i.agq, align 4, !tbaa !42, !noalias !2801
  %i.agt = add nsw i32 %i.ags, 1
  store i32 %i.agt, ptr %i.agq, align 4, !tbaa !42, !noalias !2801
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254

bb.jc:                                            ; preds = %bb.ja
  %i.agu = atomicrmw volatile add ptr %i.agq, i32 1 acq_rel, align 4, !noalias !2801 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254: ; preds = %bb.jc, %bb.jb, %.lr.ph.i.i.i.i.i.split.i.i249
  %i.agv = add nsw i64 %.068.i.i.i.i.i.i.i251, -1 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i250, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i255 = icmp eq i64 %i.agv, 0
  br i1 %.not.i.i.i.i.i.i.i255, label %.loopexit.i258, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i256, !llvm.loop !2470

.loopexit.i258:                                   ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i313
  %i.agx = phi ptr [ %i.afq, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i313 ], [ %i.aft, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit ], [ %i.aft, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309 ], [ %i.aft, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254 ]
  %.0.lcssa.i.i.i.i.i.i.i259 = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i313 ], [ %i.agm, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309 ], [ %.lcssa1128.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i309.prol.loopexit ], [ %i.agw, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i254 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i259, ptr %i.agx, align 8, !tbaa !209, !noalias !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #19, !noalias !2801
  %i.agy = load ptr, ptr %2, align 8, !tbaa !198, !noalias !2801
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef %i.agy)
          to label %bb.jd unwind label %bb.jf, !noalias !2801

bb.jd:                                            ; preds = %.loopexit.i258
  %i.agz = load ptr, ptr %67, align 8, !tbaa !91, !noalias !2801
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %bb.jh, label %bb.je, !prof !92

bb.je:                                            ; preds = %bb.jd
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !2801
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i262 unwind label %bb.jg

bb.jf:                                            ; preds = %.loopexit.i258
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.jg:                                            ; preds = %bb.je
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.jh:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #19, !noalias !2801
  call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  %i.ahd = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.ahf = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.ahg = load <2 x ptr>, ptr %i.ahd, align 8, !tbaa !116, !noalias !2804
  store ptr null, ptr %i.ahf, align 8, !tbaa !114, !noalias !2804
  store <2 x ptr> %i.ahg, ptr %68, align 16, !tbaa !116, !alias.scope !2805, !noalias !2801
  store ptr null, ptr %i.ahd, align 8, !tbaa !200, !noalias !2804
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #19, !noalias !2801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false), !noalias !2801
  %.val.i285 = load ptr, ptr %i.afn, align 8, !tbaa !260, !noalias !2801
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val.i285, i64 48
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !200, !noalias !2801
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !67, !noalias !2801
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !207, !noalias !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19, !noalias !2801
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory19CreateOffsetsBufferIlEENS_6StatusET_PSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable align 8 %70, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %i.ahm, ptr noundef %69)
          to label %_ZN5arrow6StatusD2Ev.exit.i287 unwind label %bb.ji, !noalias !2801

_ZN5arrow6StatusD2Ev.exit.i287:                   ; preds = %bb.jh
  %i.ahn = load ptr, ptr %70, align 8, !tbaa !91, !noalias !2801 ; 2 uses
  store ptr %i.ahn, ptr %0, align 8, !tbaa !91, !alias.scope !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19, !noalias !2801
  %i.aho = icmp eq ptr %i.ahn, null
  br i1 %i.aho, label %_ZN5arrow6StatusD2Ev.exit30.i299, label %.critedge.i288

bb.ji:                                            ; preds = %bb.jh
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19, !noalias !2801
  br label %bb.kj

_ZN5arrow6StatusD2Ev.exit30.i299:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i287
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #19, !noalias !2801
  %i.ahq = load ptr, ptr %i.afn, align 8, !tbaa !260, !noalias !2801, !nonnull !104, !align !137
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #19, !noalias !2807
  store ptr null, ptr %71, align 16, !tbaa !2809, !alias.scope !2806, !noalias !2801
  %i.ahs = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow14LargeListArrayESaIvEJRKSt10shared_ptrINS4_8DataTypeEERlRS7_INS4_6BufferEERS7_INS4_5ArrayEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ahs, ptr noundef nonnull align 8 dereferenceable(16) %71, ptr nonnull %65, ptr noundef nonnull align 8 dereferenceable(16) %i.ahr, ptr noundef nonnull align 8 dereferenceable(8) %i.afl, ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(16) %68)
          to label %bb.jj unwind label %bb.jw, !noalias !2801

bb.jj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit30.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19, !noalias !2807
  %i.aht = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ahv = load <2 x ptr>, ptr %71, align 16, !tbaa !116, !noalias !2801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %71, i8 0, i64 16, i1 false), !noalias !2801
  %i.ahw = load ptr, ptr %i.ahu, align 8, !tbaa !114, !noalias !2801 ; 8 uses
  store <2 x ptr> %i.ahv, ptr %i.aht, align 8, !tbaa !116, !noalias !2801
  %.not.i.i.i.i32.i300 = icmp eq ptr %i.ahw, null
  br i1 %.not.i.i.i.i32.i300, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_14LargeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8 ; 4 uses
  %i.ahy = load atomic i64, ptr %i.ahx acquire, align 8, !noalias !2801 ; 2 uses
  %i.ahz = icmp eq i64 %i.ahy, 4294967297
  %i.aia = trunc i64 %i.ahy to i32                ; 2 uses
  br i1 %i.ahz, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  store i32 0, ptr %i.ahx, align 8, !tbaa !110, !noalias !2801
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahw, i64 12
  store i32 0, ptr %i.aib, align 4, !tbaa !111, !noalias !2801
  %i.aic = load ptr, ptr %i.ahw, align 8, !tbaa !113, !noalias !2801
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  %i.aie = load ptr, ptr %i.aid, align 8, !noalias !2801
  call void %i.aie(ptr noundef nonnull align 8 dereferenceable(16) %i.ahw) #19, !noalias !2801, !inline_history !2493
  %i.aif = load ptr, ptr %i.ahw, align 8, !tbaa !113, !noalias !2801
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 24
  %i.aih = load ptr, ptr %i.aig, align 8, !noalias !2801
  call void %i.aih(ptr noundef nonnull align 8 dereferenceable(16) %i.ahw) #19, !noalias !2801, !inline_history !2493
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_14LargeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i

bb.jm:                                            ; preds = %bb.jk
  %i.aii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2801
  %.not.i.i.i.i.i.i301 = icmp eq i8 %i.aii, 0
  br i1 %.not.i.i.i.i.i.i301, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aij = add nsw i32 %i.aia, -1
  store i32 %i.aij, ptr %i.ahx, align 8, !tbaa !42, !noalias !2801
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302

bb.jo:                                            ; preds = %bb.jm
  %i.aik = atomicrmw volatile add ptr %i.ahx, i32 -1 acq_rel, align 4, !noalias !2801
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302: ; preds = %bb.jo, %bb.jn
  %.0.i.i.i.i.i.i.i303 = phi i32 [ %i.aia, %bb.jn ], [ %i.aik, %bb.jo ]
  %i.ail = icmp eq i32 %.0.i.i.i.i.i.i.i303, 1
  br i1 %i.ail, label %bb.jp, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_14LargeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i, !prof !118

bb.jp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahw) #19, !noalias !2801
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_14LargeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i

_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_14LargeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i: ; preds = %bb.jp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302, %bb.jl, %bb.jj
  %i.aim = load ptr, ptr %i.ahs, align 8, !tbaa !114, !noalias !2801 ; 8 uses
  %.not.i.i.i304 = icmp eq ptr %i.aim, null
  br i1 %.not.i.i.i304, label %_ZNSt12__shared_ptrIN5arrow14LargeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.jq

bb.jq:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_14LargeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 4 uses
  %i.aio = load atomic i64, ptr %i.ain acquire, align 8, !noalias !2801 ; 2 uses
  %i.aip = icmp eq i64 %i.aio, 4294967297
  %i.aiq = trunc i64 %i.aio to i32                ; 2 uses
  br i1 %i.aip, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  store i32 0, ptr %i.ain, align 8, !tbaa !110, !noalias !2801
  %i.air = getelementptr inbounds nuw i8, ptr %i.aim, i64 12
  store i32 0, ptr %i.air, align 4, !tbaa !111, !noalias !2801
  %i.ais = load ptr, ptr %i.aim, align 8, !tbaa !113, !noalias !2801
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.aiu = load ptr, ptr %i.ait, align 8, !noalias !2801
  call void %i.aiu(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #19, !noalias !2801, !inline_history !2494
  %i.aiv = load ptr, ptr %i.aim, align 8, !tbaa !113, !noalias !2801
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8, !noalias !2801
  call void %i.aix(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #19, !noalias !2801, !inline_history !2494
  br label %_ZNSt12__shared_ptrIN5arrow14LargeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.js:                                            ; preds = %bb.jq
end_hunk_1
begin_hunk_2_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348: ; preds = %bb.pg, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i40.i347, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i45.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19, !noalias !2822
  %i.axp = load ptr, ptr %i.asl, align 8, !tbaa !114, !noalias !2822 ; 8 uses
  %.not.i.i49.i349 = icmp eq ptr %i.axp, null
  br i1 %.not.i.i49.i349, label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %bb.ph

bb.ph:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 8 ; 4 uses
  %i.axr = load atomic i64, ptr %i.axq acquire, align 8 ; 2 uses
  %i.axs = icmp eq i64 %i.axr, 4294967297
  %i.axt = trunc i64 %i.axr to i32                ; 2 uses
  br i1 %i.axs, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  store i32 0, ptr %i.axq, align 8, !tbaa !110
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axp, i64 12
  store i32 0, ptr %i.axu, align 4, !tbaa !111
  %i.axv = load ptr, ptr %i.axp, align 8, !tbaa !113
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  %i.axx = load ptr, ptr %i.axw, align 8
  call void %i.axx(ptr noundef nonnull align 8 dereferenceable(16) %i.axp) #19, !inline_history !2536
  %i.axy = load ptr, ptr %i.axp, align 8, !tbaa !113
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 24
  %i.aya = load ptr, ptr %i.axz, align 8
  call void %i.aya(ptr noundef nonnull align 8 dereferenceable(16) %i.axp) #19, !inline_history !2536
  br label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.pj:                                            ; preds = %bb.ph
  %i.ayb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2822
  %.not.i.i.i50.i350 = icmp eq i8 %i.ayb, 0
  br i1 %.not.i.i.i50.i350, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ayc = add nsw i32 %i.axt, -1
  store i32 %i.ayc, ptr %i.axq, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351

bb.pl:                                            ; preds = %bb.pj
  %i.ayd = atomicrmw volatile add ptr %i.axq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351: ; preds = %bb.pl, %bb.pk
  %.0.i.i.i.i52.i352 = phi i32 [ %i.axt, %bb.pk ], [ %i.ayd, %bb.pl ]
  %i.aye = icmp eq i32 %.0.i.i.i.i52.i352, 1
  br i1 %i.aye, label %bb.pm, label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, !prof !118

bb.pm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.axp) #19
  br label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.pn:                                            ; preds = %bb.oy, %bb.np
  %.pn20.i345 = phi { ptr, i32 } [ %i.atc, %bb.np ], [ %.pn16.pn.i363, %bb.oy ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19, !noalias !2822
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.no
  %.pn20.pn.i344 = phi { ptr, i32 } [ %.pn20.i345, %bb.pn ], [ %i.atb, %bb.no ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !2822
  br label %common.resume

_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348, %bb.pi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !2822
  br label %bb.ajp

bb.pp:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2833)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19, !noalias !2833
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !260, !noalias !2833, !nonnull !104, !align !137 ; 6 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %43, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ayh, i8 0, i64 16, i1 false), !noalias !2833
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %43, align 8, !tbaa !113, !noalias !2833
  %i.ayi = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayg, i64 32
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !114, !noalias !2833 ; 2 uses
  %i.aym = load <2 x ptr>, ptr %i.ayj, align 8, !tbaa !116, !noalias !2833
  store <2 x ptr> %i.aym, ptr %i.ayi, align 8, !tbaa !116, !noalias !2833
  %.not.i.i.i.i.i.i.i393 = icmp eq ptr %i.ayl, null
  br i1 %.not.i.i.i.i.i.i.i393, label %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8 ; 3 uses
  %i.ayo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2833
  %.not.i.i.i.i.i.i.i.i394 = icmp eq i8 %i.ayo, 0
  br i1 %.not.i.i.i.i.i.i.i.i394, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ayp = load i32, ptr %i.ayn, align 4, !tbaa !42
  %i.ayq = add nsw i32 %i.ayp, 1
  store i32 %i.ayq, ptr %i.ayn, align 4, !tbaa !42
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i

bb.ps:                                            ; preds = %bb.pq
  %i.ayr = atomicrmw volatile add ptr %i.ayn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i

_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i:              ; preds = %bb.ps, %bb.pr, %bb.pp
  %i.ays = getelementptr inbounds nuw i8, ptr %43, i64 40
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayg, i64 40
  %i.ayu = load i8, ptr %i.ayt, align 8, !tbaa !194, !range !103, !noundef !104
  store i8 %i.ayu, ptr %i.ays, align 8, !tbaa !194, !noalias !2833
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14BaseListScalarE, i64 16), ptr %43, align 8, !tbaa !113, !noalias !2833
  %i.ayv = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayg, i64 48
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !200 ; 3 uses
  store ptr %i.ayx, ptr %i.ayv, align 8, !tbaa !200, !noalias !2833
  %i.ayy = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayg, i64 56
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !114 ; 3 uses
  store ptr %i.aza, ptr %i.ayy, align 8, !tbaa !114, !noalias !2833
  %.not.i.i.i.i.i.i395 = icmp eq ptr %i.aza, null
  br i1 %.not.i.i.i.i.i.i395, label %_ZN5arrow9MapScalarC2ERKS0_.exit.i, label %bb.pt

bb.pt:                                            ; preds = %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 8 ; 3 uses
  %i.azc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2833
  %.not.i.i.i.i3.i.i.i = icmp eq i8 %i.azc, 0
  br i1 %.not.i.i.i.i3.i.i.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.azd = load i32, ptr %i.azb, align 4, !tbaa !42
  %i.aze = add nsw i32 %i.azd, 1
  store i32 %i.aze, ptr %i.azb, align 4, !tbaa !42
  br label %_ZN5arrow9MapScalarC2ERKS0_.exit.i

bb.pv:                                            ; preds = %bb.pt
  %i.azf = atomicrmw volatile add ptr %i.azb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i442 = load ptr, ptr %i.ayv, align 8, !tbaa !200, !noalias !2833
  br label %_ZN5arrow9MapScalarC2ERKS0_.exit.i

_ZN5arrow9MapScalarC2ERKS0_.exit.i:               ; preds = %bb.pv, %bb.pu, %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i
  %i.azg = phi ptr [ %i.ayx, %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i ], [ %i.ayx, %bb.pu ], [ %.pre.i442, %bb.pv ] ; 3 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %43, i64 64
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azh, ptr noundef nonnull align 8 dereferenceable(16) %i.azi, i64 16, i1 false), !tbaa.struct !2834
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow9MapScalarE, i64 16), ptr %43, align 8, !tbaa !113, !noalias !2833
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19, !noalias !2833
  %i.azj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !199, !noalias !2833 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19, !noalias !2833
  invoke void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.29") align 8 %45, ptr noundef nonnull align 8 dereferenceable(40) %i.azg, i32 noundef 0)
          to label %bb.pw unwind label %bb.qu

bb.pw:                                            ; preds = %_ZN5arrow9MapScalarC2ERKS0_.exit.i
  %i.azl = icmp ugt i64 %i.azk, 576460752303423487
  br i1 %i.azl, label %bb.px, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397

bb.px:                                            ; preds = %bb.pw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc.i441 unwind label %bb.qv

.noexc.i441:                                      ; preds = %bb.px
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397: ; preds = %bb.pw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false), !noalias !2833
  %.not.i.i.i.i.i398 = icmp eq i64 %i.azk, 0
  br i1 %.not.i.i.i.i.i398, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i440, label %.lr.ph.i.i.i.i.i.i.i399

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i440: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397
  %i.azm = getelementptr inbounds nuw i8, ptr %44, i64 8
  br label %.loopexit3.i

.lr.ph.i.i.i.i.i.i.i399:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397
  %i.azn = shl nuw nsw i64 %i.azk, 4
  %i.azo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azn) #20
          to label %.noexc46.i unwind label %bb.qv ; 6 uses

.noexc46.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i399
  store ptr %i.azo, ptr %44, align 8, !tbaa !211, !noalias !2833
  %i.azp = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  store ptr %i.azo, ptr %i.azp, align 8, !tbaa !209, !noalias !2833
  %i.azq = getelementptr inbounds nuw [16 x i8], ptr %i.azo, i64 %i.azk
  %i.azr = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %i.azq, ptr %i.azr, align 8, !tbaa !210, !noalias !2833
  %i.azs = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !114, !noalias !2833 ; 2 uses
  %i.azu = icmp eq ptr %i.azt, null
  %i.azv = load ptr, ptr %45, align 8, !tbaa !200, !noalias !2833 ; 10 uses
  br i1 %i.azu, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader, label %.lr.ph.i.i.i.i.i.split.i.i400

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader: ; preds = %.noexc46.i
  %xtraiter1140 = and i64 %i.azk, 7               ; 2 uses
  %lcmp.mod1141.not = icmp eq i64 %xtraiter1140, 0
  br i1 %lcmp.mod1141.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.preheader

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.preheader: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader
  %i.azw = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.preheader
  %.09.i.i.i.i.i.us.i.i437.prol = phi ptr [ %i.azy, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol ], [ %i.azo, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.preheader ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i438.prol = phi i64 [ %i.azx, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol ], [ %i.azk, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.preheader ]
  %prol.iter1142 = phi i64 [ %prol.iter1142.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol ], [ 0, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.preheader ]
  store <2 x ptr> %i.azw, ptr %.09.i.i.i.i.i.us.i.i437.prol, align 8, !tbaa !116
  %i.azx = add nsw i64 %.068.i.i.i.i.i.us.i.i438.prol, -1 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437.prol, i64 16 ; 3 uses
  %prol.iter1142.next = add i64 %prol.iter1142, 1 ; 2 uses
  %prol.iter1142.cmp.not = icmp eq i64 %prol.iter1142.next, %xtraiter1140
  br i1 %prol.iter1142.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol, !llvm.loop !2539

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader
  %.lcssa1134.unr = phi ptr [ poison, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader ], [ %i.azy, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol ]
  %.09.i.i.i.i.i.us.i.i437.unr = phi ptr [ %i.azo, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader ], [ %i.azy, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol ]
  %.068.i.i.i.i.i.us.i.i438.unr = phi i64 [ %i.azk, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader ], [ %i.azx, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol ]
  %i.azz = icmp ult i64 %i.azk, 8
  br i1 %i.azz, label %.loopexit3.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader.new: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.loopexit
  %i.baa = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  %i.bab = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  %i.bac = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  %i.bad = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  %i.bae = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  %i.baf = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  %i.bag = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  %i.bah = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.azv, i64 0
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader.new
  %.09.i.i.i.i.i.us.i.i437 = phi ptr [ %.09.i.i.i.i.i.us.i.i437.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader.new ], [ %i.baq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436 ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i438 = phi i64 [ %.068.i.i.i.i.i.us.i.i438.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.preheader.new ], [ %i.bap, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436 ]
  store <2 x ptr> %i.baa, ptr %.09.i.i.i.i.i.us.i.i437, align 8, !tbaa !116
  %i.bai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 16
  store <2 x ptr> %i.bab, ptr %i.bai, align 8, !tbaa !116
  %i.baj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 32
  store <2 x ptr> %i.bac, ptr %i.baj, align 8, !tbaa !116
  %i.bak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 48
  store <2 x ptr> %i.bad, ptr %i.bak, align 8, !tbaa !116
  %i.bal = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 64
  store <2 x ptr> %i.bae, ptr %i.bal, align 8, !tbaa !116
  %i.bam = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 80
  store <2 x ptr> %i.baf, ptr %i.bam, align 8, !tbaa !116
  %i.ban = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 96
  store <2 x ptr> %i.bag, ptr %i.ban, align 8, !tbaa !116
  %i.bao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 112
  store <2 x ptr> %i.bah, ptr %i.bao, align 8, !tbaa !116
  %i.bap = add nsw i64 %.068.i.i.i.i.i.us.i.i438, -8 ; 2 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i437, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i439.7 = icmp eq i64 %i.bap, 0
  br i1 %.not.i.i.i.i.i.us.i.i439.7, label %.loopexit3.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436, !llvm.loop !2469

.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406:    ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405
  %.pr.i.i407 = load ptr, ptr %i.azs, align 8, !tbaa !114, !noalias !2833
  br label %.lr.ph.i.i.i.i.i.split.i.i400

.lr.ph.i.i.i.i.i.split.i.i400:                    ; preds = %.noexc46.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406
  %i.bar = phi ptr [ %i.baz, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406 ], [ %i.azv, %.noexc46.i ] ; 3 uses
  %i.bas = phi ptr [ %.pr.i.i407, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406 ], [ %i.azt, %.noexc46.i ] ; 3 uses
  %.09.i.i.i.i.i.i.i401 = phi ptr [ %i.bbb, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406 ], [ %i.azo, %.noexc46.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i402 = phi i64 [ %i.bba, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406 ], [ %i.azk, %.noexc46.i ]
  store ptr %i.bar, ptr %.09.i.i.i.i.i.i.i401, align 8, !tbaa !200
  %i.bat = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i401, i64 8
  store ptr %i.bas, ptr %i.bat, align 8, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i.i403 = icmp eq ptr %i.bas, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i403, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405, label %bb.py

bb.py:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i.i400
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bas, i64 8 ; 3 uses
  %i.bav = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2833
  %.not.i.i.i.i.i.i.i.i.i.i.i.i404 = icmp eq i8 %i.bav, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i404, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.baw = load i32, ptr %i.bau, align 4, !tbaa !42
  %i.bax = add nsw i32 %i.baw, 1
  store i32 %i.bax, ptr %i.bau, align 4, !tbaa !42
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405

bb.qa:                                            ; preds = %bb.py
  %i.bay = atomicrmw volatile add ptr %i.bau, i32 1 acq_rel, align 4 ; 0 uses
  %.pre13.i = load ptr, ptr %45, align 8, !tbaa !200, !noalias !2833
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405: ; preds = %bb.qa, %bb.pz, %.lr.ph.i.i.i.i.i.split.i.i400
  %i.baz = phi ptr [ %.pre13.i, %bb.qa ], [ %i.bar, %bb.pz ], [ %i.bar, %.lr.ph.i.i.i.i.i.split.i.i400 ]
  %i.bba = add nsw i64 %.068.i.i.i.i.i.i.i402, -1 ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i401, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i45.i = icmp eq i64 %i.bba, 0
  br i1 %.not.i.i.i.i.i.i45.i, label %.loopexit3.i, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406, !llvm.loop !2470

.loopexit3.i:                                     ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i440
  %i.bbc = phi ptr [ %i.azm, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i440 ], [ %i.azp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.loopexit ], [ %i.azp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436 ], [ %i.azp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405 ]
  %.0.lcssa.i.i.i.i.i.i.i408 = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i440 ], [ %i.baq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436 ], [ %.lcssa1134.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i436.prol.loopexit ], [ %i.bbb, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i408, ptr %i.bbc, align 8, !tbaa !209, !noalias !2833
  %i.bbd = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !114, !noalias !2833 ; 8 uses
  %.not.i.i.i409 = icmp eq ptr %i.bbe, null
  br i1 %.not.i.i.i409, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413, label %bb.qb

bb.qb:                                            ; preds = %.loopexit3.i
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 8 ; 4 uses
  %i.bbg = load atomic i64, ptr %i.bbf acquire, align 8 ; 2 uses
  %i.bbh = icmp eq i64 %i.bbg, 4294967297
  %i.bbi = trunc i64 %i.bbg to i32                ; 2 uses
  br i1 %i.bbh, label %bb.qc, label %bb.qd

bb.qc:                                            ; preds = %bb.qb
  store i32 0, ptr %i.bbf, align 8, !tbaa !110
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbe, i64 12
  store i32 0, ptr %i.bbj, align 4, !tbaa !111
  %i.bbk = load ptr, ptr %i.bbe, align 8, !tbaa !113
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 16
  %i.bbm = load ptr, ptr %i.bbl, align 8
  call void %i.bbm(ptr noundef nonnull align 8 dereferenceable(16) %i.bbe) #19, !inline_history !2540
  %i.bbn = load ptr, ptr %i.bbe, align 8, !tbaa !113
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 24
  %i.bbp = load ptr, ptr %i.bbo, align 8
  call void %i.bbp(ptr noundef nonnull align 8 dereferenceable(16) %i.bbe) #19, !inline_history !2540
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413

bb.qd:                                            ; preds = %bb.qb
  %i.bbq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2833
  %.not.i.i.i.i410 = icmp eq i8 %i.bbq, 0
  br i1 %.not.i.i.i.i410, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.bbr = add nsw i32 %i.bbi, -1
  store i32 %i.bbr, ptr %i.bbf, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411

bb.qf:                                            ; preds = %bb.qd
  %i.bbs = atomicrmw volatile add ptr %i.bbf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411: ; preds = %bb.qf, %bb.qe
  %.0.i.i.i.i.i412 = phi i32 [ %i.bbi, %bb.qe ], [ %i.bbs, %bb.qf ]
  %i.bbt = icmp eq i32 %.0.i.i.i.i.i412, 1
  br i1 %i.bbt, label %bb.qg, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413, !prof !118

bb.qg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbe) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413: ; preds = %bb.qg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411, %bb.qc, %.loopexit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !2833
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19, !noalias !2833
  %i.bbu = load i64, ptr %i.azj, align 8, !tbaa !199, !noalias !2833 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19, !noalias !2833
  invoke void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.29") align 8 %47, ptr noundef nonnull align 8 dereferenceable(40) %i.azg, i32 noundef 1)
          to label %bb.qh unwind label %bb.qx

bb.qh:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413
  %i.bbv = icmp ugt i64 %i.bbu, 576460752303423487
  br i1 %i.bbv, label %bb.qi, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i

bb.qi:                                            ; preds = %bb.qh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc66.i unwind label %bb.qy

.noexc66.i:                                       ; preds = %bb.qi
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i: ; preds = %bb.qh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false), !noalias !2833
  %.not.i.i.i.i48.i = icmp eq i64 %i.bbu, 0
  br i1 %.not.i.i.i.i48.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i, label %.lr.ph.i.i.i.i.i.i49.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i
  %i.bbw = getelementptr inbounds nuw i8, ptr %46, i64 8
  br label %.loopexit.i414

.lr.ph.i.i.i.i.i.i49.i:                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i
  %i.bbx = shl nuw nsw i64 %i.bbu, 4
  %i.bby = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbx) #20
          to label %.noexc67.i unwind label %bb.qy ; 6 uses

.noexc67.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i49.i
  store ptr %i.bby, ptr %46, align 8, !tbaa !211, !noalias !2833
  %i.bbz = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  store ptr %i.bby, ptr %i.bbz, align 8, !tbaa !209, !noalias !2833
  %i.bca = getelementptr inbounds nuw [16 x i8], ptr %i.bby, i64 %i.bbu
  %i.bcb = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.bca, ptr %i.bcb, align 8, !tbaa !210, !noalias !2833
  %i.bcc = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !114, !noalias !2833 ; 2 uses
  %i.bce = icmp eq ptr %i.bcd, null
  %i.bcf = load ptr, ptr %47, align 8, !tbaa !200, !noalias !2833 ; 10 uses
  br i1 %i.bce, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader, label %.lr.ph.i.i.i.i.i.split.i50.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader: ; preds = %.noexc67.i
  %xtraiter1143 = and i64 %i.bbu, 7               ; 2 uses
  %lcmp.mod1144.not = icmp eq i64 %xtraiter1143, 0
  br i1 %lcmp.mod1144.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.preheader

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.preheader: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader
  %i.bcg = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.preheader
  %.09.i.i.i.i.i.us.i62.i.prol = phi ptr [ %i.bci, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ %i.bby, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.preheader ] ; 2 uses
  %.068.i.i.i.i.i.us.i63.i.prol = phi i64 [ %i.bch, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ %i.bbu, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.preheader ]
  %prol.iter1145 = phi i64 [ %prol.iter1145.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ 0, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.preheader ]
  store <2 x ptr> %i.bcg, ptr %.09.i.i.i.i.i.us.i62.i.prol, align 8, !tbaa !116
  %i.bch = add nsw i64 %.068.i.i.i.i.i.us.i63.i.prol, -1 ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i.prol, i64 16 ; 3 uses
  %prol.iter1145.next = add i64 %prol.iter1145, 1 ; 2 uses
  %prol.iter1145.cmp.not = icmp eq i64 %prol.iter1145.next, %xtraiter1143
  br i1 %prol.iter1145.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol, !llvm.loop !2541

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader
  %.lcssa1131.unr = phi ptr [ poison, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader ], [ %i.bci, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ]
  %.09.i.i.i.i.i.us.i62.i.unr = phi ptr [ %i.bby, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader ], [ %i.bci, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ]
  %.068.i.i.i.i.i.us.i63.i.unr = phi i64 [ %i.bbu, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader ], [ %i.bch, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ]
  %i.bcj = icmp ult i64 %i.bbu, 8
  br i1 %i.bcj, label %.loopexit.i414, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader.new: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit
  %i.bck = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  %i.bcl = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  %i.bcm = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  %i.bcn = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  %i.bco = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  %i.bcp = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  %i.bcq = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  %i.bcr = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bcf, i64 0
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader.new
  %.09.i.i.i.i.i.us.i62.i = phi ptr [ %.09.i.i.i.i.i.us.i62.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader.new ], [ %i.bda, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ] ; 9 uses
  %.068.i.i.i.i.i.us.i63.i = phi i64 [ %.068.i.i.i.i.i.us.i63.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.preheader.new ], [ %i.bcz, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ]
  store <2 x ptr> %i.bck, ptr %.09.i.i.i.i.i.us.i62.i, align 8, !tbaa !116
  %i.bcs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 16
  store <2 x ptr> %i.bcl, ptr %i.bcs, align 8, !tbaa !116
  %i.bct = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 32
  store <2 x ptr> %i.bcm, ptr %i.bct, align 8, !tbaa !116
  %i.bcu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 48
  store <2 x ptr> %i.bcn, ptr %i.bcu, align 8, !tbaa !116
  %i.bcv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 64
  store <2 x ptr> %i.bco, ptr %i.bcv, align 8, !tbaa !116
  %i.bcw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 80
  store <2 x ptr> %i.bcp, ptr %i.bcw, align 8, !tbaa !116
  %i.bcx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 96
  store <2 x ptr> %i.bcq, ptr %i.bcx, align 8, !tbaa !116
  %i.bcy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 112
  store <2 x ptr> %i.bcr, ptr %i.bcy, align 8, !tbaa !116
  %i.bcz = add nsw i64 %.068.i.i.i.i.i.us.i63.i, -8 ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i64.i.7 = icmp eq i64 %i.bcz, 0
  br i1 %.not.i.i.i.i.i.us.i64.i.7, label %.loopexit.i414, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i, !llvm.loop !2469

.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i:     ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i
  %.pr.i58.i = load ptr, ptr %i.bcc, align 8, !tbaa !114, !noalias !2833
  br label %.lr.ph.i.i.i.i.i.split.i50.i

.lr.ph.i.i.i.i.i.split.i50.i:                     ; preds = %.noexc67.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i
  %i.bdb = phi ptr [ %i.bdj, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i ], [ %i.bcf, %.noexc67.i ] ; 3 uses
  %i.bdc = phi ptr [ %.pr.i58.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i ], [ %i.bcd, %.noexc67.i ] ; 3 uses
  %.09.i.i.i.i.i.i51.i = phi ptr [ %i.bdl, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i ], [ %i.bby, %.noexc67.i ] ; 3 uses
  %.068.i.i.i.i.i.i52.i = phi i64 [ %i.bdk, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i ], [ %i.bbu, %.noexc67.i ]
  store ptr %i.bdb, ptr %.09.i.i.i.i.i.i51.i, align 8, !tbaa !200
  %i.bdd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i51.i, i64 8
  store ptr %i.bdc, ptr %i.bdd, align 8, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i53.i = icmp eq ptr %i.bdc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i, label %bb.qj

bb.qj:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i50.i
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdc, i64 8 ; 3 uses
  %i.bdf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2833
  %.not.i.i.i.i.i.i.i.i.i.i.i54.i = icmp eq i8 %i.bdf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i54.i, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bdg = load i32, ptr %i.bde, align 4, !tbaa !42
  %i.bdh = add nsw i32 %i.bdg, 1
  store i32 %i.bdh, ptr %i.bde, align 4, !tbaa !42
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i

bb.ql:                                            ; preds = %bb.qj
  %i.bdi = atomicrmw volatile add ptr %i.bde, i32 1 acq_rel, align 4 ; 0 uses
  %.pre15.i = load ptr, ptr %47, align 8, !tbaa !200, !noalias !2833
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i: ; preds = %bb.ql, %bb.qk, %.lr.ph.i.i.i.i.i.split.i50.i
  %i.bdj = phi ptr [ %.pre15.i, %bb.ql ], [ %i.bdb, %bb.qk ], [ %i.bdb, %.lr.ph.i.i.i.i.i.split.i50.i ]
  %i.bdk = add nsw i64 %.068.i.i.i.i.i.i52.i, -1  ; 2 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i51.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i56.i = icmp eq i64 %i.bdk, 0
  br i1 %.not.i.i.i.i.i.i56.i, label %.loopexit.i414, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i, !llvm.loop !2470

.loopexit.i414:                                   ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i
  %i.bdm = phi ptr [ %i.bbw, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i ], [ %i.bbz, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ], [ %i.bbz, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %i.bbz, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i ]
  %.0.lcssa.i.i.i.i.i.i59.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i ], [ %i.bda, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %.lcssa1131.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ], [ %i.bdl, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i59.i, ptr %i.bdm, align 8, !tbaa !209, !noalias !2833
  %i.bdn = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !114, !noalias !2833 ; 8 uses
  %.not.i.i69.i = icmp eq ptr %i.bdo, null
  br i1 %.not.i.i69.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i, label %bb.qm

bb.qm:                                            ; preds = %.loopexit.i414
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 8 ; 4 uses
  %i.bdq = load atomic i64, ptr %i.bdp acquire, align 8 ; 2 uses
  %i.bdr = icmp eq i64 %i.bdq, 4294967297
  %i.bds = trunc i64 %i.bdq to i32                ; 2 uses
  br i1 %i.bdr, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  store i32 0, ptr %i.bdp, align 8, !tbaa !110
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdo, i64 12
  store i32 0, ptr %i.bdt, align 4, !tbaa !111
  %i.bdu = load ptr, ptr %i.bdo, align 8, !tbaa !113
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 16
  %i.bdw = load ptr, ptr %i.bdv, align 8
  call void %i.bdw(ptr noundef nonnull align 8 dereferenceable(16) %i.bdo) #19, !inline_history !2540
  %i.bdx = load ptr, ptr %i.bdo, align 8, !tbaa !113
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 24
  %i.bdz = load ptr, ptr %i.bdy, align 8
  call void %i.bdz(ptr noundef nonnull align 8 dereferenceable(16) %i.bdo) #19, !inline_history !2540
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i

bb.qo:                                            ; preds = %bb.qm
  %i.bea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2833
  %.not.i.i.i70.i = icmp eq i8 %i.bea, 0
  br i1 %.not.i.i.i70.i, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.beb = add nsw i32 %i.bds, -1
  store i32 %i.beb, ptr %i.bdp, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i

bb.qq:                                            ; preds = %bb.qo
  %i.bec = atomicrmw volatile add ptr %i.bdp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i: ; preds = %bb.qq, %bb.qp
  %.0.i.i.i.i72.i = phi i32 [ %i.bds, %bb.qp ], [ %i.bec, %bb.qq ]
  %i.bed = icmp eq i32 %.0.i.i.i.i72.i, 1
  br i1 %i.bed, label %bb.qr, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i, !prof !118

bb.qr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdo) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i: ; preds = %bb.qr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i, %bb.qn, %.loopexit.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !2833
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19, !noalias !2833
  %i.bee = load ptr, ptr %2, align 8, !tbaa !198, !noalias !2833
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef %i.bee)
          to label %bb.qs unwind label %bb.ra

bb.qs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i
  %i.bef = load ptr, ptr %48, align 8, !tbaa !91, !noalias !2833
  %i.beg = icmp eq ptr %i.bef, null
  br i1 %i.beg, label %bb.rc, label %bb.qt, !prof !92

bb.qt:                                            ; preds = %bb.qs
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !2833
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i415 unwind label %bb.rb

bb.qu:                                            ; preds = %_ZN5arrow9MapScalarC2ERKS0_.exit.i
  %i.beh = landingpad { ptr, i32 }
          cleanup
  br label %bb.qw

bb.qv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i399, %bb.px
  %i.bei = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %45) #19
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %.pn.i396 = phi { ptr, i32 } [ %i.bei, %bb.qv ], [ %i.beh, %bb.qu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !2833
  br label %bb.tz

bb.qx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413
  %i.bej = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.qy:                                            ; preds = %.lr.ph.i.i.i.i.i.i49.i, %bb.qi
  %i.bek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #19
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %.pn29.i = phi { ptr, i32 } [ %i.bek, %bb.qy ], [ %i.bej, %bb.qx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !2833
  br label %bb.ty

bb.ra:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i
  %i.bel = landingpad { ptr, i32 }
          cleanup
  br label %bb.tx

bb.rb:                                            ; preds = %bb.qt
  %i.bem = landingpad { ptr, i32 }
          cleanup
  br label %bb.tw

bb.rc:                                            ; preds = %bb.qs
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19, !noalias !2833
  call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %i.ben = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bep = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.beq = load <2 x ptr>, ptr %i.ben, align 8, !tbaa !116, !noalias !2837
  store ptr null, ptr %i.bep, align 8, !tbaa !114, !noalias !2837
  store <2 x ptr> %i.beq, ptr %49, align 16, !tbaa !116, !alias.scope !2838, !noalias !2833
  store ptr null, ptr %i.ben, align 8, !tbaa !200, !noalias !2837
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19, !noalias !2833
  %i.ber = load ptr, ptr %2, align 8, !tbaa !198, !noalias !2833
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef %i.ber)
          to label %bb.rd unwind label %bb.rf

bb.rd:                                            ; preds = %bb.rc
  %i.bes = load ptr, ptr %50, align 8, !tbaa !91, !noalias !2833
  %i.bet = icmp eq ptr %i.bes, null
  br i1 %i.bet, label %bb.rh, label %bb.re, !prof !92

bb.re:                                            ; preds = %bb.rd
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !2833
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %_ZN5arrow6StatusC2ERKS0_.exit76.i unwind label %bb.rg

bb.rf:                                            ; preds = %bb.rc
  %i.beu = landingpad { ptr, i32 }
          cleanup
  br label %bb.sz

bb.rg:                                            ; preds = %bb.re
  %i.bev = landingpad { ptr, i32 }
          cleanup
  br label %bb.sy

bb.rh:                                            ; preds = %bb.rd
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19, !noalias !2833
  call void @llvm.experimental.noalias.scope.decl(metadata !2839)
  call void @llvm.experimental.noalias.scope.decl(metadata !2840)
  %i.bew = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bey = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.bez = load <2 x ptr>, ptr %i.bew, align 8, !tbaa !116, !noalias !2841
  store ptr null, ptr %i.bey, align 8, !tbaa !114, !noalias !2841
end_hunk_2
begin_hunk_3_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.blm = sub i64 %i.blk, %i.bll
  call void @_ZdlPvm(ptr noundef nonnull %i.blh, i64 noundef %i.blm) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i: ; preds = %bb.to, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i424
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !2833
  %i.bln = load ptr, ptr %44, align 8, !tbaa !211, !noalias !2833 ; 3 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !209, !noalias !2833 ; 2 uses
  %.not4.i.i.i118.i = icmp eq ptr %i.bln, %i.blp
  br i1 %.not4.i.i.i118.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i, label %.lr.ph.i.i.i119.i

.lr.ph.i.i.i119.i:                                ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i
  %.05.i.i.i120.i = phi ptr [ %i.bmh, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i ], [ %i.bln, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %.05.i.i.i120.i, i64 8
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i.i.i.i121.i = icmp eq ptr %i.blr, null
  br i1 %.not.i.i.i.i.i.i.i121.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i, label %bb.tp

bb.tp:                                            ; preds = %.lr.ph.i.i.i119.i
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 8 ; 4 uses
  %i.blt = load atomic i64, ptr %i.bls acquire, align 8 ; 2 uses
  %i.blu = icmp eq i64 %i.blt, 4294967297
  %i.blv = trunc i64 %i.blt to i32                ; 2 uses
  br i1 %i.blu, label %bb.tq, label %bb.tr

bb.tq:                                            ; preds = %bb.tp
  store i32 0, ptr %i.bls, align 8, !tbaa !110
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blr, i64 12
  store i32 0, ptr %i.blw, align 4, !tbaa !111
  %i.blx = load ptr, ptr %i.blr, align 8, !tbaa !113
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 16
  %i.blz = load ptr, ptr %i.bly, align 8
  call void %i.blz(ptr noundef nonnull align 8 dereferenceable(16) %i.blr) #19, !inline_history !2558
  %i.bma = load ptr, ptr %i.blr, align 8, !tbaa !113
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 24
  %i.bmc = load ptr, ptr %i.bmb, align 8
  call void %i.bmc(ptr noundef nonnull align 8 dereferenceable(16) %i.blr) #19, !inline_history !2558
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i

bb.tr:                                            ; preds = %bb.tp
  %i.bmd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2833
  %.not.i.i.i.i.i.i.i.i122.i = icmp eq i8 %i.bmd, 0
  br i1 %.not.i.i.i.i.i.i.i.i122.i, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.bme = add nsw i32 %i.blv, -1
  store i32 %i.bme, ptr %i.bls, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i

bb.tt:                                            ; preds = %bb.tr
  %i.bmf = atomicrmw volatile add ptr %i.bls, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i: ; preds = %bb.tt, %bb.ts
  %.0.i.i.i.i.i.i.i.i.i124.i = phi i32 [ %i.blv, %bb.ts ], [ %i.bmf, %bb.tt ]
  %i.bmg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i124.i, 1
  br i1 %i.bmg, label %bb.tu, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i, !prof !118

bb.tu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.blr) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i: ; preds = %bb.tu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i, %bb.tq, %.lr.ph.i.i.i119.i
  %i.bmh = getelementptr inbounds nuw i8, ptr %.05.i.i.i120.i, i64 16 ; 2 uses
  %.not.i.i.i126.i = icmp eq ptr %i.bmh, %i.blp
  br i1 %.not.i.i.i126.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i, label %.lr.ph.i.i.i119.i, !llvm.loop !16

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i
  %.pr.i128.i = load ptr, ptr %44, align 8, !tbaa !211, !noalias !2833
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i
  %i.bmi = phi ptr [ %.pr.i128.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i ], [ %i.bln, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i130.i = icmp eq ptr %i.bmi, null
  br i1 %.not.i.i1.i130.i, label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitERKNS_7MapTypeE.exit, label %bb.tv

bb.tv:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i
  %i.bmj = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bmk = load ptr, ptr %i.bmj, align 8, !tbaa !210, !noalias !2833
  %i.bml = ptrtoint ptr %i.bmk to i64
  %i.bmm = ptrtoint ptr %i.bmi to i64
  %i.bmn = sub i64 %i.bml, %i.bmm
  call void @_ZdlPvm(ptr noundef nonnull %i.bmi, i64 noundef %i.bmn) #21
  br label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitERKNS_7MapTypeE.exit

bb.tw:                                            ; preds = %bb.sz, %bb.rb
  %.pn40.i = phi { ptr, i32 } [ %i.bem, %bb.rb ], [ %.pn36.pn.i, %bb.sz ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19, !noalias !2833
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.ra
  %.pn40.pn.i = phi { ptr, i32 } [ %.pn40.i, %bb.tw ], [ %i.bel, %bb.ra ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %46) #19
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.qz
  %.pn40.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.i, %bb.tx ], [ %.pn29.i, %bb.qz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !2833
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #19
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.qw
  %.pn40.pn.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.pn.i, %bb.ty ], [ %.pn.i396, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !2833
  call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !2833
  br label %common.resume

_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitERKNS_7MapTypeE.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i, %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !2833
  call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !2833
  br label %bb.ajp

bb.ua:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19, !noalias !2848
  %i.bmo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bmp = load ptr, ptr %i.bmo, align 8, !tbaa !260, !noalias !2848, !nonnull !104, !align !137 ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 48
  %i.bmr = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmp, i64 56
  %i.bmt = load ptr, ptr %i.bms, align 8, !tbaa !114, !noalias !2848 ; 2 uses
  %i.bmu = load <2 x ptr>, ptr %i.bmq, align 8, !tbaa !116, !noalias !2848
  store <2 x ptr> %i.bmu, ptr %37, align 16, !tbaa !116, !noalias !2848
  %.not.i.i.i.i443 = icmp eq ptr %i.bmt, null
  br i1 %.not.i.i.i.i443, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i445, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmt, i64 8 ; 3 uses
  %i.bmw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2848
  %.not.i.i.i.i.i444 = icmp eq i8 %i.bmw, 0
  br i1 %.not.i.i.i.i.i444, label %bb.ud, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.bmx = load i32, ptr %i.bmv, align 4, !tbaa !42
  %i.bmy = add nsw i32 %i.bmx, 1
  store i32 %i.bmy, ptr %i.bmv, align 4, !tbaa !42
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i445

bb.ud:                                            ; preds = %bb.ub
  %i.bmz = atomicrmw volatile add ptr %i.bmv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i445

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i445: ; preds = %bb.ud, %bb.uc, %bb.ua
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19, !noalias !2848
  %i.bna = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bnb = load i64, ptr %i.bna, align 8, !tbaa !199, !noalias !2848 ; 9 uses
  %i.bnc = icmp ugt i64 %i.bnb, 576460752303423487
  br i1 %i.bnc, label %bb.ue, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i446

bb.ue:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i445
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc.i491 unwind label %bb.uk

.noexc.i491:                                      ; preds = %bb.ue
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i446: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false), !noalias !2848
  %.not.i.i.i.i14.i = icmp eq i64 %i.bnb, 0
  br i1 %.not.i.i.i.i14.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i490, label %.lr.ph.i.i.i.i.i.i.i447

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i490: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i446
  %i.bnd = getelementptr inbounds nuw i8, ptr %38, i64 8
  br label %.loopexit.i457

.lr.ph.i.i.i.i.i.i.i447:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i446
  %i.bne = shl nuw nsw i64 %i.bnb, 4
  %i.bnf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bne) #20
          to label %.noexc15.i unwind label %bb.uk ; 6 uses

.noexc15.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i447
  store ptr %i.bnf, ptr %38, align 8, !tbaa !211, !noalias !2848
  %i.bng = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  store ptr %i.bnf, ptr %i.bng, align 8, !tbaa !209, !noalias !2848
  %i.bnh = getelementptr inbounds nuw [16 x i8], ptr %i.bnf, i64 %i.bnb
  %i.bni = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.bnh, ptr %i.bni, align 8, !tbaa !210, !noalias !2848
  %i.bnj = load ptr, ptr %i.bmr, align 8, !tbaa !114, !noalias !2848 ; 2 uses
  %i.bnk = icmp eq ptr %i.bnj, null
  %i.bnl = load ptr, ptr %37, align 16, !tbaa !200, !noalias !2848 ; 10 uses
  br i1 %i.bnk, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader, label %.lr.ph.i.i.i.i.i.split.i.i448

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader: ; preds = %.noexc15.i
  %xtraiter = and i64 %i.bnb, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.preheader

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.preheader: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader
  %i.bnm = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.preheader
  %.09.i.i.i.i.i.us.i.i487.prol = phi ptr [ %i.bno, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol ], [ %i.bnf, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.preheader ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i488.prol = phi i64 [ %i.bnn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol ], [ %i.bnb, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol ], [ 0, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.preheader ]
  store <2 x ptr> %i.bnm, ptr %.09.i.i.i.i.i.us.i.i487.prol, align 8, !tbaa !116
  %i.bnn = add nsw i64 %.068.i.i.i.i.i.us.i.i488.prol, -1 ; 2 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol, !llvm.loop !2561

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader
  %.lcssa1137.unr = phi ptr [ poison, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader ], [ %i.bno, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol ]
  %.09.i.i.i.i.i.us.i.i487.unr = phi ptr [ %i.bnf, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader ], [ %i.bno, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol ]
  %.068.i.i.i.i.i.us.i.i488.unr = phi i64 [ %i.bnb, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader ], [ %i.bnn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol ]
  %i.bnp = icmp ult i64 %i.bnb, 8
  br i1 %i.bnp, label %.loopexit.i457, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader.new: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.loopexit
  %i.bnq = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  %i.bnr = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  %i.bns = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  %i.bnt = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  %i.bnu = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  %i.bnv = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  %i.bnw = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  %i.bnx = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.bnl, i64 0
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader.new
  %.09.i.i.i.i.i.us.i.i487 = phi ptr [ %.09.i.i.i.i.i.us.i.i487.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader.new ], [ %i.bog, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486 ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i488 = phi i64 [ %.068.i.i.i.i.i.us.i.i488.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.preheader.new ], [ %i.bof, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486 ]
  store <2 x ptr> %i.bnq, ptr %.09.i.i.i.i.i.us.i.i487, align 8, !tbaa !116
  %i.bny = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 16
  store <2 x ptr> %i.bnr, ptr %i.bny, align 8, !tbaa !116
  %i.bnz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 32
  store <2 x ptr> %i.bns, ptr %i.bnz, align 8, !tbaa !116
  %i.boa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 48
  store <2 x ptr> %i.bnt, ptr %i.boa, align 8, !tbaa !116
  %i.bob = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 64
  store <2 x ptr> %i.bnu, ptr %i.bob, align 8, !tbaa !116
  %i.boc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 80
  store <2 x ptr> %i.bnv, ptr %i.boc, align 8, !tbaa !116
  %i.bod = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 96
  store <2 x ptr> %i.bnw, ptr %i.bod, align 8, !tbaa !116
  %i.boe = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 112
  store <2 x ptr> %i.bnx, ptr %i.boe, align 8, !tbaa !116
  %i.bof = add nsw i64 %.068.i.i.i.i.i.us.i.i488, -8 ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i487, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i489.7 = icmp eq i64 %i.bof, 0
  br i1 %.not.i.i.i.i.i.us.i.i489.7, label %.loopexit.i457, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486, !llvm.loop !2469

.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i455:    ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453
  %.pr.i.i456 = load ptr, ptr %i.bmr, align 8, !tbaa !114, !noalias !2848
  br label %.lr.ph.i.i.i.i.i.split.i.i448

.lr.ph.i.i.i.i.i.split.i.i448:                    ; preds = %.noexc15.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i455
  %i.boh = phi ptr [ %i.bop, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i455 ], [ %i.bnl, %.noexc15.i ] ; 3 uses
  %i.boi = phi ptr [ %.pr.i.i456, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i455 ], [ %i.bnj, %.noexc15.i ] ; 3 uses
  %.09.i.i.i.i.i.i.i449 = phi ptr [ %i.bor, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i455 ], [ %i.bnf, %.noexc15.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i450 = phi i64 [ %i.boq, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i455 ], [ %i.bnb, %.noexc15.i ]
  store ptr %i.boh, ptr %.09.i.i.i.i.i.i.i449, align 8, !tbaa !200
  %i.boj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i449, i64 8
  store ptr %i.boi, ptr %i.boj, align 8, !tbaa !114
  %.not.i.i.i.i.i.i.i.i.i.i.i451 = icmp eq ptr %i.boi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i451, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453, label %bb.uf

bb.uf:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i.i448
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boi, i64 8 ; 3 uses
  %i.bol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2848
  %.not.i.i.i.i.i.i.i.i.i.i.i.i452 = icmp eq i8 %i.bol, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i452, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.bom = load i32, ptr %i.bok, align 4, !tbaa !42
  %i.bon = add nsw i32 %i.bom, 1
  store i32 %i.bon, ptr %i.bok, align 4, !tbaa !42
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453

bb.uh:                                            ; preds = %bb.uf
  %i.boo = atomicrmw volatile add ptr %i.bok, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i485 = load ptr, ptr %37, align 16, !tbaa !200, !noalias !2848
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453: ; preds = %bb.uh, %bb.ug, %.lr.ph.i.i.i.i.i.split.i.i448
  %i.bop = phi ptr [ %.pre.i485, %bb.uh ], [ %i.boh, %bb.ug ], [ %i.boh, %.lr.ph.i.i.i.i.i.split.i.i448 ]
  %i.boq = add nsw i64 %.068.i.i.i.i.i.i.i450, -1 ; 2 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i449, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i454 = icmp eq i64 %i.boq, 0
  br i1 %.not.i.i.i.i.i.i.i454, label %.loopexit.i457, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i455, !llvm.loop !2470

.loopexit.i457:                                   ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i490
  %i.bos = phi ptr [ %i.bnd, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i490 ], [ %i.bng, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.loopexit ], [ %i.bng, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486 ], [ %i.bng, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453 ]
  %.0.lcssa.i.i.i.i.i.i.i458 = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i490 ], [ %i.bog, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486 ], [ %.lcssa1137.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i486.prol.loopexit ], [ %i.bor, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i453 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i458, ptr %i.bos, align 8, !tbaa !209, !noalias !2848
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19, !noalias !2848
  %i.bot = load ptr, ptr %2, align 8, !tbaa !198, !noalias !2848
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef %i.bot)
          to label %bb.ui unwind label %bb.ul

bb.ui:                                            ; preds = %.loopexit.i457
  %i.bou = load ptr, ptr %39, align 8, !tbaa !91, !noalias !2848
  %i.bov = icmp eq ptr %i.bou, null
  br i1 %i.bov, label %bb.un, label %bb.uj, !prof !92

bb.uj:                                            ; preds = %bb.ui
  store ptr null, ptr %0, align 8, !tbaa !91, !alias.scope !2848
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i460 unwind label %bb.um

bb.uk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i447, %bb.ue
  %i.bow = landingpad { ptr, i32 }
          cleanup
  br label %bb.wf

bb.ul:                                            ; preds = %.loopexit.i457
  %i.box = landingpad { ptr, i32 }
          cleanup
  br label %bb.we

bb.um:                                            ; preds = %bb.uj
  %i.boy = landingpad { ptr, i32 }
          cleanup
  br label %bb.wd

bb.un:                                            ; preds = %bb.ui
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19, !noalias !2848
  call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  call void @llvm.experimental.noalias.scope.decl(metadata !2850)
  %i.boz = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bpb = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bpc = load <2 x ptr>, ptr %i.boz, align 8, !tbaa !116, !noalias !2851
  store ptr null, ptr %i.bpb, align 8, !tbaa !114, !noalias !2851
  store <2 x ptr> %i.bpc, ptr %40, align 16, !tbaa !116, !alias.scope !2852, !noalias !2848
  store ptr null, ptr %i.boz, align 8, !tbaa !200, !noalias !2851
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19, !noalias !2848
  %i.bpd = load ptr, ptr %i.bmo, align 8, !tbaa !260, !noalias !2848, !nonnull !104, !align !137
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2853)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19, !noalias !2854
  store ptr null, ptr %41, align 16, !tbaa !2856, !alias.scope !2853, !noalias !2848
  %i.bpf = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow18FixedSizeListArrayESaIvEJRKSt10shared_ptrINS4_8DataTypeEERlRS7_INS4_5ArrayEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bpf, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr nonnull %36, ptr noundef nonnull align 8 dereferenceable(16) %i.bpe, ptr noundef nonnull align 8 dereferenceable(8) %i.bna, ptr noundef nonnull align 8 dereferenceable(16) %40)
          to label %bb.uo unwind label %bb.vh

bb.uo:                                            ; preds = %bb.un
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19, !noalias !2854
  %i.bpg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bph = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bpi = load <2 x ptr>, ptr %41, align 16, !tbaa !116, !noalias !2848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %41, i8 0, i64 16, i1 false), !noalias !2848
  %i.bpj = load ptr, ptr %i.bph, align 8, !tbaa !114, !noalias !2848 ; 8 uses
  store <2 x ptr> %i.bpi, ptr %i.bpg, align 8, !tbaa !116, !noalias !2848
  %.not.i.i.i.i18.i = icmp eq ptr %i.bpj, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 8 ; 4 uses
  %i.bpl = load atomic i64, ptr %i.bpk acquire, align 8 ; 2 uses
  %i.bpm = icmp eq i64 %i.bpl, 4294967297
  %i.bpn = trunc i64 %i.bpl to i32                ; 2 uses
  br i1 %i.bpm, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  store i32 0, ptr %i.bpk, align 8, !tbaa !110
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpj, i64 12
  store i32 0, ptr %i.bpo, align 4, !tbaa !111
  %i.bpp = load ptr, ptr %i.bpj, align 8, !tbaa !113
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 16
  %i.bpr = load ptr, ptr %i.bpq, align 8
  call void %i.bpr(ptr noundef nonnull align 8 dereferenceable(16) %i.bpj) #19, !inline_history !2568
  %i.bps = load ptr, ptr %i.bpj, align 8, !tbaa !113
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 24
  %i.bpu = load ptr, ptr %i.bpt, align 8
  call void %i.bpu(ptr noundef nonnull align 8 dereferenceable(16) %i.bpj) #19, !inline_history !2568
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i

bb.ur:                                            ; preds = %bb.up
  %i.bpv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2848
  %.not.i.i.i.i.i.i478 = icmp eq i8 %i.bpv, 0
  br i1 %.not.i.i.i.i.i.i478, label %bb.ut, label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.bpw = add nsw i32 %i.bpn, -1
  store i32 %i.bpw, ptr %i.bpk, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i479

bb.ut:                                            ; preds = %bb.ur
  %i.bpx = atomicrmw volatile add ptr %i.bpk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i479

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i479: ; preds = %bb.ut, %bb.us
  %.0.i.i.i.i.i.i.i480 = phi i32 [ %i.bpn, %bb.us ], [ %i.bpx, %bb.ut ]
  %i.bpy = icmp eq i32 %.0.i.i.i.i.i.i.i480, 1
  br i1 %i.bpy, label %bb.uu, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i, !prof !118

bb.uu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i479
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bpj) #19
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i

_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i: ; preds = %bb.uu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i479, %bb.uq, %bb.uo
  %i.bpz = load ptr, ptr %i.bpf, align 8, !tbaa !114, !noalias !2848 ; 8 uses
  %.not.i.i.i481 = icmp eq ptr %i.bpz, null
  br i1 %.not.i.i.i481, label %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.uv

bb.uv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 8 ; 4 uses
  %i.bqb = load atomic i64, ptr %i.bqa acquire, align 8 ; 2 uses
  %i.bqc = icmp eq i64 %i.bqb, 4294967297
  %i.bqd = trunc i64 %i.bqb to i32                ; 2 uses
  br i1 %i.bqc, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  store i32 0, ptr %i.bqa, align 8, !tbaa !110
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpz, i64 12
  store i32 0, ptr %i.bqe, align 4, !tbaa !111
  %i.bqf = load ptr, ptr %i.bpz, align 8, !tbaa !113
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 16
  %i.bqh = load ptr, ptr %i.bqg, align 8
  call void %i.bqh(ptr noundef nonnull align 8 dereferenceable(16) %i.bpz) #19, !inline_history !2569
  %i.bqi = load ptr, ptr %i.bpz, align 8, !tbaa !113
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 24
  %i.bqk = load ptr, ptr %i.bqj, align 8
  call void %i.bqk(ptr noundef nonnull align 8 dereferenceable(16) %i.bpz) #19, !inline_history !2569
  br label %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ux:                                            ; preds = %bb.uv
  %i.bql = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !2848
  %.not.i.i.i19.i = icmp eq i8 %i.bql, 0
  br i1 %.not.i.i.i19.i, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.bqm = add nsw i32 %i.bqd, -1
  store i32 %i.bqm, ptr %i.bqa, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i482

bb.uz:                                            ; preds = %bb.ux
  %i.bqn = atomicrmw volatile add ptr %i.bqa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i482

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i482: ; preds = %bb.uz, %bb.uy
  %.0.i.i.i.i.i483 = phi i32 [ %i.bqd, %bb.uy ], [ %i.bqn, %bb.uz ]
  %i.bqo = icmp eq i32 %.0.i.i.i.i.i483, 1
  br i1 %i.bqo, label %bb.va, label %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !118

bb.va:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i482
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bpz) #19
end_hunk_3
