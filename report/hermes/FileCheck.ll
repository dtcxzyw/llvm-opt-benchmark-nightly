Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/FileCheck?download=true
inline.NumInlined: 1998
inline.NumDeleted: 843
begin_hunk_0_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit164

_ZN4llvh11raw_ostreamlsEPKc.exit164:              ; preds = %bb.az, %bb.ba
  %.0.i.i163 = phi ptr [ %i.vb, %bb.az ], [ %i.us, %bb.ba ]
  %i.ve = load ptr, ptr %.sroa.0186.1321, align 8, !tbaa !58
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0186.1321, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !56
  %i.vh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i163, ptr noundef %i.ve, i64 noundef %i.vg) #18 ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !90
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 24 ; 3 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !91 ; 2 uses
  %i.vm = ptrtoint ptr %i.vj to i64
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = sub i64 %i.vm, %i.vn
  %i.vp = icmp ult i64 %i.vo, 2
  br i1 %i.vp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit164
  %i.vq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.vh, ptr noundef nonnull @.str.1, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit167

bb.bc:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit164
  store i16 10042, ptr %i.vl, align 1
  %i.vr = load ptr, ptr %i.vk, align 8, !tbaa !91
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  store ptr %i.vs, ptr %i.vk, align 8, !tbaa !91
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit167

_ZN4llvh11raw_ostreamlsEPKc.exit167:              ; preds = %bb.bb, %bb.bc
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.0186.1321, i64 32 ; 2 uses
  %.not313 = icmp eq ptr %i.vt, %i.ts
  br i1 %.not313, label %._crit_edge323, label %.lr.ph, !llvm.loop !263

._crit_edge323:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit167, %bb.ay
  %i.vu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 24 ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !91 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !90
  %.not.i168 = icmp ult ptr %i.vw, %i.vy
  br i1 %.not.i168, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge323
  %i.vz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.vu, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.be:                                            ; preds = %._crit_edge323
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  store ptr %i.wa, ptr %i.vv, align 8, !tbaa !91
  store i8 10, ptr %i.vw, align 1, !tbaa !49
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140, %bb.be, %bb.bd, %.thread309, %bb.an
  %.4 = phi i1 [ true, %bb.be ], [ true, %.thread309 ], [ false, %bb.an ], [ true, %bb.bd ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i140 ]
  %i.wb = load ptr, ptr %17, align 8, !tbaa !102  ; 3 uses
  %i.wc = load ptr, ptr %i.bb, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wb, %i.wc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.wt, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i ], [ %i.wb, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 7 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.we = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !61
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.wd, ptr noundef %i.wf)
  %i.wg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.wi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !69
  %i.wk = ptrtoint ptr %i.wj to i64
  %i.wl = ptrtoint ptr %i.wh to i64
  %i.wm = sub i64 %i.wk, %i.wl
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef %i.wm) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.wn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !58 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.wq = icmp eq ptr %i.wo, %i.wp
  br i1 %i.wq, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.wr = load i64, ptr %i.wp, align 8, !tbaa !49
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.ws) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.wt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.wt, %i.wc
  br i1 %.not.i.i.i170, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, %_ZN4llvh11raw_ostreamlsEc.exit
  %i.wu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i ], [ %i.wb, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i
  %i.wv = load ptr, ptr %i.ba, align 8, !tbaa !104
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wu to i64
  %i.wy = sub i64 %i.ww, %i.wx
  call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.wy) #21
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.wz = load ptr, ptr %9, align 8, !tbaa !102   ; 3 uses
  %i.xa = load ptr, ptr %i.bc, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i171 = icmp eq ptr %i.wz, %i.xa
  br i1 %.not4.i.i.i171, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181, label %.lr.ph.i.i.i172

.lr.ph.i.i.i172:                                  ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177
  %.05.i.i.i173 = phi ptr [ %i.xr, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177 ], [ %i.wz, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit ] ; 7 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 80
  %i.xc = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 96
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !61
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.xb, ptr noundef %i.xd)
  %i.xe = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 56
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i174 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i.i.i.i.i.i174, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i172
  %i.xg = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 72
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !69
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175: ; preds = %bb.bh, %.lr.ph.i.i.i172
  %i.xl = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 24
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !58 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 40 ; 2 uses
  %i.xo = icmp eq ptr %i.xm, %i.xn
  br i1 %i.xo, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i176: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175
  %i.xp = load i64, ptr %i.xn, align 8, !tbaa !49
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xq) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i176
  %i.xr = getelementptr inbounds nuw i8, ptr %.05.i.i.i173, i64 136 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %i.xr, %i.xa
  br i1 %.not.i.i.i178, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179, label %.lr.ph.i.i.i172, !llvm.loop !2

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i177
  %.pr.i180 = load ptr, ptr %9, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit
  %i.xs = phi ptr [ %.pr.i180, %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i179 ], [ %i.wz, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i182 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i1.i182, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit184, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181
  %i.xt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !104
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xs to i64
  %i.xx = sub i64 %i.xv, %i.xw
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.xx) #21
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit184

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit184: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i181, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret i1 %.4
}

