Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EEaSEOS9_:bb.a
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #37
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE14_M_move_assignEOS9_St17integral_constantIbLb1EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #37
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE14_M_move_assignEOS9_St17integral_constantIbLb1EE.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE14_M_move_assignEOS9_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL28parse_comma_float_array_listPc(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull %1) unnamed_addr #28 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 10 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %2 = alloca %"class.std::vector.40", align 8    ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @strtok(ptr noundef nonnull %1, ptr noundef nonnull @.str.120) #20 ; 2 uses
  %.not52 = icmp eq ptr %i.c, null
  br i1 %.not52, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph55, %bb.v
  %.01353 = phi ptr [ %i.c, %.lr.ph55 ], [ %i.dj, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !161
  %i.i = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.01353, ptr noundef nonnull @.str.121, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #20
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, label %bb.v

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.l = call fastcc noundef float @_ZL13vstr_to_floatPKc(ptr noundef %i.a)
  %i.m = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #39
          to label %.noexc15 unwind label %.loopexit37 ; 3 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  store float %i.l, ptr %i.m, align 4, !tbaa !163
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !119
  store ptr %i.n, ptr %i.d, align 8, !tbaa !162
  store ptr %i.n, ptr %i.e, align 8, !tbaa !178
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %.01353, i64 %i.o ; 2 uses
  %i.q = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #20
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc15, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26
  %.151 = phi ptr [ %i.cg, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26 ], [ %i.p, %.noexc15 ]
  %i.s = load i32, ptr %i.b, align 4, !tbaa !161
  %i.t = load i8, ptr %i.a, align 16, !tbaa !58   ; 3 uses
  switch i8 %i.t, label %bb.d [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %.pre.i = load i8, ptr %i.f, align 1, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.u = phi i8 [ %.pre.i, %bb.c ], [ %i.t, %.lr.ph ] ; 2 uses
  %.049.i = phi ptr [ %i.f, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.v = sext i8 %i.u to i32
  %isdigittmp65.i = add nsw i32 %i.v, -48         ; 2 uses
  %isdigit66.i = icmp ult i32 %isdigittmp65.i, 10
  br i1 %isdigit66.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %isdigittmp69.i = phi i32 [ %isdigittmp.i, %.lr.ph.i ], [ %isdigittmp65.i, %bb.d ]
  %.04868.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %bb.d ]
  %.15067.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.049.i, %bb.d ]
  %i.w = mul i64 %.04868.i, 10
  %i.x = zext nneg i32 %isdigittmp69.i to i64
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.15067.i, i64 1 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !58   ; 2 uses
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp.i = add nsw i32 %i.ab, -48          ; 2 uses
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !20

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ac = uitofp i64 %i.y to double
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %.150.lcssa.i = phi ptr [ %.049.i, %bb.d ], [ %i.z, %._crit_edge.loopexit.i ] ; 2 uses
  %.048.lcssa.i = phi double [ 0.000000e+00, %bb.d ], [ %i.ac, %._crit_edge.loopexit.i ] ; 3 uses
  %.lcssa.i = phi i8 [ %i.u, %bb.d ], [ %i.aa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ad = icmp eq i8 %.lcssa.i, 46
  br i1 %i.ad, label %.preheader64.i, label %._crit_edge80.i

.preheader64.i:                                   ; preds = %._crit_edge.i
  %.25172.i = getelementptr inbounds nuw i8, ptr %.150.lcssa.i, i64 1 ; 3 uses
  %i.ae = load i8, ptr %.25172.i, align 1, !tbaa !58 ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %isdigittmp5773.i = add nsw i32 %i.af, -48      ; 2 uses
  %isdigit5874.i = icmp ult i32 %isdigittmp5773.i, 10
  br i1 %isdigit5874.i, label %.lr.ph79.i, label %._crit_edge80.i

.lr.ph79.i:                                       ; preds = %.preheader64.i, %.lr.ph79.i
  %isdigittmp5778.i = phi i32 [ %isdigittmp57.i, %.lr.ph79.i ], [ %isdigittmp5773.i, %.preheader64.i ]
  %.25177.i = phi ptr [ %.251.i, %.lr.ph79.i ], [ %.25172.i, %.preheader64.i ]
  %.04676.i = phi i64 [ %i.ai, %.lr.ph79.i ], [ 0, %.preheader64.i ]
  %.04775.i = phi i64 [ %i.aj, %.lr.ph79.i ], [ 1, %.preheader64.i ]
  %i.ag = mul i64 %.04676.i, 10
  %i.ah = zext nneg i32 %isdigittmp5778.i to i64
  %i.ai = add i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = mul i64 %.04775.i, 10                   ; 2 uses
  %.251.i = getelementptr inbounds nuw i8, ptr %.25177.i, i64 1 ; 3 uses
  %i.ak = load i8, ptr %.251.i, align 1, !tbaa !58 ; 2 uses
  %i.al = sext i8 %i.ak to i32
  %isdigittmp57.i = add nsw i32 %i.al, -48        ; 2 uses
  %isdigit58.i = icmp ult i32 %isdigittmp57.i, 10
  br i1 %isdigit58.i, label %.lr.ph79.i, label %._crit_edge80.loopexit.i, !llvm.loop !21

._crit_edge80.loopexit.i:                         ; preds = %.lr.ph79.i
  %i.am = uitofp i64 %i.ai to double
  %i.an = uitofp i64 %i.aj to double
  %i.ao = fdiv double %i.am, %i.an
  %i.ap = fadd double %.048.lcssa.i, %i.ao
  br label %._crit_edge80.i

._crit_edge80.i:                                  ; preds = %._crit_edge80.loopexit.i, %.preheader64.i, %._crit_edge.i
  %i.aq = phi i8 [ %.lcssa.i, %._crit_edge.i ], [ %i.ae, %.preheader64.i ], [ %i.ak, %._crit_edge80.loopexit.i ]
  %.052.i = phi double [ %.048.lcssa.i, %._crit_edge.i ], [ %.048.lcssa.i, %.preheader64.i ], [ %i.ap, %._crit_edge80.loopexit.i ] ; 3 uses
  %.3.i = phi ptr [ %.150.lcssa.i, %._crit_edge.i ], [ %.25172.i, %.preheader64.i ], [ %.251.i, %._crit_edge80.loopexit.i ] ; 2 uses
  switch i8 %i.aq, label %_ZL13vstr_to_floatPKc.exit [
    i8 101, label %bb.e
    i8 69, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge80.i, %._crit_edge80.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !58  ; 3 uses
  %.not59.i = icmp eq i8 %i.as, 45
  switch i8 %i.as, label %bb.g [
    i8 43, label %bb.f
    i8 45, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %.pre113.i = load i8, ptr %i.at, align 1, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi i8 [ %.pre113.i, %bb.f ], [ %i.as, %bb.e ]
  %.4.i = phi ptr [ %i.at, %bb.f ], [ %i.ar, %bb.e ]
  %i.av = sext i8 %i.au to i32
  %isdigittmp6084.i = add nsw i32 %i.av, -48      ; 2 uses
  %isdigit6185.i = icmp ult i32 %isdigittmp6084.i, 10
  br i1 %isdigit6185.i, label %.lr.ph90.i, label %._crit_edge101.i

.preheader63.i:                                   ; preds = %.lr.ph90.i
  %i.aw = icmp ugt i64 %i.az, 7
  br i1 %i.aw, label %.lr.ph94.i, label %.preheader.i

.lr.ph90.i:                                       ; preds = %bb.g, %.lr.ph90.i
  %isdigittmp6088.i = phi i32 [ %isdigittmp60.i, %.lr.ph90.i ], [ %isdigittmp6084.i, %bb.g ]
  %.04487.i = phi i64 [ %i.az, %.lr.ph90.i ], [ 0, %bb.g ]
  %.586.i = phi ptr [ %i.ba, %.lr.ph90.i ], [ %.4.i, %bb.g ]
  %i.ax = mul i64 %.04487.i, 10
  %i.ay = zext nneg i32 %isdigittmp6088.i to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.586.i, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !58
  %i.bc = sext i8 %i.bb to i32
  %isdigittmp60.i = add nsw i32 %i.bc, -48        ; 2 uses
  %isdigit61.i = icmp ult i32 %isdigittmp60.i, 10
  br i1 %isdigit61.i, label %.lr.ph90.i, label %.preheader63.i, !llvm.loop !22

.preheader.i:                                     ; preds = %.lr.ph94.i, %.preheader63.i
  %.145.lcssa.i = phi i64 [ %i.az, %.preheader63.i ], [ %5, %.lr.ph94.i ] ; 4 uses
  %.0.lcssa.i = phi double [ 1.000000e+00, %.preheader63.i ], [ %i.be, %.lr.ph94.i ] ; 2 uses
  %.not6297.i = icmp eq i64 %.145.lcssa.i, 0
  br i1 %.not6297.i, label %._crit_edge101.i, label %.lr.ph100.i.prol

.lr.ph100.i.prol:                                 ; preds = %.preheader.i, %.lr.ph100.i.prol
  %.199.i.prol = phi double [ %i.bd, %.lr.ph100.i.prol ], [ %.0.lcssa.i, %.preheader.i ]
  %.298.i.prol = phi i64 [ %3, %.lr.ph100.i.prol ], [ %.145.lcssa.i, %.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph100.i.prol ], [ 0, %.preheader.i ]
  %i.bd = fmul double %.199.i.prol, 1.000000e+01  ; 3 uses
  %3 = add nsw i64 %.298.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.145.lcssa.i
  br i1 %prol.iter.cmp.not, label %.lr.ph100.i.prol.loopexit, label %.lr.ph100.i.prol, !llvm.loop !668

.lr.ph100.i.prol.loopexit:                        ; preds = %.lr.ph100.i.prol
  %4 = icmp ult i64 %.145.lcssa.i, 8
  br i1 %4, label %._crit_edge101.i, label %.lr.ph100.i.a

.lr.ph94.i:                                       ; preds = %.preheader63.i, %.lr.ph94.i
  %.093.i = phi double [ %i.be, %.lr.ph94.i ], [ 1.000000e+00, %.preheader63.i ]
  %.14592.i = phi i64 [ %5, %.lr.ph94.i ], [ %i.az, %.preheader63.i ]
  %i.be = fmul double %.093.i, 1.000000e+08       ; 2 uses
  %5 = add i64 %.14592.i, -8                      ; 3 uses
  %6 = icmp ugt i64 %5, 7
  br i1 %6, label %.lr.ph94.i, label %.preheader.i, !llvm.loop !23

.lr.ph100.i.a:                                    ; preds = %.lr.ph100.i.prol.loopexit, %.lr.ph100.i.a
  %.199.i = phi double [ %i.bf, %.lr.ph100.i.a ], [ %i.bd, %.lr.ph100.i.prol.loopexit ]
  %.298.i = phi i64 [ %14, %.lr.ph100.i.a ], [ %3, %.lr.ph100.i.prol.loopexit ]
  %7 = fmul double %.199.i, 1.000000e+01
  %8 = fmul double %7, 1.000000e+01
  %9 = fmul double %8, 1.000000e+01
  %10 = fmul double %9, 1.000000e+01
  %11 = fmul double %10, 1.000000e+01
  %12 = fmul double %11, 1.000000e+01
  %13 = fmul double %12, 1.000000e+01
  %i.bf = fmul double %13, 1.000000e+01           ; 2 uses
  %14 = add nsw i64 %.298.i, -8                   ; 2 uses
  %.not62.i.7 = icmp eq i64 %14, 0
  br i1 %.not62.i.7, label %._crit_edge101.i, label %.lr.ph100.i.a, !llvm.loop !669

._crit_edge101.i:                                 ; preds = %.lr.ph100.i.prol.loopexit, %.lr.ph100.i.a, %.preheader.i, %bb.g
  %.1.lcssa.i = phi double [ %.0.lcssa.i, %.preheader.i ], [ 1.000000e+00, %bb.g ], [ %i.bd, %.lr.ph100.i.prol.loopexit ], [ %i.bf, %.lr.ph100.i.a ] ; 2 uses
  %i.bg = fmul double %.052.i, %.1.lcssa.i
  %i.bh = fdiv double %.052.i, %.1.lcssa.i
  %i.bi = select i1 %.not59.i, double %i.bh, double %i.bg
  br label %_ZL13vstr_to_floatPKc.exit

_ZL13vstr_to_floatPKc.exit:                       ; preds = %._crit_edge80.i, %._crit_edge101.i
  %.153.i = phi double [ %i.bi, %._crit_edge101.i ], [ %.052.i, %._crit_edge80.i ]
  %.not.i16 = icmp eq i8 %i.t, 45
  %i.bj = fptrunc double %.153.i to float         ; 2 uses
  %i.bk = fneg float %i.bj
  %i.bl = select i1 %.not.i16, float %i.bk, float %i.bj ; 2 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !162 ; 4 uses
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !178
  %.not.i17 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZL13vstr_to_floatPKc.exit
  store float %i.bl, ptr %i.bm, align 4, !tbaa !163
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !162
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26

bb.i:                                             ; preds = %_ZL13vstr_to_floatPKc.exit
  %i.bp = load ptr, ptr %2, align 8, !tbaa !119   ; 4 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775804
  br i1 %i.bt, label %bb.j, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18: ; preds = %bb.i
  %i.bu = ashr exact i64 %i.bs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i19 = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i19, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 2305843009213693951)
  %i.by = select i1 %i.bw, i64 2305843009213693951, i64 %i.bx ; 3 uses
  %.not.i.i.i20 = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i.i20)
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #39
          to label %.noexc25 unwind label %.loopexit ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  store float %i.bl, ptr %i.cb, align 4, !tbaa !163
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.k, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21

bb.k:                                             ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ca, ptr align 4 %i.bp, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21: ; preds = %bb.k, %.noexc25
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.not.i17.i.i22 = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i22, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #37
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23: ; preds = %bb.l, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21
  store ptr %i.ca, ptr %2, align 8, !tbaa !119
  store ptr %i.cd, ptr %i.d, align 8, !tbaa !162
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.ce, ptr %i.e, align 8, !tbaa !178
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26

_ZNSt6vectorIfSaIfEE9push_backERKf.exit26:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23, %bb.h
  %i.cf = sext i32 %i.s to i64
  %i.cg = getelementptr inbounds i8, ptr %.151, i64 %i.cf ; 2 uses
  %i.ch = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.cg, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #20
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !670

.loopexit37:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, %bb.r
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp38:                             ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26, %.noexc15
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !140 ; 6 uses
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !268
  %.not.i27 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i27, label %bb.r, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !162 ; 2 uses
  %i.cm = load ptr, ptr %2, align 8, !tbaa !119   ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i.i, label %.noexc29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = icmp ugt i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, !prof !49

.noexc.i.i.i:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc28 unwind label %.loopexit.split-lp38

.noexc28:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #39
          to label %.noexc29 unwind label %.loopexit37

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, %bb.m
  %i.cs = phi ptr [ null, %bb.m ], [ %i.cr, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.cs, ptr %i.cj, align 8, !tbaa !119
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !162
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !178
  %i.cw = load ptr, ptr %2, align 8, !tbaa !172   ; 4 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !172
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 4 uses
  %i.db = icmp sgt i64 %i.da, 4
  br i1 %i.db, label %bb.o, label %bb.p, !prof !242

bb.o:                                             ; preds = %.noexc29
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cs, ptr align 4 %i.cw, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

bb.p:                                             ; preds = %.noexc29
  %i.dc = icmp eq i64 %i.da, 4
  br i1 %i.dc, label %bb.q, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dd = load float, ptr %i.cw, align 4, !tbaa !163
  store float %i.dd, ptr %i.cs, align 4, !tbaa !163
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i:              ; preds = %bb.q, %bb.p, %bb.o
  %i.de = getelementptr inbounds i8, ptr %i.cs, i64 %i.da
  store ptr %i.de, ptr %i.ct, align 8, !tbaa !162
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store ptr %i.dg, ptr %i.g, align 8, !tbaa !140
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit

bb.r:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit37

._ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.r
  %.pre = load ptr, ptr %2, align 8, !tbaa !119
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i
  %i.dh = phi ptr [ %.pre, %._ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.cw, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.i ] ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dh) #37
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE9push_backERKS1_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.v

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit37, %.loopexit.split-lp38
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp40, %.loopexit.split-lp38 ], [ %lpad.loopexit39, %.loopexit37 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.di = load ptr, ptr %2, align 8, !tbaa !119   ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIfSaIfEED2Ev.exit33, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdlPv(ptr noundef nonnull %i.di) #37
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit33

_ZNSt6vectorIfSaIfEED2Ev.exit33:                  ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.b
  %i.dj = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.120) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not = icmp eq ptr %i.dj, null
  br i1 %.not, label %._crit_edge56, label %bb.b, !llvm.loop !671

._crit_edge56:                                    ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define internal fastcc void @_ZL22print_float_array_listRKSt6vectorIS_IfSaIfEESaIS1_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 2 uses
  %.not23 = icmp eq ptr %i.b, %i.c
  br i1 %.not23, label %._crit_edge22, label %.lr.ph21

._crit_edge22:                                    ; preds = %bb.e, %bb.a
  ret void

.lr.ph21:                                         ; preds = %bb.a, %bb.e
  %i.d = phi ptr [ %i.aj, %bb.e ], [ %i.c, %bb.a ]
  %.01319 = phi i64 [ %i.ak, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.01319 ; 4 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc = tail call i32 @fputc(i32 91, ptr %i.f) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %.not24 = icmp eq ptr %i.h, %i.i
  br i1 %.not24, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph21
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc14 = tail call i32 @fputc(i32 93, ptr %i.j) ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.l = load ptr, ptr %0, align 8, !tbaa !139    ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  %.not = icmp eq i64 %.01319, %i.q
  br i1 %.not, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph21, %bb.c
  %i.r = phi ptr [ %i.af, %bb.c ], [ %i.i, %.lr.ph21 ]
  %.018 = phi i64 [ %i.ag, %bb.c ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !182
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.018
  %i.u = load float, ptr %i.t, align 4, !tbaa !163
  %i.v = fpext float %i.u to double
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.132, double noundef %i.v) #41 ; 0 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1
  %.not16 = icmp eq i64 %.018, %i.ad
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc17 = tail call i32 @fputc(i32 44, ptr %i.ae) ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !162
  %.pre25 = load ptr, ptr %i.e, align 8, !tbaa !119 ; 2 uses
  %.pre35 = ptrtoint ptr %.pre to i64
  %.pre37 = ptrtoint ptr %.pre25 to i64
  %.pre39 = sub i64 %.pre35, %.pre37
  %.pre41 = ashr exact i64 %.pre39, 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.pre-phi42 = phi i64 [ %i.ac, %.lr.ph ], [ %.pre41, %bb.b ]
  %i.af = phi ptr [ %i.y, %.lr.ph ], [ %.pre25, %bb.b ]
  %i.ag = add nuw i64 %.018, 1                    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %.pre-phi42
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !672

bb.d:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc15 = tail call i32 @fputc(i32 44, ptr %i.ai) ; 0 uses
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !140
  %.pre27 = load ptr, ptr %0, align 8, !tbaa !139 ; 2 uses
  %.pre28 = ptrtoint ptr %.pre26 to i64
  %.pre29 = ptrtoint ptr %.pre27 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = sdiv exact i64 %.pre31, 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.pre-phi34 = phi i64 [ %.pre33, %bb.d ], [ %i.p, %._crit_edge ]
  %i.aj = phi ptr [ %.pre27, %bb.d ], [ %i.l, %._crit_edge ]
  %i.ak = add nuw i64 %.01319, 1                  ; 2 uses
  %i.al = icmp ult i64 %i.ak, %.pre-phi34
  br i1 %i.al, label %.lr.ph21, label %._crit_edge22, !llvm.loop !673
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define internal fastcc void @_ZL20print_int_array_listRKSt6vectorIS_IiSaIiEESaIS1_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %.not23 = icmp eq ptr %i.b, %i.c
  br i1 %.not23, label %._crit_edge22, label %.lr.ph21

._crit_edge22:                                    ; preds = %bb.e, %bb.a
  ret void

.lr.ph21:                                         ; preds = %bb.a, %bb.e
  %i.d = phi ptr [ %i.ai, %bb.e ], [ %i.c, %bb.a ]
  %.01319 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.01319 ; 4 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc = tail call i32 @fputc(i32 91, ptr %i.f) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !159
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  %.not24 = icmp eq ptr %i.h, %i.i
  br i1 %.not24, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph21
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc14 = tail call i32 @fputc(i32 93, ptr %i.j) ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.l = load ptr, ptr %0, align 8, !tbaa !137    ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  %.not = icmp eq i64 %.01319, %i.q
  br i1 %.not, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph21, %bb.c
  %i.r = phi ptr [ %i.ae, %bb.c ], [ %i.i, %.lr.ph21 ]
  %.018 = phi i64 [ %i.af, %bb.c ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !182
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.018
  %i.u = load i32, ptr %i.t, align 4, !tbaa !161
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.134, i32 noundef %i.u) #41 ; 0 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !159
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 2 uses
  %i.ac = add nsw i64 %i.ab, -1
  %.not16 = icmp eq i64 %.018, %i.ac
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc17 = tail call i32 @fputc(i32 44, ptr %i.ad) ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !159
  %.pre25 = load ptr, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %.pre35 = ptrtoint ptr %.pre to i64
  %.pre37 = ptrtoint ptr %.pre25 to i64
  %.pre39 = sub i64 %.pre35, %.pre37
  %.pre41 = ashr exact i64 %.pre39, 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.pre-phi42 = phi i64 [ %i.ab, %.lr.ph ], [ %.pre41, %bb.b ]
  %i.ae = phi ptr [ %i.x, %.lr.ph ], [ %.pre25, %bb.b ]
  %i.af = add nuw i64 %.018, 1                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.pre-phi42
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !674

bb.d:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc15 = tail call i32 @fputc(i32 44, ptr %i.ah) ; 0 uses
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !138
  %.pre27 = load ptr, ptr %0, align 8, !tbaa !137 ; 2 uses
  %.pre28 = ptrtoint ptr %.pre26 to i64
  %.pre29 = ptrtoint ptr %.pre27 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = sdiv exact i64 %.pre31, 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.pre-phi34 = phi i64 [ %.pre33, %bb.d ], [ %i.p, %._crit_edge ]
  %i.ai = phi ptr [ %.pre27, %bb.d ], [ %i.l, %._crit_edge ]
  %i.aj = add nuw i64 %.01319, 1                  ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %.pre-phi34
  br i1 %i.ak, label %.lr.ph21, label %._crit_edge22, !llvm.loop !675
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define internal fastcc void @_ZL21print_pixel_type_listRKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.c = load ptr, ptr %0, align 8, !tbaa !120    ; 2 uses
  %.not19 = icmp eq ptr %i.b, %i.c
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %i.d = phi ptr [ %i.u, %bb.j ], [ %i.c, %bb.a ]
  %.018 = phi i64 [ %i.v, %bb.j ], [ 0, %bb.a ]   ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.018
  %i.f = load i32, ptr %i.e, align 4, !tbaa !161
  switch i32 %i.f, label %bb.h [
    i32 -233, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !182
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.125, i64 3, i64 1, ptr %i.g) #42 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !182
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @.str.126, i64 3, i64 1, ptr %i.h) #42 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !182
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 3, i64 1, ptr %i.i) #42 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !182
  %fwrite14 = tail call i64 @fwrite(ptr nonnull @.str.128, i64 4, i64 1, ptr %i.j) #42 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !182
  %fwrite15 = tail call i64 @fwrite(ptr nonnull @.str.129, i64 4, i64 1, ptr %i.k) #42 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !182
  %fwrite16 = tail call i64 @fwrite(ptr nonnull @.str.130, i64 4, i64 1, ptr %i.l) #42 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.g
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.n = load ptr, ptr %0, align 8, !tbaa !120    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = add nsw i64 %i.r, -1
  %.not = icmp eq i64 %.018, %i.s
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !182
  %fputc = tail call i32 @fputc(i32 44, ptr %i.t) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !159
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !120 ; 2 uses
  %.pre21 = ptrtoint ptr %.pre to i64
  %.pre22 = ptrtoint ptr %.pre20 to i64
  %.pre24 = sub i64 %.pre21, %.pre22
  %.pre26 = ashr exact i64 %.pre24, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi27 = phi i64 [ %.pre26, %bb.i ], [ %i.r, %bb.h ]
  %i.u = phi ptr [ %.pre20, %bb.i ], [ %i.n, %bb.h ]
  %i.v = add nuw i64 %.018, 1                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %.pre-phi27
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !676
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !145    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775776
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !49

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #39
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !145
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !146
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !234
  %i.q = load ptr, ptr %1, align 8, !tbaa !237
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !237
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.q, ptr %i.r, ptr noundef %i.m)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.t

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.d
  store ptr %i.s, ptr %i.n, align 8, !tbaa !146
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.w, ptr %i.a, align 8, !tbaa !142
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !145    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !230
  %i.s = load ptr, ptr %2, align 8, !tbaa !149    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !158  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !149
  %i.z = load i64, ptr %i.t, align 8, !tbaa !58
  store i64 %i.z, ptr %i.r, align 8, !tbaa !58
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !158
  store ptr %i.t, ptr %2, align 8, !tbaa !149
  store i64 0, ptr %i.ab, align 8, !tbaa !158
  store i8 0, ptr %i.t, align 8, !tbaa !58
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i.i, align 8, !tbaa !230, !alias.scope !683, !noalias !684
  %i.ae = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !149, !alias.scope !684, !noalias !683 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !158, !alias.scope !684, !noalias !683 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !685
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i.i, align 8, !tbaa !149, !alias.scope !683, !noalias !684
  %i.al = load i64, ptr %i.af, align 8, !tbaa !58, !alias.scope !684, !noalias !683
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !58, !alias.scope !683, !noalias !684
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !158, !alias.scope !684, !noalias !683
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !158, !alias.scope !683, !noalias !684
  store ptr %i.af, ptr %.0911.i.i.i.i, align 8, !tbaa !149, !alias.scope !684, !noalias !683
  store i64 0, ptr %i.an, align 8, !tbaa !158, !alias.scope !684, !noalias !683
  store i8 0, ptr %i.af, align 8, !tbaa !58, !alias.scope !684, !noalias !683
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i.i18, align 8, !tbaa !230, !alias.scope !686, !noalias !687
  %i.at = load ptr, ptr %.0911.i.i.i.i19, align 8, !tbaa !149, !alias.scope !687, !noalias !686 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !158, !alias.scope !687, !noalias !686 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !688
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i.i18, align 8, !tbaa !149, !alias.scope !686, !noalias !687
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !58, !alias.scope !687, !noalias !686
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !58, !alias.scope !686, !noalias !687
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !158, !alias.scope !687, !noalias !686
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !158, !alias.scope !686, !noalias !687
  store ptr %i.au, ptr %.0911.i.i.i.i19, align 8, !tbaa !149, !alias.scope !687, !noalias !686
  store i64 0, ptr %i.bc, align 8, !tbaa !158, !alias.scope !687, !noalias !686
  store i8 0, ptr %i.au, align 8, !tbaa !58, !alias.scope !687, !noalias !686
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !17

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !145
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !146
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !234
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
  unreachable

