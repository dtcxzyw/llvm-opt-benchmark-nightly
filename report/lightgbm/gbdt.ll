Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1590
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8LightGBM4GBDT9MergeFromEPKNS_8BoostingE:_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41.loopexit.split-lp: ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41.loopexit.split-lp, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41.loopexit.split-lp ]
  %i.dz = load ptr, ptr %i.ce, align 8, !tbaa !202
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(648) %i.ce) #21, !inline_history !5
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41, %bb.g, %bb.h, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit20
  %.pn14.pn = phi { ptr, i32 } [ %i.bq, %bb.g ], [ %lpad.phi86, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit20 ], [ %i.br, %bb.h ], [ %lpad.phi, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit41 ], [ %i.dy, %bb.q ], [ %i.dx, %bb.p ]
  call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM4GBDT13ShuffleModelsEii(ptr noundef nonnull align 8 dereferenceable(648) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.56", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !232  ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !207
  %i.l = sdiv i32 %i.i, %i.k                      ; 8 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 2 uses
  %i.m = icmp slt i32 %2, 1
  %i.n = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.l)
  %.sroa.speculated76 = select i1 %i.m, i32 %i.l, i32 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.d, ptr %3, align 8, !tbaa !232
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.o, align 8, !tbaa !233
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !234  ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !234
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.s = sext i32 %i.l to i64                     ; 3 uses
  %i.t = icmp slt i32 %i.l, 0
  br i1 %i.t, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.l, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %.preheader95, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.u = shl nuw nsw i64 %i.s, 2
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #35
          to label %.noexc30 unwind label %bb.d   ; 6 uses

.noexc30:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s
  store i32 0, ptr %i.v, align 4, !tbaa !190
  %i.x = add nsw i64 %i.s, -1                     ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc30
  %i.z = getelementptr i8, ptr %i.v, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !190
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc30
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %vec.ind, ptr %i.aa, align 4, !tbaa !190
  store <4 x i32> %step.add, ptr %i.ab, align 4, !tbaa !190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader95.loopexit, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader95.loopexit:                            ; preds = %.lr.ph, %middle.block
  %i.ad = ptrtoint ptr %i.w to i64
  br label %.preheader95

.preheader95:                                     ; preds = %.preheader95.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0153 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ad, %.preheader95.loopexit ] ; 2 uses
  %.sroa.063.0150 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.v, %.preheader95.loopexit ] ; 8 uses
  %i.ae = add nsw i32 %.sroa.speculated76, -1     ; 2 uses
  %i.af = icmp slt i32 %.sroa.speculated, %i.ae
  br i1 %i.af, label %.lr.ph102.preheader, label %._crit_edge

.lr.ph102.preheader:                              ; preds = %.preheader95
  %i.ag = zext nneg i32 %.sroa.speculated to i64
  %wide.trip.count118 = zext nneg i32 %i.ae to i64
  br label %.lr.ph102

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit50

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader186 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !190
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader95.loopexit, label %.lr.ph, !llvm.loop !422

._crit_edge:                                      ; preds = %.lr.ph102, %.preheader95
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !232 ; 5 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !233 ; 2 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !234
  %.not4.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.an = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !202
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(648) %i.an) #21, !inline_history !423
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, %._crit_edge
  %.not.i.i1.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.au) #34
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.e
  br i1 %.not.i.i.i.i, label %._crit_edge107, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.av = load i32, ptr %i.j, align 8, !tbaa !207 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.preheader.preheader, label %._crit_edge107

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count124 = zext nneg i32 %i.l to i64
  br label %.preheader

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %indvars.iv115 = phi i64 [ %i.ag, %.lr.ph102.preheader ], [ %indvars.iv.next116, %.lr.ph102 ] ; 2 uses
  %.sroa.061.0100 = phi i32 [ 17, %.lr.ph102.preheader ], [ %i.ay, %.lr.ph102 ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 4 uses
  %i.ax = mul i32 %.sroa.061.0100, 214013
  %i.ay = add i32 %i.ax, 2531011                  ; 2 uses
  %i.az = lshr i32 %i.ay, 16
  %i.ba = and i32 %i.az, 32767
  %i.bb = trunc i64 %indvars.iv.next116 to i32
  %i.bc = sub i32 %.sroa.speculated76, %i.bb
  %i.bd = srem i32 %i.ba, %i.bc
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.063.0150, i64 %indvars.iv115 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.063.0150, i64 %indvars.iv.next116
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be ; 2 uses
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !190
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !190
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !190
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !190
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge, label %.lr.ph102, !llvm.loop !424

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge105
  %i.bk = phi i32 [ %i.av, %.preheader.preheader ], [ %i.bw, %._crit_edge105 ] ; 3 uses
  %indvars.iv120 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next121, %._crit_edge105 ] ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.063.0150, i64 %indvars.iv120
  br label %bb.h

