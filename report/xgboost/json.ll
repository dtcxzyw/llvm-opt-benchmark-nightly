Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/json?download=true
inline.NumInlined: 3220
inline.NumDeleted: 1196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7xgboost9UBJReader10ParseArrayEv:bb.a

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIN7xgboost4JsonEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit106
  %i.kb = phi ptr [ %i.ju, %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit106 ], [ %.pre148, %_ZNSt15__new_allocatorIN7xgboost4JsonEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.kc = phi ptr [ %i.jv, %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit106 ], [ %.pre147, %_ZNSt15__new_allocatorIN7xgboost4JsonEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 2 uses
  %i.kd = phi ptr [ null, %_ZN7xgboost10JsonReader18GetConsecutiveCharEc.exit106 ], [ %i.ka, %_ZNSt15__new_allocatorIN7xgboost4JsonEE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ] ; 4 uses
  store ptr %i.kd, ptr %i.js, align 8, !tbaa !114
  %i.ke = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jy
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !144
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.kc, %i.kb
  br i1 %.not11.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc3.i, %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.kl, %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.kd, %.noexc3.i ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.kk, %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.kc, %.noexc3.i ] ; 2 uses
  %i.kh = load ptr, ptr %.sroa.08.012.i.i.i.i.i.i, align 8, !tbaa !103 ; 3 uses
  store ptr %i.kh, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !103
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = atomicrmw add ptr %i.ki, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.be, %.lr.ph.i.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kk, %i.kb
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !299

.loopexit:                                        ; preds = %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.noexc3.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kd, %.noexc3.i ], [ %i.kl, %_ZSt10_ConstructIN7xgboost4JsonEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ke, align 8, !tbaa !113
  %i.km = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %bb.bf unwind label %bb.bn     ; 3 uses

bb.bf:                                            ; preds = %.loopexit
  call void @_ZN7xgboost9JsonArrayC1EOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.km, ptr noundef nonnull align 8 dereferenceable(48) %11) #16
  store ptr %i.km, ptr %0, align 8, !tbaa !103
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = atomicrmw add ptr %i.kn, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost9JsonArrayE, i64 16), ptr %11, align 8, !tbaa !28
  %i.kp = load ptr, ptr %i.js, align 8, !tbaa !114 ; 3 uses
  %i.kq = load ptr, ptr %i.ke, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kp, %i.kq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i116, label %.lr.ph.i.i.i.i111

.lr.ph.i.i.i.i111:                                ; preds = %bb.bf, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i114
  %.05.i.i.i.i112 = phi ptr [ %i.ky, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i114 ], [ %i.kp, %bb.bf ] ; 2 uses
  %i.kr = load ptr, ptr %.05.i.i.i.i112, align 8, !tbaa !103 ; 4 uses
  %.not.i.i.i.i.i.i.i.i113 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i.i.i.i.i113, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i114, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i111
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = atomicrmw add ptr %i.ks, i32 -1 release, align 4
  %i.ku = icmp eq i32 %i.kt, 1
  br i1 %i.ku, label %bb.bh, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i114

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  %i.kv = load ptr, ptr %i.kr, align 8, !tbaa !28
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(24) %i.kr) #16, !inline_history !3
  br label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i114

_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i114: ; preds = %bb.bh, %bb.bg, %.lr.ph.i.i.i.i111
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i112, i64 8 ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.ky, %i.kq
  br i1 %.not.i.i.i.i115, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i111, !llvm.loop !4

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i.i114
  %.pr.i.i = load ptr, ptr %i.js, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i116

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i116: ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.bf
  %i.kz = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.kp, %bb.bf ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i1.i.i, label %_ZN7xgboost9JsonArrayD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i116
  %i.la = load ptr, ptr %i.kg, align 8, !tbaa !144
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.kz to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.ld) #34, !inline_history !163
  br label %_ZN7xgboost9JsonArrayD2Ev.exit

