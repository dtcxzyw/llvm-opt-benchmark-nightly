Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Clang?download=true
inline.NumInlined: 10765
inline.NumDeleted: 2395
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK5clang6driver5tools5Clang23AddPreprocessingOptionsERNS0_11CompilationERKNS0_9JobActionERKNS0_6DriverERKN4llvm3opt7ArgListERNSB_11SmallVectorIPKcLj16EEERKNS0_9InputInfoERKNSG_ISL_Lj4EEE:bb.a
  %i.we = load ptr, ptr %i.tu, align 8, !tbaa !286 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store i8 5, ptr %i.uf, align 8, !tbaa !172
  store i8 1, ptr %i.ug, align 1, !tbaa !173
  store ptr %i.vu, ptr %18, align 8, !tbaa !138
  store i64 %i.vv, ptr %i.uh, align 8, !tbaa !138
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !177
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 64
  %i.wh = load ptr, ptr %i.wg, align 8
  call void %i.wh(ptr dead_on_unwind nonnull writable sret(%"class.llvm::vfs::directory_iterator") align 8 %17, ptr noundef nonnull align 8 dereferenceable(12) %i.we, ptr noundef nonnull align 8 dereferenceable(34) %18, ptr noundef nonnull align 8 dereferenceable(16) %16) #21, !inline_history !492
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.wi = load i32, ptr %16, align 8, !tbaa !289
  %.not34.i = icmp eq i32 %i.wi, 0
  br i1 %.not34.i, label %_ZNK4llvm3vfs18directory_iteratorneERKS1_.exit.i, label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit.i

_ZNK4llvm3vfs18directory_iteratorneERKS1_.exit.i: ; preds = %bb.eg, %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i
  %i.wj = load ptr, ptr %17, align 8, !tbaa !534  ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.not.i, label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit.i, label %bb.eh

bb.eh:                                            ; preds = %_ZNK4llvm3vfs18directory_iteratorneERKS1_.exit.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !119
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !120
  %.val14.i = load ptr, ptr %i.tu, align 8, !tbaa !286
  %i.wo = call fastcc noundef zeroext i1 @_ZL25maybeHasClangPchSignatureRKN5clang6driver6DriverEN4llvm9StringRefE(ptr %.val14.i, ptr %i.wl, i64 %i.wn)
  br i1 %i.wo, label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wp = load ptr, ptr %17, align 8, !tbaa !534  ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !177
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = call { i32, ptr } %i.ws(ptr noundef nonnull align 8 dereferenceable(48) %i.wp) #21, !inline_history !493 ; 2 uses
  %i.wu = extractvalue { i32, ptr } %i.wt, 0
  %i.wv = extractvalue { i32, ptr } %i.wt, 1
  store i32 %i.wu, ptr %16, align 8, !tbaa !291
  store ptr %i.wv, ptr %i.ue, align 8, !tbaa !535
  %i.ww = load ptr, ptr %17, align 8, !tbaa !534
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !120
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %bb.ej, label %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i

bb.ej:                                            ; preds = %bb.ei
  store ptr null, ptr %17, align 8, !tbaa !536
  %i.xa = load ptr, ptr %i.ui, align 8, !tbaa !537 ; 8 uses
  store ptr null, ptr %i.ui, align 8, !tbaa !537
  %.not.i.i.i.i.i = icmp eq ptr %i.xa, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 4 uses
  %i.xc = load atomic i64, ptr %i.xb acquire, align 8 ; 2 uses
  %i.xd = icmp eq i64 %i.xc, 4294967297
  %i.xe = trunc i64 %i.xc to i32                  ; 2 uses
  br i1 %i.xd, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i32 0, ptr %i.xb, align 8, !tbaa !539
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 12
  store i32 0, ptr %i.xf, align 4, !tbaa !540
  %i.xg = load ptr, ptr %i.xa, align 8, !tbaa !177
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8
  call void %i.xi(ptr noundef nonnull align 8 dereferenceable(16) %i.xa) #21, !inline_history !494
  %i.xj = load ptr, ptr %i.xa, align 8, !tbaa !177
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  %i.xl = load ptr, ptr %i.xk, align 8
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(16) %i.xa) #21, !inline_history !494
  br label %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i

