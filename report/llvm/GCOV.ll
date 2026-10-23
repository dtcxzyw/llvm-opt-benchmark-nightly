Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCOV?download=true
inline.NumInlined: 2668
inline.NumDeleted: 1348
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_17Context5printEN4llvm9StringRefES2_S2_RNS1_8GCOVFileE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.iz = load ptr, ptr %0, align 8, !tbaa !213, !nonnull !172, !align !173
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !411, !range !175, !noundef !172
  %i.jc = trunc nuw i8 %i.jb to i1
  %i.jd = call { ptr, i64 } @_ZNK4llvm12GCOVFunction7getNameEb(ptr noundef nonnull align 8 dereferenceable(160) %i.iy, i1 noundef zeroext %i.jc) ; 2 uses
  %i.je = extractvalue { ptr, i64 } %i.jd, 0      ; 3 uses
  %i.jf = extractvalue { ptr, i64 } %i.jd, 1      ; 6 uses
  store ptr %i.je, ptr %36, align 8, !tbaa !87
  store i64 %i.jf, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 80 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !89
  %i.ji = zext i32 %i.jh to i64
  %.val54.i = load ptr, ptr %i.w, align 8, !tbaa !191
  %i.jj = getelementptr inbounds nuw [96 x i8], ptr %.val54.i, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 20 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !86 ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 40 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 48 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !196 ; 3 uses
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !197 ; 2 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = sdiv exact i64 %i.jt, 24                ; 4 uses
  %.not.i89 = icmp ugt i64 %i.ju, %i.jm
  br i1 %.not.i89, label %_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jv = add i32 %i.jl, 1
  %i.jw = zext i32 %i.jv to i64                   ; 4 uses
  %i.jx = icmp samesign ult i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jy = sub nuw nsw i64 %i.jw, %i.ju
  call void @_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i64 noundef %i.jy)
  br label %_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.jz = icmp samesign ugt i64 %i.ju, %i.jw
  br i1 %i.jz, label %bb.aj, label %_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %i.jw ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.jp, %i.ka
  br i1 %.not.i.i.i91, label %_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aj, %_ZSt8_DestroyISt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.kh, %_ZSt8_DestroyISt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.ka, %bb.aj ] ; 3 uses
  %i.kb = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !201 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvPT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !202
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #24
  br label %_ZSt8_DestroyISt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.kh, %i.jp
  br i1 %.not.i.i.i.i.i92, label %_ZSt8_DestroyIPSt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvT_S8_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvT_S8_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.ka, ptr %i.jo, align 8, !tbaa !196
  br label %_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i

_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPKN4llvm12GCOVFunctionESaIS4_EEEvT_S8_.exit.i.i.i, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %i.ki = load i32, ptr %i.jk, align 4, !tbaa !86
  %i.kj = zext i32 %i.ki to i64
  %i.kk = load ptr, ptr %i.jn, align 8, !tbaa !197
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %i.kj ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !395 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !202
  %.not.i.i56.i = icmp eq ptr %i.kn, %i.kp
  br i1 %.not.i.i56.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i
  store ptr %i.iy, ptr %i.kn, align 8, !tbaa !81
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store ptr %i.kq, ptr %i.km, align 8, !tbaa !395
  br label %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i

bb.am:                                            ; preds = %_ZNSt6vectorIS_IPKN4llvm12GCOVFunctionESaIS3_EESaIS5_EE6resizeEm.exit.i
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !201 ; 4 uses
  %i.ks = ptrtoint ptr %i.kn to i64
  %i.kt = ptrtoint ptr %i.kr to i64               ; 2 uses
  %i.ku = sub i64 %i.ks, %i.kt                    ; 5 uses
  %i.kv = icmp eq i64 %i.ku, 9223372036854775800
  br i1 %i.kv, label %bb.an, label %_ZNKSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

_ZNKSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.am
  %i.kw = ashr exact i64 %i.ku, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kw, i64 1)
  %i.kx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.kw ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.kw
  %i.kz = call i64 @llvm.umin.i64(i64 %i.kx, i64 1152921504606846975)
  %i.la = select i1 %i.ky, i64 1152921504606846975, i64 %i.kz ; 3 uses
  %.not.i.i.i.i57.i = icmp ne i64 %i.la, 0
  call void @llvm.assume(i1 %.not.i.i.i.i57.i)
  %i.lb = shl nuw nsw i64 %i.la, 3
  %i.lc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #23 ; 4 uses
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %i.ku ; 2 uses
  store ptr %i.iy, ptr %i.ld, align 8, !tbaa !81
  %i.le = icmp sgt i64 %i.ku, 0
  br i1 %i.le, label %bb.ao, label %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.ao:                                            ; preds = %_ZNKSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lc, ptr align 8 %i.kr, i64 %i.ku, i1 false)
  br label %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.ao, %_ZNKSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.lg = load ptr, ptr %i.ko, align 8, !tbaa !202
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = sub i64 %i.lh, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.li) #24
  br label %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.ap, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.lc, ptr %i.kl, align 8, !tbaa !201
  store ptr %i.lf, ptr %i.km, align 8, !tbaa !395
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.la
  store ptr %i.lj, ptr %i.ko, align 8, !tbaa !202
  br label %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i

_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  store ptr %i.x, ptr %31, align 8, !tbaa !77
  store i32 0, ptr %i.y, align 8, !tbaa !78
  store i32 16, ptr %i.z, align 4, !tbaa !79
  store i32 0, ptr %i.aa, align 8, !tbaa !412
  store ptr null, ptr %i.ab, align 8, !tbaa !144
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !215
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !413
  store i64 0, ptr %i.ae, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store ptr %i.af, ptr %32, align 8, !tbaa !77
  store i32 0, ptr %i.ag, align 8, !tbaa !78
  store i32 16, ptr %i.ah, align 4, !tbaa !79
  store i32 0, ptr %i.ai, align 8, !tbaa !412
  store ptr null, ptr %i.aj, align 8, !tbaa !144
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !215
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !413
  store i64 0, ptr %i.am, align 8, !tbaa !148
  %i.lk = getelementptr inbounds nuw i8, ptr %i.iy, i64 88
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !77 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !78 ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %.idx.i = shl nuw nsw i64 %i.lo, 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.idx.i
  %.not6976.i = icmp eq i32 %i.ln, 0
  br i1 %.not6976.i, label %._crit_edge79.i, label %.lr.ph78.i

._crit_edge79.loopexit.i:                         ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !144
  br label %._crit_edge79.i

._crit_edge79.i:                                  ; preds = %._crit_edge79.loopexit.i, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i
  %i.lq = phi ptr [ %.pre.i, %._crit_edge79.loopexit.i ], [ null, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i ]
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef %i.lq)
  %i.lr = load ptr, ptr %32, align 8, !tbaa !77   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.af
  br i1 %i.ls, label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge79.i
  call void @free(ptr noundef %i.lr) #22
  br label %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit.i

_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit.i:   ; preds = %bb.aq, %._crit_edge79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.lt = load ptr, ptr %i.ab, align 8, !tbaa !144
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef %i.lt)
  %i.lu = load ptr, ptr %31, align 8, !tbaa !77   ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.x
  br i1 %i.lv, label %_ZN12_GLOBAL__N_17Context15collectFunctionERN4llvm12GCOVFunctionERNS_7SummaryE.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit.i
  call void @free(ptr noundef %i.lu) #22
  br label %_ZN12_GLOBAL__N_17Context15collectFunctionERN4llvm12GCOVFunctionERNS_7SummaryE.exit