_ZN7xgboost9JsonArrayD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i.i116, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.le = load ptr, ptr %8, align 8, !tbaa !114   ; 3 uses
  %i.lf = load ptr, ptr %i.jt, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.le, %i.lf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7xgboost9JsonArrayD2Ev.exit, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ln, %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i ], [ %i.le, %_ZN7xgboost9JsonArrayD2Ev.exit ] ; 2 uses
  %i.lg = load ptr, ptr %.05.i.i.i, align 8, !tbaa !103 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = atomicrmw add ptr %i.lh, i32 -1 release, align 4
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.bk, label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  fence acquire
  %i.lk = load ptr, ptr %i.lg, align 8, !tbaa !28
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(24) %i.lg) #16, !inline_history !5
  br label %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i:    ; preds = %bb.bk, %bb.bj, %.lr.ph.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.ln, %i.lf
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7xgboost4JsonEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost9JsonArrayD2Ev.exit
  %i.lo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.le, %_ZN7xgboost9JsonArrayD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !144
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #34
  br label %_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev.exit

_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN7xgboost4JsonES1_EvT_S3_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.bq

bb.bm:                                            ; preds = %_ZNSt15__new_allocatorIN7xgboost4JsonEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %.loopexit
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost9JsonArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn40 = phi { ptr, i32 } [ %i.lv, %bb.bn ], [ %i.lu, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.ao, %bb.as, %bb.bo, %_ZN7xgboost4JsonD2Ev.exit101
  %.pn42.pn = phi { ptr, i32 } [ %.pn38, %_ZN7xgboost4JsonD2Ev.exit101 ], [ %.pn40, %bb.bo ], [ %i.ho, %bb.ao ], [ %i.ia, %bb.as ]
  call void @_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %common.resume

bb.bq:                                            ; preds = %bb.c, %bb.d, %_ZN7xgboost9UBJReader15ParseTypedArrayINS_14JsonTypedArrayIaLNS_5Value9ValueKindE9EEEEEDal.exit, %_ZN7xgboost9UBJReader15ParseTypedArrayINS_14JsonTypedArrayIhLNS_5Value9ValueKindE10EEEEEDal.exit, %bb.q, %bb.r, %bb.s, %_ZNSt6vectorIN7xgboost4JsonESaIS1_EED2Ev.exit
  ret void

bb.br:                                            ; preds = %bb.ae
  %i.lw = landingpad { ptr, i32 }
          catch ptr null
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0
  call void @__clang_call_terminate(ptr %i.lx) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9UBJReader15ParseTypedArrayINS_14JsonTypedArrayIfLNS_5Value9ValueKindE7EEEEEDal(ptr dead_on_unwind noalias writable sret(%"class.xgboost::Json") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xgboost::JsonTypedArray", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EEC1Em(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %2)
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 7 uses
  %.promoted = load i64, ptr %i.d, align 8, !tbaa !151 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.g = shl i64 %2, 2                            ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g     ; 2 uses
  %bound0 = icmp ult ptr %i.d, %i.h
  %bound1 = icmp ult ptr %i.f, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %4 = getelementptr nuw i8, ptr %i.c, i64 %.promoted ; 2 uses
  %5 = getelementptr i8, ptr %i.c, i64 %.promoted
  %6 = getelementptr i8, ptr %5, i64 %i.g         ; 2 uses
  %bound025 = icmp ult ptr %i.d, %6
  %bound126 = icmp ult ptr %4, %i.b
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  %bound028 = icmp ult ptr %i.f, %6
  %bound129 = icmp ult ptr %4, %i.h
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx, %found.conflict30
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.i = shl i64 %n.vec, 2
  %i.j = add i64 %.promoted, %i.i
  %i.k = add i64 %.promoted, 4
  %i.l = getelementptr i8, ptr %i.c, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = phi i64 [ %i.k, %vector.ph ], [ %i.u, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 2
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %wide.load = load <2 x i32>, ptr %i.o, align 1, !alias.scope !310
  %wide.load32 = load <2 x i32>, ptr %i.p, align 1, !alias.scope !310
  %i.q = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load)
  %i.r = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load32)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store <2 x i32> %i.q, ptr %i.s, align 4, !tbaa !36, !alias.scope !311, !noalias !310
  store <2 x i32> %i.r, ptr %i.t, align 4, !tbaa !36, !alias.scope !311, !noalias !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = add i64 %i.m, 16
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %i.w = add i64 %i.m, 12
  store i64 %i.w, ptr %i.d, align 8, !tbaa !151, !alias.scope !312, !noalias !313
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.j, %middle.block ] ; 3 uses
  %.0913.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.0913.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %.ph
  %.0.copyload.i3.i.prol = load i32, ptr %i.x, align 1
  %i.y = add i64 %.ph, 4                          ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !tbaa !151
  %i.z = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i3.i.prol)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0913.ph
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !36
  %i.ab = or disjoint i64 %.0913.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.0913.unr = phi i64 [ %.0913.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %2, %.neg
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ad = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %bb.b unwind label %bb.d       ; 3 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ak, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0913 = phi i64 [ %i.ao, %scalar.ph ], [ %.0913.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %.0.copyload.i3.i = load i32, ptr %i.af, align 1
  %i.ag = add i64 %i.ae, 4                        ; 2 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !151
  %i.ah = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i3.i)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0913
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %.0.copyload.i3.i.1 = load i32, ptr %i.aj, align 1
  %i.ak = add i64 %i.ae, 8                        ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !151
  %i.al = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i3.i.1)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0913
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.al, ptr %i.an, align 4, !tbaa !36
  %i.ao = add nuw nsw i64 %.0913, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !309

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EEC1EOS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  store ptr %i.ad, ptr %0, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #34, !inline_history !38
  br label %_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EED2Ev.exit