bb.em:                                            ; preds = %bb.ek
  %i.xm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i.i.i.i = icmp eq i8 %i.xm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xn = add nsw i32 %i.xe, -1
  store i32 %i.xn, ptr %i.xb, align 8, !tbaa !291
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.eo:                                            ; preds = %bb.em
  %i.xo = atomicrmw volatile add ptr %i.xb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.eo, %bb.en
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.xe, %bb.en ], [ %i.xo, %bb.eo ]
  %i.xp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.xp, label %bb.ep, label %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i, !prof !292

bb.ep:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xa) #21
  br label %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i

_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i:  ; preds = %bb.ep, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.el, %bb.ej, %bb.ei
  %i.xq = load i32, ptr %16, align 8, !tbaa !289
  %.not.i442 = icmp eq i32 %i.xq, 0
  br i1 %.not.i442, label %_ZNK4llvm3vfs18directory_iteratorneERKS1_.exit.i, label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit.i, !llvm.loop !495

_ZN4llvm3vfs18directory_iteratorD2Ev.exit.i:      ; preds = %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i, %bb.eh, %_ZNK4llvm3vfs18directory_iteratorneERKS1_.exit.i, %bb.eg
  %cond.i = phi i1 [ true, %bb.eg ], [ false, %bb.eh ], [ true, %_ZNK4llvm3vfs18directory_iteratorneERKS1_.exit.i ], [ true, %_ZN4llvm3vfs18directory_iteratoraSERKS1_.exit.i ] ; 2 uses
  %i.xr = load ptr, ptr %i.ui, align 8, !tbaa !537 ; 8 uses
  %.not.i.i.i21.i = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i21.i, label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit25.i, label %bb.eq

bb.eq:                                            ; preds = %_ZN4llvm3vfs18directory_iteratorD2Ev.exit.i
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8 ; 4 uses
  %i.xt = load atomic i64, ptr %i.xs acquire, align 8 ; 2 uses
  %i.xu = icmp eq i64 %i.xt, 4294967297
  %i.xv = trunc i64 %i.xt to i32                  ; 2 uses
  br i1 %i.xu, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.xs, align 8, !tbaa !539
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xr, i64 12
  store i32 0, ptr %i.xw, align 4, !tbaa !540
  %i.xx = load ptr, ptr %i.xr, align 8, !tbaa !177
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.xz = load ptr, ptr %i.xy, align 8
  call void %i.xz(ptr noundef nonnull align 8 dereferenceable(16) %i.xr) #21, !inline_history !496
  %i.ya = load ptr, ptr %i.xr, align 8, !tbaa !177
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8
  call void %i.yc(ptr noundef nonnull align 8 dereferenceable(16) %i.xr) #21, !inline_history !496
  br label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit25.i

bb.es:                                            ; preds = %bb.eq
  %i.yd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138
  %.not.i.i.i.i22.i = icmp eq i8 %i.yd, 0
  br i1 %.not.i.i.i.i22.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ye = add nsw i32 %i.xv, -1
  store i32 %i.ye, ptr %i.xs, align 8, !tbaa !291
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i

bb.eu:                                            ; preds = %bb.es
  %i.yf = atomicrmw volatile add ptr %i.xs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i24.i = phi i32 [ %i.xv, %bb.et ], [ %i.yf, %bb.eu ]
  %i.yg = icmp eq i32 %.0.i.i.i.i.i24.i, 1
  br i1 %i.yg, label %bb.ev, label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit25.i, !prof !292

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xr) #21
  br label %_ZN4llvm3vfs18directory_iteratorD2Ev.exit25.i

