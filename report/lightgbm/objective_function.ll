Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN8LightGBM14LambdarankNDCGC2ERKNS_6ConfigE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !154
  store i32 %i.c, ptr %i.a, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load double, ptr %i.e, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.f, ptr %i.g, align 8, !tbaa !158
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.i = load double, ptr %i.h, align 8, !tbaa !159
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.i, ptr %i.j, align 8, !tbaa !160
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM14LambdarankNDCGE, i64 16), ptr %0, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.m = load double, ptr %i.l, align 8, !tbaa !180
  store double %i.m, ptr %i.k, align 8, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1340
  %i.p = load i8, ptr %i.o, align 4, !tbaa !350, !range !133, !noundef !134
  store i8 %i.p, ptr %i.n, align 8, !tbaa !188
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1336
  %i.s = load i32, ptr %i.r, align 8, !tbaa !351
  store i32 %i.s, ptr %i.q, align 4, !tbaa !189
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, i8 0, i64 72, i1 false)
  store i64 1048576, ptr %i.w, align 8, !tbaa !190
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> <double -5.000000e+01, double 5.000000e+01>, ptr %i.x, align 8, !tbaa !191
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8LightGBM13DCGCalculator16DefaultLabelGainEPSt6vectorIdSaIdEE(ptr noundef nonnull %i.v)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8LightGBM13DCGCalculator4InitERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !193
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !192 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !193
  %.not.i.i7 = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i7, label %_ZNSt6vectorIdSaIdEE5clearEv.exit9, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8:       ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !193
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit9

_ZNSt6vectorIdSaIdEE5clearEv.exit9:               ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8
  %i.ag = load double, ptr %i.k, align 8, !tbaa !187 ; 2 uses
  %i.ah = fcmp ugt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit9
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.51, double noundef %i.ag)
          to label %bb.k unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !192 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !194
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !192 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIdSaIdEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !194
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit11

_ZNSt6vectorIdSaIdEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.h
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !192 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIdSaIdEED2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit11
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !194
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit13

_ZNSt6vectorIdSaIdEED2Ev.exit13:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit11, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM16RankingObjectiveE, i64 16), ptr %0, align 8, !tbaa !98
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM16RankingObjectiveD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit13
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !175
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #35, !inline_history !195
  br label %_ZN8LightGBM16RankingObjectiveD2Ev.exit

_ZN8LightGBM16RankingObjectiveD2Ev.exit:          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit13, %bb.j
  resume { ptr, i32 } %i.ai