_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.d:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i11, label %_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EED2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #34, !inline_history !38
  br label %_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EED2Ev.exit12

_ZN7xgboost14JsonTypedArrayIfLNS_5Value9ValueKindE7EED2Ev.exit12: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9UBJReader15ParseTypedArrayINS_14JsonTypedArrayIdLNS_5Value9ValueKindE8EEEEEDal(ptr dead_on_unwind noalias writable sret(%"class.xgboost::Json") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xgboost::JsonTypedArray.0", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EEC1Em(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %2)
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 7 uses
  %.promoted = load i64, ptr %i.d, align 8, !tbaa !151 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.g = shl i64 %2, 3                            ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g     ; 2 uses
  %bound0 = icmp ult ptr %i.d, %i.h
  %bound1 = icmp ult ptr %i.f, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %4 = getelementptr nuw i8, ptr %i.c, i64 %.promoted ; 2 uses
  %5 = getelementptr i8, ptr %i.c, i64 %.promoted
  %6 = getelementptr i8, ptr %5, i64 %i.g         ; 2 uses
  %bound025 = icmp ult ptr %i.d, %6
  %bound126 = icmp ult ptr %4, %i.b
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  %bound028 = icmp ult ptr %i.f, %6
  %bound129 = icmp ult ptr %4, %i.h
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx, %found.conflict30
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.i = shl i64 %n.vec, 3
  %i.j = add i64 %.promoted, %i.i
  %i.k = add i64 %.promoted, 8
  %i.l = getelementptr i8, ptr %i.c, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = phi i64 [ %i.k, %vector.ph ], [ %i.u, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 3
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 1, !alias.scope !320
  %wide.load32 = load <2 x i64>, ptr %i.p, align 1, !alias.scope !320
  %i.q = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.r = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load32)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %i.q, ptr %i.s, align 8, !tbaa !45, !alias.scope !321, !noalias !320
  store <2 x i64> %i.r, ptr %i.t, align 8, !tbaa !45, !alias.scope !321, !noalias !320
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = add i64 %i.m, 32
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %i.w = add i64 %i.m, 24
  store i64 %i.w, ptr %i.d, align 8, !tbaa !151, !alias.scope !322, !noalias !323
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.j, %middle.block ] ; 3 uses
  %.0913.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.0913.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %.ph
  %.0.copyload.i3.i.prol = load i64, ptr %i.x, align 1
  %i.y = add i64 %.ph, 8                          ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !tbaa !151
  %i.z = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i3.i.prol)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0913.ph
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !45
  %i.ab = or disjoint i64 %.0913.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.0913.unr = phi i64 [ %.0913.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %2, %.neg
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ad = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %bb.b unwind label %bb.d       ; 3 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ak, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0913 = phi i64 [ %i.ao, %scalar.ph ], [ %.0913.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %.0.copyload.i3.i = load i64, ptr %i.af, align 1
  %i.ag = add i64 %i.ae, 8                        ; 2 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !151
  %i.ah = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i3.i)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0913
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %.0.copyload.i3.i.1 = load i64, ptr %i.aj, align 1
  %i.ak = add i64 %i.ae, 16                       ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !151
  %i.al = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i3.i.1)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0913
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !45
  %i.ao = add nuw nsw i64 %.0913, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !319

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EEC1EOS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  store ptr %i.ad, ptr %0, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #34, !inline_history !46
  br label %_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EED2Ev.exit

