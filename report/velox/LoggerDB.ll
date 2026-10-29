Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/LoggerDB?download=true
inline.NumInlined: 3346
inline.NumDeleted: 1627
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK5folly8LoggerDB13getConfigImplEb:bb.a
_ZN5folly9LockedPtrIKNS_12SynchronizedINS_8LoggerDB11HandlerInfoENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE2ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i156, %bb.bg, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i159, %.noexc160, %_ZNSt13unordered_mapISt10shared_ptrIN5folly10LogHandlerEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.bk:                                            ; preds = %bb.h
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.bl:                                            ; preds = %.lr.ph365, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit
  %.sroa.0236.0363 = phi ptr [ %.sroa.0236.0361, %.lr.ph365 ], [ %.sroa.0236.0, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit ] ; 2 uses
  %.0362 = phi i64 [ 1, %.lr.ph365 ], [ %.3508, %_ZNSt6vectorISt10shared_ptrIN5folly10LogHandlerEESaIS3_EED2Ev.exit ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0236.0363, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !2984 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load atomic i32, ptr %i.ji acquire, align 4 ; 3 uses
  %i.jk = and i32 %i.jj, 2147483647               ; 2 uses
  %.lobit.i = lshr i32 %i.jj, 31
  %.sroa.2.0.insert.ext.i = zext nneg i32 %.lobit.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.jk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  invoke void @_ZNK5folly11LogCategory11getHandlersEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.170") align 8 %12, ptr noundef nonnull align 8 dereferenceable(136) %i.jh)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.pre = load ptr, ptr %12, align 8, !tbaa !2988 ; 4 uses
  %.pre392 = load ptr, ptr %i.du, align 8, !tbaa !2988 ; 3 uses
  br i1 %2, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jl = icmp eq ptr %.pre, %.pre392
  %i.jm = icmp eq i64 %.sroa.0.0.insert.insert.i, 6442450943
  %or.cond6 = select i1 %i.jl, i1 %i.jm, i1 false
  br i1 %or.cond6, label %_ZSt8_DestroyIPSt10shared_ptrIN5folly10LogHandlerEES3_EvT_S5_RSaIT0_E.exit.i, label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.jo = icmp eq ptr %.pre, %.pre392
  br i1 %i.jo, label %._crit_edge360.thread, label %.lr.ph359

._crit_edge360.thread:                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  br label %.noexc93

._crit_edge360:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit122
  %.pre394 = load ptr, ptr %i.dw, align 8, !tbaa !2930 ; 3 uses
  %.pre395 = load ptr, ptr %13, align 8, !tbaa !2928 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.jp = ptrtoint ptr %.pre394 to i64
  %i.jq = ptrtoint ptr %.pre395 to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i90 = icmp eq ptr %.pre394, %.pre395
  br i1 %.not.i.i.i.i90, label %.noexc93, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge360
  %i.js = icmp ugt i64 %i.jr, 9223372036854775776
  br i1 %i.js, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !2966

.noexc.i.i:                                       ; preds = %bb.bq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc92 unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bq
  %i.jt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #29
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge unwind label %.loopexit.split-lp295.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre396 = load ptr, ptr %13, align 8, !tbaa !3021
  %.pre397 = load ptr, ptr %i.dw, align 8, !tbaa !3021
  br label %.noexc93

.noexc93:                                         ; preds = %._crit_edge360.thread, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge, %._crit_edge360
  %i.ju = phi i64 [ 0, %._crit_edge360 ], [ %i.jr, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge ], [ 0, %._crit_edge360.thread ]
  %.1.lcssa505 = phi i64 [ %.2, %._crit_edge360 ], [ %.2, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge ], [ %.0362, %._crit_edge360.thread ] ; 2 uses
  %i.jv = phi ptr [ %.pre394, %._crit_edge360 ], [ %.pre397, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge ], [ null, %._crit_edge360.thread ]
  %i.jw = phi ptr [ %.pre395, %._crit_edge360 ], [ %.pre396, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge ], [ null, %._crit_edge360.thread ]
  %i.jx = phi ptr [ null, %._crit_edge360 ], [ %i.jt, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc93_crit_edge ], [ null, %._crit_edge360.thread ] ; 4 uses
  store ptr %i.jx, ptr %17, align 8, !tbaa !2928
  store ptr %i.jx, ptr %i.eg, align 8, !tbaa !2930
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.ju
  store ptr %i.jy, ptr %i.eh, align 8, !tbaa !2929
  %i.jz = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.jw, ptr %i.jv, ptr noundef %i.jx)
          to label %bb.en unwind label %bb.br