declare void @_ZN4llvh12MemoryBuffer16getMemBufferCopyENS_9StringRefERKNS_5TwineE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !102    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 136
  %i.o = icmp ugt i64 %i.n, 67818912035696880
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i, !prof !103

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.04.08.i.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 136
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE11_M_allocateEm.exit.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !102    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.al, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i ], [ %i.s, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
  tail call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.al, %i.u
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.am = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split ], [ %i.s, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #21
  br label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !104
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !101
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.k                     ; 2 uses
  %.not24 = icmp ult i64 %i.av, %i.f
  br i1 %.not24, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN4llvh16FileCheckPatternEPS4_EET0_T_S9_S8_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.i) ; 2 uses
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i26 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not4.i.i26, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i27.preheader

.lr.ph.i.i27.preheader:                           ; preds = %bb.h
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ay, %i.k
  %i.ba = getelementptr inbounds i8, ptr %i.i, i64 %i.az
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.preheader, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i31
  %.sroa.01.05.i.i = phi ptr [ %i.br, %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i31 ], [ %i.ba, %.lr.ph.i.i27.preheader ] ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !61
  tail call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i29, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i27
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !69
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i29

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i29: ; preds = %bb.i, %.lr.ph.i.i27
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i29
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !49
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i31

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i31: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 136 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.br, %i.ax
  br i1 %.not.i.i32, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i27, !llvm.loop !283

bb.j:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.bt = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN4llvh16FileCheckPatternES5_EET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %i.bs, ptr noundef %i.i) ; 0 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !102
  %i.bv = load ptr, ptr %i.as, align 8, !tbaa !101 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !102
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %i.bv, %bb.j ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.j ] ; 2 uses
  tail call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.0810.i.i.i.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 136 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 136
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !284

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i31, %.lr.ph.i.i.i.i, %bb.j, %bb.h, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ce = load ptr, ptr %0, align 8, !tbaa !102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.f
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !101
  br label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4llvh16FileCheckPatternESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK4llvh15FileCheckString5CheckERKNS_9SourceMgrENS_9StringRefEbRmRNS_9StringMapIS4_NS_15MallocAllocatorEEERNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, i1 noundef zeroext %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(86) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.std::vector.54", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call noundef i64 @_ZNK4llvh15FileCheckString8CheckDagERKNS_9SourceMgrENS_9StringRefERSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(86) %7) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.048 = phi i64 [ 0, %bb.a ], [ %i.a, %bb.b ]   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %.048) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated ; 6 uses
  %i.d = sub i64 %3, %.sroa.speculated            ; 4 uses
  %i.e = tail call noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %i.c, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(25) %6) ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 85
  %i.h = load i8, ptr %i.g, align 1, !tbaa !120, !range !22, !noundef !23
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.01.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !48
  store ptr %i.c, ptr %8, align 8, !tbaa !48
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !50
  tail call fastcc void @_ZL12PrintNoMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEb(i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %6, i1 noundef zeroext %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
end_hunk_0
begin_hunk_1_@_ZN4llvh15FileCheckStringD2Ev:bb.a
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #21
  br label %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh16FileCheckPatternEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i, %bb.a
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh16FileCheckPatternEEvT_S3_.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61
  tail call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvh16FileCheckPatternD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !49
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #21
  br label %_ZN4llvh16FileCheckPatternD2Ev.exit

_ZN4llvh16FileCheckPatternD2Ev.exit:              ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN4llvh16FileCheckPatternEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<llvh::StringRef, std::pair<const llvh::StringRef, unsigned int>, std::_Select1st<std::pair<const llvh::StringRef, unsigned int>>, std::less<llvh::StringRef>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 136
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvh16FileCheckPatternaSERKS0_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.am, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ]
  ret ptr %.08.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh16FileCheckPatternaSERKS0_.exit
  %.012 = phi i64 [ %i.e, %.lr.ph ], [ %i.an, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 2 uses
  %.0811 = phi ptr [ %2, %.lr.ph ], [ %i.am, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 12 uses
  %.0910 = phi ptr [ %0, %.lr.ph ], [ %i.al, %_ZN4llvh16FileCheckPatternaSERKS0_.exit ] ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.0811, ptr noundef nonnull align 8 dereferenceable(136) %.0910, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.0910, i64 24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %.0811, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %.0910, i64 56
  %i.l = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0811, i64 80 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0811, %.0910
  br i1 %.not.i.i.i, label %_ZN4llvh16FileCheckPatternaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %.0811, i64 96 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 4 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %.0811, i64 112 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !141
  store ptr %i.m, ptr %i.g, align 8, !tbaa !136
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ null, %bb.c ]
  store ptr %.sink.i.i.i.i, ptr %i.f, align 8, !tbaa !141
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0811, i64 88 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %.0811, i64 104 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !83
  store ptr %i.u, ptr %i.p, align 8, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %.0811, i64 120 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %.0910, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i
  %i.z = call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull %i.y, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.f, !llvm.loop !5

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.f
  store ptr %.0.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !62
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.z, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !131 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i, label %bb.g, !llvm.loop !6

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i: ; preds = %bb.g
  store ptr %.0.i.i7.i.i.i.i, ptr %i.p, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !113
  store i64 %i.af, ptr %i.w, align 8, !tbaa !113
  store ptr %i.z, ptr %i.n, align 8, !tbaa !62
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !142
  %.pre6.i.i.i = load ptr, ptr %3, align 8, !tbaa !140
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i
  %i.ag = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i ], [ %i.o, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i ]
  %i.ah = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_.exit.i.i.i ], [ %i.m, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_nodeC2ERSA_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN4llvh16FileCheckPatternaSERKS0_.exit

_ZN4llvh16FileCheckPatternaSERKS0_.exit:          ; preds = %bb.b, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910, i64 128
  %i.ak = load i64, ptr %i.aj, align 8
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0910, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 136 ; 2 uses
  %i.an = add nsw i64 %.012, -1
  %i.ao = icmp sgt i64 %.012, 1
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !412
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !70     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE11_M_allocateEm.exit.i, !prof !103

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !70       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #21
  br label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !69
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ae = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.0910.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !57
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ak = add nsw i64 %.012.i.i.i.i.i, -1
  %i.al = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, !llvm.loop !413

bb.h:                                             ; preds = %bb.f
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.an = udiv exact i64 %i.ac, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i27 ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.0811.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(20) %.0910.i.i.i.i.i30, i64 16, i1 false), !tbaa.struct !57
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.at = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !414