_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.d:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i11, label %_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EED2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #34, !inline_history !46
  br label %_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EED2Ev.exit12

_ZN7xgboost14JsonTypedArrayIdLNS_5Value9ValueKindE8EED2Ev.exit12: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9UBJReader15ParseTypedArrayINS_14JsonTypedArrayIsLNS_5Value9ValueKindE11EEEEEDal(ptr dead_on_unwind noalias writable sret(%"class.xgboost::Json") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xgboost::JsonTypedArray.20", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EEC1Em(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %2)
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 7 uses
  %.promoted = load i64, ptr %i.d, align 8, !tbaa !151 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.g = shl nuw i64 %2, 1                        ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g     ; 2 uses
  %bound0 = icmp ult ptr %i.d, %i.h
  %bound1 = icmp ult ptr %i.f, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %4 = getelementptr nuw i8, ptr %i.c, i64 %.promoted ; 2 uses
  %5 = getelementptr i8, ptr %i.c, i64 %.promoted
  %6 = getelementptr i8, ptr %5, i64 %i.g         ; 2 uses
  %bound025 = icmp ult ptr %i.d, %6
  %bound126 = icmp ult ptr %4, %i.b
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  %bound028 = icmp ult ptr %i.f, %6
  %bound129 = icmp ult ptr %4, %i.h
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx, %found.conflict30
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.i = shl nuw i64 %n.vec, 1
  %i.j = add i64 %.promoted, %i.i
  %i.k = add i64 %.promoted, 2
  %i.l = getelementptr i8, ptr %i.c, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = phi i64 [ %i.k, %vector.ph ], [ %i.u, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 1
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %wide.load = load <2 x i16>, ptr %i.o, align 1, !alias.scope !330
  %wide.load32 = load <2 x i16>, ptr %i.p, align 1, !alias.scope !330
  %i.q = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %wide.load)
  %i.r = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %wide.load32)
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store <2 x i16> %i.q, ptr %i.s, align 2, !tbaa !68, !alias.scope !331, !noalias !330
  store <2 x i16> %i.r, ptr %i.t, align 2, !tbaa !68, !alias.scope !331, !noalias !330
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = add i64 %i.m, 8
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %i.w = add i64 %i.m, 6
  store i64 %i.w, ptr %i.d, align 8, !tbaa !151, !alias.scope !332, !noalias !333
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.j, %middle.block ] ; 3 uses
  %.0913.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.0913.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %.ph
  %.0.copyload.i.i.prol = load i16, ptr %i.x, align 1
  %i.y = add i64 %.ph, 2                          ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !tbaa !151
  %i.z = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.prol)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.0913.ph
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !68
  %i.ab = or disjoint i64 %.0913.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.0913.unr = phi i64 [ %.0913.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %2, %.neg
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ad = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %bb.b unwind label %bb.d       ; 3 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ak, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0913 = phi i64 [ %i.ao, %scalar.ph ], [ %.0913.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %.0.copyload.i.i = load i16, ptr %i.af, align 1
  %i.ag = add i64 %i.ae, 2                        ; 2 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !151
  %i.ah = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.0913
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %.0.copyload.i.i.1 = load i16, ptr %i.aj, align 1
  %i.ak = add i64 %i.ae, 4                        ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !151
  %i.al = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.1)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.0913
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 %i.al, ptr %i.an, align 2, !tbaa !68
  %i.ao = add nuw nsw i64 %.0913, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !329

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EEC1EOS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  store ptr %i.ad, ptr %0, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !63
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #34, !inline_history !66
  br label %_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EED2Ev.exit

_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.d:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i11, label %_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EED2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #34, !inline_history !66
  br label %_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EED2Ev.exit12

_ZN7xgboost14JsonTypedArrayIsLNS_5Value9ValueKindE11EED2Ev.exit12: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9UBJReader15ParseTypedArrayINS_14JsonTypedArrayIiLNS_5Value9ValueKindE13EEEEEDal(ptr dead_on_unwind noalias writable sret(%"class.xgboost::Json") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xgboost::JsonTypedArray.34", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EEC1Em(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %2)
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 7 uses
  %.promoted = load i64, ptr %i.d, align 8, !tbaa !151 ; 7 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.g = shl i64 %2, 2                            ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g     ; 2 uses
  %bound0 = icmp ult ptr %i.d, %i.h
  %bound1 = icmp ult ptr %i.f, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %4 = getelementptr nuw i8, ptr %i.c, i64 %.promoted ; 2 uses
  %5 = getelementptr i8, ptr %i.c, i64 %.promoted
  %6 = getelementptr i8, ptr %5, i64 %i.g         ; 2 uses
  %bound025 = icmp ult ptr %i.d, %6
  %bound126 = icmp ult ptr %4, %i.b
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  %bound028 = icmp ult ptr %i.f, %6
  %bound129 = icmp ult ptr %4, %i.h
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx, %found.conflict30
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.i = shl i64 %n.vec, 2
  %i.j = add i64 %.promoted, %i.i
  %i.k = add i64 %.promoted, 4
  %i.l = getelementptr i8, ptr %i.c, i64 %.promoted
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = phi i64 [ %i.k, %vector.ph ], [ %i.u, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 2
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %wide.load = load <2 x i32>, ptr %i.o, align 1, !alias.scope !340
  %wide.load32 = load <2 x i32>, ptr %i.p, align 1, !alias.scope !340
  %i.q = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load)
  %i.r = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load32)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store <2 x i32> %i.q, ptr %i.s, align 4, !tbaa !81, !alias.scope !341, !noalias !340
  store <2 x i32> %i.r, ptr %i.t, align 4, !tbaa !81, !alias.scope !341, !noalias !340
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = add i64 %i.m, 16
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !337

middle.block:                                     ; preds = %vector.body
  %i.w = add i64 %i.m, 12
  store i64 %i.w, ptr %i.d, align 8, !tbaa !151, !alias.scope !342, !noalias !343
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.j, %middle.block ] ; 3 uses
  %.0913.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.0913.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %.ph
  %.0.copyload.i.i.prol = load i32, ptr %i.x, align 1
  %i.y = add i64 %.ph, 4                          ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !tbaa !151
  %i.z = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.prol)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0913.ph
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !81
  %i.ab = or disjoint i64 %.0913.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.0913.unr = phi i64 [ %.0913.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %2, %.neg
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ad = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %bb.b unwind label %bb.d       ; 3 uses

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ak, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0913 = phi i64 [ %i.ao, %scalar.ph ], [ %.0913.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %.0.copyload.i.i = load i32, ptr %i.af, align 1
  %i.ag = add i64 %i.ae, 4                        ; 2 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !151
  %i.ah = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0913
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %.0.copyload.i.i.1 = load i32, ptr %i.aj, align 1
  %i.ak = add i64 %i.ae, 8                        ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !151
  %i.al = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0913
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.al, ptr %i.an, align 4, !tbaa !81
  %i.ao = add nuw nsw i64 %.0913, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !339

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EEC1EOS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %3) #16
  store ptr %i.ad, ptr %0, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #34, !inline_history !80
  br label %_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EED2Ev.exit

_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.d:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EEE, i64 16), ptr %3, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i11, label %_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EED2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !77
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #34, !inline_history !80
  br label %_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EED2Ev.exit12