.lr.ph78.i:                                       ; preds = %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i, %.loopexit.i
  %.promoted319 = phi i64 [ %.promoted318, %.loopexit.i ], [ 0, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i ] ; 3 uses
  %.promoted305314 = phi i64 [ %.promoted305313, %.loopexit.i ], [ 0, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i ] ; 3 uses
  %.promoted312 = phi i64 [ %.promoted311, %.loopexit.i ], [ 0, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %.promoted298307 = phi i64 [ %.promoted298306, %.loopexit.i ], [ 0, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %.sroa.064.077.i = phi ptr [ %i.sv, %.loopexit.i ], [ %i.ll, %_ZNSt6vectorIPKN4llvm12GCOVFunctionESaIS3_EE9push_backEOS3_.exit.i ] ; 2 uses
  %i.lw = load ptr, ptr %.sroa.064.077.i, align 8, !tbaa !109 ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 88
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !78 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph75.i

.lr.ph75.i:                                       ; preds = %.lr.ph78.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 80
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !77 ; 2 uses
  %i.mb = zext i32 %i.ly to i64
  %.idx80.i = mul nuw nsw i64 %i.mb, 40
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.idx80.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.i, %.lr.ph75.i
  %.promoted317 = phi i64 [ %.promoted319, %.lr.ph75.i ], [ %.promoted316, %._crit_edge.i ]
  %.promoted305312 = phi i64 [ %.promoted305314, %.lr.ph75.i ], [ %.promoted305311, %._crit_edge.i ]
  %.promoted310 = phi i64 [ %.promoted319, %.lr.ph75.i ], [ %.promoted309, %._crit_edge.i ] ; 2 uses
  %.promoted298305 = phi i64 [ %.promoted305314, %.lr.ph75.i ], [ %.promoted298304, %._crit_edge.i ] ; 2 uses
  %.lcssa297302 = phi i64 [ %.promoted312, %.lr.ph75.i ], [ %.lcssa297301, %._crit_edge.i ] ; 2 uses
  %.lcssa295300 = phi i64 [ %.promoted298307, %.lr.ph75.i ], [ %.lcssa295299, %._crit_edge.i ] ; 2 uses
  %.04773.i = phi ptr [ %i.ma, %.lr.ph75.i ], [ %i.rs, %._crit_edge.i ] ; 5 uses
  %i.me = load i32, ptr %.04773.i, align 8, !tbaa !126
  %i.mf = zext i32 %i.me to i64
  %.val53.i = load ptr, ptr %i.w, align 8, !tbaa !191
  %i.mg = getelementptr inbounds nuw [96 x i8], ptr %.val53.i, i64 %i.mf ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.04773.i, i64 8 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !77 ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.04773.i, i64 16 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !78 ; 2 uses
  %i.ml = zext i32 %i.mk to i64
  %.idx.i.i = shl nuw nsw i64 %i.ml, 2            ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %.idx.i.i
  %or.cond.i.i.i.i = icmp ult i32 %i.mk, 2
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm11max_elementIRKNS_11SmallVectorIjLj4EEEEEDaOT_.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.as
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 4 ; 2 uses
  %.pre.i.i.i.i90 = load i32, ptr %i.mi, align 4, !tbaa !90 ; 2 uses
  %i.mo = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.mp = lshr exact i64 %i.mo, 2
  %i.mq = add nuw nsw i64 %i.mp, 1
  %xtraiter = and i64 %i.mq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %i.mr = phi i32 [ %i.mw, %.lr.ph.i.i.i.i.prol ], [ %.pre.i.i.i.i90, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ms = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.prol ], [ %i.mn, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.018.i.i.i.i.prol = phi ptr [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ], [ %i.mi, %.lr.ph.preheader.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !90 ; 2 uses
  %i.mu = icmp ult i32 %i.mr, %i.mt
  %spec.select.i.i.i.i.prol = select i1 %i.mu, ptr %i.ms, ptr %.018.i.i.i.i.prol ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  %i.mw = call i32 @llvm.umax.i32(i32 %i.mr, i32 %i.mt) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !344

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i32 [ %.pre.i.i.i.i90, %.lr.ph.preheader.i.i.i.i ], [ %i.mw, %.lr.ph.i.i.i.i.prol ]
  %.unr647 = phi ptr [ %i.mn, %.lr.ph.preheader.i.i.i.i ], [ %i.mv, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi ptr [ %i.mi, %.lr.ph.preheader.i.i.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %i.mx = icmp ult i64 %i.mo, 12
  br i1 %i.mx, label %_ZN4llvm11max_elementIRKNS_11SmallVectorIjLj4EEEEEDaOT_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.my = phi i32 [ %i.np, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.mz = phi ptr [ %i.no, %.lr.ph.i.i.i.i ], [ %.unr647, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.018.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !90 ; 2 uses
  %i.nb = icmp ult i32 %i.my, %i.na
  %spec.select.i.i.i.i = select i1 %i.nb, ptr %i.mz, ptr %.018.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 4 ; 2 uses
  %i.nd = call i32 @llvm.umax.i32(i32 %i.my, i32 %i.na) ; 2 uses
  %i.ne = load i32, ptr %i.nc, align 4, !tbaa !90 ; 2 uses
  %i.nf = icmp ult i32 %i.nd, %i.ne
  %spec.select.i.i.i.i.1 = select i1 %i.nf, ptr %i.nc, ptr %spec.select.i.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  %i.nh = call i32 @llvm.umax.i32(i32 %i.nd, i32 %i.ne) ; 2 uses
  %i.ni = load i32, ptr %i.ng, align 4, !tbaa !90 ; 2 uses
  %i.nj = icmp ult i32 %i.nh, %i.ni
  %spec.select.i.i.i.i.2 = select i1 %i.nj, ptr %i.ng, ptr %spec.select.i.i.i.i.1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mz, i64 12 ; 2 uses
  %i.nl = call i32 @llvm.umax.i32(i32 %i.nh, i32 %i.ni) ; 2 uses
  %i.nm = load i32, ptr %i.nk, align 4, !tbaa !90 ; 2 uses
  %i.nn = icmp ult i32 %i.nl, %i.nm
  %spec.select.i.i.i.i.3 = select i1 %i.nn, ptr %i.nk, ptr %spec.select.i.i.i.i.2 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %i.no, %i.mm
  %i.np = call i32 @llvm.umax.i32(i32 %i.nl, i32 %i.nm)
  br i1 %.not.i.i.i.i.3, label %_ZN4llvm11max_elementIRKNS_11SmallVectorIjLj4EEEEEDaOT_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !345

_ZN4llvm11max_elementIRKNS_11SmallVectorIjLj4EEEEEDaOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.as
  %.011.i.i.i.i = phi ptr [ %i.mi, %bb.as ], [ %spec.select.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i.i ]
  %i.nq = load i32, ptr %.011.i.i.i.i, align 4, !tbaa !90 ; 2 uses
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mg, i64 64 ; 3 uses
  %.val.i = load ptr, ptr %i.ns, align 8, !tbaa !206 ; 7 uses
  %i.nt = getelementptr i8, ptr %i.mg, i64 72     ; 4 uses
  %.val52.i = load ptr, ptr %i.nt, align 8, !tbaa !207 ; 8 uses
  %i.nu = ptrtoint ptr %.val52.i to i64           ; 2 uses
  %i.nv = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.nw = sub i64 %i.nu, %i.nv                    ; 2 uses
  %i.nx = sdiv exact i64 %i.nw, 40                ; 9 uses
  %.not49.i = icmp ugt i64 %i.nx, %i.nr
  br i1 %.not49.i, label %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11max_elementIRKNS_11SmallVectorIjLj4EEEEEDaOT_.exit.i
  %i.ny = add i32 %i.nq, 1
  %i.nz = zext i32 %i.ny to i64                   ; 6 uses
  %i.oa = icmp samesign ult i64 %i.nx, %i.nz
  br i1 %i.oa, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ob = sub nuw nsw i64 %i.nz, %i.nx            ; 9 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mg, i64 80 ; 3 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !208
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.nu
  %i.og = sdiv exact i64 %i.of, 40                ; 2 uses
  %i.oh = sub nuw nsw i64 230584300921369395, %i.nx
  %i.oi = icmp ule i64 %i.og, %i.oh
  call void @llvm.assume(i1 %i.oi)
  %.not27.i.i.i = icmp ult i64 %i.og, %i.ob
  br i1 %.not27.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.au
  %xtraiter648 = and i64 %i.ob, 3                 ; 2 uses
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.on, %.lr.ph.i.i.i.i.i.i.prol ], [ %.val52.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.om, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ob, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter650 = phi i64 [ %prol.iter650.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oj, i8 0, i64 24, i1 false)
  store ptr %i.oj, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !77
  %i.ok = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ok, align 8, !tbaa !78
  %i.ol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 12
  store i32 1, ptr %i.ol, align 4, !tbaa !79
  %i.om = add nsw i64 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter650.next = add i64 %prol.iter650, 1   ; 2 uses
  %prol.iter650.cmp.not = icmp eq i64 %prol.iter650.next, %xtraiter648
  br i1 %prol.iter650.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !346

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa641.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.on, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %.val52.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.on, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ob, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.om, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.oo = sub nsw i64 %i.nx, %i.nz
  %i.op = icmp ugt i64 %i.oo, -4
  br i1 %i.op, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.pg, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.pf, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oq, i8 0, i64 24, i1 false)
  store ptr %i.oq, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !77
  %i.or = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.or, align 8, !tbaa !78
  %i.os = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 12
  store i32 1, ptr %i.os, align 4, !tbaa !79
  %i.ot = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  %i.ou = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ou, i8 0, i64 24, i1 false)
  store ptr %i.ou, ptr %i.ot, align 8, !tbaa !77
  %i.ov = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ov, align 8, !tbaa !78
  %i.ow = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 52
  store i32 1, ptr %i.ow, align 4, !tbaa !79
  %i.ox = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  %i.oy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oy, i8 0, i64 24, i1 false)
  store ptr %i.oy, ptr %i.ox, align 8, !tbaa !77
  %i.oz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.oz, align 8, !tbaa !78
  %i.pa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 92
  store i32 1, ptr %i.pa, align 4, !tbaa !79
  %i.pb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  %i.pc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pc, i8 0, i64 24, i1 false)
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !77
  %i.pd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128
  store i32 0, ptr %i.pd, align 8, !tbaa !78
  %i.pe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 132
  store i32 1, ptr %i.pe, align 4, !tbaa !79
  %i.pf = add nsw i64 %.057.i.i.i.i.i.i, -4       ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.pf, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !347

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa641 = phi ptr [ %.lcssa641.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.pg, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.lcssa641, ptr %i.nt, align 8, !tbaa !207
  br label %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i

_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nx, i64 range(i64 -230584300921369394, 230584305216336691) %i.ob)
  %i.ph = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.nx ; 2 uses
  %i.pi = mul nuw nsw i64 %i.ph, 40
  %i.pj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pi) #23 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.nw ; 3 uses
  %xtraiter651 = and i64 %i.ob, 3                 ; 2 uses
  %lcmp.mod652.not = icmp eq i64 %xtraiter651, 0
  br i1 %lcmp.mod652.not, label %.lr.ph.i.i.i32.i.i.i.prol.loopexit, label %.lr.ph.i.i.i32.i.i.i.prol

.lr.ph.i.i.i32.i.i.i.prol:                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i32.i.i.i.prol
  %.08.i.i.i33.i.i.i.prol = phi ptr [ %i.pp, %.lr.ph.i.i.i32.i.i.i.prol ], [ %i.pk, %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 5 uses
  %.057.i.i.i34.i.i.i.prol = phi i64 [ %i.po, %.lr.ph.i.i.i32.i.i.i.prol ], [ %i.ob, %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %prol.iter653 = phi i64 [ %prol.iter653.next, %.lr.ph.i.i.i32.i.i.i.prol ], [ 0, %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %i.pl = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.prol, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pl, i8 0, i64 24, i1 false)
  store ptr %i.pl, ptr %.08.i.i.i33.i.i.i.prol, align 8, !tbaa !77
  %i.pm = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.prol, i64 8
  store i32 0, ptr %i.pm, align 8, !tbaa !78
  %i.pn = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.prol, i64 12
  store i32 1, ptr %i.pn, align 4, !tbaa !79
  %i.po = add nsw i64 %.057.i.i.i34.i.i.i.prol, -1 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i.prol, i64 40 ; 2 uses
  %prol.iter653.next = add i64 %prol.iter653, 1   ; 2 uses
  %prol.iter653.cmp.not = icmp eq i64 %prol.iter653.next, %xtraiter651
  br i1 %prol.iter653.cmp.not, label %.lr.ph.i.i.i32.i.i.i.prol.loopexit, label %.lr.ph.i.i.i32.i.i.i.prol, !llvm.loop !348

.lr.ph.i.i.i32.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i32.i.i.i.prol, %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.08.i.i.i33.i.i.i.unr = phi ptr [ %i.pk, %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.pp, %.lr.ph.i.i.i32.i.i.i.prol ]
  %.057.i.i.i34.i.i.i.unr = phi i64 [ %i.ob, %_ZNKSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.po, %.lr.ph.i.i.i32.i.i.i.prol ]
  %i.pq = sub nsw i64 %i.nx, %i.nz
  %i.pr = icmp ugt i64 %i.pq, -4
  br i1 %i.pr, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i, label %.lr.ph.i.i.i32.i.i.i

.lr.ph.i.i.i32.i.i.i:                             ; preds = %.lr.ph.i.i.i32.i.i.i.prol.loopexit, %.lr.ph.i.i.i32.i.i.i
  %.08.i.i.i33.i.i.i = phi ptr [ %i.qi, %.lr.ph.i.i.i32.i.i.i ], [ %.08.i.i.i33.i.i.i.unr, %.lr.ph.i.i.i32.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i34.i.i.i = phi i64 [ %i.qh, %.lr.ph.i.i.i32.i.i.i ], [ %.057.i.i.i34.i.i.i.unr, %.lr.ph.i.i.i32.i.i.i.prol.loopexit ]
  %i.ps = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ps, i8 0, i64 24, i1 false)
  store ptr %i.ps, ptr %.08.i.i.i33.i.i.i, align 8, !tbaa !77
  %i.pt = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 8
  store i32 0, ptr %i.pt, align 8, !tbaa !78
  %i.pu = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 12
  store i32 1, ptr %i.pu, align 4, !tbaa !79
  %i.pv = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 40
  %i.pw = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pw, i8 0, i64 24, i1 false)
  store ptr %i.pw, ptr %i.pv, align 8, !tbaa !77
  %i.px = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 48
  store i32 0, ptr %i.px, align 8, !tbaa !78
  %i.py = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 52
  store i32 1, ptr %i.py, align 4, !tbaa !79
  %i.pz = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 80
  %i.qa = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qa, i8 0, i64 24, i1 false)
  store ptr %i.qa, ptr %i.pz, align 8, !tbaa !77
  %i.qb = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 88
  store i32 0, ptr %i.qb, align 8, !tbaa !78
  %i.qc = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 92
  store i32 1, ptr %i.qc, align 4, !tbaa !79
  %i.qd = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 120
  %i.qe = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qe, i8 0, i64 24, i1 false)
  store ptr %i.qe, ptr %i.qd, align 8, !tbaa !77
  %i.qf = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 128
  store i32 0, ptr %i.qf, align 8, !tbaa !78
  %i.qg = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 132
  store i32 1, ptr %i.qg, align 4, !tbaa !79
  %i.qh = add nsw i64 %.057.i.i.i34.i.i.i, -4     ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.08.i.i.i33.i.i.i, i64 160
  %.not.i.i.i35.i.i.i.3 = icmp eq i64 %i.qh, 0
  br i1 %.not.i.i.i35.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i, label %.lr.ph.i.i.i32.i.i.i, !llvm.loop !347

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i: ; preds = %.lr.ph.i.i.i32.i.i.i, %.lr.ph.i.i.i32.i.i.i.prol.loopexit
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i, %.val52.i
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i, %_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi ptr [ %i.qy, %_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i ], [ %i.pj, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i ] ; 9 uses
  %.0810.i.i.i.i.i.i.i.i = phi ptr [ %i.qx, %_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i ], [ %.val.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i ] ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.qj, ptr %.011.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.qk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.qk, align 8, !tbaa !78
  %i.ql = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 12
  store i32 1, ptr %i.ql, align 4, !tbaa !79
  %i.qm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.qn, 0
  %i.qo = icmp eq ptr %.011.i.i.i.i.i.i.i.i, %.0810.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.qo, %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.qp = icmp ugt i32 %i.qn, 1
  br i1 %i.qp, label %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.qq = zext i32 %i.qn to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %.011.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.qj, i64 noundef %i.qq, i64 noundef 8) #22
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.qm, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.qr = zext i32 %.pre.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.qs = shl nuw nsw i64 %i.qr, 3
  br label %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.av
  %i.qt = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.qj, %bb.av ]
  %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qs, %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 8, %bb.av ]
  %i.qu = load ptr, ptr %.0810.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.qt, ptr noundef nonnull align 8 dereferenceable(1) %i.qu, i64 %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKPKN4llvm9GCOVBlockEPS3_ET0_T_S8_S7_.exit30.i.i.i.i.i.i.i.i.i.i.i.i
  store i32 %i.qn, ptr %i.qk, align 8, !tbaa !78
  br label %_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i