_ZN4llvm3vfs18directory_iteratorD2Ev.exit25.i:    ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23.i, %bb.er, %_ZN4llvm3vfs18directory_iteratorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br i1 %cond.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZN4llvm3vfs18directory_iteratorD2Ev.exit25.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.yh = load ptr, ptr %3, align 8, !tbaa !101, !noalias !541, !nonnull !36, !align !37
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %19, ptr noundef nonnull align 8 dereferenceable(15256) %i.yh, i32 0, i32 noundef 620) #21
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %19, ptr %i.vu, i64 %i.vv)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZN4llvm3vfs18directory_iteratorD2Ev.exit25.i
  %.1.i = xor i1 %cond.i, true
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.fa

bb.ey:                                            ; preds = %bb.ef
  %.val.i = load ptr, ptr %i.tu, align 8, !tbaa !286
  %i.yi = call fastcc noundef zeroext i1 @_ZL25maybeHasClangPchSignatureRKN5clang6driver6DriverEN4llvm9StringRefE(ptr %.val.i, ptr %i.vu, i64 %i.vv)
  br i1 %i.yi, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.yj = load ptr, ptr %3, align 8, !tbaa !101, !noalias !542, !nonnull !36, !align !37
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %20, ptr noundef nonnull align 8 dereferenceable(15256) %i.yj, i32 0, i32 noundef 621) #21
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %20, ptr %i.vu, i64 %i.vv)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ee
  %.2.i = phi i1 [ %.1.i, %bb.ex ], [ false, %bb.ee ], [ false, %bb.ez ], [ true, %bb.ey ]
  %i.yk = load i8, ptr %i.ud, align 8
  %i.yl = trunc i8 %i.yk to i1
  br i1 %i.yl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ym = load ptr, ptr %14, align 8, !tbaa !119  ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.uj
  br i1 %i.yn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.fb
  %i.yo = load i64, ptr %i.uj, align 8, !tbaa !138
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.fb, %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.2.i, label %.thread839, label %bb.fi

.thread839:                                       ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  br i1 %.0280882, label %bb.fh, label %.critedge

.critedge:                                        ; preds = %.thread839
  %i.yq = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !118 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.yr, null
  %spec.select.i.i444 = select i1 %.not.i.i443, ptr %i.uu, ptr %i.yr
  %i.ys = getelementptr inbounds nuw i8, ptr %spec.select.i.i444, i64 44 ; 2 uses
  %i.yt = load i8, ptr %i.ys, align 4
  %i.yu = or i8 %i.yt, 1
  store i8 %i.yu, ptr %i.ys, align 4
  %i.yv = load i32, ptr %i.uk, align 8, !tbaa !140 ; 2 uses
  %i.yw = load i32, ptr %i.ul, align 4, !tbaa !141
  %.not.i445 = icmp ult i32 %i.yv, %i.yw
  br i1 %.not.i445, label %bb.fd, label %bb.fc, !prof !142

bb.fc:                                            ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.21)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit446

bb.fd:                                            ; preds = %.critedge
  %i.yx = zext i32 %i.yv to i64
  %i.yy = load ptr, ptr %5, align 8, !tbaa !143
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.yx
  store ptr @.str.21, ptr %i.yz, align 1
  %i.za = load i32, ptr %i.uk, align 8, !tbaa !140
  %i.zb = add i32 %i.za, 1
  store i32 %i.zb, ptr %i.uk, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit446

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit446: ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  store i8 5, ptr %i.um, align 8, !tbaa !172
  store i8 1, ptr %i.un, align 1, !tbaa !173
  %i.zc = load ptr, ptr %56, align 8, !tbaa !167
  store ptr %i.zc, ptr %60, align 8, !tbaa !138
  %i.zd = load i64, ptr %i.tq, align 8, !tbaa !168
  store i64 %i.zd, ptr %i.uo, align 8, !tbaa !138
  %i.ze = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 8 dereferenceable(34) %60) ; 2 uses
  %i.zf = load i32, ptr %i.uk, align 8, !tbaa !140 ; 2 uses
  %i.zg = load i32, ptr %i.ul, align 4, !tbaa !141
  %.not.i447 = icmp ult i32 %i.zf, %i.zg
  br i1 %.not.i447, label %bb.ff, label %bb.fe, !prof !142