bb.br:                                            ; preds = %.noexc93
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = load ptr, ptr %17, align 8, !tbaa !2928 ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i91, label %.body, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kc = load ptr, ptr %i.eh, align 8, !tbaa !2929
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kf) #30
  br label %.body

.lr.ph359:                                        ; preds = %bb.bp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit122
  %.sroa.0232.0357 = phi ptr [ %i.wm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit122 ], [ %.pre, %bb.bp ] ; 4 uses
  %.1356 = phi i64 [ %.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit122 ], [ %.0362, %bb.bp ] ; 3 uses
  %i.kg = load i64, ptr %i.dv, align 8, !tbaa !3222
  %.not.not.i.i = icmp eq i64 %i.kg, 0
  %i.kh = load ptr, ptr %.sroa.0232.0357, align 8 ; 4 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.bu

.preheader:                                       ; preds = %.lr.ph359, %bb.bt
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.bt ], [ %i.z, %.lr.ph359 ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !2915 ; 4 uses
  %i.ki = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.ki, label %.loopexit281, label %bb.bt

bb.bt:                                            ; preds = %.preheader
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !3053
  %i.kl = icmp eq ptr %i.kh, %i.kk
  br i1 %i.kl, label %_ZNSt13unordered_mapISt10shared_ptrIN5folly10LogHandlerEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSF_.exit, label %.preheader, !llvm.loop !3374

bb.bu:                                            ; preds = %.lr.ph359
  %i.km = ptrtoint ptr %i.kh to i64
  %i.kn = load i64, ptr %i.y, align 8, !tbaa !3050 ; 2 uses
  %i.ko = urem i64 %i.km, %i.kn                   ; 2 uses
  %i.kp = load ptr, ptr %7, align 8, !tbaa !3049
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ko
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !2942 ; 2 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i94, label %.loopexit281, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !2915 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !3053
  %i.kv = icmp eq ptr %i.kh, %i.ku
  br i1 %i.kv, label %_ZNSt13unordered_mapISt10shared_ptrIN5folly10LogHandlerEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSF_.exit, label %.lr.ph.i.i.i.i

bb.bw:                                            ; preds = %bb.bx
  %i.kw = icmp eq ptr %i.kh, %i.kz
  br i1 %i.kw, label %_ZNSt13unordered_mapISt10shared_ptrIN5folly10LogHandlerEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S9_EEE4findERSF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !127

.lr.ph.i.i.i.i:                                   ; preds = %bb.bv, %bb.bw
  %.020.i.i.i.i = phi ptr [ %i.kx, %bb.bw ], [ %i.ks, %bb.bv ]
  %i.kx = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !2915 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.kx, null
  br i1 %.not18.i.i.i.i, label %.loopexit281, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !3053 ; 2 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = urem i64 %i.la, %i.kn
  %.not19.i.i.i.i = icmp eq i64 %i.lb, %i.ko
  br i1 %.not19.i.i.i.i, label %bb.bw, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !127

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bx
  br label %.loopexit281, !llvm.loop !127

.loopexit281:                                     ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !3384)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.backedge, %.loopexit281
  %.4 = phi i64 [ %.1356, %.loopexit281 ], [ %i.rd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.backedge ] ; 36 uses
  store ptr %i.dy, ptr %14, align 8, !tbaa !2924, !alias.scope !3385
  store i64 0, ptr %i.dz, align 8, !tbaa !2925, !alias.scope !3385
  store i8 0, ptr %i.dy, align 8, !tbaa !2920, !alias.scope !3385
  %i.lc = load <8 x i64>, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8
  %i.ld = insertelement <8 x i64> poison, i64 %.4, i64 0
  %i.le = shufflevector <8 x i64> %i.ld, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.lf = icmp ult <8 x i64> %i.le, %i.lc
  %i.lg = load <4 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8
  %i.lh = insertelement <4 x i64> poison, i64 %.4, i64 0
  %i.li = shufflevector <4 x i64> %i.lh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.lj = icmp ult <4 x i64> %i.li, %i.lg
  %i.lk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8
  %i.ll = icmp ult i64 %.4, %i.lk
  %i.lm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8
  %i.ln = icmp ult i64 %.4, %i.lm
  %i.lo = freeze <8 x i1> %i.lf                   ; 2 uses
  %i.lp = freeze <4 x i1> %i.lj
  %i.lq = shufflevector <8 x i1> %i.lo, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.lq, %i.lp
  %i.lr = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ls = shufflevector <8 x i1> %i.lr, <8 x i1> %i.lo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.lt = bitcast <8 x i1> %i.ls to i8
  %i.lu = icmp ne i8 %i.lt, 0
  %op.rdx = select i1 %i.lu, i1 true, i1 %i.ll
  %op.rdx560 = select i1 %op.rdx, i1 true, i1 %i.ln
  br i1 %op.rdx560, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %bb.by, !prof !3386

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.lv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !2937
  %i.lw = icmp ult i64 %.4, %i.lv
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %bb.bz, !prof !2966