bb.k:                                             ; preds = %bb.e, %_ZNSt6vectorIdSaIdEE5clearEv.exit9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM13MulticlassOVAC2ERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(1656) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM13MulticlassOVAE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1268
  %i.c = load i32, ptr %i.b, align 4, !tbaa !161  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !202
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.j = load double, ptr %i.i, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.j, ptr %i.k, align 8, !tbaa !203
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit
  %.01124 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #34
          to label %bb.c unwind label %bb.k       ; 4 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store i32 %.01124, ptr %2, align 8, !tbaa !204
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFbfEZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFbfEZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E9_M_invokeERKSt9_Any_dataOf>, ptr %i.f, align 8, !tbaa !185
  invoke void @_ZN8LightGBM13BinaryLoglossC2ERKNS_6ConfigESt8functionIFbfEE(ptr noundef nonnull align 8 dereferenceable(114) %i.l, ptr noundef nonnull align 8 dereferenceable(1656) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !205  ; 6 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !206
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.m, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !205
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !209  ; 10 uses
  %i.q = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 4 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.u = ashr exact i64 %i.s, 3
  %mul2.i.i = ashr exact i64 %i.s, 2
  %3 = call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.v = icmp ult i64 %3, %i.u
  %i.w = call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #34
          to label %.noexc13 unwind label %.loopexit ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.s
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !208
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc13
  %i.ab = add i64 %i.q, -8
  %i.ac = sub i64 %i.ab, %i.r                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader49, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.z, i64 8
  %i.af = add i64 %i.q, -8
  %i.ag = sub i64 %i.af, %i.r
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %scevgep43 = getelementptr i8, ptr %scevgep, i64 %i.ah
  %scevgep44 = getelementptr i8, ptr %i.p, i64 8
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.ah
  %bound0 = icmp ult ptr %i.z, %scevgep45
  %bound1 = icmp ult ptr %i.p, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.al ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.p, i64 %i.al ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.am = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !208, !alias.scope !363, !noalias !361
  %wide.load47 = load <2 x i64>, ptr %i.am, align 8, !tbaa !208, !alias.scope !363, !noalias !361
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !208, !alias.scope !364, !noalias !363
  store <2 x i64> %wide.load47, ptr %i.an, align 8, !tbaa !208, !alias.scope !364, !noalias !363
  %i.ao = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !208, !alias.scope !363, !noalias !361
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !208, !alias.scope !363, !noalias !361
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.preheader49:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader49 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !208, !alias.scope !362, !noalias !361
  store i64 %i.aq, ptr %.012.i.i.i.i.i, align 8, !tbaa !208, !alias.scope !361, !noalias !362
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !208, !alias.scope !362, !noalias !361
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !359

_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc13 ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !206
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.aw) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !209
  store ptr %i.at, ptr %i.g, align 8, !tbaa !205
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !206
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.e
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !153 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ay, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.i
  %i.bc = add nuw nsw i32 %.01124, 1              ; 2 uses
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !202
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !360

bb.k:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.ph = phi i1 [ true, %bb.c ], [ false, %_ZNKSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.0 = phi i1 [ %.0.ph, %.loopexit ], [ false, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !153 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i15, label %_ZNSt14_Function_baseD2Ev.exit16, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit16 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit16:                 ; preds = %bb.l, %bb.m
  br i1 %.0, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit16
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 120) #35
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit16, %bb.o, %bb.k
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.o ], [ %lpad.phi, %_ZNSt14_Function_baseD2Ev.exit16 ], [ %i.bf, %bb.k ]
  call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #12
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM19RegressionGammaLossC2ERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(1656) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.d = load i8, ptr %i.c, align 4, !tbaa !132, !range !133, !noundef !134
  store i8 %i.d, ptr %i.b, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1297
  %i.f = load i8, ptr %i.e, align 1, !tbaa !143, !range !133, !noundef !134 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 %i.f, ptr %i.g, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM21RegressionPoissonLossE, i64 16), ptr %0, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %i.i = load double, ptr %i.h, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.i, ptr %i.j, align 8, !tbaa !173
  %i.k = trunc nuw i8 %i.f to i1
  br i1 %i.k, label %bb.b, label %_ZN8LightGBM21RegressionPoissonLossC2ERKNS_6ConfigE.exit

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 8, !tbaa !144
  br label %_ZN8LightGBM21RegressionPoissonLossC2ERKNS_6ConfigE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIdSaIdEE17_M_default_appendEm:bb.a
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !191
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !191
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !193
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #37
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !191
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !191
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !194
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #35
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !194
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RankingObjective30GetGradientsWithSampledQueriesEPKdiPKiPfS5_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !204    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !204
  %i.h = load i32, ptr %0, align 4, !tbaa !204    ; 4 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @2, i32 %i.h, i32 1073741860, i32 0, i32 %i.g, i32 1, i32 1)
  %i.i = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not86 = icmp eq i32 %i.i, 0
  br i1 %.not86, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

.loopexit67:                                      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %i.p = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge89, label %bb.c