bb.fe:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit446
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ze)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit448

bb.ff:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit446
  %i.zh = zext i32 %i.zf to i64
  %i.zi = load ptr, ptr %5, align 8, !tbaa !143
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %i.zh
  store ptr %i.ze, ptr %i.zj, align 1
  %i.zk = load i32, ptr %i.uk, align 8, !tbaa !140
  %i.zl = add i32 %i.zk, 1
  store i32 %i.zl, ptr %i.uk, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit448

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit448: ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  %i.zm = load ptr, ptr %56, align 8, !tbaa !167  ; 2 uses
  %i.zn = icmp eq ptr %i.zm, %i.tp
  br i1 %i.zn, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit449, label %bb.fg

bb.fg:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit448
  call void @free(ptr noundef %i.zm) #21
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit449

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit449:       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit448, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.fo

bb.fh:                                            ; preds = %.thread839
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  %i.zo = load ptr, ptr %3, align 8, !tbaa !101, !noalias !543, !nonnull !36, !align !37
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %61, ptr noundef nonnull align 8 dereferenceable(15256) %i.zo, i32 0, i32 noundef 622) #21
  %i.zp = load ptr, ptr %56, align 8, !tbaa !167
  %i.zq = load i64, ptr %i.tq, align 8, !tbaa !168
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %61, ptr %i.zp, i64 %i.zq)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  call void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 8 dereferenceable(88) %i.uu, ptr noundef nonnull align 8 dereferenceable(176) %4) #21
  %i.zr = load ptr, ptr %62, align 8, !tbaa !119
  %i.zs = load i64, ptr %i.up, align 8, !tbaa !120
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %61, ptr %i.zr, i64 %i.zs)
  %i.zt = load ptr, ptr %62, align 8, !tbaa !119  ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.uq
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %bb.fh
  %i.zv = load i64, ptr %i.uq, align 8, !tbaa !138
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zt, i64 noundef %i.zw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %61) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  %i.zx = load ptr, ptr %56, align 8, !tbaa !167  ; 2 uses
  %i.zy = icmp eq ptr %i.zx, %i.tp
  br i1 %i.zy, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit453, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @free(ptr noundef %i.zx) #21
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit453

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit453:       ; preds = %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.fn

bb.fk:                                            ; preds = %bb.ea, %bb.dz
  %i.zz = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, i32 2345) #21
  br i1 %i.zz, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aaa = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, i32 3519) #21
  br i1 %i.aaa, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aab = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, i32 2305) #21
  br i1 %i.aab, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit453, %bb.fm
  %.1281 = phi i1 [ true, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit453 ], [ %.0280882, %bb.fm ]
  %i.aac = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !118 ; 2 uses
  %.not.i.i454 = icmp eq ptr %i.aad, null
  %spec.select.i.i455 = select i1 %.not.i.i454, ptr %i.uu, ptr %i.aad
  %i.aae = getelementptr inbounds nuw i8, ptr %spec.select.i.i455, i64 44 ; 2 uses
  %i.aaf = load i8, ptr %i.aae, align 4
  %i.aag = or i8 %i.aaf, 1
  store i8 %i.aag, ptr %i.aae, align 4
  call void @_ZNK4llvm3opt3Arg6renderERKNS0_7ArgListERNS_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.uu, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 8 dereferenceable(144) %5) #21
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fl, %bb.fk, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit449, %bb.fn
  %.2 = phi i1 [ %.1281, %bb.fn ], [ true, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit449 ], [ %.0280882, %bb.fl ], [ %.0280882, %bb.fk ], [ %.0280882, %bb.fm ]
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.0696.0881, i64 8 ; 3 uses
  %.not26.i.i456 = icmp eq ptr %i.aah, %i.tk
  br i1 %.not26.i.i456, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i459