_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 24
  %i.qw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.qv, ptr noundef nonnull readonly align 8 dereferenceable(9) %i.qw, i64 9, i1 false)
  %i.qx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.qx, %.val52.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i60.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !349

.lr.ph.i.i.i.i60.i:                               ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i61.i = phi ptr [ %i.rc, %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i.i.i ], [ %.val.i, %_ZSt10_ConstructIN12_GLOBAL__N_18LineInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.qz = load ptr, ptr %.05.i.i.i.i61.i, align 8, !tbaa !77 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i61.i, i64 16
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i60.i
  call void @free(ptr noundef %i.qz) #22
  br label %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i.i.i: ; preds = %bb.aw, %.lr.ph.i.i.i.i60.i
  %i.rc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i61.i, i64 40 ; 2 uses
  %.not.i.i.i.i62.i = icmp eq ptr %i.rc, %.val52.i
  br i1 %.not.i.i.i.i62.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i60.i, !llvm.loop !4

_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit37.i.i.i
  %.not.i38.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i38.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18LineInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i.i.i
  %i.rd = load ptr, ptr %i.oc, align 8, !tbaa !208
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = sub i64 %i.re, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.rf) #24
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18LineInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_18LineInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i: ; preds = %bb.ax, %_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i.i.i
  store ptr %i.pj, ptr %i.ns, align 8, !tbaa !206
  %i.rg = getelementptr inbounds nuw [40 x i8], ptr %i.pk, i64 %i.ob
  store ptr %i.rg, ptr %i.nt, align 8, !tbaa !207
  %i.rh = getelementptr inbounds nuw [40 x i8], ptr %i.pj, i64 %i.ph
  store ptr %i.rh, ptr %i.oc, align 8, !tbaa !208
  br label %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i

bb.ay:                                            ; preds = %bb.at
  %i.ri = icmp samesign ugt i64 %i.nx, %i.nz
  br i1 %i.ri, label %bb.az, label %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.rj = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %i.nz ; 3 uses
  %.not.i9.i.i = icmp eq ptr %.val52.i, %i.rj
  br i1 %.not.i9.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i, label %.lr.ph.i.i.i10.i.i

.lr.ph.i.i.i10.i.i:                               ; preds = %bb.az, %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i12.i.i
  %.05.i.i.i11.i.i = phi ptr [ %i.rn, %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i12.i.i ], [ %i.rj, %bb.az ] ; 3 uses
  %i.rk = load ptr, ptr %.05.i.i.i11.i.i, align 8, !tbaa !77 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i11.i.i, i64 16
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i12.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i10.i.i
  call void @free(ptr noundef %i.rk) #22
  br label %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i12.i.i

_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i12.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i10.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %.05.i.i.i11.i.i, i64 40 ; 2 uses
  %.not.i.i.i13.i.i = icmp eq ptr %i.rn, %.val52.i
  br i1 %.not.i.i.i13.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i14.i.i, label %.lr.ph.i.i.i10.i.i, !llvm.loop !4

_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i14.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_18LineInfoEEvPT_.exit.i.i.i12.i.i
  store ptr %i.rj, ptr %i.nt, align 8, !tbaa !207
  br label %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i