bb.c:                                             ; preds = %.lr.ph88, %.loopexit67
  %i.q = load i32, ptr %i.a, align 4, !tbaa !204  ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !204, !llvm.access.group !618
  %.not5182 = icmp sgt i32 %i.q, %i.r
  br i1 %.not5182, label %.loopexit67, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.c
  %i.s = sext i32 %i.q to i64
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %indvars.iv96 = phi i64 [ %i.s, %.lr.ph85.preheader ], [ %indvars.iv.next97, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 4 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !240, !llvm.access.group !618 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = trunc nsw i64 %indvars.iv96 to i32
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph85
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv96
  %i.x = load i32, ptr %i.w, align 4, !tbaa !204, !llvm.access.group !618
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %bb.d
  %i.y = phi i32 [ %i.x, %bb.d ], [ %i.v, %.lr.ph85 ] ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !310, !llvm.access.group !618
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !204, !llvm.access.group !618 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !204, !llvm.access.group !618
  %i.af = sub i32 %i.ae, %i.ac                    ; 6 uses
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !299, !llvm.access.group !618
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = sext i32 %i.ac to i64                   ; 7 uses
  br i1 %i.ah, label %.preheader65, label %.thread

.preheader65:                                     ; preds = %bb.e
  %i.aj = icmp sgt i32 %i.af, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader65
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !618
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ai
  br label %bb.l

.lr.ph.preheader:                                 ; preds = %.preheader65
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph

.thread:                                          ; preds = %bb.e
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !618
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ai
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %.sroa.10.077 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.10.2, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.sroa.7.076 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.7.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.sroa.0.075 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.0.2, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 5 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !222, !llvm.access.group !618
  %i.ap = add nsw i64 %indvars.iv, %i.ai          ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !191, !llvm.access.group !618
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !307, !llvm.access.group !618
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ap
  %i.au = load i32, ptr %i.at, align 4, !tbaa !204, !llvm.access.group !618
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !174, !llvm.access.group !618
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !169, !llvm.access.group !618
  %i.az = fpext float %i.ay to double
  %i.ba = fadd double %i.ar, %i.az                ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.7.076, %.sroa.10.077
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store double %i.ba, ptr %.sroa.7.076, align 8, !tbaa !191, !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bb = ptrtoint ptr %.sroa.10.077 to i64
  %i.bc = ptrtoint ptr %.sroa.0.075 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 7 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3
  %mul2.i.i.i = ashr exact i64 %i.bd, 2
  %8 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.bg = icmp ult i64 %8, %i.bf
  %i.bh = call i64 @llvm.umin.i64(i64 %8, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #34
          to label %.noexc53 unwind label %.loopexit66 ; 4 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bd ; 2 uses
  store double %i.ba, ptr %i.bl, align 8, !tbaa !191, !llvm.access.group !618
  %i.bm = icmp sgt i64 %i.bd, 0
  br i1 %i.bm, label %bb.i, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc53
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %.sroa.0.075, i64 %i.bd, i1 false), !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc53
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.075, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.075, i64 noundef %i.bd) #35, !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0.2 = phi ptr [ %i.bk, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.0.075, %bb.f ] ; 4 uses
  %.pn = phi ptr [ %i.bl, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.7.076, %bb.f ]
  %.sroa.10.2 = phi ptr [ %i.bn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.10.077, %bb.f ] ; 3 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !619

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.pr.pre = load i32, ptr %i.k, align 8, !tbaa !299
  %i.bo = icmp sgt i32 %.pr.pre, 0
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !618
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.ai ; 2 uses
  br i1 %i.bo, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread, %._crit_edge
  %i.br = phi ptr [ %i.an, %.thread ], [ %i.bq, %._crit_edge ]
  %.sroa.10.164 = phi ptr [ null, %.thread ], [ %.sroa.10.2, %._crit_edge ]
  %.sroa.0.162 = phi ptr [ null, %.thread ], [ %.sroa.0.2, %._crit_edge ]
  %i.bs = load ptr, ptr %5, align 8, !tbaa !222, !llvm.access.group !618
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ai
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.k
  %i.bu = phi ptr [ %i.br, %bb.k ], [ %i.bq, %._crit_edge ], [ %i.al, %._crit_edge.thread ]
  %.sroa.10.163 = phi ptr [ %.sroa.10.164, %bb.k ], [ %.sroa.10.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %.sroa.0.161 = phi ptr [ %.sroa.0.162, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.bv = phi ptr [ %i.bt, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %i.bw = load ptr, ptr %6, align 8, !tbaa !220, !llvm.access.group !618
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ai
  %i.by = load ptr, ptr %7, align 8, !tbaa !220, !llvm.access.group !618
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ai
  %i.ca = load ptr, ptr %4, align 8, !tbaa !98, !llvm.access.group !618
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 160
  %i.cc = load ptr, ptr %i.cb, align 8, !llvm.access.group !618
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef %i.y, i32 noundef %i.af, ptr noundef %i.bu, ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef %i.bz)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit, !llvm.access.group !618

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !306, !llvm.access.group !618 ; 7 uses
  %.not52 = icmp ne ptr %i.cd, null
  %i.ce = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %.not52, i1 %i.ce, i1 false
  br i1 %or.cond, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %bb.m
  %i.cf = load ptr, ptr %6, align 8, !tbaa !220, !llvm.access.group !618 ; 6 uses
  %i.cg = load ptr, ptr %7, align 8, !tbaa !220, !llvm.access.group !618 ; 6 uses
  %i.ch = sext i32 %i.ac to i64                   ; 6 uses
  %wide.trip.count94 = zext nneg i32 %i.af to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph81
  %i.ci = shl nsw i64 %i.ch, 2                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.cf, i64 %i.ci ; 2 uses
  %i.cj = add nsw i64 %i.ch, %wide.trip.count94
  %i.ck = shl nsw i64 %i.cj, 2                    ; 3 uses
  %scevgep110 = getelementptr i8, ptr %i.cf, i64 %i.ck ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.cg, i64 %i.ci ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.cg, i64 %i.ck ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.cd, i64 %i.ci ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.cd, i64 %i.ck ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep112
  %bound1 = icmp ult ptr %scevgep111, %scevgep110
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %scevgep, %scevgep114
  %bound1116 = icmp ult ptr %scevgep113, %scevgep110
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %scevgep111, %scevgep114
  %bound1119 = icmp ult ptr %scevgep113, %scevgep112
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  br i1 %conflict.rdx121, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = add nsw i64 %index, %i.ch               ; 3 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cl ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cm, align 4, !tbaa !169, !alias.scope !627, !noalias !628, !llvm.access.group !618
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cl
  %wide.load122 = load <4 x float>, ptr %i.cn, align 4, !tbaa !169, !alias.scope !629, !llvm.access.group !618 ; 2 uses
  %i.co = fmul <4 x float> %wide.load, %wide.load122
  store <4 x float> %i.co, ptr %i.cm, align 4, !tbaa !169, !alias.scope !627, !noalias !628, !llvm.access.group !618
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cl ; 2 uses
  %wide.load123 = load <4 x float>, ptr %i.cp, align 4, !tbaa !169, !alias.scope !630, !noalias !629, !llvm.access.group !618
  %i.cq = fmul <4 x float> %wide.load123, %wide.load122
  store <4 x float> %i.cq, ptr %i.cp, align 4, !tbaa !169, !alias.scope !630, !noalias !629, !llvm.access.group !618
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count94
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph81, %middle.block
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count94, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cs = add nsw i64 %indvars.iv91.ph, %i.ch     ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !169, !llvm.access.group !618
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cs ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !169, !llvm.access.group !618
  %i.cx = fmul float %i.cu, %i.cw
  store float %i.cx, ptr %i.ct, align 4, !tbaa !169, !llvm.access.group !618
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cs ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !169, !llvm.access.group !618
  %i.da = load float, ptr %i.cv, align 4, !tbaa !169, !llvm.access.group !618
  %i.db = fmul float %i.cz, %i.da
  store float %i.db, ptr %i.cy, align 4, !tbaa !169, !llvm.access.group !618
  %indvars.iv.next92.prol = or disjoint i64 %indvars.iv91.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph.preheader ], [ %indvars.iv.next92.prol, %scalar.ph.prol ]
  %i.dc = add nsw i64 %wide.trip.count94, -1
  %i.dd = icmp eq i64 %indvars.iv91.ph, %i.dc
  br i1 %i.dd, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %i.ch
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv91 = phi i64 [ %indvars.iv91.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next92.1, %scalar.ph ] ; 3 uses
  %i.de = add nsw i64 %indvars.iv91, %i.ch        ; 3 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.de ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !169, !llvm.access.group !618
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.de ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !169, !llvm.access.group !618
  %i.dj = fmul float %i.dg, %i.di
  store float %i.dj, ptr %i.df, align 4, !tbaa !169, !llvm.access.group !618
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.de ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !169, !llvm.access.group !618
  %i.dm = load float, ptr %i.dh, align 4, !tbaa !169, !llvm.access.group !618
  %i.dn = fmul float %i.dl, %i.dm
  store float %i.dn, ptr %i.dk, align 4, !tbaa !169, !llvm.access.group !618
  %.reass = add i64 %indvars.iv91, %invariant.op  ; 3 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %.reass ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !169, !llvm.access.group !618
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %.reass ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !169, !llvm.access.group !618
  %i.ds = fmul float %i.dp, %i.dr
  store float %i.ds, ptr %i.do, align 4, !tbaa !169, !llvm.access.group !618
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %.reass ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !169, !llvm.access.group !618
  %i.dv = load float, ptr %i.dq, align 4, !tbaa !169, !llvm.access.group !618
  %i.dw = fmul float %i.du, %i.dv
  store float %i.dw, ptr %i.dt, align 4, !tbaa !169, !llvm.access.group !618
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %exitcond95.not.1 = icmp eq i64 %indvars.iv.next92.1, %wide.trip.count94
  br i1 %exitcond95.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !625

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.m
  %.not.i.i.i = icmp eq ptr %.sroa.0.161, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.dx = ptrtoint ptr %.sroa.10.163 to i64
  %i.dy = ptrtoint ptr %.sroa.0.161 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.161, i64 noundef %i.dz) #35, !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM14LambdarankNDCG27LogDebugPositionBiasFactorsEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ey = load i32, ptr %i.bp, align 8, !tbaa !299
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next, %i.ez
  br i1 %i.fa, label %bb.m, label %._crit_edge, !llvm.loop !658

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit48
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.bu
  br i1 %i.fe, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %bb.t, %bb.p
  %.sink109 = phi ptr [ %i.eh, %bb.p ], [ %i.fd, %bb.t ]
  %.pn19.ph = phi { ptr, i32 } [ %i.eg, %bb.p ], [ %i.fc, %bb.t ]
  %i.ff = load i64, ptr %i.bu, align 8, !tbaa !95
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %.sink109, i64 noundef %i.fg) #35
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %bb.t, %bb.p
  %.pn19 = phi { ptr, i32 } [ %i.eg, %bb.p ], [ %i.fc, %bb.t ], [ %.pn19.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.v

bb.u:                                             ; preds = %.noexc58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %5, align 8, !tbaa !96    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.bx
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.u
  %i.fk = load i64, ptr %i.bx, align 8, !tbaa !95
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %.body46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %.body, %bb.j
  %.pn21.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.j ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn, %.body ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn19, %.body46 ], [ %i.fb, %bb.s ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 2, ptr noundef nonnull @.str.59, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM10RankXENDCGD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM10RankXENDCGE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM16RankingObjectiveE, i64 16), ptr %0, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM16RankingObjectiveD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !195
  br label %_ZN8LightGBM16RankingObjectiveD2Ev.exit