_ZN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EED2Ev.exit12: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9UBJReader15ParseTypedArrayINS_14JsonTypedArrayIlLNS_5Value9ValueKindE15EEEEEDal(ptr dead_on_unwind noalias writable sret(%"class.xgboost::Json") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xgboost::JsonTypedArray.48", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN7xgboost14JsonTypedArrayIlLNS_5Value9ValueKindE15EEC1Em(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %2)
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 3 uses
  %xtraiter = and i64 %2, 1
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0913.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod16)
  %i.h = load i64, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.0.copyload.i.i.epil = load i64, ptr %i.i, align 1
  %i.j = add i64 %i.h, 8
  store i64 %i.j, ptr %i.d, align 8, !tbaa !151
  %i.k = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.epil)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0913.epil.init
  store i64 %i.k, ptr %i.l, align 8, !tbaa !95
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.m = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.0913 = phi i64 [ 0, %.lr.ph.new ], [ %i.y, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.n = load i64, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %.0.copyload.i.i = load i64, ptr %i.o, align 1
  %i.p = add i64 %i.n, 8
  store i64 %i.p, ptr %i.d, align 8, !tbaa !151
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0913
  store i64 %i.q, ptr %i.r, align 8, !tbaa !95
  %i.s = load i64, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %.0.copyload.i.i.1 = load i64, ptr %i.t, align 1
end_hunk_0