_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i27
  %.pre = load ptr, ptr %1, align 8, !tbaa !70
  %.pre34 = load ptr, ptr %i.z, align 8, !tbaa !68 ; 2 uses
  %.pre35 = load ptr, ptr %0, align 8, !tbaa !70
  %.pre36 = load ptr, ptr %i.a, align 8, !tbaa !68
  %.pre37 = ptrtoint ptr %.pre34 to i64
  %.pre38 = ptrtoint ptr %.pre35 to i64
  %.pre40 = sub i64 %.pre37, %.pre38
  br label %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit.loopexit, %bb.h
  %.pre-phi41 = phi i64 [ %.pre40, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.ac, %bb.h ]
  %i.av = phi ptr [ %.pre36, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %.pre34, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.aa, %bb.h ]
  %i.ax = phi ptr [ %.pre, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.h ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.pre-phi41 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ay, %i.av
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.ay, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !415

_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIPSt4pairIN4llvh9StringRefEjES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.bb = load ptr, ptr %0, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIN4llvh9StringRefEjES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !141
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !131
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !416

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8, !tbaa !141
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !132
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !140
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink12.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.r = load i32, ptr %1, align 8, !tbaa !137
  store i32 %i.r, ptr %.sink12.i.i, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 8
  store ptr %2, ptr %i.t, align 8, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !131  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit
  %i.w = tail call noundef ptr @_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.v, ptr noundef nonnull %.sink12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.x = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !131
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit
  %.0.in41 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.042 = load ptr, ptr %.0.in41, align 8, !tbaa !132 ; 2 uses
  %.not2843 = icmp eq ptr %.042, null
  br i1 %.not2843, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.q
  %.045 = phi ptr [ %.0, %bb.q ], [ %.042, %bb.i ] ; 4 uses
  %.02744 = phi ptr [ %.sink12.i.i32, %bb.q ], [ %.sink12.i.i, %bb.i ] ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !141  ; 7 uses
  %.not.i.i.i30 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !134 ; 5 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !141
  %.not9.i.i.i31 = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i.i31, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131
  %i.ad = icmp eq ptr %i.ac, %i.y
end_hunk_1