bb.bz:                                            ; preds = %bb.by
  %i.lx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !2937
  %i.ly = icmp ult i64 %.4, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %bb.ca, !prof !2966

bb.ca:                                            ; preds = %bb.bz
  %i.lz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !2937
  %i.ma = icmp ult i64 %.4, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %bb.cb, !prof !2966

bb.cb:                                            ; preds = %bb.ca
  %i.mb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !2937
  %i.mc = icmp ult i64 %.4, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %bb.cc, !prof !2966

bb.cc:                                            ; preds = %bb.cb
  %i.md = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !2937
  %i.me = icmp ult i64 %.4, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %bb.cd, !prof !2966

bb.cd:                                            ; preds = %bb.cc
  %i.mf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !2937
  %i.mg = icmp ult i64 %.4, %i.mf
  br i1 %i.mg, label %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !2966

_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit.i: ; preds = %bb.cd
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit.i, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.mh = phi i64 [ 37, %bb.cd ], [ 30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i ], [ 36, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit.i ], [ 35, %bb.cc ], [ 34, %bb.cb ], [ 33, %bb.ca ], [ 32, %bb.bz ], [ 31, %bb.by ] ; 5 uses
  %i.mi = add nuw nsw i64 %i.mh, 1
  %i.mj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mi) #29
          to label %.noexc177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc177:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.mk = load ptr, ptr %14, align 8, !tbaa !2919 ; 4 uses
  %i.ml = load i64, ptr %i.dz, align 8, !tbaa !2925 ; 3 uses
  %i.mm = add i64 %i.ml, 1                        ; 2 uses
  switch i64 %i.mm, label %bb.cf [
    i64 1, label %bb.ce
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  ]

bb.ce:                                            ; preds = %.noexc177
  %i.mn = load i8, ptr %i.mk, align 1, !tbaa !2920
  store i8 %i.mn, ptr %i.mj, align 1, !tbaa !2920
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cf:                                            ; preds = %.noexc177
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mj, ptr align 1 %i.mk, i64 %i.mm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cf, %bb.ce, %.noexc177
  %i.mo = icmp eq ptr %i.mk, %i.dy
  br i1 %i.mo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.mp = icmp ult i64 %i.ml, 16
  call void @llvm.assume(i1 %i.mp)
  br label %.noexc4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.mq = load i64, ptr %i.dy, align 8, !tbaa !2920
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mr) #30
  %.pre393 = load i64, ptr %i.dz, align 8, !tbaa !2925
  br label %.noexc4.i.i

.noexc4.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i
  %i.ms = phi i64 [ %.pre393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ], [ %i.ml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i ] ; 7 uses
  store ptr %i.mj, ptr %14, align 8, !tbaa !2919
  store i64 %i.mh, ptr %i.dy, align 8, !tbaa !2920
  %i.mt = and i64 %i.ms, -16
  %i.mu = icmp eq i64 %i.mt, 9223372036854775792
  br i1 %i.mu, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread

.invoke:                                          ; preds = %.noexc169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i191, %.noexc4.i.i
  %i.mv = phi ptr [ @.str.13, %.noexc4.i.i ], [ @.str.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i207 ], [ @.str.13, %.noexc169 ], [ @.str.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i191 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.mv) #32
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread: ; preds = %.noexc4.i.i
  %i.mw = add nsw i64 %i.ms, 16                   ; 9 uses
  %.not.i.i.i.i166247 = icmp ugt i64 %i.mw, %i.mh
  br i1 %.not.i.i.i.i166247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i207, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ms
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mx, ptr noundef nonnull align 1 dereferenceable(17) @.str.12, i64 16, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i207: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread
  %i.my = icmp slt i64 %i.ms, -16
  br i1 %i.my, label %.invoke, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i207
  %i.mz = shl nuw nsw i64 %i.mh, 1
  %spec.select = call i64 @llvm.umax.i64(i64 %i.mw, i64 %i.mz) ; 3 uses
  %i.na = add nuw i64 %spec.select, 1             ; 2 uses
  %i.nb = icmp slt i64 %i.na, 0
  br i1 %i.nb, label %.invoke528, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i209, !prof !2966

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i209: ; preds = %bb.ch
  %i.nc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #29
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i209
  %.pre.i216.pre = load ptr, ptr %14, align 8, !tbaa !2919 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nc, ptr align 1 %.pre.i216.pre, i64 %i.ms, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ms
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.nd, ptr noundef nonnull align 1 dereferenceable(16) @.str.12, i64 16, i1 false)
  %i.ne = icmp eq ptr %.pre.i216.pre, %i.dy
  br i1 %i.ne, label %.noexc168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212
  %i.nf = load i64, ptr %i.dy, align 8, !tbaa !2920
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %.pre.i216.pre, i64 noundef %i.ng) #30
  br label %.noexc168

.noexc168:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i219
  store ptr %i.nc, ptr %14, align 8, !tbaa !2919
  store i64 %spec.select, ptr %i.dy, align 8, !tbaa !2920
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit.i

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit.i: ; preds = %.noexc168, %bb.cg
  %i.nh = phi i64 [ %spec.select, %.noexc168 ], [ %i.mh, %bb.cg ] ; 2 uses
  %i.ni = phi ptr [ %i.nc, %.noexc168 ], [ %i.mj, %bb.cg ] ; 3 uses
  store i64 %i.mw, ptr %i.dz, align 8, !tbaa !2925
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.mw ; 3 uses
  store i8 0, ptr %i.nj, align 1, !tbaa !2920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.nk = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !2937
  %i.nl = icmp ult i64 %.4, %i.nk
  %i.nm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.nn = icmp ult i64 %.4, %i.nm
  %or.cond.i204 = select i1 %i.nl, i1 true, i1 %i.nn, !prof !3387
  br i1 %or.cond.i204, label %._crit_edge.thread.i, label %bb.ci, !prof !3387

bb.ci:                                            ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit.i
  %i.no = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !2937
  %i.np = icmp ult i64 %.4, %i.no
  br i1 %i.np, label %._crit_edge.thread14.i, label %bb.cj, !prof !2966

._crit_edge.thread14.i:                           ; preds = %bb.ci
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.4
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !3388
  br label %bb.da

bb.cj:                                            ; preds = %bb.ci
  %i.ns = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !2937
  %i.nt = icmp ult i64 %.4, %i.ns
  br i1 %i.nt, label %.lr.ph.preheader.i, label %bb.ck, !prof !2966

bb.ck:                                            ; preds = %bb.cj
  %i.nu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !2937
  %i.nv = icmp ult i64 %.4, %i.nu
  br i1 %i.nv, label %.lr.ph.preheader.i, label %bb.cl, !prof !2966

bb.cl:                                            ; preds = %bb.ck
  %i.nw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !2937
  %i.nx = icmp ult i64 %.4, %i.nw
  br i1 %i.nx, label %.lr.ph.preheader.i, label %bb.cm, !prof !2966

bb.cm:                                            ; preds = %bb.cl
  %i.ny = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !2937
  %i.nz = icmp ult i64 %.4, %i.ny
  br i1 %i.nz, label %.lr.ph.preheader.i, label %bb.cn, !prof !2966

bb.cn:                                            ; preds = %bb.cm
  %i.oa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 56), align 8, !tbaa !2937
  %i.ob = icmp ult i64 %.4, %i.oa
  br i1 %i.ob, label %.lr.ph.preheader.i, label %bb.co, !prof !2966

bb.co:                                            ; preds = %bb.cn
  %i.oc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !2937
  %i.od = icmp ult i64 %.4, %i.oc
  br i1 %i.od, label %.lr.ph.preheader.i, label %bb.cp, !prof !2966

bb.cp:                                            ; preds = %bb.co
  %i.oe = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !2937
  %i.of = icmp ult i64 %.4, %i.oe
  br i1 %i.of, label %.lr.ph.preheader.i, label %bb.cq, !prof !2966

bb.cq:                                            ; preds = %bb.cp
  %i.og = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !2937
  %i.oh = icmp ult i64 %.4, %i.og
  br i1 %i.oh, label %.lr.ph.preheader.i, label %bb.cr, !prof !2966

bb.cr:                                            ; preds = %bb.cq
end_hunk_0