_ZN8LightGBM16RankingObjectiveD2Ev.exit:          ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM10RankXENDCGD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM10RankXENDCGE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !681
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM16RankingObjectiveE, i64 16), ptr %0, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN8LightGBM10RankXENDCGD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !682
  br label %_ZN8LightGBM10RankXENDCGD2Ev.exit

_ZN8LightGBM10RankXENDCGD2Ev.exit:                ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10RankXENDCG4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8LightGBM16RankingObjective4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !296  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !689
  %.pre7 = load ptr, ptr %i.g, align 8, !tbaa !314
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.au, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.i = phi ptr [ %.pre7, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 5 uses
  %i.j = phi ptr [ %.pre, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 3 uses
  %.06 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 2 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !156
  %i.l = add nsw i32 %i.k, %.06                   ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.l, ptr %i.j, align 4, !tbaa !316
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !689
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !313  ; 7 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
  unreachable

_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 2
  %mul2.i.i = ashr exact i64 %i.q, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.t = icmp ult i64 %3, %i.s
  %i.u = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.v = select i1 %i.t, i64 2305843009213693951, i64 %i.u ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  store i32 %i.l, ptr %i.y, align 4, !tbaa !316
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = ptrtoaddr ptr %i.x to i64
  %i.aa = add i64 %i.o, -4
  %i.ab = sub i64 %i.aa, %i.p                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %i.ae = sub i64 %i.p, %i.z
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.aj = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep15, align 4, !tbaa !204, !alias.scope !691, !noalias !690
  %wide.load16 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !204, !alias.scope !691, !noalias !690
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !204, !alias.scope !690, !noalias !691
  store <4 x i32> %wide.load16, ptr %i.ak, align 4, !tbaa !204, !alias.scope !690, !noalias !691
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.preheader18:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.am = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !204, !alias.scope !691, !noalias !690
  store i32 %i.am, ptr %.012.i.i.i.i.i, align 4, !tbaa !204, !alias.scope !690, !noalias !691
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !687

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !314
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.as) #35
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  store ptr %i.x, ptr %i.d, align 8, !tbaa !313
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !689
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.at, ptr %i.g, align 8, !tbaa !314
  %.pre8 = load i32, ptr %i.a, align 4, !tbaa !296
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.au = phi i32 [ %i.h, %bb.c ], [ %.pre8, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.av = phi ptr [ %i.i, %bb.c ], [ %i.at, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.aw = phi ptr [ %i.m, %bb.c ], [ %i.ap, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ax = add nuw nsw i32 %.06, 1                 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.au
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !688
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM10RankXENDCG7GetNameEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.8
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM10RankXENDCG23GetGradientsForOneQueryEiiPKfPKdPfS5_(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %.preheader, label %.noexc

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph130.split, label %.loopexit

.lr.ph130.split:                                  ; preds = %.preheader
  store float 0.000000e+00, ptr %5, align 4, !tbaa !169
  store float 0.000000e+00, ptr %6, align 4, !tbaa !169
  br label %.loopexit

.noexc:                                           ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 10 uses
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 7 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #34 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !191
  %i.f = load double, ptr %4, align 8, !tbaa !191 ; 2 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = add nsw i32 %2, -2
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.noexc.new

.noexc.new:                                       ; preds = %.noexc
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.noexc.new
  %indvars.iv.i = phi i64 [ 1, %.noexc.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.02628.i = phi double [ %i.f, %.noexc.new ], [ %.sroa.speculated.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.noexc.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !191 ; 2 uses
  %i.l = fcmp olt double %i.k, %.02628.i
  %.sroa.speculated.i = select i1 %i.l, double %.02628.i, double %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !191 ; 2 uses
  %i.p = fcmp olt double %i.o, %.sroa.speculated.i
  %.sroa.speculated.i.1 = select i1 %i.p, double %.sroa.speculated.i, double %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !191 ; 2 uses
  %i.t = fcmp olt double %i.s, %.sroa.speculated.i.1
  %.sroa.speculated.i.2 = select i1 %i.t, double %.sroa.speculated.i.1, double %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !191 ; 2 uses
  %i.x = fcmp olt double %i.w, %.sroa.speculated.i.2
  %.sroa.speculated.i.3 = select i1 %i.x, double %.sroa.speculated.i.2, double %i.w ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph32.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !52

.lr.ph32.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph32.i.preheader.unr-lcssa, %.noexc
  %indvars.iv.i.epil.init = phi i64 [ 1, %.noexc ], [ %indvars.iv.next.i.3, %.lr.ph32.i.preheader.unr-lcssa ]
  %.02628.i.epil.init = phi double [ %i.f, %.noexc ], [ %.sroa.speculated.i.3, %.lr.ph32.i.preheader.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.02628.i.epil = phi double [ %.02628.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i.epil
  %i.z = load double, ptr %i.y, align 8, !tbaa !191 ; 2 uses
  %i.aa = fcmp olt double %i.z, %.02628.i.epil
  %.sroa.speculated.i.epil = select i1 %i.aa, double %.02628.i.epil, double %i.z ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph32.i.preheader, label %.lr.ph.i.epil, !llvm.loop !692

.lr.ph32.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph32.i.preheader.unr-lcssa
  %.sroa.speculated.i.lcssa = phi double [ %.sroa.speculated.i.3, %.lr.ph32.i.preheader.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ]
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.lr.ph32.i ], [ 0, %.lr.ph32.i.preheader ] ; 3 uses
  %.02230.i = phi double [ %i.ag, %.lr.ph32.i ], [ 0.000000e+00, %.lr.ph32.i.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv37.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !191
  %i.ad = fsub double %i.ac, %.sroa.speculated.i.lcssa
  %i.ae = tail call double @exp(double noundef %i.ad) #12 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv37.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !191
  %i.ag = fadd double %.02230.i, %i.ae            ; 3 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.c
  br i1 %exitcond41.not.i, label %vector.ph, label %.lr.ph32.i, !llvm.loop !53
end_hunk_2
begin_hunk_3_@_ZN8LightGBM13MulticlassOVAC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread: ; preds = %._crit_edge.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %._crit_edge.i.i17
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !96 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 1
  %i.by = load i32, ptr %i.m, align 1
  %i.bz = xor i32 %i.bx, %i.by
  %i.ca = getelementptr i8, ptr %i.bw, i64 3
  %i.cb = getelementptr i8, ptr %i.m, i64 3
  %i.cc = load i32, ptr %i.ca, align 1
  %i.cd = load i32, ptr %i.cb, align 1
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = or i32 %i.bz, %i.ce
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br i1 %i.ci, label %bb.n, label %_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !96
  invoke fastcc void @_ZN8LightGBM6CommonL4AtofEPKcPd(ptr noundef %i.ck, ptr noundef %i.d)
          to label %._ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit_crit_edge unwind label %bb.o

._ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %3, align 8, !tbaa !342
  %.pre50 = load ptr, ptr %i.j, align 8, !tbaa !343
  br label %_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #12
  br label %bb.q

_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, %._ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit_crit_edge, %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.f
  %i.cm = phi ptr [ %.pre50, %._ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit_crit_edge ], [ %i.ae, %.critedge.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.ae, %bb.f ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ] ; 2 uses
  %i.cn = phi ptr [ %.pre, %._ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit_crit_edge ], [ %i.af, %.critedge.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.af, %bb.f ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ct, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cn, %_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit ] ; 3 uses
  %i.co = load ptr, ptr %.05.i.i.i, align 8, !tbaa !96 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !95
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ct, %i.cm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !342
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit
  %i.cu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cn, %_ZN8LightGBM6CommonL4AtoiIiEEPKcS3_PT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cv = load ptr, ptr %i.o, align 8, !tbaa !344
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.cz = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.h
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.db = load i64, ptr %i.h, align 8, !tbaa !95
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.034.046, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

bb.q:                                             ; preds = %bb.o, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.bt, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.de = load ptr, ptr %2, align 8, !tbaa !96    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.h
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.q
  %i.dg = load i64, ptr %i.h, align 8, !tbaa !95
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.v

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.97)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.t, %._crit_edge.thread
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.dj = load double, ptr %i.d, align 8, !tbaa !203 ; 2 uses
  %i.dk = fcmp ugt double %i.dj, 0.000000e+00
  br i1 %i.dk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.41, double noundef %i.dj)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void

bb.v:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.di, %bb.r ]
  call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM13BinaryLoglossESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #12
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !342    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !343  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !95
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !76

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !342
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !344
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !342    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5
  %mul2 = ashr exact i64 %i.f, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #34 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !91
  %i.r = load ptr, ptr %2, align 8, !tbaa !96     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !96
  %i.y = load i64, ptr %i.s, align 8, !tbaa !95
  store i64 %i.y, ptr %i.q, align 8, !tbaa !95
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !94
  store ptr %i.s, ptr %2, align 8, !tbaa !96
  store i64 0, ptr %i.aa, align 8, !tbaa !94
  store i8 0, ptr %i.s, align 8, !tbaa !95
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !91, !alias.scope !856, !noalias !857
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !96, !alias.scope !857, !noalias !856 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !94, !alias.scope !857, !noalias !856 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !858
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !96, !alias.scope !856, !noalias !857
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !95, !alias.scope !857, !noalias !856
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !95, !alias.scope !856, !noalias !857
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !94, !alias.scope !857, !noalias !856
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !94, !alias.scope !856, !noalias !857
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !96, !alias.scope !857, !noalias !856
  store i64 0, ptr %i.am, align 8, !tbaa !94, !alias.scope !857, !noalias !856
  store i8 0, ptr %i.ae, align 8, !tbaa !95, !alias.scope !857, !noalias !856
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !852

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !91, !alias.scope !859, !noalias !860
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !96, !alias.scope !860, !noalias !859 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !94, !alias.scope !860, !noalias !859 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !861
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !96, !alias.scope !859, !noalias !860
  %i.az = load i64, ptr %i.at, align 8, !tbaa !95, !alias.scope !860, !noalias !859
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !95, !alias.scope !859, !noalias !860
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !94, !alias.scope !860, !noalias !859
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !94, !alias.scope !859, !noalias !860
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !96, !alias.scope !860, !noalias !859
  store i64 0, ptr %i.bb, align 8, !tbaa !94, !alias.scope !860, !noalias !859
  store i8 0, ptr %i.at, align 8, !tbaa !95, !alias.scope !860, !noalias !859
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !852

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !344
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !342
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !343
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !344
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8LightGBM6CommonL4AtofEPKcPd(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  store double +qnan, ptr %1, align 8, !tbaa !191
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0126 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.c ] ; 4 uses
  %i.b = load i8, ptr %.0126, align 1, !tbaa !95  ; 2 uses
  switch i8 %i.b, label %.loopexit [
    i8 32, label %bb.c
    i8 45, label %thread-pre-split.loopexit
    i8 43, label %thread-pre-split
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0126, i64 1
  br label %bb.b, !llvm.loop !862

thread-pre-split.loopexit:                        ; preds = %bb.b
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %thread-pre-split.loopexit
  %.0129.ph = phi double [ -1.000000e+00, %thread-pre-split.loopexit ], [ 1.000000e+00, %bb.b ]
  %.1.ph = getelementptr inbounds nuw i8, ptr %.0126, i64 1 ; 2 uses
  %.pr = load i8, ptr %.1.ph, align 1, !tbaa !95
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %thread-pre-split
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.b ] ; 7 uses
  %.0129 = phi double [ %.0129.ph, %thread-pre-split ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.1.ph, %thread-pre-split ], [ %.0126, %bb.b ] ; 7 uses
  %i.e = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %.loopexit
  switch i8 %i.d, label %.preheader259 [
    i8 46, label %.critedge
    i8 101, label %.critedge
    i8 69, label %.critedge
  ]
end_hunk_3