_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_18LineInfoEEvT_S3_.exit.i14.i.i, %bb.az, %bb.ay, %_ZNSt12_Vector_baseIN12_GLOBAL__N_18LineInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_18LineInfoEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i, %_ZN4llvm11max_elementIRKNS_11SmallVectorIjLj4EEEEEDaOT_.exit.i
  %i.ro = load ptr, ptr %i.mh, align 8, !tbaa !77 ; 2 uses
  %i.rp = load i32, ptr %i.mj, align 8, !tbaa !78 ; 2 uses
  %i.rq = zext i32 %i.rp to i64
  %.idx81.i = shl nuw nsw i64 %i.rq, 2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.idx81.i
  %.not5070.i = icmp eq i32 %i.rp, 0
  br i1 %.not5070.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.critedge.thread.i
  store i64 %54, ptr %i.v, align 8
  store i64 %53, ptr %i.ap, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i
  %.promoted316 = phi i64 [ %.promoted317, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ], [ %53, %._crit_edge.i.loopexit ] ; 2 uses
  %.promoted305311 = phi i64 [ %.promoted305312, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ], [ %54, %._crit_edge.i.loopexit ] ; 2 uses
  %.promoted309 = phi i64 [ %.promoted310, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ], [ %53, %._crit_edge.i.loopexit ]
  %.promoted298304 = phi i64 [ %.promoted298305, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ], [ %54, %._crit_edge.i.loopexit ]
  %.lcssa297301 = phi i64 [ %.lcssa297302, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ], [ %i.ss, %._crit_edge.i.loopexit ] ; 2 uses
  %.lcssa295299 = phi i64 [ %.lcssa295300, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ], [ %i.st, %._crit_edge.i.loopexit ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.04773.i, i64 40 ; 2 uses
  %.not48.i = icmp eq ptr %i.rs, %i.mc
  br i1 %.not48.i, label %.loopexit.i, label %bb.as

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i, %.critedge.thread.i
  %47 = phi i64 [ %53, %.critedge.thread.i ], [ %.promoted310, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ] ; 3 uses
  %48 = phi i64 [ %54, %.critedge.thread.i ], [ %.promoted298305, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ] ; 2 uses
  %i.rt = phi i64 [ %i.ss, %.critedge.thread.i ], [ %.lcssa297302, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ] ; 4 uses
  %i.ru = phi i64 [ %i.st, %.critedge.thread.i ], [ %.lcssa295300, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ] ; 3 uses
  %.04671.i = phi ptr [ %i.su, %.critedge.thread.i ], [ %i.ro, %_ZNSt6vectorIN12_GLOBAL__N_18LineInfoESaIS1_EE6resizeEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.rv = load i32, ptr %.04671.i, align 4, !tbaa !90 ; 2 uses
  store i32 %i.rv, ptr %i.e, align 4, !tbaa !90
  %i.rw = zext i32 %i.rv to i64
  %.val55.i = load ptr, ptr %i.ns, align 8, !tbaa !206
  %i.rx = getelementptr inbounds nuw [40 x i8], ptr %.val55.i, i64 %i.rw ; 6 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  store i8 1, ptr %i.ry, align 8, !tbaa !421
  %i.rz = load i64, ptr %i.md, align 8, !tbaa !104
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 24 ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !422
  %i.sc = add i64 %i.sb, %i.rz
  store i64 %i.sc, ptr %i.sa, align 8, !tbaa !422
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 3 uses
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !78 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rx, i64 12
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !79
  %.not.i63.i = icmp ult i32 %i.se, %i.sg
  br i1 %.not.i63.i, label %bb.bc, label %bb.bb, !prof !82

bb.bb:                                            ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.rx, ptr noundef nonnull %i.lw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i

bb.bc:                                            ; preds = %.lr.ph.i
  %i.sh = zext i32 %i.se to i64
  %i.si = load ptr, ptr %i.rx, align 8, !tbaa !77
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sh
  store ptr %i.lw, ptr %i.sj, align 1
  %i.sk = load i32, ptr %i.sd, align 8, !tbaa !78
  %i.sl = add i32 %i.sk, 1
  store i32 %i.sl, ptr %i.sd, align 8, !tbaa !78
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i: ; preds = %bb.bc, %bb.bb
  %i.sm = load i32, ptr %i.jg, align 8, !tbaa !89
  %i.sn = load i32, ptr %.04773.i, align 8, !tbaa !126
  %i.so = icmp eq i32 %i.sm, %i.sn
  br i1 %i.so, label %bb.bd, label %.critedge.thread.i

bb.bd:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @_ZN4llvm8SmallSetIjLj16ESt4lessIjEE10insertImplIRKjEESt4pairINS_16SmallSetIteratorIjLj16ES2_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.147") align 8 %33, ptr noundef nonnull align 8 dereferenceable(128) %31, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.sp = load i8, ptr %i.an, align 8, !tbaa !218, !range !175, !noundef !172
  %49 = trunc nuw i8 %i.sp to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %50 = add i64 %i.ru, 1                          ; 2 uses
  %spec.select = select i1 %49, i64 %50, i64 %48  ; 2 uses
  %spec.select355 = select i1 %49, i64 %50, i64 %i.ru ; 2 uses
  %i.sq = load i64, ptr %i.md, align 8, !tbaa !104
  %.not51.not.i = icmp eq i64 %i.sq, 0
  br i1 %.not51.not.i, label %.critedge.thread.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @_ZN4llvm8SmallSetIjLj16ESt4lessIjEE10insertImplIRKjEESt4pairINS_16SmallSetIteratorIjLj16ES2_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.147") align 8 %34, ptr noundef nonnull align 8 dereferenceable(128) %32, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.sr = load i8, ptr %i.ao, align 8, !tbaa !218, !range !175, !noundef !172
  %51 = trunc nuw i8 %i.sr to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %52 = add i64 %i.rt, 1                          ; 2 uses
  %spec.select356 = select i1 %51, i64 %52, i64 %47
  %spec.select357 = select i1 %51, i64 %52, i64 %i.rt
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.bd, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i
  %53 = phi i64 [ %47, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i ], [ %spec.select356, %.critedge.i ], [ %47, %bb.bd ] ; 4 uses
  %54 = phi i64 [ %48, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i ], [ %spec.select, %.critedge.i ], [ %spec.select, %bb.bd ] ; 4 uses
  %i.ss = phi i64 [ %i.rt, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i ], [ %spec.select357, %.critedge.i ], [ %i.rt, %bb.bd ] ; 2 uses
  %i.st = phi i64 [ %i.ru, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_9GCOVBlockELb1EE9push_backES3_.exit.i ], [ %spec.select355, %.critedge.i ], [ %spec.select355, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.su = getelementptr inbounds nuw i8, ptr %.04671.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.su, %i.rr
  br i1 %.not50.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

.loopexit.i:                                      ; preds = %._crit_edge.i, %.lr.ph78.i
  %.promoted318 = phi i64 [ %.promoted319, %.lr.ph78.i ], [ %.promoted316, %._crit_edge.i ]
  %.promoted305313 = phi i64 [ %.promoted305314, %.lr.ph78.i ], [ %.promoted305311, %._crit_edge.i ]
  %.promoted311 = phi i64 [ %.promoted312, %.lr.ph78.i ], [ %.lcssa297301, %._crit_edge.i ]
  %.promoted298306 = phi i64 [ %.promoted298307, %.lr.ph78.i ], [ %.lcssa295299, %._crit_edge.i ]
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.064.077.i, i64 8 ; 2 uses
  %.not69.i = icmp eq ptr %i.sv, %i.lp
  br i1 %.not69.i, label %._crit_edge79.loopexit.i, label %.lr.ph78.i

_ZN12_GLOBAL__N_17Context15collectFunctionERN4llvm12GCOVFunctionERNS_7SummaryE.exit: ; preds = %_ZN4llvm8SmallSetIjLj16ESt4lessIjEED2Ev.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.sw = load ptr, ptr %0, align 8, !tbaa !213, !nonnull !172, !align !173 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 3
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !423, !range !175, !noundef !172
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %bb.be, label %_ZN4llvm11raw_ostreamlsEc.exit

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_17Context15collectFunctionERN4llvm12GCOVFunctionERNS_7SummaryE.exit
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 11
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !424, !range !175, !noundef !172
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %_ZN4llvm11raw_ostreamlsEc.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.td = load ptr, ptr %i.as, align 8, !tbaa !114
  %i.te = load ptr, ptr %i.at, align 8, !tbaa !115 ; 2 uses
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = icmp ult i64 %i.th, 10
  br i1 %i.ti, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.tj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull @.str.31, i64 noundef 10) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.te, ptr noundef nonnull align 1 dereferenceable(10) @.str.31, i64 10, i1 false)
  %i.tk = load ptr, ptr %i.at, align 8, !tbaa !115
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 10 ; 2 uses
  store ptr %i.tl, ptr %i.at, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.bg, %bb.bh
  %i.tm = phi ptr [ %.pre, %bb.bg ], [ %i.tl, %bb.bh ] ; 3 uses
  %.0.i.i = phi ptr [ %i.tj, %bb.bg ], [ %i.o, %bb.bh ] ; 5 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !114
  %i.tp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = ptrtoint ptr %i.tm to i64
  %i.ts = sub i64 %i.tq, %i.tr
  %i.tt = icmp ugt i64 %i.jf, %i.ts
  br i1 %i.tt, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.tu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.je, i64 noundef %i.jf) #22 ; 2 uses
  %.phi.trans.insert375 = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %.pre376 = load ptr, ptr %.phi.trans.insert375, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.bj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i93 = icmp eq i64 %i.jf, 0
  br i1 %.not.i93, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tm, ptr align 1 %i.je, i64 %i.jf, i1 false)
  %i.tv = load ptr, ptr %i.tp, align 8, !tbaa !115
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.jf ; 2 uses
  store ptr %i.tw, ptr %i.tp, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.tx = phi ptr [ %.pre376, %bb.bi ], [ %i.tw, %bb.bk ], [ %i.tm, %bb.bj ] ; 2 uses
  %.0.i = phi ptr [ %i.tu, %bb.bi ], [ %.0.i.i, %bb.bk ], [ %.0.i.i, %bb.bj ] ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !114
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = icmp ult i64 %i.uc, 2
  br i1 %i.ud, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ue = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.32, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

bb.bm:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.uf = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i16 2599, ptr %i.tx, align 1
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !115
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  store ptr %i.uh, ptr %i.uf, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

_ZN4llvm11raw_ostreamlsEPKc.exit96:               ; preds = %bb.bl, %bb.bm
  call fastcc void @_ZNK12_GLOBAL__N_17Context12printSummaryERKNS_7SummaryERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %36, ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  %i.ui = load ptr, ptr %i.at, align 8, !tbaa !115 ; 3 uses
  %i.uj = load ptr, ptr %i.as, align 8, !tbaa !114
  %.not.i97 = icmp ult ptr %i.ui, %i.uj
  br i1 %.not.i97, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96
  %i.uk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 noundef zeroext 10) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.bo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  store ptr %i.ul, ptr %i.at, align 8, !tbaa !115
  store i8 10, ptr %i.ui, align 1, !tbaa !134
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.bo, %bb.bn, %bb.be, %_ZN12_GLOBAL__N_17Context15collectFunctionERN4llvm12GCOVFunctionERNS_7SummaryE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0255.0314, i64 8 ; 2 uses
  %.not274 = icmp eq ptr %i.um, %i.u
  br i1 %.not274, label %._crit_edge317, label %bb.af

._crit_edge345:                                   ; preds = %bb.jn, %._crit_edge317
  %i.un = load ptr, ptr %0, align 8, !tbaa !213, !nonnull !172, !align !173 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 6
  %i.up = load i8, ptr %i.uo, align 2, !tbaa !425, !range !175, !noundef !172
  %i.uq = trunc nuw i8 %i.up to i1
  br i1 %i.uq, label %bb.jo, label %bb.lv

bb.bp:                                            ; preds = %.lr.ph344, %bb.jn
  %.sroa.0253.0342 = phi ptr [ %.val68, %.lr.ph344 ], [ %i.bmt, %bb.jn ] ; 11 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.0253.0342, i64 88
  %i.us = load i8, ptr %i.ur, align 8, !tbaa !404, !range !175, !noundef !172
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %bb.jn, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0253.0342, i64 16 ; 2 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !76 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0253.0342, i64 24 ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !142 ; 6 uses
  store ptr %i.uv, ptr %37, align 8, !tbaa !87
  store i64 %i.ux, ptr %.sroa.2.0..sroa_idx.i101, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ha, i8 0, i64 40, i1 false)
  %i.uy = getelementptr i8, ptr %.sroa.0253.0342, i64 64 ; 2 uses
  %.val76 = load ptr, ptr %i.uy, align 8, !tbaa !396 ; 2 uses
  %i.uz = getelementptr i8, ptr %.sroa.0253.0342, i64 72 ; 2 uses
  %.val77 = load ptr, ptr %i.uz, align 8, !tbaa !396 ; 2 uses
  %.not20.i = icmp eq ptr %.val76, %.val77
  br i1 %.not20.i, label %._ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit_crit_edge, label %.lr.ph.i102

._ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit_crit_edge: ; preds = %bb.bq
  %.pre377 = load ptr, ptr %0, align 8, !tbaa !213, !noalias !426
  br label %_ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit

.lr.ph.i102:                                      ; preds = %bb.bq, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i
  %.lcssa337345 = phi i64 [ %.lcssa337344, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 3 uses
  %.lcssa335342 = phi i64 [ %.lcssa335341, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 3 uses
  %.lcssa333340 = phi i64 [ %.lcssa333339, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 3 uses
  %.lcssa330340 = phi i64 [ %.lcssa330339, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 3 uses
  %.lcssa328337 = phi i64 [ %.lcssa328336, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 3 uses
  %.lcssa326335 = phi i64 [ %.lcssa326334, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 3 uses
  %i.va = phi i64 [ %i.ach, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 3 uses
  %i.vb = phi i64 [ %i.aci, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 2 uses
  %.022.i = phi i64 [ %i.aep, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ 0, %bb.bq ] ; 2 uses
  %.sroa.01.021.i = phi ptr [ %i.aeq, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ], [ %.val76, %bb.bq ] ; 7 uses
  %i.vc = load ptr, ptr %.sroa.01.021.i, align 8, !tbaa !77 ; 6 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.01.021.i, i64 8 ; 3 uses
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !78 ; 4 uses
  %i.vf = zext i32 %i.ve to i64                   ; 2 uses
  %.idx.i.i103 = shl nuw nsw i64 %i.vf, 3         ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 %.idx.i.i103 ; 3 uses
  %.not28.i.i = icmp eq i32 %i.ve, 0
  br i1 %.not28.i.i, label %.preheader._crit_edge.i.i.thread.i, label %.lr.ph32.i.i

.preheader._crit_edge.i.i.thread.i:               ; preds = %.lr.ph.i102
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  br label %_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i

.lr.ph32.i.i:                                     ; preds = %.lr.ph.i102
  %i.vh = lshr i64 %i.vf, 2                       ; 2 uses
  %.not.i93.i.i = icmp eq i64 %i.vh, 0
  %i.vi = and i64 %.idx.i.i103, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.vc, i64 %i.vi
  %i.vj = and i32 %i.ve, 3
  br label %bb.bt

._crit_edge33.i.i:                                ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.thread46.i.i.i, %._crit_edge33.i.i
  %i.vk = phi ptr [ %i.wa, %.thread46.i.i.i ], [ %i.vg, %._crit_edge33.i.i ] ; 2 uses
  %i.vl = phi ptr [ %i.vx, %.thread46.i.i.i ], [ %i.vc, %._crit_edge33.i.i ] ; 2 uses
  %.0.i37.i.i = phi i64 [ %i.vw, %.thread46.i.i.i ], [ 0, %._crit_edge33.i.i ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.03651.i.i.i = phi ptr [ %i.vp, %.lr.ph.i.i.i ], [ %i.vl, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.vm = load ptr, ptr %.03651.i.i.i, align 8, !tbaa !109 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 140
  store i8 1, ptr %i.vn, align 4, !tbaa !106
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 144
  store ptr null, ptr %i.vo, align 8, !tbaa !107
  %i.vp = getelementptr inbounds nuw i8, ptr %.03651.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.vp, %i.vk
  br i1 %.not.i.i.i106, label %.lr.ph54.i.i.i, label %.lr.ph.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %.thread.i.i.i
  %.03453.i.i.i = phi ptr [ %i.vv, %.thread.i.i.i ], [ %i.vl, %.lr.ph.i.i.i ] ; 2 uses
  %i.vq = load ptr, ptr %.03453.i.i.i, align 8, !tbaa !109 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 140
  %i.vs = load i8, ptr %i.vr, align 4, !tbaa !106, !range !175, !noundef !172
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %bb.br, label %.thread.i.i.i

bb.br:                                            ; preds = %.lr.ph54.i.i.i
  %i.vu = call noundef i64 @_ZN4llvm9GCOVBlock15augmentOneCycleEPS0_RSt6vectorISt4pairIS1_mESaIS4_EE(ptr noundef nonnull %i.vq, ptr noundef nonnull align 8 dereferenceable(24) %30) ; 2 uses
  %.not40.i.i.i = icmp eq i64 %i.vu, 0
  br i1 %.not40.i.i.i, label %.thread.i.i.i, label %.thread46.i.i.i

.thread.i.i.i:                                    ; preds = %bb.br, %.lr.ph54.i.i.i
  %i.vv = getelementptr inbounds nuw i8, ptr %.03453.i.i.i, i64 8 ; 2 uses
  %.not39.i.i.i = icmp eq ptr %i.vv, %i.vk
  br i1 %.not39.i.i.i, label %.preheader._crit_edge.i.i.i, label %.lr.ph54.i.i.i

.thread46.i.i.i:                                  ; preds = %bb.br
  %i.vw = add i64 %i.vu, %.0.i37.i.i              ; 2 uses
  %i.vx = load ptr, ptr %.sroa.01.021.i, align 8, !tbaa !77 ; 2 uses
  %i.vy = load i32, ptr %i.vd, align 8, !tbaa !78 ; 2 uses
  %i.vz = zext i32 %i.vy to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.vz, 3
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.idx.i.i.i
  %.not50.i.i.i = icmp eq i32 %i.vy, 0
  br i1 %.not50.i.i.i, label %.preheader._crit_edge.i.i.i, label %.lr.ph.i.preheader.i.i, !llvm.loop !2

.preheader._crit_edge.i.i.i:                      ; preds = %.thread46.i.i.i, %.thread.i.i.i
  %.0.i8.ph.i.i = phi i64 [ %.0.i37.i.i, %.thread.i.i.i ], [ %i.vw, %.thread46.i.i.i ] ; 2 uses
  %.pr.i.i = load ptr, ptr %30, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i.i.i.i107 = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i.i107, label %_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %.preheader._crit_edge.i.i.i
  %i.wb = load ptr, ptr %i.hb, align 8, !tbaa !186
  %i.wc = ptrtoint ptr %i.wb to i64
  %i.wd = ptrtoint ptr %.pr.i.i to i64
  %i.we = sub i64 %i.wc, %i.wd
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i, i64 noundef %i.we) #24
  br label %_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i

_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i: ; preds = %bb.bs, %.preheader._crit_edge.i.i.i, %.preheader._crit_edge.i.i.thread.i
  %.0.i8.i6.i = phi i64 [ 0, %.preheader._crit_edge.i.i.thread.i ], [ %.0.i8.ph.i.i, %bb.bs ], [ %.0.i8.ph.i.i, %.preheader._crit_edge.i.i.i ]
  %.078.lcssa79.i5.i = phi i64 [ 0, %.preheader._crit_edge.i.i.thread.i ], [ %.4.i.i, %bb.bs ], [ %.4.i.i, %.preheader._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.wf = add i64 %.078.lcssa79.i5.i, %.0.i8.i6.i ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.01.021.i, i64 24
  store i64 %i.wf, ptr %i.wg, align 8, !tbaa !422
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.01.021.i, i64 32
  %i.wi = load i8, ptr %i.wh, align 8, !tbaa !421, !range !175, !noundef !172
  %i.wj = trunc nuw i8 %i.wi to i1
  br i1 %i.wj, label %bb.ce, label %bb.cg

bb.bt:                                            ; preds = %._crit_edge.i.i, %.lr.ph32.i.i
  %.07830.i.i = phi i64 [ 0, %.lr.ph32.i.i ], [ %.4.i.i, %._crit_edge.i.i ] ; 5 uses
  %.08329.i.i = phi ptr [ %i.vc, %.lr.ph32.i.i ], [ %i.aaq, %._crit_edge.i.i ] ; 2 uses
  %i.wk = load ptr, ptr %.08329.i.i, align 8, !tbaa !109 ; 7 uses
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !103
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 48
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !77 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wk, i64 56
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !78 ; 2 uses
  %i.wr = zext i32 %i.wq to i64
  %.idx55.i.i = shl nuw nsw i64 %i.wr, 3          ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.idx55.i.i
  %.not9120.i.i = icmp eq i32 %i.wq, 0
  br i1 %.not9120.i.i, label %.loopexit5.i.i, label %.lr.ph23.i.i.preheader

.lr.ph23.i.i.preheader:                           ; preds = %bb.bu
  %i.wt = add nsw i64 %.idx55.i.i, -8             ; 2 uses
  %i.wu = lshr exact i64 %i.wt, 3
  %i.wv = add nuw nsw i64 %i.wu, 1
  %xtraiter654 = and i64 %i.wv, 7                 ; 2 uses
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  br i1 %lcmp.mod655.not, label %.lr.ph23.i.i.prol.loopexit, label %.lr.ph23.i.i.prol

.lr.ph23.i.i.prol:                                ; preds = %.lr.ph23.i.i.preheader, %.lr.ph23.i.i.prol
  %.17922.i.i.prol = phi i64 [ %i.wz, %.lr.ph23.i.i.prol ], [ %.07830.i.i, %.lr.ph23.i.i.preheader ]
  %.08221.i.i.prol = phi ptr [ %i.xa, %.lr.ph23.i.i.prol ], [ %i.wo, %.lr.ph23.i.i.preheader ] ; 2 uses
  %prol.iter656 = phi i64 [ %prol.iter656.next, %.lr.ph23.i.i.prol ], [ 0, %.lr.ph23.i.i.preheader ]
  %i.ww = load ptr, ptr %.08221.i.i.prol, align 8, !tbaa !118
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !170
  %i.wz = add i64 %i.wy, %.17922.i.i.prol         ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.08221.i.i.prol, i64 8 ; 2 uses
  %prol.iter656.next = add i64 %prol.iter656, 1   ; 2 uses
  %prol.iter656.cmp.not = icmp eq i64 %prol.iter656.next, %xtraiter654
  br i1 %prol.iter656.cmp.not, label %.lr.ph23.i.i.prol.loopexit, label %.lr.ph23.i.i.prol, !llvm.loop !352

.lr.ph23.i.i.prol.loopexit:                       ; preds = %.lr.ph23.i.i.prol, %.lr.ph23.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph23.i.i.preheader ], [ %i.wz, %.lr.ph23.i.i.prol ]
  %.17922.i.i.unr = phi i64 [ %.07830.i.i, %.lr.ph23.i.i.preheader ], [ %i.wz, %.lr.ph23.i.i.prol ]
  %.08221.i.i.unr = phi ptr [ %i.wo, %.lr.ph23.i.i.preheader ], [ %i.xa, %.lr.ph23.i.i.prol ]
  %i.xb = icmp ult i64 %i.wt, 56
  br i1 %i.xb, label %.loopexit5.i.i, label %.lr.ph23.i.i

.lr.ph23.i.i:                                     ; preds = %.lr.ph23.i.i.prol.loopexit, %.lr.ph23.i.i
  %.17922.i.i = phi i64 [ %i.yo, %.lr.ph23.i.i ], [ %.17922.i.i.unr, %.lr.ph23.i.i.prol.loopexit ]
  %.08221.i.i = phi ptr [ %i.yp, %.lr.ph23.i.i ], [ %.08221.i.i.unr, %.lr.ph23.i.i.prol.loopexit ] ; 9 uses
  %i.xc = load ptr, ptr %.08221.i.i, align 8, !tbaa !118
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !170
  %i.xf = add i64 %i.xe, %.17922.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !118
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !170
  %i.xk = add i64 %i.xj, %i.xf
  %i.xl = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 16
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !118
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !170
  %i.xp = add i64 %i.xo, %i.xk
  %i.xq = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 24
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !118
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !170
  %i.xu = add i64 %i.xt, %i.xp
  %i.xv = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 32
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !118
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !170
  %i.xz = add i64 %i.xy, %i.xu
  %i.ya = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 40
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !118
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !170
  %i.ye = add i64 %i.yd, %i.xz
  %i.yf = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 48
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !118
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !170
  %i.yj = add i64 %i.yi, %i.ye
  %i.yk = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 56
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !118
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !170
  %i.yo = add i64 %i.yn, %i.yj                    ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.08221.i.i, i64 64 ; 2 uses
  %.not91.i.i.7 = icmp eq ptr %i.yp, %i.ws
  br i1 %.not91.i.i.7, label %.loopexit5.i.i, label %.lr.ph23.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.yq = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !77 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_17Context5printEN4llvm9StringRefES2_S2_RNS1_8GCOVFileE:bb.a

bb.bz:                                            ; preds = %bb.by
  %i.zj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 32
  %i.zk = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.zl = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.zl, label %.lr.ph.i.i.i.i.i.i104, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !353

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.bz, %.lr.ph.i.i
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.ve, %.lr.ph.i.i ], [ %i.vj, %bb.bz ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.vc, %.lr.ph.i.i ], [ %scevgep.i.i.i.i.i.i, %bb.bz ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.thread.i.i [
    i32 3, label %bb.ca
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.zm = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !109
  %i.zn = icmp eq ptr %i.zm, %i.yx
  br i1 %i.zn, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.zo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.cb, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.zo, %bb.cb ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.zp = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !109
  %i.zq = icmp eq ptr %i.zp, %i.yx
  br i1 %i.zq, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.zr = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.cc, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.zr, %bb.cc ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.zs = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !109
  %i.zt = icmp eq ptr %i.zs, %i.yx
  br i1 %i.zt, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.bw
  %i.zu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit591: ; preds = %bb.bx
  %i.zv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit593: ; preds = %bb.by
  %i.zw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i104, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit591, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit593, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.ca
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.ca ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.zw, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit593 ], [ %i.zv, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit591 ], [ %i.zu, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i104 ]
  %.not3.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.vg
  br i1 %.not3.i.i, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.thread.i.i, label %bb.cd

_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !170
  %i.zz = add i64 %i.zy, %.219.i.i
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.thread.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i
  %.3.i.i = phi i64 [ %i.zz, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.thread.i.i ], [ %.219.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_9GCOVBlockELj1EEEPS2_EEbOT_RKT0_.exit.i.i ] ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.08118.i.i, i64 8 ; 2 uses
  %.not90.i.i = icmp eq ptr %i.aaa, %i.yv
  br i1 %.not90.i.i, label %.loopexit5.i.i, label %.lr.ph.i.i

.loopexit5.i.i:                                   ; preds = %bb.cd, %.lr.ph23.i.i.prol.loopexit, %.lr.ph23.i.i, %bb.bv, %bb.bu
  %.4.i.i = phi i64 [ %i.yo, %.lr.ph23.i.i ], [ %.07830.i.i, %bb.bu ], [ %.07830.i.i, %bb.bv ], [ %.lcssa.unr, %.lr.ph23.i.i.prol.loopexit ], [ %.3.i.i, %bb.cd ] ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.wk, i64 48
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !77 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.wk, i64 56
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !78 ; 2 uses
  %i.aaf = zext i32 %i.aae to i64
  %.idx56.i.i = shl nuw nsw i64 %i.aaf, 3         ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 %.idx56.i.i
  %.not9225.i.i = icmp eq i32 %i.aae, 0
  br i1 %.not9225.i.i, label %._crit_edge.i.i, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %.loopexit5.i.i
  %i.aah = add nsw i64 %.idx56.i.i, -8            ; 2 uses
  %i.aai = lshr exact i64 %i.aah, 3
  %i.aaj = add nuw nsw i64 %i.aai, 1
  %xtraiter657 = and i64 %i.aaj, 7                ; 2 uses
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  br i1 %lcmp.mod658.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol

.lr.ph27.i.i.prol:                                ; preds = %.lr.ph27.i.i.preheader, %.lr.ph27.i.i.prol
  %.08026.i.i.prol = phi ptr [ %i.aao, %.lr.ph27.i.i.prol ], [ %i.aac, %.lr.ph27.i.i.preheader ] ; 2 uses
  %prol.iter659 = phi i64 [ %prol.iter659.next, %.lr.ph27.i.i.prol ], [ 0, %.lr.ph27.i.i.preheader ]
  %i.aak = load ptr, ptr %.08026.i.i.prol, align 8, !tbaa !118 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !170
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  store i64 %i.aam, ptr %i.aan, align 8, !tbaa !187
  %i.aao = getelementptr inbounds nuw i8, ptr %.08026.i.i.prol, i64 8 ; 2 uses
  %prol.iter659.next = add i64 %prol.iter659, 1   ; 2 uses
  %prol.iter659.cmp.not = icmp eq i64 %prol.iter659.next, %xtraiter657
  br i1 %prol.iter659.cmp.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol, !llvm.loop !354

.lr.ph27.i.i.prol.loopexit:                       ; preds = %.lr.ph27.i.i.prol, %.lr.ph27.i.i.preheader
  %.08026.i.i.unr = phi ptr [ %i.aac, %.lr.ph27.i.i.preheader ], [ %i.aao, %.lr.ph27.i.i.prol ]
  %i.aap = icmp ult i64 %i.aah, 56
  br i1 %i.aap, label %._crit_edge.i.i, label %.lr.ph27.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i, %.loopexit5.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %.08329.i.i, i64 8 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.aaq, %i.vg
  br i1 %.not.i.i105, label %._crit_edge33.i.i, label %bb.bt

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i
  %.08026.i.i = phi ptr [ %i.ace, %.lr.ph27.i.i ], [ %.08026.i.i.unr, %.lr.ph27.i.i.prol.loopexit ] ; 9 uses
  %i.aar = load ptr, ptr %.08026.i.i, align 8, !tbaa !118 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !170
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 32
  store i64 %i.aat, ptr %i.aau, align 8, !tbaa !187
  %i.aav = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !118 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 24
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !170
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32
  store i64 %i.aay, ptr %i.aaz, align 8, !tbaa !187
  %i.aba = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !118 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !170
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 32
  store i64 %i.abd, ptr %i.abe, align 8, !tbaa !187
  %i.abf = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !118 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abi = load i64, ptr %i.abh, align 8, !tbaa !170
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 32
  store i64 %i.abi, ptr %i.abj, align 8, !tbaa !187
  %i.abk = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 32
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !118 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 24
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !170
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 32
  store i64 %i.abn, ptr %i.abo, align 8, !tbaa !187
  %i.abp = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 40
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !118 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 24
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !170
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  store i64 %i.abs, ptr %i.abt, align 8, !tbaa !187
  %i.abu = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 48
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !118 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 24
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !170
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  store i64 %i.abx, ptr %i.aby, align 8, !tbaa !187
  %i.abz = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 56
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !118 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !170
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 32
  store i64 %i.acc, ptr %i.acd, align 8, !tbaa !187
  %i.ace = getelementptr inbounds nuw i8, ptr %.08026.i.i, i64 64 ; 2 uses
  %.not92.i.i.7 = icmp eq ptr %i.ace, %i.aag
  br i1 %.not92.i.i.7, label %._crit_edge.i.i, label %.lr.ph27.i.i

bb.ce:                                            ; preds = %_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i
  %i.acf = add i64 %i.vb, 1                       ; 3 uses
  store i64 %i.acf, ptr %i.ha, align 8, !tbaa !220
  %.not84.i.i = icmp eq i64 %i.wf, 0
  br i1 %.not84.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.acg = add i64 %i.va, 1                       ; 2 uses
  store i64 %i.acg, ptr %i.hc, align 8, !tbaa !221
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i
  %i.ach = phi i64 [ %i.acg, %bb.cf ], [ %i.va, %bb.ce ], [ %i.va, %_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i ]
  %i.aci = phi i64 [ %i.acf, %bb.cf ], [ %i.acf, %bb.ce ], [ %i.vb, %_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE.exit.i.i ]
  %i.acj = load ptr, ptr %0, align 8, !tbaa !213, !nonnull !172, !align !173 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 1
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !222, !range !175, !noundef !172
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %bb.ch, label %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.acn = load ptr, ptr %.sroa.01.021.i, align 8, !tbaa !77 ; 2 uses
  %i.aco = load i32, ptr %i.vd, align 8, !tbaa !78 ; 2 uses
  %i.acp = zext i32 %i.aco to i64
  %.idx57.i.i = shl nuw nsw i64 %i.acp, 3
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 %.idx57.i.i
  %.not8550.i.i = icmp eq i32 %i.aco, 0
  br i1 %.not8550.i.i, label %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i, label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %bb.ch
  %.not88.not.i.i = icmp eq i64 %i.wf, 0
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge46.thread.i.i, %.lr.ph53.i.i
  %55 = phi i64 [ %.lcssa337345, %.lr.ph53.i.i ], [ %58, %._crit_edge46.thread.i.i ] ; 3 uses
  %56 = phi i64 [ %.lcssa335342, %.lr.ph53.i.i ], [ %59, %._crit_edge46.thread.i.i ] ; 3 uses
  %57 = phi i64 [ %.lcssa333340, %.lr.ph53.i.i ], [ %60, %._crit_edge46.thread.i.i ] ; 3 uses
  %i.acr = phi i64 [ %.lcssa330340, %.lr.ph53.i.i ], [ %i.ael, %._crit_edge46.thread.i.i ] ; 4 uses
  %i.acs = phi i64 [ %.lcssa328337, %.lr.ph53.i.i ], [ %i.aem, %._crit_edge46.thread.i.i ] ; 4 uses
  %i.act = phi i64 [ %.lcssa326335, %.lr.ph53.i.i ], [ %i.aen, %._crit_edge46.thread.i.i ] ; 4 uses
  %.07751.i.i = phi ptr [ %i.acn, %.lr.ph53.i.i ], [ %i.aeo, %._crit_edge46.thread.i.i ] ; 2 uses
  %i.acu = load ptr, ptr %.07751.i.i, align 8, !tbaa !109 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 136
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !105
  %i.acx = zext i32 %i.acw to i64
  %.not86.i.i = icmp eq i64 %.022.i, %i.acx
  br i1 %.not86.i.i, label %bb.cj, label %._crit_edge46.thread.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acu, i64 48
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !77 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acu, i64 56
  %i.adb = load i32, ptr %i.ada, align 8, !tbaa !78 ; 3 uses
  %i.adc = zext i32 %i.adb to i64                 ; 3 uses
  %.not8739.i.i = icmp eq i32 %i.adb, 0
  br i1 %.not8739.i.i, label %._crit_edge46.thread.i.i, label %.lr.ph45.i.i.preheader

.lr.ph45.i.i.preheader:                           ; preds = %bb.cj
  %i.add = add nuw nsw i64 %i.adc, 2305843009213693951
  %i.ade = and i64 %i.add, 2305843009213693951    ; 2 uses
  %i.adf = add nuw nsw i64 %i.ade, 1              ; 2 uses
  %xtraiter660 = and i64 %i.adf, 3                ; 3 uses
  %i.adg = icmp samesign ult i64 %i.ade, 3
  br i1 %i.adg, label %.lr.ph45.i.i.epil.preheader, label %.lr.ph45.i.i.preheader.new

.lr.ph45.i.i.preheader.new:                       ; preds = %.lr.ph45.i.i.preheader
  %unroll_iter = and i64 %i.adf, 4611686018427387900
  br label %.lr.ph45.i.i

._crit_edge46.i.i.unr-lcssa:                      ; preds = %.lr.ph45.i.i
  %lcmp.mod661.not = icmp eq i64 %xtraiter660, 0
  br i1 %lcmp.mod661.not, label %._crit_edge46.i.i, label %.lr.ph45.i.i.epil.preheader

.lr.ph45.i.i.epil.preheader:                      ; preds = %._crit_edge46.i.i.unr-lcssa, %.lr.ph45.i.i.preheader
  %.043.i.i.epil.init = phi ptr [ %i.acz, %.lr.ph45.i.i.preheader ], [ %i.aef, %._crit_edge46.i.i.unr-lcssa ]
  %.07342.i.i.epil.init = phi i32 [ 0, %.lr.ph45.i.i.preheader ], [ %.1.i.i.3, %._crit_edge46.i.i.unr-lcssa ]
  %lcmp.mod663 = icmp ne i64 %xtraiter660, 0
  call void @llvm.assume(i1 %lcmp.mod663)
  br label %.lr.ph45.i.i.epil

.lr.ph45.i.i.epil:                                ; preds = %.lr.ph45.i.i.epil, %.lr.ph45.i.i.epil.preheader
  %.043.i.i.epil = phi ptr [ %i.adl, %.lr.ph45.i.i.epil ], [ %.043.i.i.epil.init, %.lr.ph45.i.i.epil.preheader ] ; 2 uses
  %.07342.i.i.epil = phi i32 [ %.1.i.i.epil, %.lr.ph45.i.i.epil ], [ %.07342.i.i.epil.init, %.lr.ph45.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph45.i.i.epil ], [ 0, %.lr.ph45.i.i.epil.preheader ]
  %i.adh = load ptr, ptr %.043.i.i.epil, align 8, !tbaa !118
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !170
  %.not89.i.i.epil = icmp ne i64 %i.adj, 0
  %i.adk = zext i1 %.not89.i.i.epil to i32
  %.1.i.i.epil = add nuw nsw i32 %.07342.i.i.epil, %i.adk ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.043.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter660
  br i1 %epil.iter.cmp.not, label %._crit_edge46.i.i, label %.lr.ph45.i.i.epil, !llvm.loop !355

._crit_edge46.i.i:                                ; preds = %.lr.ph45.i.i.epil, %._crit_edge46.i.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.3, %._crit_edge46.i.i.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph45.i.i.epil ]
  %.not96.i.i = icmp eq i32 %i.adb, 1
  br i1 %.not96.i.i, label %._crit_edge46.thread.i.i, label %bb.ck

.lr.ph45.i.i:                                     ; preds = %.lr.ph45.i.i, %.lr.ph45.i.i.preheader.new
  %.043.i.i = phi ptr [ %i.acz, %.lr.ph45.i.i.preheader.new ], [ %i.aef, %.lr.ph45.i.i ] ; 5 uses
  %.07342.i.i = phi i32 [ 0, %.lr.ph45.i.i.preheader.new ], [ %.1.i.i.3, %.lr.ph45.i.i ]
  %niter = phi i64 [ 0, %.lr.ph45.i.i.preheader.new ], [ %niter.next.3, %.lr.ph45.i.i ]
  %i.adm = load ptr, ptr %.043.i.i, align 8, !tbaa !118
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 24
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !170
  %.not89.i.i = icmp ne i64 %i.ado, 0
  %i.adp = zext i1 %.not89.i.i to i32
  %.1.i.i = add nuw nsw i32 %.07342.i.i, %i.adp
  %i.adq = getelementptr inbounds nuw i8, ptr %.043.i.i, i64 8
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !118
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 24
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !170
  %.not89.i.i.1 = icmp ne i64 %i.adt, 0
  %i.adu = zext i1 %.not89.i.i.1 to i32
  %.1.i.i.1 = add nuw nsw i32 %.1.i.i, %i.adu
  %i.adv = getelementptr inbounds nuw i8, ptr %.043.i.i, i64 16
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !118
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 24
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !170
  %.not89.i.i.2 = icmp ne i64 %i.ady, 0
  %i.adz = zext i1 %.not89.i.i.2 to i32
  %.1.i.i.2 = add nuw nsw i32 %.1.i.i.1, %i.adz
  %i.aea = getelementptr inbounds nuw i8, ptr %.043.i.i, i64 24
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !118
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 24
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !170
  %.not89.i.i.3 = icmp ne i64 %i.aed, 0
  %i.aee = zext i1 %.not89.i.i.3 to i32
  %.1.i.i.3 = add nuw nsw i32 %.1.i.i.2, %i.aee   ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.043.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge46.i.i.unr-lcssa, label %.lr.ph45.i.i

bb.ck:                                            ; preds = %._crit_edge46.i.i
  %i.aeg = zext nneg i32 %.1.i.i.lcssa to i64
  %i.aeh = select i1 %.not88.not.i.i, i64 0, i64 %i.adc
  %i.aei = add i64 %i.act, %i.adc                 ; 2 uses
  %i.aej = add i64 %i.aeh, %i.acs                 ; 2 uses
  %i.aek = add i64 %i.acr, %i.aeg                 ; 2 uses
  br label %._crit_edge46.thread.i.i

._crit_edge46.thread.i.i:                         ; preds = %bb.ck, %._crit_edge46.i.i, %bb.cj, %bb.ci
  %58 = phi i64 [ %i.aek, %bb.ck ], [ %55, %._crit_edge46.i.i ], [ %55, %bb.cj ], [ %55, %bb.ci ] ; 3 uses
  %59 = phi i64 [ %i.aej, %bb.ck ], [ %56, %._crit_edge46.i.i ], [ %56, %bb.cj ], [ %56, %bb.ci ] ; 3 uses
  %60 = phi i64 [ %i.aei, %bb.ck ], [ %57, %._crit_edge46.i.i ], [ %57, %bb.cj ], [ %57, %bb.ci ] ; 3 uses
  %i.ael = phi i64 [ %i.aek, %bb.ck ], [ %i.acr, %._crit_edge46.i.i ], [ %i.acr, %bb.cj ], [ %i.acr, %bb.ci ] ; 2 uses
  %i.aem = phi i64 [ %i.aej, %bb.ck ], [ %i.acs, %._crit_edge46.i.i ], [ %i.acs, %bb.cj ], [ %i.acs, %bb.ci ] ; 2 uses
  %i.aen = phi i64 [ %i.aei, %bb.ck ], [ %i.act, %._crit_edge46.i.i ], [ %i.act, %bb.cj ], [ %i.act, %bb.ci ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.07751.i.i, i64 8 ; 2 uses
  %.not85.i.i = icmp eq ptr %i.aeo, %i.acq
  br i1 %.not85.i.i, label %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit, label %bb.ci

_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit: ; preds = %._crit_edge46.thread.i.i
  store i64 %60, ptr %i.hd, align 8
  store i64 %59, ptr %i.he, align 8
  store i64 %58, ptr %i.hf, align 8
  br label %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i

_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i: ; preds = %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit, %bb.ch, %bb.cg
  %.lcssa337344 = phi i64 [ %.lcssa337345, %bb.cg ], [ %.lcssa337345, %bb.ch ], [ %58, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit ]
  %.lcssa335341 = phi i64 [ %.lcssa335342, %bb.cg ], [ %.lcssa335342, %bb.ch ], [ %59, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit ]
  %.lcssa333339 = phi i64 [ %.lcssa333340, %bb.cg ], [ %.lcssa333340, %bb.ch ], [ %60, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit ]
  %.lcssa330339 = phi i64 [ %.lcssa330340, %bb.cg ], [ %.lcssa330340, %bb.ch ], [ %i.ael, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit ]
  %.lcssa328336 = phi i64 [ %.lcssa328337, %bb.cg ], [ %.lcssa328337, %bb.ch ], [ %i.aem, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit ]
  %.lcssa326334 = phi i64 [ %.lcssa326335, %bb.cg ], [ %.lcssa326335, %bb.ch ], [ %i.aen, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i.loopexit ]
  %i.aep = add i64 %.022.i, 1
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.01.021.i, i64 40 ; 2 uses
  %.not.i108 = icmp eq ptr %i.aeq, %.val77
  br i1 %.not.i108, label %_ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit, label %.lr.ph.i102

_ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit: ; preds = %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i, %._ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit_crit_edge
  %i.aer = phi ptr [ %.pre377, %._ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit_crit_edge ], [ %i.acj, %_ZNK12_GLOBAL__N_17Context17collectSourceLineERNS_10SourceInfoEPNS_7SummaryERNS_8LineInfoEm.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  %.sroa.011.0.copyload = load ptr, ptr %.sroa.0253.0342, align 8, !tbaa !87 ; 8 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0253.0342, i64 8 ; 2 uses
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !88 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 9
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !427, !range !175, !noalias !426, !noundef !172
  %i.aeu = trunc nuw i8 %i.aet to i1
  store ptr %i.hg, ptr %38, align 8, !tbaa !136, !alias.scope !426
  br i1 %i.aeu, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %_ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit
  %i.aev = icmp eq ptr %.sroa.011.0.copyload, null
  %i.aew = icmp ne i64 %.sroa.212.0.copyload, 0
  %or.cond.i.i.i.i114 = and i1 %i.aev, %i.aew
  br i1 %or.cond.i.i.i.i114, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #25
  unreachable

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !426
  store i64 %.sroa.212.0.copyload, ptr %i.d, align 8, !tbaa !88, !noalias !426
  %i.aex = icmp ugt i64 %.sroa.212.0.copyload, 15
  br i1 %i.aex, label %bb.co, label %._crit_edge.i.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.aey = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #22 ; 2 uses
  store ptr %i.aey, ptr %38, align 8, !tbaa !138, !alias.scope !426
  %i.aez = load i64, ptr %i.d, align 8, !tbaa !88, !noalias !426
  store i64 %i.aez, ptr %i.hg, align 8, !tbaa !134, !alias.scope !426
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.co, %bb.cn
  %i.afa = phi ptr [ %i.aey, %bb.co ], [ %i.hg, %bb.cn ] ; 2 uses
  switch i64 %.sroa.212.0.copyload, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.afb = load i8, ptr %.sroa.011.0.copyload, align 1, !tbaa !134, !noalias !426
  store i8 %i.afb, ptr %i.afa, align 1, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afa, ptr align 1 %.sroa.011.0.copyload, i64 %.sroa.212.0.copyload, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i: ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i.i.i
  %i.afc = load i64, ptr %i.d, align 8, !tbaa !88, !noalias !426 ; 2 uses
  store i64 %i.afc, ptr %i.hh, align 8, !tbaa !139, !alias.scope !426
  %i.afd = load ptr, ptr %38, align 8, !tbaa !138, !alias.scope !426
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.afc
  store i8 0, ptr %i.afe, align 1, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !426
  br label %_ZNK12_GLOBAL__N_17Context15getCoveragePathB5cxx11EN4llvm9StringRefES2_.exit

bb.cr:                                            ; preds = %_ZNK12_GLOBAL__N_17Context13collectSourceERNS_10SourceInfoERNS_7SummaryE.exit
  store i64 0, ptr %i.hh, align 8, !tbaa !139, !alias.scope !426
  store i8 0, ptr %i.hg, align 8, !tbaa !134, !alias.scope !426
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aer, i64 7
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !428, !range !175, !noundef !172
  %i.afh = trunc nuw i8 %i.afg to i1
  br i1 %i.afh, label %bb.cs, label %_ZN4llvmneENS_9StringRefES0_.exit.thread42.i

bb.cs:                                            ; preds = %bb.cr
  %.not.i.i.i110 = icmp eq i64 %.sroa.212.0.copyload, %2
  br i1 %.not.i.i.i110, label %bb.ct, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.i

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.ix, label %_ZN4llvmneENS_9StringRefES0_.exit.thread42.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i

_ZN4llvmneENS_9StringRefES0_.exit.i:              ; preds = %bb.ct
  %bcmp.i.i.i = call i32 @bcmp(ptr %.sroa.011.0.copyload, ptr %1, i64 %2), !noalias !426
  %.not.i113 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i113, label %_ZN4llvmneENS_9StringRefES0_.exit.thread42.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread.i

_ZN4llvmneENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22, !noalias !426
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  %i.afj = load i8, ptr %i.afi, align 4, !tbaa !429, !range !175, !noundef !172
  %i.afk = trunc nuw i8 %i.afj to i1
  call fastcc void @_ZL18mangleCoveragePathB5cxx11N4llvm9StringRefEb(ptr dead_on_unwind noalias writable align 8 %22, ptr %1, i64 %2, i1 noundef zeroext %i.afk)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.afl = load i64, ptr %i.hi, align 8, !tbaa !139, !noalias !431
  %i.afm = and i64 %i.afl, -2
  %i.afn = icmp eq i64 %i.afm, 4611686018427387902
  br i1 %i.afn, label %bb.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.cu:                                            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #25, !noalias !430
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread.i
  %i.afo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.43, i64 noundef 2) #22, !noalias !430 ; 6 uses
  store ptr %i.hj, ptr %21, align 8, !tbaa !136, !alias.scope !430, !noalias !426
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !138 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 16 ; 5 uses
  %i.afr = icmp eq ptr %i.afp, %i.afq
  br i1 %i.afr, label %bb.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.aft = load i64, ptr %i.afs, align 8, !tbaa !139 ; 3 uses
  %i.afu = icmp ult i64 %i.aft, 16
  call void @llvm.assume(i1 %i.afu)
  %i.afv = add nuw nsw i64 %i.aft, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hj, ptr noundef nonnull align 8 dereferenceable(1) %i.afq, i64 %i.afv, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.afp, ptr %21, align 8, !tbaa !138, !alias.scope !430, !noalias !426
  %i.afw = load i64, ptr %i.afq, align 8, !tbaa !134
  store i64 %i.afw, ptr %i.hj, align 8, !tbaa !134, !alias.scope !430, !noalias !426
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !139
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cv
  %i.afx = phi i64 [ %i.aft, %bb.cv ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  store i64 %i.afx, ptr %i.hk, align 8, !tbaa !139, !alias.scope !430, !noalias !426
  store ptr %i.afq, ptr %i.afo, align 8, !tbaa !138
  store i64 0, ptr %i.afy, align 8, !tbaa !139
  store i8 0, ptr %i.afq, align 8, !tbaa !134
  %i.afz = load ptr, ptr %38, align 8, !tbaa !138, !alias.scope !426 ; 6 uses
  %i.aga = icmp eq ptr %i.afz, %i.hg
  %i.agb = load ptr, ptr %21, align 8, !tbaa !138, !noalias !426 ; 5 uses
  %i.agc = icmp eq ptr %i.agb, %i.hj              ; 2 uses
  br i1 %i.aga, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.agc, label %bb.cw, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  br i1 %i.agc, label %bb.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.agd = load i64, ptr %i.hk, align 8, !tbaa !139, !noalias !426 ; 3 uses
  %i.age = icmp ult i64 %i.agd, 16
  call void @llvm.assume(i1 %i.age)
  switch i64 %i.agd, label %bb.cy [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.agf = load i8, ptr %i.agb, align 1, !tbaa !134
  store i8 %i.agf, ptr %i.afz, align 1, !tbaa !134
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afz, ptr align 1 %i.agb, i64 %i.agd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.agg = load i64, ptr %i.hk, align 8, !tbaa !139, !noalias !426 ; 2 uses
  store i64 %i.agg, ptr %i.hh, align 8, !tbaa !139, !alias.scope !426
  %i.agh = load ptr, ptr %38, align 8, !tbaa !138, !alias.scope !426
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.agg
  store i8 0, ptr %i.agi, align 1, !tbaa !134
  %.pre.i10.i = load ptr, ptr %21, align 8, !tbaa !138, !noalias !426
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.agb, ptr %38, align 8, !tbaa !138, !alias.scope !426
  %i.agj = load <2 x i64>, ptr %i.hk, align 8, !tbaa !134, !noalias !426
  store <2 x i64> %i.agj, ptr %i.hh, align 8, !tbaa !134, !alias.scope !426
  br label %bb.da

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.agk = load i64, ptr %i.hg, align 8, !tbaa !134, !alias.scope !426
  store ptr %i.agb, ptr %38, align 8, !tbaa !138, !alias.scope !426
  %i.agl = load <2 x i64>, ptr %i.hk, align 8, !tbaa !134, !noalias !426
  store <2 x i64> %i.agl, ptr %i.hh, align 8, !tbaa !134, !alias.scope !426
  %.not.i.i111 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i111, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.afz, ptr %21, align 8, !tbaa !138, !noalias !426
  store i64 %i.agk, ptr %i.hj, align 8, !tbaa !134, !noalias !426
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.hj, ptr %21, align 8, !tbaa !138, !noalias !426
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.da, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.agm = phi ptr [ %i.afz, %bb.cz ], [ %i.hj, %bb.da ], [ %.pre.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.hk, align 8, !tbaa !139, !noalias !426
end_hunk_1