.lr.ph.i.i459:                                    ; preds = %bb.fo, %.thread21.i.i463
  %.sroa.0696.1 = phi ptr [ %i.aak, %.thread21.i.i463 ], [ %i.aah, %bb.fo ] ; 3 uses
  %i.aai = load ptr, ptr %.sroa.0696.1, align 8, !tbaa !164 ; 2 uses
  %.not14.i.i460 = icmp eq ptr %i.aai, null
  br i1 %.not14.i.i460, label %.thread21.i.i463, label %.preheader.preheader.i.i461

.preheader.preheader.i.i461:                      ; preds = %.lr.ph.i.i459
  %i.aaj = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.aai, i32 24) #21
  br i1 %i.aaj, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.thread21.i.i463

.thread21.i.i463:                                 ; preds = %.preheader.preheader.i.i461, %.lr.ph.i.i459
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.0696.1, i64 8 ; 3 uses
  %.not.i.i464 = icmp eq ptr %i.aak, %i.tk
  br i1 %.not.i.i464, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i459, !llvm.loop !1

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit: ; preds = %.preheader.preheader.i.i461, %.thread21.i.i463, %bb.fo
  %.sroa.0696.2 = phi ptr [ %i.aah, %bb.fo ], [ %.sroa.0696.1, %.preheader.preheader.i.i461 ], [ %i.aak, %.thread21.i.i463 ] ; 2 uses
  %.not853 = icmp eq ptr %.sroa.0696.2, %i.tk
  br i1 %.not853, label %._crit_edge884, label %bb.dz

bb.fp:                                            ; preds = %._crit_edge884
  %i.aal = load i32, ptr %i.jr, align 8, !tbaa !155
  %i.aam = icmp eq i32 %i.aal, 2
  br i1 %i.aam, label %bb.fq, label %bb.gi

bb.fq:                                            ; preds = %bb.fp, %._crit_edge884
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  %i.aan = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 9 uses
  store i32 0, ptr %i.aan, align 8, !tbaa !293
  %i.aao = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 3 uses
  store ptr null, ptr %i.aao, align 8, !tbaa !294
  %i.aap = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 3 uses
  store ptr %i.aan, ptr %i.aap, align 8, !tbaa !295
  %i.aaq = getelementptr inbounds nuw i8, ptr %63, i64 32
  store ptr %i.aan, ptr %i.aaq, align 8, !tbaa !296
  %i.aar = getelementptr inbounds nuw i8, ptr %63, i64 40 ; 4 uses
  store i64 0, ptr %i.aar, align 8, !tbaa !297
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.041.i.i.i = load ptr, ptr %i.aas, align 8, !tbaa !298 ; 2 uses
  %.not42.i.i.i = icmp eq ptr %.041.i.i.i, null
  br i1 %.not42.i.i.i, label %._crit_edge893.thread, label %.lr.ph.i.i.i465.preheader

.lr.ph.i.i.i465.preheader:                        ; preds = %bb.fq
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.lr.ph.i.i.i465

.lr.ph.i.i.i465:                                  ; preds = %.lr.ph.i.i.i465.preheader, %bb.ft
  %.044.i.i.i = phi ptr [ %.0.i.i.i, %bb.ft ], [ %.041.i.i.i, %.lr.ph.i.i.i465.preheader ] ; 7 uses
  %.02243.i.i.i = phi ptr [ %.123.i.i.i, %bb.ft ], [ %i.aat, %.lr.ph.i.i.i465.preheader ] ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.044.i.i.i, i64 32
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !299 ; 2 uses
  %i.aaw = icmp slt i32 %i.aav, 2
end_hunk_0