._crit_edge107:                                   ; preds = %._crit_edge105, %.preheader.lr.ph, %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %.not.i.i.i32 = icmp eq ptr %.sroa.063.0150, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge107
  %i.bn = ptrtoint ptr %.sroa.063.0150 to i64
  %i.bo = sub i64 %.sroa.13.0153, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0150, i64 noundef %i.bo) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge107, %bb.f
  %.not4.i.i.i33 = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i.i33, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i42, label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i38
  %.05.i.i.i35 = phi ptr [ %i.bt, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i38 ], [ %i.d, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.bp = load ptr, ptr %.05.i.i.i35, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i36, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i38, label %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i.i.i.i.i37

_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i34
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !202
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(648) %i.bp) #21, !inline_history !6
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i38

_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i38: ; preds = %_ZNKSt14default_deleteIN8LightGBM4TreeEEclEPS1_.exit.i.i.i.i.i37, %.lr.ph.i.i.i34
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i35, i64 8 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bt, %i.c
  br i1 %.not.i.i.i39, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i42, label %.lr.ph.i.i.i34, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EEEvPT_.exit.i.i.i38, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.not.i.i1.i43 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1.i43, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit44, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i42
  %i.bu = ptrtoint ptr %i.r to i64
  %i.bv = sub i64 %i.bu, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bv) #34
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit44

_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EED2Ev.exit44: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i42, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

._crit_edge105:                                   ; preds = %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit, %.preheader
  %i.bw = phi i32 [ %i.bk, %.preheader ], [ %i.dv, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit ]
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge107, label %.preheader, !llvm.loop !425

bb.h:                                             ; preds = %.lr.ph104, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit
  %i.bx = phi i32 [ %i.bk, %.lr.ph104 ], [ %i.dv, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit ]
  %.0103 = phi i32 [ 0, %.lr.ph104 ], [ %i.du, %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !190
  %i.bz = invoke noalias noundef nonnull dereferenceable(648) ptr @_Znwm(i64 noundef 648) #35
          to label %bb.i unwind label %bb.o       ; 6 uses

bb.i:                                             ; preds = %bb.h
  %i.ca = mul nsw i32 %i.by, %i.bx
  %i.cb = add nsw i32 %i.ca, %.0103
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !238
  invoke void @_ZN8LightGBM4TreeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(648) %i.bz, ptr noundef nonnull align 8 dereferenceable(648) %i.ce)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !233 ; 6 uses
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !234
  %.not.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = ptrtoint ptr %i.bz to i64
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !238
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ci, ptr %i.b, align 8, !tbaa !233
  br label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !232 ; 10 uses
  %i.ck = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64               ; 4 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
          to label %.noexc53 unwind label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit48.loopexit.split-lp

.noexc53:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i51 = icmp ne i64 %i.cs, 0
  tail call void @llvm.assume(i1 %.not.i.i51)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #35
          to label %.noexc54 unwind label %_ZNSt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS1_EED2Ev.exit48.loopexit ; 10 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  %i.cw = ptrtoint ptr %i.bz to i64
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !238
  %.not10.i.i.i.i = icmp eq ptr %i.cj, %i.cf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc54
  %i.cx = add i64 %i.ck, -8
  %i.cy = sub i64 %i.cx, %i.cl                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.cy, 56
  br i1 %min.iters.check168, label %.lr.ph.i.i.i.i.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cu, i64 8
  %i.db = add i64 %i.ck, -8
  %i.dc = sub i64 %i.db, %i.cl
  %i.dd = and i64 %i.dc, -8                       ; 2 uses
  %scevgep164 = getelementptr i8, ptr %scevgep, i64 %i.dd
  %scevgep165 = getelementptr i8, ptr %i.cj, i64 8
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.dd
  %bound0 = icmp ult ptr %i.cu, %scevgep166
  %bound1 = icmp ult ptr %i.cj, %scevgep164
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader180, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck
  %n.vec170 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.de = shl i64 %n.vec170, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cj, i64 %i.de
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next175, %vector.body171 ] ; 2 uses
  %i.dh = shl i64 %index172, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.cj, i64 %i.dh ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.di = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep173, align 8, !tbaa !238, !alias.scope !437, !noalias !435
  %wide.load174 = load <2 x i64>, ptr %i.di, align 8, !tbaa !238, !alias.scope !437, !noalias !435
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !238, !alias.scope !438, !noalias !437
  store <2 x i64> %wide.load174, ptr %i.dj, align 8, !tbaa !238, !alias.scope !438, !noalias !437
  %i.dk = getelementptr i8, ptr %next.gep173, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep173, align 8, !tbaa !238, !alias.scope !437, !noalias !435
  store <2 x ptr> splat (ptr null), ptr %i.dk, align 8, !tbaa !238, !alias.scope !437, !noalias !435
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.dl, label %middle.block176, label %vector.body171, !llvm.loop !432

middle.block176:                                  ; preds = %vector.body171
  %cmp.n177 = icmp eq i64 %i.da, %n.vec170
  br i1 %cmp.n177, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM4TreeESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader180

.lr.ph.i.i.i.i.preheader180:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block176
  %.012.i.i.i.i.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph.i.i.i.i.preheader ], [ %i.df, %middle.block176 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %middle.block176 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader180, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader180 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader180 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
end_hunk_0