_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !145    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775776
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !49

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #39
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !237
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !237
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.s, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %.pre43, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ]
  %i.aa = phi ptr [ %i.t, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ]
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 4 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !145
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !146
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !234
  %i.af = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aa, ptr %i.z, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc26
  %i.ag = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !145 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #37
  br label %bb.j

bb.f:                                             ; preds = %.noexc26
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !146
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !237, !alias.scope !697, !noalias !696
  store <2 x ptr> %i.ai, ptr %.012.i.i.i.i, align 8, !tbaa !237, !alias.scope !696, !noalias !697
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !234, !alias.scope !697, !noalias !696
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !234, !alias.scope !696, !noalias !697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !697, !noalias !696
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i.i27, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !692

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.an, %.lr.ph.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i.i29 ], [ %i.ao, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 3 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.at, %.lr.ph.i.i.i.i29 ], [ %1, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i.i31, align 8, !tbaa !237, !alias.scope !699, !noalias !698
  store <2 x ptr> %i.ap, ptr %.012.i.i.i.i30, align 8, !tbaa !237, !alias.scope !698, !noalias !699
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !234, !alias.scope !699, !noalias !698
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !234, !alias.scope !698, !noalias !699
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !699, !noalias !698
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, label %.lr.ph.i.i.i.i29, !llvm.loop !692

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34: ; preds = %.lr.ph.i.i.i.i29, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i.i33 = phi ptr [ %i.ao, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.au, %.lr.ph.i.i.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #37
  br label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i.i33, ptr %i.a, align 8, !tbaa !142
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !270
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  %i.az = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #20 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #37
  invoke void @__cxa_rethrow() #38
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ay

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #40
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 9 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !230
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !149 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !217
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !149
  %i.h = load i64, ptr %i.a, align 8, !tbaa !217
  store i64 %i.h, ptr %i.b, align 8, !tbaa !58
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !58
  store i8 %i.j, ptr %i.i, align 1, !tbaa !58
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !158
  %i.m = load ptr, ptr %.014, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !700

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #20 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.014
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !149 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.t) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %.014
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #38
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #40
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef float @_ZL13vstr_to_floatPKc(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #32 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !58      ; 3 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %bb.b
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.b, align 1, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i8 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.049 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.d = sext i8 %i.c to i32
  %isdigittmp65 = add nsw i32 %i.d, -48           ; 2 uses
  %isdigit66 = icmp ult i32 %isdigittmp65, 10
  br i1 %isdigit66, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %isdigittmp69 = phi i32 [ %isdigittmp, %.lr.ph ], [ %isdigittmp65, %bb.c ]
  %.04868 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.c ]
  %.15067 = phi ptr [ %i.h, %.lr.ph ], [ %.049, %bb.c ]
  %i.e = mul i64 %.04868, 10
  %i.f = zext nneg i32 %isdigittmp69 to i64
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.15067, i64 1 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58    ; 2 uses
  %i.j = sext i8 %i.i to i32
  %isdigittmp = add nsw i32 %i.j, -48             ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = uitofp i64 %i.g to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.150.lcssa = phi ptr [ %.049, %bb.c ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %.048.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %i.k, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa = phi i8 [ %i.c, %bb.c ], [ %i.i, %._crit_edge.loopexit ] ; 2 uses
  %i.l = icmp eq i8 %.lcssa, 46
  br i1 %i.l, label %.preheader64, label %._crit_edge80

.preheader64:                                     ; preds = %._crit_edge
  %.25172 = getelementptr inbounds nuw i8, ptr %.150.lcssa, i64 1 ; 3 uses
  %i.m = load i8, ptr %.25172, align 1, !tbaa !58 ; 2 uses
  %i.n = sext i8 %i.m to i32
  %isdigittmp5773 = add nsw i32 %i.n, -48         ; 2 uses
  %isdigit5874 = icmp ult i32 %isdigittmp5773, 10
  br i1 %isdigit5874, label %.lr.ph79, label %._crit_edge80

.lr.ph79:                                         ; preds = %.preheader64, %.lr.ph79
  %isdigittmp5778 = phi i32 [ %isdigittmp57, %.lr.ph79 ], [ %isdigittmp5773, %.preheader64 ]
  %.25177 = phi ptr [ %.251, %.lr.ph79 ], [ %.25172, %.preheader64 ]
  %.04676 = phi i64 [ %i.q, %.lr.ph79 ], [ 0, %.preheader64 ]
  %.04775 = phi i64 [ %i.r, %.lr.ph79 ], [ 1, %.preheader64 ]
  %i.o = mul i64 %.04676, 10
  %i.p = zext nneg i32 %isdigittmp5778 to i64
  %i.q = add i64 %i.o, %i.p                       ; 2 uses
  %i.r = mul i64 %.04775, 10                      ; 2 uses
  %.251 = getelementptr inbounds nuw i8, ptr %.25177, i64 1 ; 3 uses
  %i.s = load i8, ptr %.251, align 1, !tbaa !58   ; 2 uses
  %i.t = sext i8 %i.s to i32
  %isdigittmp57 = add nsw i32 %i.t, -48           ; 2 uses
  %isdigit58 = icmp ult i32 %isdigittmp57, 10
  br i1 %isdigit58, label %.lr.ph79, label %._crit_edge80.loopexit, !llvm.loop !21

._crit_edge80.loopexit:                           ; preds = %.lr.ph79
  %i.u = uitofp i64 %i.q to double
  %i.v = uitofp i64 %i.r to double
  %i.w = fdiv double %i.u, %i.v
  %i.x = fadd double %i.w, %.048.lcssa
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %.preheader64, %._crit_edge80.loopexit, %._crit_edge
  %i.y = phi i8 [ %.lcssa, %._crit_edge ], [ %i.m, %.preheader64 ], [ %i.s, %._crit_edge80.loopexit ]
  %.052 = phi double [ %.048.lcssa, %._crit_edge ], [ %.048.lcssa, %.preheader64 ], [ %i.x, %._crit_edge80.loopexit ] ; 3 uses
  %.3 = phi ptr [ %.150.lcssa, %._crit_edge ], [ %.25172, %.preheader64 ], [ %.251, %._crit_edge80.loopexit ] ; 2 uses
  switch i8 %i.y, label %bb.g [
    i8 101, label %bb.d
    i8 69, label %bb.d
  ]

bb.d:                                             ; preds = %._crit_edge80, %._crit_edge80
  %i.z = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !58   ; 3 uses
  %.not59 = icmp eq i8 %i.aa, 45
  switch i8 %i.aa, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %.pre113 = load i8, ptr %i.ab, align 1, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ac = phi i8 [ %.pre113, %bb.e ], [ %i.aa, %bb.d ]
  %.4 = phi ptr [ %i.ab, %bb.e ], [ %i.z, %bb.d ]
  %i.ad = sext i8 %i.ac to i32
  %isdigittmp6084 = add nsw i32 %i.ad, -48        ; 2 uses
  %isdigit6185 = icmp ult i32 %isdigittmp6084, 10
  br i1 %isdigit6185, label %.lr.ph90, label %._crit_edge101

.preheader63:                                     ; preds = %.lr.ph90
  %i.ae = icmp ugt i64 %i.ah, 7
  br i1 %i.ae, label %.lr.ph94, label %.preheader

.lr.ph90:                                         ; preds = %bb.f, %.lr.ph90
  %isdigittmp6088 = phi i32 [ %isdigittmp60, %.lr.ph90 ], [ %isdigittmp6084, %bb.f ]
  %.04487 = phi i64 [ %i.ah, %.lr.ph90 ], [ 0, %bb.f ]
  %.586 = phi ptr [ %i.ai, %.lr.ph90 ], [ %.4, %bb.f ]
  %i.af = mul i64 %.04487, 10
  %i.ag = zext nneg i32 %isdigittmp6088 to i64
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.586, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !58
  %i.ak = sext i8 %i.aj to i32
  %isdigittmp60 = add nsw i32 %i.ak, -48          ; 2 uses
  %isdigit61 = icmp ult i32 %isdigittmp60, 10
  br i1 %isdigit61, label %.lr.ph90, label %.preheader63, !llvm.loop !22

.preheader:                                       ; preds = %.lr.ph94, %.preheader63
  %.145.lcssa = phi i64 [ %i.ah, %.preheader63 ], [ %i.am, %.lr.ph94 ] ; 7 uses
  %.0.lcssa = phi double [ 1.000000e+00, %.preheader63 ], [ %i.al, %.lr.ph94 ] ; 2 uses
  %.not6297 = icmp eq i64 %.145.lcssa, 0
  br i1 %.not6297, label %._crit_edge101, label %.lr.ph100

.lr.ph94:                                         ; preds = %.preheader63, %.lr.ph94
  %.093 = phi double [ %i.al, %.lr.ph94 ], [ 1.000000e+00, %.preheader63 ]
  %.14592 = phi i64 [ %i.am, %.lr.ph94 ], [ %i.ah, %.preheader63 ]
  %i.al = fmul double %.093, 1.000000e+08         ; 2 uses
  %i.am = add i64 %.14592, -8                     ; 3 uses
  %i.an = icmp ugt i64 %i.am, 7
  br i1 %i.an, label %.lr.ph94, label %.preheader, !llvm.loop !23

.lr.ph100:                                        ; preds = %.preheader
  %i.ao = fmul double %.0.lcssa, 1.000000e+01     ; 2 uses
  %.not62 = icmp eq i64 %.145.lcssa, 1
  br i1 %.not62, label %._crit_edge101, label %.lr.ph100.1

.lr.ph100.1:                                      ; preds = %.lr.ph100
  %i.ap = fmul double %i.ao, 1.000000e+01         ; 2 uses
  %.not62.1 = icmp eq i64 %.145.lcssa, 2
  br i1 %.not62.1, label %._crit_edge101, label %.lr.ph100.2

.lr.ph100.2:                                      ; preds = %.lr.ph100.1
  %i.aq = fmul double %i.ap, 1.000000e+01         ; 2 uses
  %.not62.2 = icmp eq i64 %.145.lcssa, 3
  br i1 %.not62.2, label %._crit_edge101, label %.lr.ph100.3

.lr.ph100.3:                                      ; preds = %.lr.ph100.2
  %i.ar = fmul double %i.aq, 1.000000e+01         ; 2 uses
  %.not62.3 = icmp eq i64 %.145.lcssa, 4
  br i1 %.not62.3, label %._crit_edge101, label %.lr.ph100.4

.lr.ph100.4:                                      ; preds = %.lr.ph100.3
  %i.as = fmul double %i.ar, 1.000000e+01         ; 2 uses
  %.not62.4 = icmp eq i64 %.145.lcssa, 5
  br i1 %.not62.4, label %._crit_edge101, label %.lr.ph100.5

.lr.ph100.5:                                      ; preds = %.lr.ph100.4
  %i.at = fmul double %i.as, 1.000000e+01         ; 2 uses
  %.not62.5 = icmp eq i64 %.145.lcssa, 6
  br i1 %.not62.5, label %._crit_edge101, label %.lr.ph100.6

.lr.ph100.6:                                      ; preds = %.lr.ph100.5
  %i.au = fmul double %i.at, 1.000000e+01
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %.lr.ph100, %.lr.ph100.1, %.lr.ph100.2, %.lr.ph100.3, %.lr.ph100.4, %.lr.ph100.5, %.lr.ph100.6, %bb.f, %.preheader
  %.1.lcssa = phi double [ %.0.lcssa, %.preheader ], [ 1.000000e+00, %bb.f ], [ %i.ao, %.lr.ph100 ], [ %i.ap, %.lr.ph100.1 ], [ %i.aq, %.lr.ph100.2 ], [ %i.ar, %.lr.ph100.3 ], [ %i.as, %.lr.ph100.4 ], [ %i.at, %.lr.ph100.5 ], [ %i.au, %.lr.ph100.6 ] ; 2 uses
  %i.av = fmul double %.052, %.1.lcssa
  %i.aw = fdiv double %.052, %.1.lcssa
  %i.ax = select i1 %.not59, double %i.aw, double %i.av
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge80, %._crit_edge101
  %.153 = phi double [ %i.ax, %._crit_edge101 ], [ %.052, %._crit_edge80 ]
  %.not = icmp eq i8 %i.a, 45
  %i.ay = fptrunc double %.153 to float           ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = select i1 %.not, float %i.az, float %i.ay
  ret float %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
  unreachable

_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162  ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !119    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775804
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !49

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #39
          to label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !172   ; 2 uses
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !172
  %.pre44 = ptrtoint ptr %.pre43 to i64
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi46 = phi i64 [ %.pre45, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.v, %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre44, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIS_IfSaIfEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !119
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !178
  %i.ae = sub i64 %.pre-phi, %.pre-phi46          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 4
  br i1 %i.af, label %bb.d, label %bb.e, !prof !242

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.z, i64 %i.ae, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load float, ptr %i.z, align 4, !tbaa !163
  store float %i.ah, ptr %i.aa, align 4, !tbaa !163
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !162
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !172, !alias.scope !709, !noalias !708
  store <2 x ptr> %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !172, !alias.scope !708, !noalias !709
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !178, !alias.scope !709, !noalias !708
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !178, !alias.scope !708, !noalias !709
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !709, !noalias !708
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i.i27, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !704

_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.av, %.lr.ph.i.i.i.i29 ], [ %i.ap, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.au, %.lr.ph.i.i.i.i29 ], [ %1, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.aq = load <2 x ptr>, ptr %.0911.i.i.i.i31, align 8, !tbaa !172, !alias.scope !711, !noalias !710
  store <2 x ptr> %i.aq, ptr %.012.i.i.i.i30, align 8, !tbaa !172, !alias.scope !710, !noalias !711
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !178, !alias.scope !711, !noalias !710
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !178, !alias.scope !710, !noalias !711
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !711, !noalias !710
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i29, !llvm.loop !704

_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34: ; preds = %.lr.ph.i.i.i.i29, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i33 = phi ptr [ %i.ap, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.av, %.lr.ph.i.i.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #37
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !139
  store ptr %.0.lcssa.i.i.i.i33, ptr %i.a, align 8, !tbaa !140
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !268
  ret void

bb.i:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  %i.bb = tail call ptr @__cxa_begin_catch(ptr %i.ba) #20 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #37
  invoke void @__cxa_rethrow() #38
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ay

bb.l:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #40
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !137    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #38
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !159  ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775804
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !49

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #39
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !267   ; 2 uses
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !267
  %.pre44 = ptrtoint ptr %.pre43 to i64
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi46 = phi i64 [ %.pre45, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.v, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre44, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !120
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !160
  %i.ae = sub i64 %.pre-phi, %.pre-phi46          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 4
  br i1 %i.af, label %bb.d, label %bb.e, !prof !242

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.z, i64 %i.ae, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !161
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !161
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !159
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !267, !alias.scope !720, !noalias !719
  store <2 x ptr> %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !267, !alias.scope !719, !noalias !720
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !160, !alias.scope !720, !noalias !719
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !160, !alias.scope !719, !noalias !720
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !720, !noalias !719
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i.i27, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !715

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.av, %.lr.ph.i.i.i.i29 ], [ %i.ap, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.au, %.lr.ph.i.i.i.i29 ], [ %1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.aq = load <2 x ptr>, ptr %.0911.i.i.i.i31, align 8, !tbaa !267, !alias.scope !722, !noalias !721
  store <2 x ptr> %i.aq, ptr %.012.i.i.i.i30, align 8, !tbaa !267, !alias.scope !721, !noalias !722
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !160, !alias.scope !722, !noalias !721
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !160, !alias.scope !721, !noalias !722
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !722, !noalias !721
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i29, !llvm.loop !715

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34: ; preds = %.lr.ph.i.i.i.i29, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i33 = phi ptr [ %i.ap, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.av, %.lr.ph.i.i.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #37
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !137
  store ptr %.0.lcssa.i.i.i.i33, ptr %i.a, align 8, !tbaa !138
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !269
  ret void

bb.i:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  %i.bb = tail call ptr @__cxa_begin_catch(ptr %i.ba) #20 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #37
  invoke void @__cxa_rethrow() #38
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ay

bb.l:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #40
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_ncnn2table.cpp() #33 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [17 x %"struct.std::pair"], align 8 ; 38 uses
  %1 = alloca %"struct.std::hash", align 1        ; 3 uses
  %2 = alloca %"struct.std::equal_to", align 1    ; 3 uses
  %3 = alloca %"class.std::allocator.2", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store i64 ptrtoint (ptr @_ZTIf to i64), ptr %0, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 17179895356, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @_ZTId to i64), ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 34359764540, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 ptrtoint (ptr @_ZTIe to i64), ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 68719502908, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 ptrtoint (ptr @_ZTIc to i64), ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4294994300, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 ptrtoint (ptr @_ZTIa to i64), ptr %i.h, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 4294994300, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 ptrtoint (ptr @_ZTIs to i64), ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 8589961532, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 ptrtoint (ptr @_ZTIi to i64), ptr %i.l, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 17179896124, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 ptrtoint (ptr @_ZTIl to i64), ptr %i.n, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 34359765308, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 ptrtoint (ptr @_ZTIx to i64), ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 34359765308, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 ptrtoint (ptr @_ZTIh to i64), ptr %i.r, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 4294997372, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 ptrtoint (ptr @_ZTIt to i64), ptr %i.t, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 8589964604, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 ptrtoint (ptr @_ZTIj to i64), ptr %i.v, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 17179899196, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 ptrtoint (ptr @_ZTIm to i64), ptr %i.x, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 34359768380, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 ptrtoint (ptr @_ZTIy to i64), ptr %i.z, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 34359768380, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 ptrtoint (ptr @_ZTISt7complexIfE to i64), ptr %i.ab, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 34359763772, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 ptrtoint (ptr @_ZTISt7complexIdE to i64), ptr %i.ad, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 68719502140, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 ptrtoint (ptr @_ZTISt7complexIeE to i64), ptr %i.af, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 137438978876, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEEC2IPKS5_EET_SM_mRKSC_RKSA_RKS6_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) @_ZN3npyL9dtype_mapE, ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.ai = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapISt10type_indexN3npy7dtype_tESt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S2_EEED2Ev, ptr nonnull @_ZN3npyL9dtype_mapE, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { convergent nounwind }
attributes #22 = { nounwind memory(none) }
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f32
!468 = !{!443}
!469 = !{!444}
!470 = distinct !{null, null, null}
!471 = distinct !{!471, i1 false, !"_ZNK3npy7dtype_t3tieEv"}
!472 = distinct !{!472, !471, !"_ZNK3npy7dtype_t3tieEv: argument 0"}
!473 = !{!472}
!474 = distinct !{!474, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!475 = distinct !{!475, !474, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!476 = distinct !{!476, !45}
!477 = distinct !{!477, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!478 = distinct !{!478, !477, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!479 = distinct !{!479, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!480 = distinct !{!480, !479, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!481 = distinct !{!481, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!482 = distinct !{!482, !481, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!483 = distinct !{!483, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!484 = distinct !{!484, !483, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!485 = distinct !{!485, !45}
!486 = !{!475}
!487 = !{!243, !243, i64 0}
!488 = !{!478}
!489 = !{!480, !478}
!490 = !{!482}
!491 = !{!484}
!492 = distinct !{!492, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!493 = distinct !{!493, !492, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!494 = !{!493}
!495 = distinct !{!495, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!496 = distinct !{!496, !495, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!497 = distinct !{!497, !45}
!498 = !{!496}
!499 = distinct !{!499, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!500 = distinct !{!500, !499, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!501 = !{!500}
!502 = distinct !{!502, !45}
!503 = distinct !{!503, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!504 = distinct !{!504, !503, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!505 = !{!504}
!506 = distinct !{!506, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!507 = distinct !{!507, !506, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!508 = !{!507}
!509 = distinct !{!509, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!510 = distinct !{!510, !509, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!511 = !{!510}
!512 = distinct !{!512, i1 false, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!513 = distinct !{!513, !512, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!514 = distinct !{!514, !512, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!515 = distinct !{!515, !45}
!516 = distinct !{!516, i1 false, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_"}
!517 = distinct !{!517, !516, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!518 = distinct !{!518, !516, !"_ZSt19__relocate_object_aISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!519 = !{!513}
!520 = !{!514}
!521 = !{!513, !514}
!522 = !{!517}
!523 = !{!518}
!524 = !{!517, !518}
!525 = distinct !{!525, !45}
!526 = distinct !{!526, !45}
!527 = distinct !{!527, !45}
!528 = distinct !{!528, !45}
!529 = distinct !{!529, !45}
!530 = distinct !{!530, !45}
!531 = distinct !{!531, !45}
!532 = distinct !{!532, !45}
!533 = distinct !{!533, !45}
!534 = distinct !{!534, !45}
!535 = distinct !{!535, !45}
!536 = distinct !{!536, !45}
!537 = !{!235, !38, i64 48}
!538 = distinct !{!538, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!539 = distinct !{!539, !538, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!540 = distinct !{!540, !538, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!541 = distinct !{!541, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!542 = distinct !{!542, !541, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!543 = distinct !{!543, !541, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!544 = !{!539}
!545 = !{!540}
!546 = !{!539, !540}
!547 = !{!542}
!548 = !{!543}
!549 = !{!542, !543}
!550 = distinct !{!550, !45}
!551 = distinct !{!551, !45}
!552 = distinct !{!552, !169}
!553 = distinct !{!553, !45}
!554 = distinct !{!554, !169}
!555 = distinct !{!555, !45, !186, !187}
!556 = distinct !{!556, !45, !187, !186}
!557 = distinct !{!557, !45, !186, !187}
!558 = distinct !{!558, !45, !187, !186}
!559 = distinct !{!559, !45, !186, !187}
!560 = distinct !{!560, !45, !187, !186}
!561 = distinct !{!561, !45, !186, !187}
!562 = distinct !{!562, !45, !187, !186}
!563 = distinct !{!563, i1 false, !"_ZNK4ncnn3Mat5rangeEii"}
!564 = distinct !{!564, !563, !"_ZNK4ncnn3Mat5rangeEii: argument 0"}
!565 = distinct !{!565, !45}
!566 = distinct !{!566, !45}
!567 = distinct !{!567, i1 false, !"_ZNK4ncnn3Mat5rangeEii"}
!568 = distinct !{!568, !567, !"_ZNK4ncnn3Mat5rangeEii: argument 0"}
!569 = distinct !{!569, !45}
!570 = distinct !{!570, !45}
!571 = distinct !{!571, i1 false, !"_ZNK4ncnn3Mat5rangeEii"}
!572 = distinct !{!572, !571, !"_ZNK4ncnn3Mat5rangeEii: argument 0"}
!573 = distinct !{!573, !45}
!574 = distinct !{!574, !45}
!575 = !{!564}
!576 = !{!568}
!577 = !{!572}
!578 = distinct !{!578, i1 false, !"_Z21read_and_resize_imageRKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi"}
!579 = distinct !{!579, !578, !"_Z21read_and_resize_imageRKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: argument 0"}
!580 = distinct !{!580, !45}
!581 = distinct !{!581, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!582 = distinct !{!582, !581, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!583 = distinct !{!583, !45}
!584 = distinct !{!584, !45}
!585 = distinct !{!585, !45}
!586 = !{!579}
!587 = !{!582}
!588 = distinct !{!588, !45}
!589 = distinct !{!589, !45}
!590 = distinct !{!590, !45}
!591 = distinct !{!591, !45}
!592 = distinct !{!592, !45}
!593 = !{!258, !257, i64 16}
!594 = !{!258, !257, i64 8}
!595 = distinct !{!595, i1 false, !"_Z21read_and_resize_imageRKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi"}
!596 = distinct !{!596, !595, !"_Z21read_and_resize_imageRKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: argument 0"}
!597 = distinct !{!597, !45}
!598 = distinct !{!598, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!599 = distinct !{!599, !598, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!600 = distinct !{!600, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!601 = distinct !{!601, !600, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!602 = distinct !{!602, !45}
!603 = !{!596}
!604 = !{!599}
!605 = !{!601}
!606 = !{!192, !31, i64 220}
!607 = !{!192, !31, i64 224}
!608 = !{!192, !31, i64 228}
!609 = !{!192, !31, i64 232}
!610 = !{!192, !31, i64 236}
!611 = !{!192, !31, i64 240}
!612 = !{!192, !31, i64 244}
!613 = !{!192, !31, i64 248}
!614 = !{!192, !40, i64 252}
!615 = !{!192, !31, i64 264}
!616 = !{!192, !31, i64 268}
!617 = !{!197, !31, i64 208}
!618 = !{!197, !31, i64 212}
!619 = !{!197, !31, i64 216}
!620 = !{!197, !31, i64 220}
!621 = !{!197, !31, i64 224}
!622 = !{!197, !31, i64 228}
!623 = !{!197, !31, i64 232}
!624 = !{!197, !31, i64 236}
!625 = !{!197, !31, i64 240}
!626 = !{!197, !31, i64 244}
!627 = !{!197, !31, i64 248}
!628 = !{!197, !40, i64 252}
!629 = !{!197, !31, i64 268}
!630 = !{!197, !31, i64 272}
!631 = !{!200, !31, i64 220}
!632 = !{!200, !31, i64 224}
!633 = distinct !{!633, i1 false, !"_Z21read_and_resize_imageRKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi"}
!634 = distinct !{!634, !633, !"_Z21read_and_resize_imageRKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: argument 0"}
!635 = distinct !{!635, !45}
!636 = distinct !{!636, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!637 = distinct !{!637, !636, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!638 = distinct !{!638, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!639 = distinct !{!639, !638, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!640 = distinct !{!640, !45}
!641 = !{!634}
!642 = !{!637}
!643 = !{!639}
!644 = distinct !{!644, !45}
!645 = distinct !{!645, i1 false, !"_ZL26parse_comma_int_array_listPc"}
!646 = distinct !{!646, !645, !"_ZL26parse_comma_int_array_listPc: argument 0"}
!647 = distinct !{!647, !45}
!648 = distinct !{!648, !45}
!649 = distinct !{!649, i1 false, !"_ZL27parse_comma_pixel_type_listPc"}
!650 = distinct !{!650, !649, !"_ZL27parse_comma_pixel_type_listPc: argument 0"}
!651 = distinct !{!651, !45}
!652 = distinct !{null}
!653 = distinct !{!653, !45}
!654 = !{!68, !31, i64 4}
!655 = !{!68, !66, i64 0}
!656 = !{!68, !66, i64 33}
!657 = !{!68, !66, i64 34}
!658 = !{!68, !66, i64 35}
!659 = !{!66, !66, i64 0}
!660 = !{!67, !67, i64 0}
!661 = !{i64 0, i64 1, !659, i64 1, i64 1, !659, i64 2, i64 1, !659, i64 3, i64 1, !659, i64 4, i64 4, !161, i64 8, i64 8, !660, i64 16, i64 8, !660, i64 24, i64 4, !161, i64 28, i64 1, !659, i64 29, i64 1, !659, i64 30, i64 1, !659, i64 31, i64 1, !659, i64 32, i64 1, !659, i64 33, i64 1, !659, i64 34, i64 1, !659, i64 35, i64 1, !659, i64 36, i64 1, !659, i64 37, i64 1, !659, i64 38, i64 1, !659, i64 39, i64 1, !659, i64 40, i64 4, !161, i64 44, i64 1, !659, i64 45, i64 1, !659, i64 46, i64 1, !659, i64 47, i64 1, !659, i64 48, i64 1, !58, i64 49, i64 1, !659, i64 50, i64 1, !659, i64 51, i64 1, !659, i64 52, i64 1, !659, i64 53, i64 1, !659, i64 54, i64 1, !659, i64 55, i64 1, !659, i64 56, i64 1, !659, i64 57, i64 1, !659, i64 58, i64 1, !659, i64 59, i64 1, !659, i64 60, i64 1, !659, i64 61, i64 1, !659, i64 62, i64 1, !659, i64 63, i64 1, !659}
!662 = !{!76, !76, i64 0}
!663 = !{!646}
!664 = !{!81, !81, i64 0}
!665 = !{!650}
!666 = distinct !{!666, !45}
!667 = !{!71, !71, i64 0}
!668 = distinct !{!668, !169}
!669 = distinct !{!669, !45}
!670 = distinct !{!670, !45}
!671 = distinct !{!671, !45}
!672 = distinct !{!672, !45}
!673 = distinct !{!673, !45}
!674 = distinct !{!674, !45}
!675 = distinct !{!675, !45}
!676 = distinct !{!676, !45}
!677 = distinct !{!677, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!678 = distinct !{!678, !677, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!679 = distinct !{!679, !677, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!680 = distinct !{!680, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!681 = distinct !{!681, !680, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!682 = distinct !{!682, !680, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!683 = !{!678}
!684 = !{!679}
!685 = !{!678, !679}
!686 = !{!681}
!687 = !{!682}
!688 = !{!681, !682}
!689 = distinct !{!689, i1 false, !"_ZSt19__relocate_object_aISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_SaIS8_EEvPT_PT0_RT1_"}
!690 = distinct !{!690, !689, !"_ZSt19__relocate_object_aISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!691 = distinct !{!691, !689, !"_ZSt19__relocate_object_aISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!692 = distinct !{!692, !45}
!693 = distinct !{!693, i1 false, !"_ZSt19__relocate_object_aISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_SaIS8_EEvPT_PT0_RT1_"}
!694 = distinct !{!694, !693, !"_ZSt19__relocate_object_aISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!695 = distinct !{!695, !693, !"_ZSt19__relocate_object_aISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!696 = !{!690}
!697 = !{!691}
!698 = !{!694}
!699 = !{!695}
!700 = distinct !{!700, !45}
!701 = distinct !{!701, i1 false, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!702 = distinct !{!702, !701, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!703 = distinct !{!703, !701, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!704 = distinct !{!704, !45}
!705 = distinct !{!705, i1 false, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!706 = distinct !{!706, !705, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!707 = distinct !{!707, !705, !"_ZSt19__relocate_object_aISt6vectorIfSaIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!708 = !{!702}
!709 = !{!703}
!710 = !{!706}
!711 = !{!707}
!712 = distinct !{!712, i1 false, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!713 = distinct !{!713, !712, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!714 = distinct !{!714, !712, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!715 = distinct !{!715, !45}
!716 = distinct !{!716, i1 false, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!717 = distinct !{!717, !716, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!718 = distinct !{!718, !716, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!719 = !{!713}
!720 = !{!714}
!721 = !{!717}
!722 = !{!718}
end_hunk_1
