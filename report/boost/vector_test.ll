Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2069
begin_hunk_0_@_ZN5boost9container4test11vector_testINS0_6vectorIiSaIiEvEEEEiv:bb.a

.loopexit160:                                     ; preds = %.lr.ph.i87, %bb.q, %bb.p
  %.2.i84 = phi i1 [ false, %bb.p ], [ true, %bb.q ], [ %i.bc, %.lr.ph.i87 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 400) #27
  %i.bg = load i64, ptr %i.ap, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i97 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i97, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit160
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !259
  %i.bi = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bi) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit160
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 24) #27
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i101 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i101, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit103, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr %i.al, align 8, !tbaa !278
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit103

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit103: ; preds = %bb.t, %bb.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i84, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.bo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !957 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !957
  %i.bp = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit109 unwind label %bb.w, !noalias !957 ; 3 uses

bb.w:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27, !noalias !957
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit109: ; preds = %bb.v
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !277, !noalias !957
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 400 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !278, !noalias !957
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bp, i8 0, i64 400, i1 false)
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !288, !noalias !957
  store ptr %i.bo, ptr %3, align 8, !tbaa !348, !alias.scope !957
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.x unwind label %bb.aa      ; 7 uses

bb.x:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit109
  store ptr null, ptr %i.bu, align 8, !tbaa !338, !noalias !958
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 100, ptr %i.bv, align 8, !tbaa !339, !noalias !958
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !340, !noalias !958
  %i.bx = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.z unwind label %bb.y, !noalias !958 ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27, !noalias !958
  br label %.body113

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(400) %i.bx, i8 0, i64 400, i1 false), !noalias !958
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false), !noalias !959
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !288
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %.not.i117 = icmp eq i64 %i.cd, 400
  br i1 %.not.i117, label %.lr.ph.i121, label %.loopexit

.lr.ph.i121:                                      ; preds = %bb.z, %.lr.ph.i121
  %.sroa.019.026.i122.idx = phi i64 [ %.sroa.019.026.i122.add, %.lr.ph.i121 ], [ 0, %bb.z ] ; 2 uses
  %.sroa.015.025.i123 = phi ptr [ %i.ch, %.lr.ph.i121 ], [ %i.ca, %bb.z ] ; 2 uses
  %.sroa.019.026.i122.ptr = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.019.026.i122.idx
  %i.ce = load i32, ptr %.sroa.019.026.i122.ptr, align 4, !tbaa !247
  %i.cf = load i32, ptr %.sroa.015.025.i123, align 4, !tbaa !247
  %i.cg = icmp eq i32 %i.ce, %i.cf                ; 2 uses
  %.sroa.019.026.i122.add = add nuw nsw i64 %.sroa.019.026.i122.idx, 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i123, i64 4
  %.not23.i124 = icmp ne i64 %.sroa.019.026.i122.add, 400
  %or.cond170.not = select i1 %i.cg, i1 %.not23.i124, i1 false
  br i1 %or.cond170.not, label %.lr.ph.i121, label %.loopexit, !llvm.loop !12

.body79:                                          ; preds = %bb.r, %bb.o
  %.pn27.pn = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.bf, %bb.r ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.aa:                                            ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit109
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.loopexit:                                        ; preds = %.lr.ph.i121, %bb.z
  %.2.i118 = phi i1 [ false, %bb.z ], [ %i.cg, %.lr.ph.i121 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 400) #27
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i.i.i131 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i131, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !259
  %i.cl = shl i64 %i.cj, 2
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cl) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i135 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i135, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit137, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.bs, align 8, !tbaa !278
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit137

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit137: ; preds = %bb.ac, %bb.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i118, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit137
  %i.cr = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorIiSaIiEvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.cr, 0
  br i1 %.not, label %bb.af, label %bb.ah

.body113:                                         ; preds = %bb.aa, %bb.y
  %.pn30.pn = phi { ptr, i32 } [ %i.by, %bb.y ], [ %i.ci, %bb.aa ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.af:                                            ; preds = %bb.ae
  %i.cs = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorIiSaIiEvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not34 = icmp eq i32 %i.cs, 0
  br i1 %.not34, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ct), !inline_history !2 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ae, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit137, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit103, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiSaIiEvEENS0_14default_deleteIS5_EEED2Ev.exit69, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiSaIiEvEENS0_14default_deleteIS5_EEED2Ev.exit, %bb.ag
  %.422 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiSaIiEvEENS0_14default_deleteIS5_EEED2Ev.exit ], [ 1, %bb.ae ], [ 0, %bb.ag ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit137 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit103 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiSaIiEvEENS0_14default_deleteIS5_EEED2Ev.exit69 ], [ 1, %bb.af ]
  ret i32 %.422
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_11movable_intESaIS4_EvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.98", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.98", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !992 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !351, !noalias !992
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !352, !noalias !992
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !353, !noalias !992
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !992 ; 2 uses

common.resume:                                    ; preds = %.body, %.body43, %.body87, %.body134, %bb.x, %bb.m, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.br, %bb.m ], [ %i.ed, %bb.x ], [ %.pn30.pn, %.body134 ], [ %.pn27.pn, %.body87 ], [ %.pn24.pn, %.body43 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !992
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !351, !noalias !992
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !992
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !992
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !355, !noalias !992
  %i.f = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !992
  store ptr %i.a, ptr %0, align 8, !tbaa !358, !alias.scope !992
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !993 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !360
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit211

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !351, !noalias !994
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !355
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit211, !llvm.loop !13

.loopexit211:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !351  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !360  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit211
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.r = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !966

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !355
  %i.v = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !355
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !355
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !355
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i38.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i38.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit211
  %i.af = load i64, ptr %i.c, align 8, !tbaa !353 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.f unwind label %bb.j       ; 9 uses

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.ah, align 8, !tbaa !351, !noalias !995
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !352, !noalias !995
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !353, !noalias !995
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.h unwind label %bb.g, !noalias !995 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !995
  br label %.body43

bb.h:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !351, !noalias !995
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !995
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i41 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !995
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !355, !noalias !995
  %i.am = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i41, 100
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !995
  store ptr %i.ah, ptr %1, align 8, !tbaa !358, !alias.scope !995
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.i unwind label %.body51, !noalias !996 ; 3 uses

.body51:                                          ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  br label %.body43

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !360
  %.not.i54 = icmp eq i64 %i.ap, 100
  br i1 %.not.i54, label %.lr.ph.i58.preheader, label %.loopexit210

.lr.ph.i58.preheader:                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !351, !noalias !997
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58, %.lr.ph.i58.preheader
  %.sroa.019.026.i59.idx = phi i64 [ %.sroa.019.026.i59.add, %.lr.ph.i58 ], [ 0, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.015.025.i60 = phi ptr [ %i.au, %.lr.ph.i58 ], [ %i.an, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.019.026.i59.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i59.idx
  %i.ar = load i32, ptr %.sroa.015.025.i60, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i59.ptr, align 4, !tbaa !355
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i59.add = add nuw nsw i64 %.sroa.019.026.i59.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i60, i64 4
  %.not23.i61 = icmp ne i64 %.sroa.019.026.i59.add, 400
  %or.cond234.not = select i1 %i.at, i1 %.not23.i61, i1 false
  br i1 %or.cond234.not, label %.lr.ph.i58, label %.loopexit210, !llvm.loop !13

bb.j:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.loopexit210:                                     ; preds = %.lr.ph.i58, %bb.i
  %.2.i55 = phi i1 [ false, %bb.i ], [ %i.at, %.lr.ph.i58 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !351 ; 3 uses
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !360 ; 5 uses
  %.not3.i.i.i.i.i68 = icmp eq i64 %i.ax, 0
  br i1 %.not3.i.i.i.i.i68, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %.loopexit210
  %xtraiter254 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol

.lr.ph.i.i.i.i.i69.prol:                          ; preds = %.lr.ph.i.i.i.i.i69.preheader, %.lr.ph.i.i.i.i.i69.prol
  %.05.i.i.i.i.i70.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ]
  %storemerge4.i.i.i.i.i71.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %prol.iter256 = phi i64 [ %prol.iter256.next, %.lr.ph.i.i.i.i.i69.prol ], [ 0, %.lr.ph.i.i.i.i.i69.preheader ]
  %i.ay = add i64 %.05.i.i.i.i.i70.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71.prol, align 4, !tbaa !355
  %i.az = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71.prol, i64 4 ; 2 uses
  %prol.iter256.next = add i64 %prol.iter256, 1   ; 2 uses
  %prol.iter256.cmp.not = icmp eq i64 %prol.iter256.next, %xtraiter254
  br i1 %prol.iter256.cmp.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol, !llvm.loop !973

.lr.ph.i.i.i.i.i69.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i69.prol, %.lr.ph.i.i.i.i.i69.preheader
  %.05.i.i.i.i.i70.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ]
  %storemerge4.i.i.i.i.i71.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ]
  %i.bc = icmp ult i64 %i.ax, 4
  br i1 %i.bc, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69
  %.05.i.i.i.i.i70 = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i69 ], [ %.05.i.i.i.i.i70.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ]
  %storemerge4.i.i.i.i.i71 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i69 ], [ %storemerge4.i.i.i.i.i71.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71, align 4, !tbaa !355
  %i.bd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 4
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !355
  %i.bg = add i32 %i.bd, -2
  store i32 %i.bg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !355
  %i.bi = add i32 %i.bd, -3
  store i32 %i.bi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 12
  %i.bk = add i64 %.05.i.i.i.i.i70, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !355
  %i.bl = add i32 %i.bd, -4
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 16
  %.not.i.i.i.i.i72.3 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i72.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69, %.loopexit210
  %i.bn = load i64, ptr %i.aj, align 8, !tbaa !353 ; 2 uses
  %.not.i1.i.i.i.i74 = icmp eq i64 %i.bn, 0
  br i1 %.not.i1.i.i.i.i74, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73
  %i.bo = shl i64 %i.bn, 2
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bo) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i55, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !998 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !noalias !998
  %i.bq = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82 unwind label %bb.m, !noalias !998 ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27, !noalias !998
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82: ; preds = %bb.l
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !277, !noalias !998
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 400 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !278, !noalias !998
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bq, i8 0, i64 400, i1 false)
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !288, !noalias !998
  store ptr %i.bp, ptr %2, align 8, !tbaa !348, !alias.scope !998
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.n unwind label %bb.r       ; 7 uses

bb.n:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  store ptr null, ptr %i.bv, align 8, !tbaa !351, !noalias !999
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  store i64 100, ptr %i.bw, align 8, !tbaa !352, !noalias !999
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !353, !noalias !999
  %i.by = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.p unwind label %bb.o, !noalias !999 ; 7 uses

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27, !noalias !999
  br label %.body87

bb.p:                                             ; preds = %bb.n
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i85 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !999
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.by, i8 0, i64 400, i1 false), !tbaa !355, !noalias !999
  %i.ca = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i85, 100 ; 3 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !999
  %i.cb = load i64, ptr %i.bw, align 8, !tbaa !352, !noalias !1000 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !1000
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !288
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %.not.i91 = icmp eq i64 %i.cb, %i.ch
  br i1 %.not.i91, label %bb.q, label %.loopexit188

bb.q:                                             ; preds = %bb.p
  %.idx.i93 = shl nsw i64 %i.cb, 2
  %i.ci = getelementptr inbounds i8, ptr %i.by, i64 %.idx.i93
  %.not2324.i94 = icmp eq i64 %i.cb, 0
  br i1 %.not2324.i94, label %bb.s, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.q, %.lr.ph.i95
  %.sroa.019.026.i96 = phi ptr [ %i.cm, %.lr.ph.i95 ], [ %i.by, %bb.q ] ; 2 uses
  %.sroa.015.025.i97 = phi ptr [ %i.cn, %.lr.ph.i95 ], [ %i.cd, %bb.q ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.015.025.i97, align 4, !tbaa !247
  %i.ck = load i32, ptr %.sroa.019.026.i96, align 4, !tbaa !355
  %i.cl = icmp eq i32 %i.ck, %i.cj                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i96, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i97, i64 4
  %.not23.i98 = icmp ne ptr %i.cm, %i.ci
  %or.cond237.not = select i1 %i.cl, i1 %.not23.i98, i1 false
  br i1 %or.cond237.not, label %.lr.ph.i95, label %.loopexit188, !llvm.loop !13

.body43:                                          ; preds = %bb.j, %bb.g, %.body51
  %.pn24.pn = phi { ptr, i32 } [ %i.ao, %.body51 ], [ %i.av, %bb.j ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.r:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.loopexit188:                                     ; preds = %.lr.ph.i95, %bb.p
  %.2.i92 = phi i1 [ false, %bb.p ], [ %i.cl, %.lr.ph.i95 ] ; 2 uses
  %.not3.i.i.i.i.i101 = icmp eq i64 %i.cb, 0
  br i1 %.not3.i.i.i.i.i101, label %bb.s, label %.lr.ph.i.i.i.i.i102.preheader

.lr.ph.i.i.i.i.i102.preheader:                    ; preds = %.loopexit188
  %min.iters.check = icmp ult i64 %i.cb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i102.preheader246, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i102.preheader
  %n.vec = and i64 %i.cb, -8                      ; 3 uses
  %i.cp = and i64 %i.cb, 7
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %i.by, i64 %i.cq
  %i.cs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ca, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cs, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi214 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !355
  store <4 x i32> splat (i32 -2147483648), ptr %i.cu, align 4, !tbaa !355
  %i.cv = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cw = add <4 x i32> %vec.phi214, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit209, label %.lr.ph.i.i.i.i.i102.preheader246

.lr.ph.i.i.i.i.i102.preheader246:                 ; preds = %.lr.ph.i.i.i.i.i102.preheader, %middle.block
  %.ph247 = phi i32 [ %i.ca, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cy, %middle.block ]
  %.05.i.i.i.i.i103.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cp, %middle.block ]
  %storemerge4.i.i.i.i.i104.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.lr.ph.i.i.i.i.i102.preheader246, %.lr.ph.i.i.i.i.i102
  %i.cz = phi i32 [ %i.db, %.lr.ph.i.i.i.i.i102 ], [ %.ph247, %.lr.ph.i.i.i.i.i102.preheader246 ]
  %.05.i.i.i.i.i103 = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i102 ], [ %.05.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i102.preheader246 ]
  %storemerge4.i.i.i.i.i104 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i102 ], [ %storemerge4.i.i.i.i.i104.ph, %.lr.ph.i.i.i.i.i102.preheader246 ] ; 2 uses
  %i.da = add i64 %.05.i.i.i.i.i103, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i104, align 4, !tbaa !355
  %i.db = add i32 %i.cz, -1                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i104, i64 4
  %.not.i.i.i.i.i105 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i105, label %.loopexit209, label %.lr.ph.i.i.i.i.i102, !llvm.loop !981

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i102, %middle.block
  %.lcssa213 = phi i32 [ %i.cy, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i.i102 ]
  store i32 %.lcssa213, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %bb.s

bb.s:                                             ; preds = %.loopexit209, %.loopexit188, %bb.q
  %.2.i92182 = phi i1 [ %.2.i92, %.loopexit188 ], [ true, %bb.q ], [ %.2.i92, %.loopexit209 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 400) #27
  %i.dd = load ptr, ptr %i.bv, align 8, !tbaa !351 ; 3 uses
  %i.de = load i64, ptr %i.bw, align 8, !tbaa !360 ; 5 uses
  %.not3.i.i.i.i.i111 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i.i.i.i111, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i112.preheader:                    ; preds = %bb.s
  %xtraiter257 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol

.lr.ph.i.i.i.i.i112.prol:                         ; preds = %.lr.ph.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i112.prol
  %.05.i.i.i.i.i113.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i112.prol ], [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ]
  %storemerge4.i.i.i.i.i114.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i112.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ] ; 2 uses
  %prol.iter259 = phi i64 [ %prol.iter259.next, %.lr.ph.i.i.i.i.i112.prol ], [ 0, %.lr.ph.i.i.i.i.i112.preheader ]
  %i.df = add i64 %.05.i.i.i.i.i113.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114.prol, align 4, !tbaa !355
  %i.dg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114.prol, i64 4 ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol, !llvm.loop !982

.lr.ph.i.i.i.i.i112.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i112.prol, %.lr.ph.i.i.i.i.i112.preheader
  %.05.i.i.i.i.i113.unr = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i112.prol ]
  %storemerge4.i.i.i.i.i114.unr = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.di, %.lr.ph.i.i.i.i.i112.prol ]
  %i.dj = icmp ult i64 %i.de, 4
  br i1 %i.dj, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112
  %.05.i.i.i.i.i113 = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i112 ], [ %.05.i.i.i.i.i113.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ]
  %storemerge4.i.i.i.i.i114 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i112 ], [ %storemerge4.i.i.i.i.i114.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114, align 4, !tbaa !355
  %i.dk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 4
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !355
  %i.dn = add i32 %i.dk, -2
  store i32 %i.dn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 8
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !355
  %i.dp = add i32 %i.dk, -3
  store i32 %i.dp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 12
  %i.dr = add i64 %.05.i.i.i.i.i113, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dq, align 4, !tbaa !355
  %i.ds = add i32 %i.dk, -4
  store i32 %i.ds, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 16
  %.not.i.i.i.i.i115.3 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i115.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116: ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112, %bb.s
  %i.du = load i64, ptr %i.bx, align 8, !tbaa !353 ; 2 uses
  %.not.i1.i.i.i.i117 = icmp eq i64 %i.du, 0
  br i1 %.not.i1.i.i.i.i117, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  %i.dv = shl i64 %i.du, 2
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dv) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27
  %i.dw = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i121 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i121, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = load ptr, ptr %i.bt, align 8, !tbaa !278
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123: ; preds = %bb.u, %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i92182, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.eb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1001 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !1001
  %i.ec = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129 unwind label %bb.x, !noalias !1001 ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27, !noalias !1001
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129: ; preds = %bb.w
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !277, !noalias !1001
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 400 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !278, !noalias !1001
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ec, i8 0, i64 400, i1 false)
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !288, !noalias !1001
  store ptr %i.eb, ptr %3, align 8, !tbaa !348, !alias.scope !1001
  %i.eh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.y unwind label %bb.ac      ; 7 uses

bb.y:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  store ptr null, ptr %i.eh, align 8, !tbaa !351, !noalias !1002
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  store i64 100, ptr %i.ei, align 8, !tbaa !352, !noalias !1002
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !353, !noalias !1002
  %i.ek = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.aa unwind label %bb.z, !noalias !1002 ; 7 uses

bb.z:                                             ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27, !noalias !1002
  br label %.body134

bb.aa:                                            ; preds = %bb.y
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i132 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !1002
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ek, i8 0, i64 400, i1 false), !tbaa !355, !noalias !1002
  %i.em = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i132, 100 ; 3 uses
  store i32 %i.em, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !1002
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !352, !noalias !1003 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false), !noalias !1003
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !288
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2
  %.not.i138 = icmp eq i64 %i.en, %i.et
  br i1 %.not.i138, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %.idx.i140 = shl nsw i64 %i.en, 2
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 %.idx.i140
  %.not2324.i141 = icmp eq i64 %i.en, 0
  br i1 %.not2324.i141, label %bb.ad, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ab, %.lr.ph.i142
  %.sroa.019.026.i143 = phi ptr [ %i.ey, %.lr.ph.i142 ], [ %i.ek, %bb.ab ] ; 2 uses
  %.sroa.015.025.i144 = phi ptr [ %i.ez, %.lr.ph.i142 ], [ %i.ep, %bb.ab ] ; 2 uses
  %i.ev = load i32, ptr %.sroa.015.025.i144, align 4, !tbaa !247
  %i.ew = load i32, ptr %.sroa.019.026.i143, align 4, !tbaa !355
  %i.ex = icmp eq i32 %i.ew, %i.ev                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i143, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i144, i64 4
  %.not23.i145 = icmp ne ptr %i.ey, %i.eu
  %or.cond240.not = select i1 %i.ex, i1 %.not23.i145, i1 false
  br i1 %or.cond240.not, label %.lr.ph.i142, label %.loopexit, !llvm.loop !13

.body87:                                          ; preds = %bb.r, %bb.o
  %.pn27.pn = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.co, %bb.r ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.ac:                                            ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.loopexit:                                        ; preds = %.lr.ph.i142, %bb.aa
  %.2.i139 = phi i1 [ false, %bb.aa ], [ %i.ex, %.lr.ph.i142 ] ; 2 uses
  %.not3.i.i.i.i.i148 = icmp eq i64 %i.en, 0
  br i1 %.not3.i.i.i.i.i148, label %bb.ad, label %.lr.ph.i.i.i.i.i149.preheader

.lr.ph.i.i.i.i.i149.preheader:                    ; preds = %.loopexit
  %min.iters.check217 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.i.i149.preheader241, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i.i.i.i.i149.preheader
  %n.vec219 = and i64 %i.en, -8                   ; 3 uses
  %i.fb = and i64 %i.en, 7
  %i.fc = shl i64 %n.vec219, 2
  %i.fd = getelementptr i8, ptr %i.ek, i64 %i.fc
  %i.fe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.em, i64 0
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next225, %vector.body220 ] ; 2 uses
  %vec.phi222 = phi <4 x i32> [ %i.fe, %vector.ph218 ], [ %i.fh, %vector.body220 ]
  %vec.phi223 = phi <4 x i32> [ zeroinitializer, %vector.ph218 ], [ %i.fi, %vector.body220 ]
  %i.ff = shl i64 %index221, 2
  %next.gep224 = getelementptr i8, ptr %i.ek, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep224, align 4, !tbaa !355
  store <4 x i32> splat (i32 -2147483648), ptr %i.fg, align 4, !tbaa !355
  %i.fh = add <4 x i32> %vec.phi222, splat (i32 -1) ; 2 uses
  %i.fi = add <4 x i32> %vec.phi223, splat (i32 -1) ; 2 uses
  %index.next225 = add nuw i64 %index221, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next225, %n.vec219
  br i1 %i.fj, label %middle.block226, label %vector.body220, !llvm.loop !989

middle.block226:                                  ; preds = %vector.body220
  %bin.rdx227 = add <4 x i32> %i.fi, %i.fh
  %i.fk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx227) ; 2 uses
  %cmp.n228 = icmp eq i64 %i.en, %n.vec219
  br i1 %cmp.n228, label %.loopexit208, label %.lr.ph.i.i.i.i.i149.preheader241

.lr.ph.i.i.i.i.i149.preheader241:                 ; preds = %.lr.ph.i.i.i.i.i149.preheader, %middle.block226
  %.ph = phi i32 [ %i.em, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fk, %middle.block226 ]
  %.05.i.i.i.i.i150.ph = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fb, %middle.block226 ]
  %storemerge4.i.i.i.i.i151.ph = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fd, %middle.block226 ]
  br label %.lr.ph.i.i.i.i.i149

.lr.ph.i.i.i.i.i149:                              ; preds = %.lr.ph.i.i.i.i.i149.preheader241, %.lr.ph.i.i.i.i.i149
  %i.fl = phi i32 [ %i.fn, %.lr.ph.i.i.i.i.i149 ], [ %.ph, %.lr.ph.i.i.i.i.i149.preheader241 ]
  %.05.i.i.i.i.i150 = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i149 ], [ %.05.i.i.i.i.i150.ph, %.lr.ph.i.i.i.i.i149.preheader241 ]
  %storemerge4.i.i.i.i.i151 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i149 ], [ %storemerge4.i.i.i.i.i151.ph, %.lr.ph.i.i.i.i.i149.preheader241 ] ; 2 uses
  %i.fm = add i64 %.05.i.i.i.i.i150, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i151, align 4, !tbaa !355
  %i.fn = add i32 %i.fl, -1                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i151, i64 4
  %.not.i.i.i.i.i152 = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i.i.i.i152, label %.loopexit208, label %.lr.ph.i.i.i.i.i149, !llvm.loop !990

.loopexit208:                                     ; preds = %.lr.ph.i.i.i.i.i149, %middle.block226
  %.lcssa = phi i32 [ %i.fk, %middle.block226 ], [ %i.fn, %.lr.ph.i.i.i.i.i149 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit208, %.loopexit, %bb.ab
  %.2.i139187 = phi i1 [ %.2.i139, %.loopexit ], [ true, %bb.ab ], [ %.2.i139, %.loopexit208 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 400) #27
  %i.fp = load ptr, ptr %i.eh, align 8, !tbaa !351 ; 3 uses
  %i.fq = load i64, ptr %i.ei, align 8, !tbaa !360 ; 5 uses
  %.not3.i.i.i.i.i158 = icmp eq i64 %i.fq, 0
  br i1 %.not3.i.i.i.i.i158, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159.preheader

.lr.ph.i.i.i.i.i159.preheader:                    ; preds = %bb.ad
  %xtraiter260 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol

.lr.ph.i.i.i.i.i159.prol:                         ; preds = %.lr.ph.i.i.i.i.i159.preheader, %.lr.ph.i.i.i.i.i159.prol
  %.05.i.i.i.i.i160.prol = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ]
  %storemerge4.i.i.i.i.i161.prol = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i159.preheader ] ; 2 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.lr.ph.i.i.i.i.i159.prol ], [ 0, %.lr.ph.i.i.i.i.i159.preheader ]
  %i.fr = add i64 %.05.i.i.i.i.i160.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161.prol, align 4, !tbaa !355
  %i.fs = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161.prol, i64 4 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol, !llvm.loop !991

.lr.ph.i.i.i.i.i159.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i159.prol, %.lr.ph.i.i.i.i.i159.preheader
  %.05.i.i.i.i.i160.unr = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i159.prol ]
  %storemerge4.i.i.i.i.i161.unr = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fu, %.lr.ph.i.i.i.i.i159.prol ]
  %i.fv = icmp ult i64 %i.fq, 4
  br i1 %i.fv, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159

.lr.ph.i.i.i.i.i159:                              ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159
  %.05.i.i.i.i.i160 = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i159 ], [ %.05.i.i.i.i.i160.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ]
  %storemerge4.i.i.i.i.i161 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i159 ], [ %storemerge4.i.i.i.i.i161.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161, align 4, !tbaa !355
  %i.fw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fx = add i32 %i.fw, -1
  store i32 %i.fx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 4
  store i32 -2147483648, ptr %i.fy, align 4, !tbaa !355
  %i.fz = add i32 %i.fw, -2
  store i32 %i.fz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 8
  store i32 -2147483648, ptr %i.ga, align 4, !tbaa !355
  %i.gb = add i32 %i.fw, -3
  store i32 %i.gb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 12
  %i.gd = add i64 %.05.i.i.i.i.i160, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gc, align 4, !tbaa !355
  %i.ge = add i32 %i.fw, -4
  store i32 %i.ge, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 16
  %.not.i.i.i.i.i162.3 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i.i.i162.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159, %bb.ad
  %i.gg = load i64, ptr %i.ej, align 8, !tbaa !353 ; 2 uses
  %.not.i1.i.i.i.i164 = icmp eq i64 %i.gg, 0
  br i1 %.not.i1.i.i.i.i164, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  %i.gh = shl i64 %i.gg, 2
  tail call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.gh) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27
  %i.gi = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i168 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i168, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = load ptr, ptr %i.ef, align 8, !tbaa !278
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170: ; preds = %bb.af, %bb.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i139187, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170
  %i.gn = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_11movable_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.gn, 0
  br i1 %.not, label %bb.ai, label %bb.ak

.body134:                                         ; preds = %bb.ac, %bb.z
  %.pn30.pn = phi { ptr, i32 } [ %i.el, %bb.z ], [ %i.fa, %bb.ac ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.ai:                                            ; preds = %bb.ah
  %i.go = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_11movable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not34 = icmp eq i32 %i.go, 0
  br i1 %.not34, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.gp), !inline_history !2 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, %bb.aj
  %.422 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit ], [ 1, %bb.ah ], [ 0, %bb.aj ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76 ], [ 1, %bb.ai ]
  ret i32 %.422
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.124", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.124", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1036 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !363, !noalias !1036
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !364, !noalias !1036
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !365, !noalias !1036
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !1036 ; 2 uses

common.resume:                                    ; preds = %.body, %.body43, %.body87, %.body134, %bb.x, %bb.m, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.br, %bb.m ], [ %i.ed, %bb.x ], [ %.pn30.pn, %.body134 ], [ %.pn27.pn, %.body87 ], [ %.pn24.pn, %.body43 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !1036
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !363, !noalias !1036
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !1036
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1036
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !367, !noalias !1036
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1036
  store ptr %i.a, ptr %0, align 8, !tbaa !370, !alias.scope !1036
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !1037 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !372
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit211

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !363, !noalias !1038
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !367
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit211, !llvm.loop !15

.loopexit211:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !363  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !372  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit211
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1010

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !367
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !367
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !367
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !367
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i38.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i38.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit211
  %i.af = load i64, ptr %i.c, align 8, !tbaa !365 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.f unwind label %bb.j       ; 9 uses

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.ah, align 8, !tbaa !363, !noalias !1039
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !364, !noalias !1039
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !365, !noalias !1039
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.h unwind label %bb.g, !noalias !1039 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !1039
  br label %.body43

bb.h:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !363, !noalias !1039
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !1039
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i41 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1039
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !367, !noalias !1039
  %i.am = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i41, 100
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1039
  store ptr %i.ah, ptr %1, align 8, !tbaa !370, !alias.scope !1039
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.i unwind label %.body51, !noalias !1040 ; 3 uses

.body51:                                          ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  br label %.body43

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !372
  %.not.i54 = icmp eq i64 %i.ap, 100
  br i1 %.not.i54, label %.lr.ph.i58.preheader, label %.loopexit210

.lr.ph.i58.preheader:                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !363, !noalias !1041
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58, %.lr.ph.i58.preheader
  %.sroa.019.026.i59.idx = phi i64 [ %.sroa.019.026.i59.add, %.lr.ph.i58 ], [ 0, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.015.025.i60 = phi ptr [ %i.au, %.lr.ph.i58 ], [ %i.an, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.019.026.i59.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i59.idx
  %i.ar = load i32, ptr %.sroa.015.025.i60, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i59.ptr, align 4, !tbaa !367
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i59.add = add nuw nsw i64 %.sroa.019.026.i59.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i60, i64 4
  %.not23.i61 = icmp ne i64 %.sroa.019.026.i59.add, 400
  %or.cond234.not = select i1 %i.at, i1 %.not23.i61, i1 false
  br i1 %or.cond234.not, label %.lr.ph.i58, label %.loopexit210, !llvm.loop !15

bb.j:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.loopexit210:                                     ; preds = %.lr.ph.i58, %bb.i
  %.2.i55 = phi i1 [ false, %bb.i ], [ %i.at, %.lr.ph.i58 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !363 ; 3 uses
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !372 ; 5 uses
  %.not3.i.i.i.i.i68 = icmp eq i64 %i.ax, 0
  br i1 %.not3.i.i.i.i.i68, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %.loopexit210
  %xtraiter254 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol

.lr.ph.i.i.i.i.i69.prol:                          ; preds = %.lr.ph.i.i.i.i.i69.preheader, %.lr.ph.i.i.i.i.i69.prol
  %.05.i.i.i.i.i70.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ]
  %storemerge4.i.i.i.i.i71.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %prol.iter256 = phi i64 [ %prol.iter256.next, %.lr.ph.i.i.i.i.i69.prol ], [ 0, %.lr.ph.i.i.i.i.i69.preheader ]
  %i.ay = add i64 %.05.i.i.i.i.i70.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71.prol, align 4, !tbaa !367
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71.prol, i64 4 ; 2 uses
  %prol.iter256.next = add i64 %prol.iter256, 1   ; 2 uses
  %prol.iter256.cmp.not = icmp eq i64 %prol.iter256.next, %xtraiter254
  br i1 %prol.iter256.cmp.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol, !llvm.loop !1017

.lr.ph.i.i.i.i.i69.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i69.prol, %.lr.ph.i.i.i.i.i69.preheader
  %.05.i.i.i.i.i70.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ]
  %storemerge4.i.i.i.i.i71.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ]
  %i.bc = icmp ult i64 %i.ax, 4
  br i1 %i.bc, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69
  %.05.i.i.i.i.i70 = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i69 ], [ %.05.i.i.i.i.i70.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ]
  %storemerge4.i.i.i.i.i71 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i69 ], [ %storemerge4.i.i.i.i.i71.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71, align 4, !tbaa !367
  %i.bd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 4
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !367
  %i.bg = add i32 %i.bd, -2
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !367
  %i.bi = add i32 %i.bd, -3
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 12
  %i.bk = add i64 %.05.i.i.i.i.i70, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !367
  %i.bl = add i32 %i.bd, -4
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 16
  %.not.i.i.i.i.i72.3 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i72.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69, %.loopexit210
  %i.bn = load i64, ptr %i.aj, align 8, !tbaa !365 ; 2 uses
  %.not.i1.i.i.i.i74 = icmp eq i64 %i.bn, 0
  br i1 %.not.i1.i.i.i.i74, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73
  %i.bo = shl i64 %i.bn, 2
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bo) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i55, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1042 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !noalias !1042
  %i.bq = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82 unwind label %bb.m, !noalias !1042 ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27, !noalias !1042
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82: ; preds = %bb.l
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !277, !noalias !1042
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 400 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !278, !noalias !1042
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bq, i8 0, i64 400, i1 false)
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !288, !noalias !1042
  store ptr %i.bp, ptr %2, align 8, !tbaa !348, !alias.scope !1042
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.n unwind label %bb.r       ; 7 uses

bb.n:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  store ptr null, ptr %i.bv, align 8, !tbaa !363, !noalias !1043
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  store i64 100, ptr %i.bw, align 8, !tbaa !364, !noalias !1043
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !365, !noalias !1043
  %i.by = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.p unwind label %bb.o, !noalias !1043 ; 7 uses

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27, !noalias !1043
  br label %.body87

bb.p:                                             ; preds = %bb.n
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i85 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1043
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.by, i8 0, i64 400, i1 false), !tbaa !367, !noalias !1043
  %i.ca = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i85, 100 ; 3 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1043
  %i.cb = load i64, ptr %i.bw, align 8, !tbaa !364, !noalias !1044 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !1044
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !288
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %.not.i91 = icmp eq i64 %i.cb, %i.ch
  br i1 %.not.i91, label %bb.q, label %.loopexit188

bb.q:                                             ; preds = %bb.p
  %.idx.i93 = shl nsw i64 %i.cb, 2
  %i.ci = getelementptr inbounds i8, ptr %i.by, i64 %.idx.i93
  %.not2324.i94 = icmp eq i64 %i.cb, 0
  br i1 %.not2324.i94, label %bb.s, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.q, %.lr.ph.i95
  %.sroa.019.026.i96 = phi ptr [ %i.cm, %.lr.ph.i95 ], [ %i.by, %bb.q ] ; 2 uses
  %.sroa.015.025.i97 = phi ptr [ %i.cn, %.lr.ph.i95 ], [ %i.cd, %bb.q ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.015.025.i97, align 4, !tbaa !247
  %i.ck = load i32, ptr %.sroa.019.026.i96, align 4, !tbaa !367
  %i.cl = icmp eq i32 %i.ck, %i.cj                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i96, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i97, i64 4
  %.not23.i98 = icmp ne ptr %i.cm, %i.ci
  %or.cond237.not = select i1 %i.cl, i1 %.not23.i98, i1 false
  br i1 %or.cond237.not, label %.lr.ph.i95, label %.loopexit188, !llvm.loop !15

.body43:                                          ; preds = %bb.j, %bb.g, %.body51
  %.pn24.pn = phi { ptr, i32 } [ %i.ao, %.body51 ], [ %i.av, %bb.j ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.r:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.loopexit188:                                     ; preds = %.lr.ph.i95, %bb.p
  %.2.i92 = phi i1 [ false, %bb.p ], [ %i.cl, %.lr.ph.i95 ] ; 2 uses
  %.not3.i.i.i.i.i101 = icmp eq i64 %i.cb, 0
  br i1 %.not3.i.i.i.i.i101, label %bb.s, label %.lr.ph.i.i.i.i.i102.preheader

.lr.ph.i.i.i.i.i102.preheader:                    ; preds = %.loopexit188
  %min.iters.check = icmp ult i64 %i.cb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i102.preheader246, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i102.preheader
  %n.vec = and i64 %i.cb, -8                      ; 3 uses
  %i.cp = and i64 %i.cb, 7
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %i.by, i64 %i.cq
  %i.cs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ca, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cs, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi214 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !367
  store <4 x i32> splat (i32 -2147483648), ptr %i.cu, align 4, !tbaa !367
  %i.cv = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cw = add <4 x i32> %vec.phi214, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1024

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit209, label %.lr.ph.i.i.i.i.i102.preheader246

.lr.ph.i.i.i.i.i102.preheader246:                 ; preds = %.lr.ph.i.i.i.i.i102.preheader, %middle.block
  %.ph247 = phi i32 [ %i.ca, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cy, %middle.block ]
  %.05.i.i.i.i.i103.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cp, %middle.block ]
  %storemerge4.i.i.i.i.i104.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.lr.ph.i.i.i.i.i102.preheader246, %.lr.ph.i.i.i.i.i102
  %i.cz = phi i32 [ %i.db, %.lr.ph.i.i.i.i.i102 ], [ %.ph247, %.lr.ph.i.i.i.i.i102.preheader246 ]
  %.05.i.i.i.i.i103 = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i102 ], [ %.05.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i102.preheader246 ]
  %storemerge4.i.i.i.i.i104 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i102 ], [ %storemerge4.i.i.i.i.i104.ph, %.lr.ph.i.i.i.i.i102.preheader246 ] ; 2 uses
  %i.da = add i64 %.05.i.i.i.i.i103, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i104, align 4, !tbaa !367
  %i.db = add i32 %i.cz, -1                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i104, i64 4
  %.not.i.i.i.i.i105 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i105, label %.loopexit209, label %.lr.ph.i.i.i.i.i102, !llvm.loop !1025

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i102, %middle.block
  %.lcssa213 = phi i32 [ %i.cy, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i.i102 ]
  store i32 %.lcssa213, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %bb.s

bb.s:                                             ; preds = %.loopexit209, %.loopexit188, %bb.q
  %.2.i92182 = phi i1 [ %.2.i92, %.loopexit188 ], [ true, %bb.q ], [ %.2.i92, %.loopexit209 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 400) #27
  %i.dd = load ptr, ptr %i.bv, align 8, !tbaa !363 ; 3 uses
  %i.de = load i64, ptr %i.bw, align 8, !tbaa !372 ; 5 uses
  %.not3.i.i.i.i.i111 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i.i.i.i111, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i112.preheader:                    ; preds = %bb.s
  %xtraiter257 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol

.lr.ph.i.i.i.i.i112.prol:                         ; preds = %.lr.ph.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i112.prol
  %.05.i.i.i.i.i113.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i112.prol ], [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ]
  %storemerge4.i.i.i.i.i114.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i112.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ] ; 2 uses
  %prol.iter259 = phi i64 [ %prol.iter259.next, %.lr.ph.i.i.i.i.i112.prol ], [ 0, %.lr.ph.i.i.i.i.i112.preheader ]
  %i.df = add i64 %.05.i.i.i.i.i113.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114.prol, align 4, !tbaa !367
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114.prol, i64 4 ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol, !llvm.loop !1026

.lr.ph.i.i.i.i.i112.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i112.prol, %.lr.ph.i.i.i.i.i112.preheader
  %.05.i.i.i.i.i113.unr = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i112.prol ]
  %storemerge4.i.i.i.i.i114.unr = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.di, %.lr.ph.i.i.i.i.i112.prol ]
  %i.dj = icmp ult i64 %i.de, 4
  br i1 %i.dj, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112
  %.05.i.i.i.i.i113 = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i112 ], [ %.05.i.i.i.i.i113.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ]
  %storemerge4.i.i.i.i.i114 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i112 ], [ %storemerge4.i.i.i.i.i114.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114, align 4, !tbaa !367
  %i.dk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 4
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !367
  %i.dn = add i32 %i.dk, -2
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 8
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !367
  %i.dp = add i32 %i.dk, -3
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 12
  %i.dr = add i64 %.05.i.i.i.i.i113, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dq, align 4, !tbaa !367
  %i.ds = add i32 %i.dk, -4
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 16
  %.not.i.i.i.i.i115.3 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i115.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116: ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112, %bb.s
  %i.du = load i64, ptr %i.bx, align 8, !tbaa !365 ; 2 uses
  %.not.i1.i.i.i.i117 = icmp eq i64 %i.du, 0
  br i1 %.not.i1.i.i.i.i117, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  %i.dv = shl i64 %i.du, 2
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dv) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27
  %i.dw = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i121 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i121, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = load ptr, ptr %i.bt, align 8, !tbaa !278
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123: ; preds = %bb.u, %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i92182, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %i.eb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1045 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !1045
  %i.ec = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129 unwind label %bb.x, !noalias !1045 ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27, !noalias !1045
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129: ; preds = %bb.w
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !277, !noalias !1045
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 400 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !278, !noalias !1045
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ec, i8 0, i64 400, i1 false)
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !288, !noalias !1045
  store ptr %i.eb, ptr %3, align 8, !tbaa !348, !alias.scope !1045
  %i.eh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.y unwind label %bb.ac      ; 7 uses

bb.y:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  store ptr null, ptr %i.eh, align 8, !tbaa !363, !noalias !1046
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  store i64 100, ptr %i.ei, align 8, !tbaa !364, !noalias !1046
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !365, !noalias !1046
  %i.ek = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.aa unwind label %bb.z, !noalias !1046 ; 7 uses

bb.z:                                             ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27, !noalias !1046
  br label %.body134

bb.aa:                                            ; preds = %bb.y
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i132 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1046
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ek, i8 0, i64 400, i1 false), !tbaa !367, !noalias !1046
  %i.em = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i132, 100 ; 3 uses
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !1046
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !364, !noalias !1047 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false), !noalias !1047
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !288
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2
  %.not.i138 = icmp eq i64 %i.en, %i.et
  br i1 %.not.i138, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %.idx.i140 = shl nsw i64 %i.en, 2
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 %.idx.i140
  %.not2324.i141 = icmp eq i64 %i.en, 0
  br i1 %.not2324.i141, label %bb.ad, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ab, %.lr.ph.i142
  %.sroa.019.026.i143 = phi ptr [ %i.ey, %.lr.ph.i142 ], [ %i.ek, %bb.ab ] ; 2 uses
  %.sroa.015.025.i144 = phi ptr [ %i.ez, %.lr.ph.i142 ], [ %i.ep, %bb.ab ] ; 2 uses
  %i.ev = load i32, ptr %.sroa.015.025.i144, align 4, !tbaa !247
  %i.ew = load i32, ptr %.sroa.019.026.i143, align 4, !tbaa !367
  %i.ex = icmp eq i32 %i.ew, %i.ev                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i143, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i144, i64 4
  %.not23.i145 = icmp ne ptr %i.ey, %i.eu
  %or.cond240.not = select i1 %i.ex, i1 %.not23.i145, i1 false
  br i1 %or.cond240.not, label %.lr.ph.i142, label %.loopexit, !llvm.loop !15

.body87:                                          ; preds = %bb.r, %bb.o
  %.pn27.pn = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.co, %bb.r ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.ac:                                            ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.loopexit:                                        ; preds = %.lr.ph.i142, %bb.aa
  %.2.i139 = phi i1 [ false, %bb.aa ], [ %i.ex, %.lr.ph.i142 ] ; 2 uses
  %.not3.i.i.i.i.i148 = icmp eq i64 %i.en, 0
  br i1 %.not3.i.i.i.i.i148, label %bb.ad, label %.lr.ph.i.i.i.i.i149.preheader

.lr.ph.i.i.i.i.i149.preheader:                    ; preds = %.loopexit
  %min.iters.check217 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.i.i149.preheader241, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i.i.i.i.i149.preheader
  %n.vec219 = and i64 %i.en, -8                   ; 3 uses
  %i.fb = and i64 %i.en, 7
  %i.fc = shl i64 %n.vec219, 2
  %i.fd = getelementptr i8, ptr %i.ek, i64 %i.fc
  %i.fe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.em, i64 0
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next225, %vector.body220 ] ; 2 uses
  %vec.phi222 = phi <4 x i32> [ %i.fe, %vector.ph218 ], [ %i.fh, %vector.body220 ]
  %vec.phi223 = phi <4 x i32> [ zeroinitializer, %vector.ph218 ], [ %i.fi, %vector.body220 ]
  %i.ff = shl i64 %index221, 2
  %next.gep224 = getelementptr i8, ptr %i.ek, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep224, align 4, !tbaa !367
  store <4 x i32> splat (i32 -2147483648), ptr %i.fg, align 4, !tbaa !367
  %i.fh = add <4 x i32> %vec.phi222, splat (i32 -1) ; 2 uses
  %i.fi = add <4 x i32> %vec.phi223, splat (i32 -1) ; 2 uses
  %index.next225 = add nuw i64 %index221, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next225, %n.vec219
  br i1 %i.fj, label %middle.block226, label %vector.body220, !llvm.loop !1033

middle.block226:                                  ; preds = %vector.body220
  %bin.rdx227 = add <4 x i32> %i.fi, %i.fh
  %i.fk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx227) ; 2 uses
  %cmp.n228 = icmp eq i64 %i.en, %n.vec219
  br i1 %cmp.n228, label %.loopexit208, label %.lr.ph.i.i.i.i.i149.preheader241

.lr.ph.i.i.i.i.i149.preheader241:                 ; preds = %.lr.ph.i.i.i.i.i149.preheader, %middle.block226
  %.ph = phi i32 [ %i.em, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fk, %middle.block226 ]
  %.05.i.i.i.i.i150.ph = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fb, %middle.block226 ]
  %storemerge4.i.i.i.i.i151.ph = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fd, %middle.block226 ]
  br label %.lr.ph.i.i.i.i.i149

.lr.ph.i.i.i.i.i149:                              ; preds = %.lr.ph.i.i.i.i.i149.preheader241, %.lr.ph.i.i.i.i.i149
  %i.fl = phi i32 [ %i.fn, %.lr.ph.i.i.i.i.i149 ], [ %.ph, %.lr.ph.i.i.i.i.i149.preheader241 ]
  %.05.i.i.i.i.i150 = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i149 ], [ %.05.i.i.i.i.i150.ph, %.lr.ph.i.i.i.i.i149.preheader241 ]
  %storemerge4.i.i.i.i.i151 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i149 ], [ %storemerge4.i.i.i.i.i151.ph, %.lr.ph.i.i.i.i.i149.preheader241 ] ; 2 uses
  %i.fm = add i64 %.05.i.i.i.i.i150, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i151, align 4, !tbaa !367
  %i.fn = add i32 %i.fl, -1                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i151, i64 4
  %.not.i.i.i.i.i152 = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i.i.i.i152, label %.loopexit208, label %.lr.ph.i.i.i.i.i149, !llvm.loop !1034

.loopexit208:                                     ; preds = %.lr.ph.i.i.i.i.i149, %middle.block226
  %.lcssa = phi i32 [ %i.fk, %middle.block226 ], [ %i.fn, %.lr.ph.i.i.i.i.i149 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit208, %.loopexit, %bb.ab
  %.2.i139187 = phi i1 [ %.2.i139, %.loopexit ], [ true, %bb.ab ], [ %.2.i139, %.loopexit208 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 400) #27
  %i.fp = load ptr, ptr %i.eh, align 8, !tbaa !363 ; 3 uses
  %i.fq = load i64, ptr %i.ei, align 8, !tbaa !372 ; 5 uses
  %.not3.i.i.i.i.i158 = icmp eq i64 %i.fq, 0
  br i1 %.not3.i.i.i.i.i158, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159.preheader

.lr.ph.i.i.i.i.i159.preheader:                    ; preds = %bb.ad
  %xtraiter260 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol

.lr.ph.i.i.i.i.i159.prol:                         ; preds = %.lr.ph.i.i.i.i.i159.preheader, %.lr.ph.i.i.i.i.i159.prol
  %.05.i.i.i.i.i160.prol = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ]
  %storemerge4.i.i.i.i.i161.prol = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i159.preheader ] ; 2 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.lr.ph.i.i.i.i.i159.prol ], [ 0, %.lr.ph.i.i.i.i.i159.preheader ]
  %i.fr = add i64 %.05.i.i.i.i.i160.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161.prol, align 4, !tbaa !367
  %i.fs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161.prol, i64 4 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol, !llvm.loop !1035

.lr.ph.i.i.i.i.i159.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i159.prol, %.lr.ph.i.i.i.i.i159.preheader
  %.05.i.i.i.i.i160.unr = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i159.prol ]
  %storemerge4.i.i.i.i.i161.unr = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fu, %.lr.ph.i.i.i.i.i159.prol ]
  %i.fv = icmp ult i64 %i.fq, 4
  br i1 %i.fv, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159

.lr.ph.i.i.i.i.i159:                              ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159
  %.05.i.i.i.i.i160 = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i159 ], [ %.05.i.i.i.i.i160.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ]
  %storemerge4.i.i.i.i.i161 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i159 ], [ %storemerge4.i.i.i.i.i161.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161, align 4, !tbaa !367
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fx = add i32 %i.fw, -1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 4
  store i32 -2147483648, ptr %i.fy, align 4, !tbaa !367
  %i.fz = add i32 %i.fw, -2
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 8
  store i32 -2147483648, ptr %i.ga, align 4, !tbaa !367
  %i.gb = add i32 %i.fw, -3
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 12
  %i.gd = add i64 %.05.i.i.i.i.i160, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gc, align 4, !tbaa !367
  %i.ge = add i32 %i.fw, -4
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 16
  %.not.i.i.i.i.i162.3 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i.i.i162.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159, %bb.ad
  %i.gg = load i64, ptr %i.ej, align 8, !tbaa !365 ; 2 uses
  %.not.i1.i.i.i.i164 = icmp eq i64 %i.gg, 0
  br i1 %.not.i1.i.i.i.i164, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  %i.gh = shl i64 %i.gg, 2
  tail call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.gh) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27
  %i.gi = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i168 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i168, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = load ptr, ptr %i.ef, align 8, !tbaa !278
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170: ; preds = %bb.af, %bb.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i139187, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170
  %i.gn = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.gn, 0
  br i1 %.not, label %bb.ai, label %bb.ak

.body134:                                         ; preds = %bb.ac, %bb.z
  %.pn30.pn = phi { ptr, i32 } [ %i.el, %bb.z ], [ %i.fa, %bb.ac ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.ai:                                            ; preds = %bb.ah
  %i.go = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not34 = icmp eq i32 %i.go, 0
  br i1 %.not34, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.gp), !inline_history !2 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, %bb.aj
  %.422 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit ], [ 1, %bb.ah ], [ 0, %bb.aj ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76 ], [ 1, %bb.ai ]
  ret i32 %.422
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_12copyable_intESaIS4_EvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.157", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.157", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1080 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !374, !noalias !1080
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !375, !noalias !1080
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !376, !noalias !1080
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !1080 ; 2 uses

common.resume:                                    ; preds = %.body, %.body43, %.body87, %.body134, %bb.x, %bb.m, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.br, %bb.m ], [ %i.ed, %bb.x ], [ %.pn30.pn, %.body134 ], [ %.pn27.pn, %.body87 ], [ %.pn24.pn, %.body43 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !1080
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !374, !noalias !1080
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !1080
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !318, !noalias !1080
  %i.f = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1080
  store ptr %i.a, ptr %0, align 8, !tbaa !379, !alias.scope !1080
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !1081 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !381
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit211

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !374, !noalias !1082
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !318
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit211, !llvm.loop !17

.loopexit211:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !374  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !381  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit211
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1054

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !318
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !318
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !318
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i38.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i38.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit211
  %i.af = load i64, ptr %i.c, align 8, !tbaa !376 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.f unwind label %bb.j       ; 9 uses

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.ah, align 8, !tbaa !374, !noalias !1083
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !375, !noalias !1083
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !376, !noalias !1083
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.h unwind label %bb.g, !noalias !1083 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !1083
  br label %.body43

bb.h:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !374, !noalias !1083
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !1083
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i41 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1083
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !318, !noalias !1083
  %i.am = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i41, 100
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1083
  store ptr %i.ah, ptr %1, align 8, !tbaa !379, !alias.scope !1083
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.i unwind label %.body51, !noalias !1084 ; 3 uses

.body51:                                          ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  br label %.body43

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !381
  %.not.i54 = icmp eq i64 %i.ap, 100
  br i1 %.not.i54, label %.lr.ph.i58.preheader, label %.loopexit210

.lr.ph.i58.preheader:                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !374, !noalias !1085
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58, %.lr.ph.i58.preheader
  %.sroa.019.026.i59.idx = phi i64 [ %.sroa.019.026.i59.add, %.lr.ph.i58 ], [ 0, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.015.025.i60 = phi ptr [ %i.au, %.lr.ph.i58 ], [ %i.an, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.019.026.i59.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i59.idx
  %i.ar = load i32, ptr %.sroa.015.025.i60, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i59.ptr, align 4, !tbaa !318
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i59.add = add nuw nsw i64 %.sroa.019.026.i59.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i60, i64 4
  %.not23.i61 = icmp ne i64 %.sroa.019.026.i59.add, 400
  %or.cond234.not = select i1 %i.at, i1 %.not23.i61, i1 false
  br i1 %or.cond234.not, label %.lr.ph.i58, label %.loopexit210, !llvm.loop !17

bb.j:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.loopexit210:                                     ; preds = %.lr.ph.i58, %bb.i
  %.2.i55 = phi i1 [ false, %bb.i ], [ %i.at, %.lr.ph.i58 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !374 ; 3 uses
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !381 ; 5 uses
  %.not3.i.i.i.i.i68 = icmp eq i64 %i.ax, 0
  br i1 %.not3.i.i.i.i.i68, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %.loopexit210
  %xtraiter254 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol

.lr.ph.i.i.i.i.i69.prol:                          ; preds = %.lr.ph.i.i.i.i.i69.preheader, %.lr.ph.i.i.i.i.i69.prol
  %.05.i.i.i.i.i70.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ]
  %storemerge4.i.i.i.i.i71.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %prol.iter256 = phi i64 [ %prol.iter256.next, %.lr.ph.i.i.i.i.i69.prol ], [ 0, %.lr.ph.i.i.i.i.i69.preheader ]
  %i.ay = add i64 %.05.i.i.i.i.i70.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71.prol, align 4, !tbaa !318
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71.prol, i64 4 ; 2 uses
  %prol.iter256.next = add i64 %prol.iter256, 1   ; 2 uses
  %prol.iter256.cmp.not = icmp eq i64 %prol.iter256.next, %xtraiter254
  br i1 %prol.iter256.cmp.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol, !llvm.loop !1061

.lr.ph.i.i.i.i.i69.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i69.prol, %.lr.ph.i.i.i.i.i69.preheader
  %.05.i.i.i.i.i70.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ]
  %storemerge4.i.i.i.i.i71.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ]
  %i.bc = icmp ult i64 %i.ax, 4
  br i1 %i.bc, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69
  %.05.i.i.i.i.i70 = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i69 ], [ %.05.i.i.i.i.i70.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ]
  %storemerge4.i.i.i.i.i71 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i69 ], [ %storemerge4.i.i.i.i.i71.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71, align 4, !tbaa !318
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 4
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !318
  %i.bg = add i32 %i.bd, -2
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !318
  %i.bi = add i32 %i.bd, -3
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 12
  %i.bk = add i64 %.05.i.i.i.i.i70, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !318
  %i.bl = add i32 %i.bd, -4
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 16
  %.not.i.i.i.i.i72.3 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i72.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69, %.loopexit210
  %i.bn = load i64, ptr %i.aj, align 8, !tbaa !376 ; 2 uses
  %.not.i1.i.i.i.i74 = icmp eq i64 %i.bn, 0
  br i1 %.not.i1.i.i.i.i74, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73
  %i.bo = shl i64 %i.bn, 2
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bo) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i55, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1086 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !noalias !1086
  %i.bq = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82 unwind label %bb.m, !noalias !1086 ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27, !noalias !1086
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82: ; preds = %bb.l
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !277, !noalias !1086
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 400 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !278, !noalias !1086
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bq, i8 0, i64 400, i1 false)
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !288, !noalias !1086
  store ptr %i.bp, ptr %2, align 8, !tbaa !348, !alias.scope !1086
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.n unwind label %bb.r       ; 7 uses

bb.n:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  store ptr null, ptr %i.bv, align 8, !tbaa !374, !noalias !1087
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  store i64 100, ptr %i.bw, align 8, !tbaa !375, !noalias !1087
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !376, !noalias !1087
  %i.by = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.p unwind label %bb.o, !noalias !1087 ; 7 uses

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27, !noalias !1087
  br label %.body87

bb.p:                                             ; preds = %bb.n
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i85 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1087
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.by, i8 0, i64 400, i1 false), !tbaa !318, !noalias !1087
  %i.ca = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i85, 100 ; 3 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1087
  %i.cb = load i64, ptr %i.bw, align 8, !tbaa !375, !noalias !1088 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !1088
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !288
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %.not.i91 = icmp eq i64 %i.cb, %i.ch
  br i1 %.not.i91, label %bb.q, label %.loopexit188

bb.q:                                             ; preds = %bb.p
  %.idx.i93 = shl nsw i64 %i.cb, 2
  %i.ci = getelementptr inbounds i8, ptr %i.by, i64 %.idx.i93
  %.not2324.i94 = icmp eq i64 %i.cb, 0
  br i1 %.not2324.i94, label %bb.s, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.q, %.lr.ph.i95
  %.sroa.019.026.i96 = phi ptr [ %i.cm, %.lr.ph.i95 ], [ %i.by, %bb.q ] ; 2 uses
  %.sroa.015.025.i97 = phi ptr [ %i.cn, %.lr.ph.i95 ], [ %i.cd, %bb.q ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.015.025.i97, align 4, !tbaa !247
  %i.ck = load i32, ptr %.sroa.019.026.i96, align 4, !tbaa !318
  %i.cl = icmp eq i32 %i.ck, %i.cj                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i96, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i97, i64 4
  %.not23.i98 = icmp ne ptr %i.cm, %i.ci
  %or.cond237.not = select i1 %i.cl, i1 %.not23.i98, i1 false
  br i1 %or.cond237.not, label %.lr.ph.i95, label %.loopexit188, !llvm.loop !17

.body43:                                          ; preds = %bb.j, %bb.g, %.body51
  %.pn24.pn = phi { ptr, i32 } [ %i.ao, %.body51 ], [ %i.av, %bb.j ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.r:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.loopexit188:                                     ; preds = %.lr.ph.i95, %bb.p
  %.2.i92 = phi i1 [ false, %bb.p ], [ %i.cl, %.lr.ph.i95 ] ; 2 uses
  %.not3.i.i.i.i.i101 = icmp eq i64 %i.cb, 0
  br i1 %.not3.i.i.i.i.i101, label %bb.s, label %.lr.ph.i.i.i.i.i102.preheader

.lr.ph.i.i.i.i.i102.preheader:                    ; preds = %.loopexit188
  %min.iters.check = icmp ult i64 %i.cb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i102.preheader246, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i102.preheader
  %n.vec = and i64 %i.cb, -8                      ; 3 uses
  %i.cp = and i64 %i.cb, 7
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %i.by, i64 %i.cq
  %i.cs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ca, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cs, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi214 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> splat (i32 -2147483648), ptr %i.cu, align 4, !tbaa !318
  %i.cv = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cw = add <4 x i32> %vec.phi214, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1068

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit209, label %.lr.ph.i.i.i.i.i102.preheader246

.lr.ph.i.i.i.i.i102.preheader246:                 ; preds = %.lr.ph.i.i.i.i.i102.preheader, %middle.block
  %.ph247 = phi i32 [ %i.ca, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cy, %middle.block ]
  %.05.i.i.i.i.i103.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cp, %middle.block ]
  %storemerge4.i.i.i.i.i104.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.lr.ph.i.i.i.i.i102.preheader246, %.lr.ph.i.i.i.i.i102
  %i.cz = phi i32 [ %i.db, %.lr.ph.i.i.i.i.i102 ], [ %.ph247, %.lr.ph.i.i.i.i.i102.preheader246 ]
  %.05.i.i.i.i.i103 = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i102 ], [ %.05.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i102.preheader246 ]
  %storemerge4.i.i.i.i.i104 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i102 ], [ %storemerge4.i.i.i.i.i104.ph, %.lr.ph.i.i.i.i.i102.preheader246 ] ; 2 uses
  %i.da = add i64 %.05.i.i.i.i.i103, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i104, align 4, !tbaa !318
  %i.db = add i32 %i.cz, -1                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i104, i64 4
  %.not.i.i.i.i.i105 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i105, label %.loopexit209, label %.lr.ph.i.i.i.i.i102, !llvm.loop !1069

.loopexit209:                                     ; preds = %.lr.ph.i.i.i.i.i102, %middle.block
  %.lcssa213 = phi i32 [ %i.cy, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i.i102 ]
  store i32 %.lcssa213, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %bb.s

bb.s:                                             ; preds = %.loopexit209, %.loopexit188, %bb.q
  %.2.i92182 = phi i1 [ %.2.i92, %.loopexit188 ], [ true, %bb.q ], [ %.2.i92, %.loopexit209 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 400) #27
  %i.dd = load ptr, ptr %i.bv, align 8, !tbaa !374 ; 3 uses
  %i.de = load i64, ptr %i.bw, align 8, !tbaa !381 ; 5 uses
  %.not3.i.i.i.i.i111 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i.i.i.i111, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i112.preheader:                    ; preds = %bb.s
  %xtraiter257 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol

.lr.ph.i.i.i.i.i112.prol:                         ; preds = %.lr.ph.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i112.prol
  %.05.i.i.i.i.i113.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i112.prol ], [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ]
  %storemerge4.i.i.i.i.i114.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i112.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ] ; 2 uses
  %prol.iter259 = phi i64 [ %prol.iter259.next, %.lr.ph.i.i.i.i.i112.prol ], [ 0, %.lr.ph.i.i.i.i.i112.preheader ]
  %i.df = add i64 %.05.i.i.i.i.i113.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114.prol, align 4, !tbaa !318
  %i.dg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114.prol, i64 4 ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol, !llvm.loop !1070

.lr.ph.i.i.i.i.i112.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i112.prol, %.lr.ph.i.i.i.i.i112.preheader
  %.05.i.i.i.i.i113.unr = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i112.prol ]
  %storemerge4.i.i.i.i.i114.unr = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.di, %.lr.ph.i.i.i.i.i112.prol ]
  %i.dj = icmp ult i64 %i.de, 4
  br i1 %i.dj, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112
  %.05.i.i.i.i.i113 = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i112 ], [ %.05.i.i.i.i.i113.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ]
  %storemerge4.i.i.i.i.i114 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i112 ], [ %storemerge4.i.i.i.i.i114.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114, align 4, !tbaa !318
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 4
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !318
  %i.dn = add i32 %i.dk, -2
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 8
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !318
  %i.dp = add i32 %i.dk, -3
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 12
  %i.dr = add i64 %.05.i.i.i.i.i113, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dq, align 4, !tbaa !318
  %i.ds = add i32 %i.dk, -4
  store i32 %i.ds, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 16
  %.not.i.i.i.i.i115.3 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i115.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116: ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112, %bb.s
  %i.du = load i64, ptr %i.bx, align 8, !tbaa !376 ; 2 uses
  %.not.i1.i.i.i.i117 = icmp eq i64 %i.du, 0
  br i1 %.not.i1.i.i.i.i117, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  %i.dv = shl i64 %i.du, 2
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dv) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27
  %i.dw = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i121 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i121, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = load ptr, ptr %i.bt, align 8, !tbaa !278
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123: ; preds = %bb.u, %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i92182, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.eb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1089 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !1089
  %i.ec = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129 unwind label %bb.x, !noalias !1089 ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27, !noalias !1089
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129: ; preds = %bb.w
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !277, !noalias !1089
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 400 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !278, !noalias !1089
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ec, i8 0, i64 400, i1 false)
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !288, !noalias !1089
  store ptr %i.eb, ptr %3, align 8, !tbaa !348, !alias.scope !1089
  %i.eh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.y unwind label %bb.ac      ; 7 uses

bb.y:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  store ptr null, ptr %i.eh, align 8, !tbaa !374, !noalias !1090
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  store i64 100, ptr %i.ei, align 8, !tbaa !375, !noalias !1090
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !376, !noalias !1090
  %i.ek = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.aa unwind label %bb.z, !noalias !1090 ; 7 uses

bb.z:                                             ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27, !noalias !1090
  br label %.body134

bb.aa:                                            ; preds = %bb.y
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i132 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1090
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ek, i8 0, i64 400, i1 false), !tbaa !318, !noalias !1090
  %i.em = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i132, 100 ; 3 uses
  store i32 %i.em, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !1090
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !375, !noalias !1091 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false), !noalias !1091
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !288
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2
  %.not.i138 = icmp eq i64 %i.en, %i.et
  br i1 %.not.i138, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %.idx.i140 = shl nsw i64 %i.en, 2
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 %.idx.i140
  %.not2324.i141 = icmp eq i64 %i.en, 0
  br i1 %.not2324.i141, label %bb.ad, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ab, %.lr.ph.i142
  %.sroa.019.026.i143 = phi ptr [ %i.ey, %.lr.ph.i142 ], [ %i.ek, %bb.ab ] ; 2 uses
  %.sroa.015.025.i144 = phi ptr [ %i.ez, %.lr.ph.i142 ], [ %i.ep, %bb.ab ] ; 2 uses
  %i.ev = load i32, ptr %.sroa.015.025.i144, align 4, !tbaa !247
  %i.ew = load i32, ptr %.sroa.019.026.i143, align 4, !tbaa !318
  %i.ex = icmp eq i32 %i.ew, %i.ev                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i143, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i144, i64 4
  %.not23.i145 = icmp ne ptr %i.ey, %i.eu
  %or.cond240.not = select i1 %i.ex, i1 %.not23.i145, i1 false
  br i1 %or.cond240.not, label %.lr.ph.i142, label %.loopexit, !llvm.loop !17

.body87:                                          ; preds = %bb.r, %bb.o
  %.pn27.pn = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.co, %bb.r ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.ac:                                            ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body134

.loopexit:                                        ; preds = %.lr.ph.i142, %bb.aa
  %.2.i139 = phi i1 [ false, %bb.aa ], [ %i.ex, %.lr.ph.i142 ] ; 2 uses
  %.not3.i.i.i.i.i148 = icmp eq i64 %i.en, 0
  br i1 %.not3.i.i.i.i.i148, label %bb.ad, label %.lr.ph.i.i.i.i.i149.preheader

.lr.ph.i.i.i.i.i149.preheader:                    ; preds = %.loopexit
  %min.iters.check217 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check217, label %.lr.ph.i.i.i.i.i149.preheader241, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i.i.i.i.i149.preheader
  %n.vec219 = and i64 %i.en, -8                   ; 3 uses
  %i.fb = and i64 %i.en, 7
  %i.fc = shl i64 %n.vec219, 2
  %i.fd = getelementptr i8, ptr %i.ek, i64 %i.fc
  %i.fe = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.em, i64 0
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next225, %vector.body220 ] ; 2 uses
  %vec.phi222 = phi <4 x i32> [ %i.fe, %vector.ph218 ], [ %i.fh, %vector.body220 ]
  %vec.phi223 = phi <4 x i32> [ zeroinitializer, %vector.ph218 ], [ %i.fi, %vector.body220 ]
  %i.ff = shl i64 %index221, 2
  %next.gep224 = getelementptr i8, ptr %i.ek, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep224, align 4, !tbaa !318
  store <4 x i32> splat (i32 -2147483648), ptr %i.fg, align 4, !tbaa !318
  %i.fh = add <4 x i32> %vec.phi222, splat (i32 -1) ; 2 uses
  %i.fi = add <4 x i32> %vec.phi223, splat (i32 -1) ; 2 uses
  %index.next225 = add nuw i64 %index221, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next225, %n.vec219
  br i1 %i.fj, label %middle.block226, label %vector.body220, !llvm.loop !1077

middle.block226:                                  ; preds = %vector.body220
  %bin.rdx227 = add <4 x i32> %i.fi, %i.fh
  %i.fk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx227) ; 2 uses
  %cmp.n228 = icmp eq i64 %i.en, %n.vec219
  br i1 %cmp.n228, label %.loopexit208, label %.lr.ph.i.i.i.i.i149.preheader241

.lr.ph.i.i.i.i.i149.preheader241:                 ; preds = %.lr.ph.i.i.i.i.i149.preheader, %middle.block226
  %.ph = phi i32 [ %i.em, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fk, %middle.block226 ]
  %.05.i.i.i.i.i150.ph = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fb, %middle.block226 ]
  %storemerge4.i.i.i.i.i151.ph = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i149.preheader ], [ %i.fd, %middle.block226 ]
  br label %.lr.ph.i.i.i.i.i149

.lr.ph.i.i.i.i.i149:                              ; preds = %.lr.ph.i.i.i.i.i149.preheader241, %.lr.ph.i.i.i.i.i149
  %i.fl = phi i32 [ %i.fn, %.lr.ph.i.i.i.i.i149 ], [ %.ph, %.lr.ph.i.i.i.i.i149.preheader241 ]
  %.05.i.i.i.i.i150 = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i149 ], [ %.05.i.i.i.i.i150.ph, %.lr.ph.i.i.i.i.i149.preheader241 ]
  %storemerge4.i.i.i.i.i151 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i149 ], [ %storemerge4.i.i.i.i.i151.ph, %.lr.ph.i.i.i.i.i149.preheader241 ] ; 2 uses
  %i.fm = add i64 %.05.i.i.i.i.i150, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i151, align 4, !tbaa !318
  %i.fn = add i32 %i.fl, -1                       ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i151, i64 4
  %.not.i.i.i.i.i152 = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i.i.i.i152, label %.loopexit208, label %.lr.ph.i.i.i.i.i149, !llvm.loop !1078

.loopexit208:                                     ; preds = %.lr.ph.i.i.i.i.i149, %middle.block226
  %.lcssa = phi i32 [ %i.fk, %middle.block226 ], [ %i.fn, %.lr.ph.i.i.i.i.i149 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit208, %.loopexit, %bb.ab
  %.2.i139187 = phi i1 [ %.2.i139, %.loopexit ], [ true, %bb.ab ], [ %.2.i139, %.loopexit208 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 400) #27
  %i.fp = load ptr, ptr %i.eh, align 8, !tbaa !374 ; 3 uses
  %i.fq = load i64, ptr %i.ei, align 8, !tbaa !381 ; 5 uses
  %.not3.i.i.i.i.i158 = icmp eq i64 %i.fq, 0
  br i1 %.not3.i.i.i.i.i158, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159.preheader

.lr.ph.i.i.i.i.i159.preheader:                    ; preds = %bb.ad
  %xtraiter260 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol

.lr.ph.i.i.i.i.i159.prol:                         ; preds = %.lr.ph.i.i.i.i.i159.preheader, %.lr.ph.i.i.i.i.i159.prol
  %.05.i.i.i.i.i160.prol = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ]
  %storemerge4.i.i.i.i.i161.prol = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i159.preheader ] ; 2 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.lr.ph.i.i.i.i.i159.prol ], [ 0, %.lr.ph.i.i.i.i.i159.preheader ]
  %i.fr = add i64 %.05.i.i.i.i.i160.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161.prol, align 4, !tbaa !318
  %i.fs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161.prol, i64 4 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol, !llvm.loop !1079

.lr.ph.i.i.i.i.i159.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i159.prol, %.lr.ph.i.i.i.i.i159.preheader
  %.05.i.i.i.i.i160.unr = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i159.prol ]
  %storemerge4.i.i.i.i.i161.unr = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fu, %.lr.ph.i.i.i.i.i159.prol ]
  %i.fv = icmp ult i64 %i.fq, 4
  br i1 %i.fv, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159

.lr.ph.i.i.i.i.i159:                              ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159
  %.05.i.i.i.i.i160 = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i159 ], [ %.05.i.i.i.i.i160.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ]
  %storemerge4.i.i.i.i.i161 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i159 ], [ %storemerge4.i.i.i.i.i161.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161, align 4, !tbaa !318
  %i.fw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fx = add i32 %i.fw, -1
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 4
  store i32 -2147483648, ptr %i.fy, align 4, !tbaa !318
  %i.fz = add i32 %i.fw, -2
  store i32 %i.fz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 8
  store i32 -2147483648, ptr %i.ga, align 4, !tbaa !318
  %i.gb = add i32 %i.fw, -3
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 12
  %i.gd = add i64 %.05.i.i.i.i.i160, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gc, align 4, !tbaa !318
  %i.ge = add i32 %i.fw, -4
  store i32 %i.ge, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 16
  %.not.i.i.i.i.i162.3 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i.i.i162.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159, %bb.ad
  %i.gg = load i64, ptr %i.ej, align 8, !tbaa !376 ; 2 uses
  %.not.i1.i.i.i.i164 = icmp eq i64 %i.gg, 0
  br i1 %.not.i1.i.i.i.i164, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  %i.gh = shl i64 %i.gg, 2
  tail call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.gh) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27
  %i.gi = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i168 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i168, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = load ptr, ptr %i.ef, align 8, !tbaa !278
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170: ; preds = %bb.af, %bb.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i139187, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170
  %i.gn = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_12copyable_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.gn, 0
  br i1 %.not, label %bb.ai, label %bb.ak

.body134:                                         ; preds = %bb.ac, %bb.z
  %.pn30.pn = phi { ptr, i32 } [ %i.el, %bb.z ], [ %i.fa, %bb.ac ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.ai:                                            ; preds = %bb.ah
  %i.go = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_12copyable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not34 = icmp eq i32 %i.go, 0
  br i1 %.not34, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.gp), !inline_history !2 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, %bb.aj
  %.422 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit ], [ 1, %bb.ah ], [ 0, %bb.aj ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76 ], [ 1, %bb.ai ]
  ret i32 %.422
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.185", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.185", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1122 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !384, !noalias !1122
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !385, !noalias !1122
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !386, !noalias !1122
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !1122 ; 2 uses

common.resume:                                    ; preds = %.body, %.body43, %.body87, %.body134, %bb.x, %bb.m, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.br, %bb.m ], [ %i.ed, %bb.x ], [ %.pn30.pn, %.body134 ], [ %.pn27.pn, %.body87 ], [ %.pn24.pn, %.body43 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !1122
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !384, !noalias !1122
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !1122
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !388, !noalias !1122
  %i.f = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1122
  store ptr %i.a, ptr %0, align 8, !tbaa !1123, !alias.scope !1122
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !1124 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !392
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit207

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !384, !noalias !1125
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !388
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit207, !llvm.loop !19

.loopexit207:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !384  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !392  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit207
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !388
  %i.r = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1098

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !388
  %i.v = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !388
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !388
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !388
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i38.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i38.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit207
  %i.af = load i64, ptr %i.c, align 8, !tbaa !386 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.f unwind label %bb.j       ; 9 uses

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.ah, align 8, !tbaa !384, !noalias !1126
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !385, !noalias !1126
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !386, !noalias !1126
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.h unwind label %bb.g, !noalias !1126 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !1126
  br label %.body43

bb.h:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !384, !noalias !1126
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !1126
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i41 = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !388, !noalias !1126
  %i.am = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i41, 100
  store i32 %i.am, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1126
  store ptr %i.ah, ptr %1, align 8, !tbaa !1123, !alias.scope !1126
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.i unwind label %.body51, !noalias !1127 ; 3 uses

.body51:                                          ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  br label %.body43

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !392
  %.not.i54 = icmp eq i64 %i.ap, 100
  br i1 %.not.i54, label %.lr.ph.i58.preheader, label %.loopexit206

.lr.ph.i58.preheader:                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !384, !noalias !1128
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58, %.lr.ph.i58.preheader
  %.sroa.019.026.i59.idx = phi i64 [ %.sroa.019.026.i59.add, %.lr.ph.i58 ], [ 0, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.015.025.i60 = phi ptr [ %i.au, %.lr.ph.i58 ], [ %i.an, %.lr.ph.i58.preheader ] ; 2 uses
  %.sroa.019.026.i59.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i59.idx
  %i.ar = load i32, ptr %.sroa.015.025.i60, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i59.ptr, align 4, !tbaa !388
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i59.add = add nuw nsw i64 %.sroa.019.026.i59.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i60, i64 4
  %.not23.i61 = icmp ne i64 %.sroa.019.026.i59.add, 400
  %or.cond224.not = select i1 %i.at, i1 %.not23.i61, i1 false
  br i1 %or.cond224.not, label %.lr.ph.i58, label %.loopexit206, !llvm.loop !19

bb.j:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.loopexit206:                                     ; preds = %.lr.ph.i58, %bb.i
  %.2.i55 = phi i1 [ false, %bb.i ], [ %i.at, %.lr.ph.i58 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !384 ; 3 uses
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !392 ; 5 uses
  %.not3.i.i.i.i.i68 = icmp eq i64 %i.ax, 0
  br i1 %.not3.i.i.i.i.i68, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %.loopexit206
  %xtraiter240 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol

.lr.ph.i.i.i.i.i69.prol:                          ; preds = %.lr.ph.i.i.i.i.i69.preheader, %.lr.ph.i.i.i.i.i69.prol
  %.05.i.i.i.i.i70.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ]
  %storemerge4.i.i.i.i.i71.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ] ; 2 uses
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i.i.i.i.i69.prol ], [ 0, %.lr.ph.i.i.i.i.i69.preheader ]
  %i.ay = add i64 %.05.i.i.i.i.i70.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71.prol, align 4, !tbaa !388
  %i.az = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71.prol, i64 4 ; 2 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.i.i.i.i69.prol.loopexit, label %.lr.ph.i.i.i.i.i69.prol, !llvm.loop !1105

.lr.ph.i.i.i.i.i69.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i69.prol, %.lr.ph.i.i.i.i.i69.preheader
  %.05.i.i.i.i.i70.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i69.prol ]
  %storemerge4.i.i.i.i.i71.unr = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i69.prol ]
  %i.bc = icmp ult i64 %i.ax, 4
  br i1 %i.bc, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69
  %.05.i.i.i.i.i70 = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i69 ], [ %.05.i.i.i.i.i70.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ]
  %storemerge4.i.i.i.i.i71 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i69 ], [ %storemerge4.i.i.i.i.i71.unr, %.lr.ph.i.i.i.i.i69.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i71, align 4, !tbaa !388
  %i.bd = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 4
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !388
  %i.bg = add i32 %i.bd, -2
  store i32 %i.bg, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !388
  %i.bi = add i32 %i.bd, -3
  store i32 %i.bi, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 12
  %i.bk = add i64 %.05.i.i.i.i.i70, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !388
  %i.bl = add i32 %i.bd, -4
  store i32 %i.bl, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i71, i64 16
  %.not.i.i.i.i.i72.3 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i72.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, label %.lr.ph.i.i.i.i.i69, !llvm.loop !20

_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i69.prol.loopexit, %.lr.ph.i.i.i.i.i69, %.loopexit206
  %i.bn = load i64, ptr %i.aj, align 8, !tbaa !386 ; 2 uses
  %.not.i1.i.i.i.i74 = icmp eq i64 %i.bn, 0
  br i1 %.not.i1.i.i.i.i74, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73
  %i.bo = shl i64 %i.bn, 2
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bo) #27
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i73, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i55, label %bb.l, label %bb.ah

bb.l:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1129 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false), !noalias !1129
  %i.bq = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82 unwind label %bb.m, !noalias !1129 ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27, !noalias !1129
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82: ; preds = %bb.l
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !277, !noalias !1129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 400 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !278, !noalias !1129
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bq, i8 0, i64 400, i1 false)
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !288, !noalias !1129
  store ptr %i.bp, ptr %2, align 8, !tbaa !348, !alias.scope !1129
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.n unwind label %bb.r       ; 7 uses

bb.n:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  store ptr null, ptr %i.bv, align 8, !tbaa !384, !noalias !1130
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  store i64 100, ptr %i.bw, align 8, !tbaa !385, !noalias !1130
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !386, !noalias !1130
  %i.by = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.p unwind label %bb.o, !noalias !1130 ; 7 uses

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27, !noalias !1130
  br label %.body87

bb.p:                                             ; preds = %bb.n
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i85 = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.by, i8 0, i64 400, i1 false), !tbaa !388, !noalias !1130
  %i.ca = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i85, 100 ; 3 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1130
  %i.cb = load i64, ptr %i.bw, align 8, !tbaa !385, !noalias !1131 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !1131
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !288
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %.not.i91 = icmp eq i64 %i.cb, %i.ch
  br i1 %.not.i91, label %bb.q, label %.loopexit188

bb.q:                                             ; preds = %bb.p
  %.idx.i93 = shl nsw i64 %i.cb, 2
  %i.ci = getelementptr inbounds i8, ptr %i.by, i64 %.idx.i93
  %.not2324.i94 = icmp eq i64 %i.cb, 0
  br i1 %.not2324.i94, label %bb.s, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.q, %.lr.ph.i95
  %.sroa.019.026.i96 = phi ptr [ %i.cm, %.lr.ph.i95 ], [ %i.by, %bb.q ] ; 2 uses
  %.sroa.015.025.i97 = phi ptr [ %i.cn, %.lr.ph.i95 ], [ %i.cd, %bb.q ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.015.025.i97, align 4, !tbaa !247
  %i.ck = load i32, ptr %.sroa.019.026.i96, align 4, !tbaa !388
  %i.cl = icmp eq i32 %i.ck, %i.cj                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i96, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i97, i64 4
  %.not23.i98 = icmp ne ptr %i.cm, %i.ci
  %or.cond227.not = select i1 %i.cl, i1 %.not23.i98, i1 false
  br i1 %or.cond227.not, label %.lr.ph.i95, label %.loopexit188, !llvm.loop !19

.body43:                                          ; preds = %bb.j, %bb.g, %.body51
  %.pn24.pn = phi { ptr, i32 } [ %i.ao, %.body51 ], [ %i.av, %bb.j ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.r:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit82
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.loopexit188:                                     ; preds = %.lr.ph.i95, %bb.p
  %.2.i92 = phi i1 [ false, %bb.p ], [ %i.cl, %.lr.ph.i95 ] ; 2 uses
  %.not3.i.i.i.i.i101 = icmp eq i64 %i.cb, 0
  br i1 %.not3.i.i.i.i.i101, label %bb.s, label %.lr.ph.i.i.i.i.i102.preheader

.lr.ph.i.i.i.i.i102.preheader:                    ; preds = %.loopexit188
  %min.iters.check = icmp ult i64 %i.cb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i102.preheader233, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i102.preheader
  %n.vec = and i64 %i.cb, -8                      ; 3 uses
  %i.cp = and i64 %i.cb, 7
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %i.by, i64 %i.cq
  %i.cs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ca, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cs, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi210 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.cu, align 4, !tbaa !388
  %i.cv = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cw = add <4 x i32> %vec.phi210, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1112

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i102.preheader233

.lr.ph.i.i.i.i.i102.preheader233:                 ; preds = %.lr.ph.i.i.i.i.i102.preheader, %middle.block
  %.ph = phi i32 [ %i.ca, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cy, %middle.block ]
  %.05.i.i.i.i.i103.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cp, %middle.block ]
  %storemerge4.i.i.i.i.i104.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i102.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.lr.ph.i.i.i.i.i102.preheader233, %.lr.ph.i.i.i.i.i102
  %i.cz = phi i32 [ %i.db, %.lr.ph.i.i.i.i.i102 ], [ %.ph, %.lr.ph.i.i.i.i.i102.preheader233 ]
  %.05.i.i.i.i.i103 = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i102 ], [ %.05.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i102.preheader233 ]
  %storemerge4.i.i.i.i.i104 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i102 ], [ %storemerge4.i.i.i.i.i104.ph, %.lr.ph.i.i.i.i.i102.preheader233 ] ; 2 uses
  %i.da = add i64 %.05.i.i.i.i.i103, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i104, align 4, !tbaa !388
  %i.db = add i32 %i.cz, -1                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i104, i64 4
  %.not.i.i.i.i.i105 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i105, label %.loopexit, label %.lr.ph.i.i.i.i.i102, !llvm.loop !1113

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i102, %middle.block
  %.lcssa209 = phi i32 [ %i.cy, %middle.block ], [ %i.db, %.lr.ph.i.i.i.i.i102 ]
  store i32 %.lcssa209, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %.loopexit188, %bb.q
  %.2.i92182 = phi i1 [ %.2.i92, %.loopexit188 ], [ true, %bb.q ], [ %.2.i92, %.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 400) #27
  %i.dd = load ptr, ptr %i.bv, align 8, !tbaa !384 ; 3 uses
  %i.de = load i64, ptr %i.bw, align 8, !tbaa !392 ; 5 uses
  %.not3.i.i.i.i.i111 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i.i.i.i111, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i112.preheader:                    ; preds = %bb.s
  %xtraiter243 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol

.lr.ph.i.i.i.i.i112.prol:                         ; preds = %.lr.ph.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i112.prol
  %.05.i.i.i.i.i113.prol = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i112.prol ], [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ]
  %storemerge4.i.i.i.i.i114.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i112.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ] ; 2 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph.i.i.i.i.i112.prol ], [ 0, %.lr.ph.i.i.i.i.i112.preheader ]
  %i.df = add i64 %.05.i.i.i.i.i113.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114.prol, align 4, !tbaa !388
  %i.dg = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114.prol, i64 4 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol, !llvm.loop !1114

.lr.ph.i.i.i.i.i112.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i112.prol, %.lr.ph.i.i.i.i.i112.preheader
  %.05.i.i.i.i.i113.unr = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.df, %.lr.ph.i.i.i.i.i112.prol ]
  %storemerge4.i.i.i.i.i114.unr = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.di, %.lr.ph.i.i.i.i.i112.prol ]
  %i.dj = icmp ult i64 %i.de, 4
  br i1 %i.dj, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112
  %.05.i.i.i.i.i113 = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i112 ], [ %.05.i.i.i.i.i113.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ]
  %storemerge4.i.i.i.i.i114 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i112 ], [ %storemerge4.i.i.i.i.i114.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i114, align 4, !tbaa !388
  %i.dk = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 4
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !388
  %i.dn = add i32 %i.dk, -2
  store i32 %i.dn, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 8
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !388
  %i.dp = add i32 %i.dk, -3
  store i32 %i.dp, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 12
  %i.dr = add i64 %.05.i.i.i.i.i113, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dq, align 4, !tbaa !388
  %i.ds = add i32 %i.dk, -4
  store i32 %i.ds, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i114, i64 16
  %.not.i.i.i.i.i115.3 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i115.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116, label %.lr.ph.i.i.i.i.i112, !llvm.loop !20

_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116: ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112, %bb.s
  %i.du = load i64, ptr %i.bx, align 8, !tbaa !386 ; 2 uses
  %.not.i1.i.i.i.i117 = icmp eq i64 %i.du, 0
  br i1 %.not.i1.i.i.i.i117, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  %i.dv = shl i64 %i.du, 2
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dv) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i116
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 24) #27
  %i.dw = load ptr, ptr %i.bp, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i121 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i121, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = load ptr, ptr %i.bt, align 8, !tbaa !278
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123: ; preds = %bb.u, %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i92182, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.eb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !1132 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !1132
  %i.ec = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129 unwind label %bb.x, !noalias !1132 ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27, !noalias !1132
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129: ; preds = %bb.w
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !277, !noalias !1132
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 400 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !278, !noalias !1132
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ec, i8 0, i64 400, i1 false)
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !288, !noalias !1132
  store ptr %i.eb, ptr %3, align 8, !tbaa !348, !alias.scope !1132
  %i.eh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.y unwind label %bb.ab      ; 7 uses

bb.y:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  store ptr null, ptr %i.eh, align 8, !tbaa !384, !noalias !1133
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  store i64 100, ptr %i.ei, align 8, !tbaa !385, !noalias !1133
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  store i64 0, ptr %i.ej, align 8, !tbaa !386, !noalias !1133
  %i.ek = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.aa unwind label %bb.z, !noalias !1133 ; 31 uses

bb.z:                                             ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27, !noalias !1133
  br label %.body134

bb.aa:                                            ; preds = %bb.y
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i132 = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ek, i8 0, i64 400, i1 false), !tbaa !388, !noalias !1133
  %i.em = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i132, 100 ; 2 uses
  store i32 %i.em, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !1133
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false), !noalias !1134
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !288
  %i.eo = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %.not.i138 = icmp eq i64 %i.er, 400
  br i1 %.not.i138, label %.lr.ph.i142, label %vector.ph213

.lr.ph.i142:                                      ; preds = %bb.aa, %.lr.ph.i142
  %.sroa.019.026.i143.idx = phi i64 [ %.sroa.019.026.i143.add, %.lr.ph.i142 ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.015.025.i144 = phi ptr [ %i.ev, %.lr.ph.i142 ], [ %i.eo, %bb.aa ] ; 2 uses
  %.sroa.019.026.i143.ptr = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.019.026.i143.idx
  %i.es = load i32, ptr %.sroa.015.025.i144, align 4, !tbaa !247
  %i.et = load i32, ptr %.sroa.019.026.i143.ptr, align 4, !tbaa !388
  %i.eu = icmp eq i32 %i.et, %i.es                ; 2 uses
  %.sroa.019.026.i143.add = add nuw nsw i64 %.sroa.019.026.i143.idx, 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i144, i64 4
  %.not23.i145 = icmp ne i64 %.sroa.019.026.i143.add, 400
  %or.cond229.not = select i1 %i.eu, i1 %.not23.i145, i1 false
  br i1 %or.cond229.not, label %.lr.ph.i142, label %vector.ph213, !llvm.loop !19

.body87:                                          ; preds = %bb.r, %bb.o
  %.pn27.pn = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.co, %bb.r ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.ab:                                            ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit129
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body134

vector.ph213:                                     ; preds = %.lr.ph.i142, %bb.aa
  %.2.i139 = phi i1 [ false, %bb.aa ], [ %i.eu, %.lr.ph.i142 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 384
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %i.ek, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ey, align 4, !tbaa !388
  %next.gep218.1 = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.1, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ez, align 4, !tbaa !388
  %next.gep218.2 = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.2, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fa, align 4, !tbaa !388
  %next.gep218.3 = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 112
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.3, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fb, align 4, !tbaa !388
  %next.gep218.4 = getelementptr inbounds nuw i8, ptr %i.ek, i64 128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.4, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fc, align 4, !tbaa !388
  %next.gep218.5 = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 176
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.5, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fd, align 4, !tbaa !388
  %next.gep218.6 = getelementptr inbounds nuw i8, ptr %i.ek, i64 192
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 208
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.6, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fe, align 4, !tbaa !388
  %next.gep218.7 = getelementptr inbounds nuw i8, ptr %i.ek, i64 224
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 240
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.7, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ff, align 4, !tbaa !388
  %next.gep218.8 = getelementptr inbounds nuw i8, ptr %i.ek, i64 256
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 272
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.8, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fg, align 4, !tbaa !388
  %next.gep218.9 = getelementptr inbounds nuw i8, ptr %i.ek, i64 288
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ek, i64 304
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.9, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fh, align 4, !tbaa !388
  %next.gep218.10 = getelementptr inbounds nuw i8, ptr %i.ek, i64 320
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ek, i64 336
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.10, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fi, align 4, !tbaa !388
  %next.gep218.11 = getelementptr inbounds nuw i8, ptr %i.ek, i64 352
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ek, i64 368
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep218.11, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fj, align 4, !tbaa !388
  %i.fk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.em, i64 0
  %bin.rdx221 = add <4 x i32> %i.fk, splat (i32 -24)
  %i.fl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx221)
  store i32 -2147483648, ptr %i.ex, align 4, !tbaa !388
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ek, i64 388
  store i32 -2147483648, ptr %i.fm, align 4, !tbaa !388
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ek, i64 392
  store i32 -2147483648, ptr %i.fn, align 4, !tbaa !388
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ek, i64 396
  store i32 -2147483648, ptr %i.fo, align 4, !tbaa !388
  %i.fp = add i32 %i.fl, -4
  store i32 %i.fp, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 400) #27
  %i.fq = load ptr, ptr %i.eh, align 8, !tbaa !384 ; 3 uses
  %i.fr = load i64, ptr %i.ei, align 8, !tbaa !392 ; 5 uses
  %.not3.i.i.i.i.i158 = icmp eq i64 %i.fr, 0
  br i1 %.not3.i.i.i.i.i158, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159.preheader

.lr.ph.i.i.i.i.i159.preheader:                    ; preds = %vector.ph213
  %xtraiter246 = and i64 %i.fr, 3                 ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol

.lr.ph.i.i.i.i.i159.prol:                         ; preds = %.lr.ph.i.i.i.i.i159.preheader, %.lr.ph.i.i.i.i.i159.prol
  %.05.i.i.i.i.i160.prol = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fr, %.lr.ph.i.i.i.i.i159.preheader ]
  %storemerge4.i.i.i.i.i161.prol = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i159.prol ], [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ] ; 2 uses
  %prol.iter248 = phi i64 [ %prol.iter248.next, %.lr.ph.i.i.i.i.i159.prol ], [ 0, %.lr.ph.i.i.i.i.i159.preheader ]
  %i.fs = add i64 %.05.i.i.i.i.i160.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161.prol, align 4, !tbaa !388
  %i.ft = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.fu = add i32 %i.ft, -1
  store i32 %i.fu, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.fv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161.prol, i64 4 ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.lr.ph.i.i.i.i.i159.prol.loopexit, label %.lr.ph.i.i.i.i.i159.prol, !llvm.loop !1121

.lr.ph.i.i.i.i.i159.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i159.prol, %.lr.ph.i.i.i.i.i159.preheader
  %.05.i.i.i.i.i160.unr = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fs, %.lr.ph.i.i.i.i.i159.prol ]
  %storemerge4.i.i.i.i.i161.unr = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i159.preheader ], [ %i.fv, %.lr.ph.i.i.i.i.i159.prol ]
  %i.fw = icmp ult i64 %i.fr, 4
  br i1 %i.fw, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159

.lr.ph.i.i.i.i.i159:                              ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159
  %.05.i.i.i.i.i160 = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i159 ], [ %.05.i.i.i.i.i160.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ]
  %storemerge4.i.i.i.i.i161 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i159 ], [ %storemerge4.i.i.i.i.i161.unr, %.lr.ph.i.i.i.i.i159.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i161, align 4, !tbaa !388
  %i.fx = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 4
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !388
  %i.ga = add i32 %i.fx, -2
  store i32 %i.ga, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 8
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !388
  %i.gc = add i32 %i.fx, -3
  store i32 %i.gc, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 12
  %i.ge = add i64 %.05.i.i.i.i.i160, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !388
  %i.gf = add i32 %i.fx, -4
  store i32 %i.gf, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i161, i64 16
  %.not.i.i.i.i.i162.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i.i162.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163, label %.lr.ph.i.i.i.i.i159, !llvm.loop !20

_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163: ; preds = %.lr.ph.i.i.i.i.i159.prol.loopexit, %.lr.ph.i.i.i.i.i159, %vector.ph213
  %i.gh = load i64, ptr %i.ej, align 8, !tbaa !386 ; 2 uses
  %.not.i1.i.i.i.i164 = icmp eq i64 %i.gh, 0
  br i1 %.not.i1.i.i.i.i164, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  %i.gi = shl i64 %i.gh, 2
  tail call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.gi) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 24) #27
  %i.gj = load ptr, ptr %i.eb, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i168 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i168, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = load ptr, ptr %i.ef, align 8, !tbaa !278
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = sub i64 %i.gl, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gn) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170: ; preds = %bb.ad, %bb.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i139, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170
  %i.go = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.go, 0
  br i1 %.not, label %bb.ag, label %bb.ah

.body134:                                         ; preds = %bb.ab, %bb.z
  %.pn30.pn = phi { ptr, i32 } [ %i.el, %bb.z ], [ %i.ew, %bb.ab ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.ag:                                            ; preds = %bb.af
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.gp), !inline_history !2 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit, %bb.ag
  %.422 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit ], [ 1, %bb.af ], [ 0, %bb.ag ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit170 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit123 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev.exit76 ]
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE13_M_assign_auxISt14_List_iteratorIiEEEvT_S5_St20forward_iterator_tag:.preheader.i.i
  br i1 %.not.i.i.i.i.i25, label %_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit27, label %.lr.ph.i.i.i.i.i22, !llvm.loop !39

_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit27: ; preds = %.lr.ph.i.i.i.i.i22, %.preheader7.i, %_ZSt9__advanceISt14_List_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.0.035 = phi ptr [ %1, %.preheader7.i ], [ %.sroa.0.0, %_ZSt9__advanceISt14_List_iteratorIiElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.0.0, %.lr.ph.i.i.i.i.i22 ] ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.035, %2
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt14_List_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit27, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ab, %_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit27 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.035, %_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit27 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, i64 16
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !247
  store i32 %i.ce, ptr %.08.i.i.i.i.i.i.i.i, align 4, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cg = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %2
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt14_List_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !39

_ZSt22__uninitialized_copy_aISt14_List_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit27
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit27 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !288
  br label %_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit

_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi.exit:    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyISt14_List_iteratorIiEPiET0_T_S4_S3_.exit, %_ZSt22__uninitialized_copy_aISt14_List_iteratorIiEPiiET0_T_S4_S3_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !360  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp eq i64 %i.b, %i.i
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !351, !noalias !2012 ; 2 uses
  %.idx = shl nsw i64 %i.b, 2
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.019.026 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %.sroa.015.025, align 4, !tbaa !247
  %i.m = load i32, ptr %.sroa.019.026, align 4, !tbaa !355
  %i.n = icmp eq i32 %i.m, %i.l                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 4
  %.not23 = icmp ne ptr %i.o, %i.k
  %or.cond.not = select i1 %i.n, i1 %.not23, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !439    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !360  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !355
  %i.f = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2013

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !355
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !355
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !355
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !355
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !353  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #27
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_11movable_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2020 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !2020
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !2020 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !2020
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !2020
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !2020
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !2020
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !2020
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !351, !noalias !2021
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !352, !noalias !2021
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !353, !noalias !2021
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit unwind label %bb.d, !noalias !2021 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !2021
  br label %.body

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !351, !noalias !2021
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !2021
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !2021
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !355, !noalias !2021
  %i.l = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !2021
  %i.m = load i64, ptr %i.h, align 8, !tbaa !352  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !355
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !13

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test11movable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test11movable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2018

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !355
  %i.af = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !355
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !355
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !355
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 400) #27
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !351 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !360 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !355
  %i.as = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !2019

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !355
  %i.aw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !355
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !355
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !355
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !353 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_11movable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %1 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %5 = alloca %"class.boost::movelib::unique_ptr.98", align 8 ; 6 uses
  %6 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.boost::container::test::movable_int", align 4 ; 7 uses
  %8 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %9 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 6 uses
  %i.b = alloca [50 x i32], align 16              ; 7 uses
  %10 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %12 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 6 uses
  %i.c = alloca [50 x i32], align 16              ; 7 uses
  %13 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %18 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %25 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %26 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %27 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 22 uses
  %i.d = alloca [50 x i32], align 16              ; 22 uses
  %28 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 7 uses
  %29 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %30 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %32 = alloca %"class.std::vector", align 16     ; 7 uses
  %33 = alloca %"class.std::vector", align 16     ; 7 uses
  %34 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %38 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %39 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %40 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %41 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %42 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 6 uses
  %45 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %46 = alloca %"class.std::vector", align 16     ; 7 uses
  %47 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 18 uses
  %i.l = alloca [50 x i32], align 16              ; 19 uses
  %48 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %49 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost9container4test20test_range_insertionINS0_6vectorINS1_11movable_intESaIS4_EvEEEEbv()
  br i1 %i.q, label %bb.b, label %bb.im

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2122 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !2122
  %i.s = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.c, !noalias !2122 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.il, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn447.pn.pn.pn, %bb.il ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27, !noalias !2122
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.s, ptr %i.r, align 8, !tbaa !277, !noalias !2122
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 400 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !278, !noalias !2122
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.s, i8 0, i64 400, i1 false)
  store ptr %i.u, ptr %i.w, align 8, !tbaa !288, !noalias !2122
  store ptr %i.r, ptr %4, align 8, !tbaa !348, !alias.scope !2122
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.d unwind label %bb.g       ; 8 uses

bb.d:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.x, align 8, !tbaa !351, !noalias !2123
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store i64 100, ptr %i.y, align 8, !tbaa !352, !noalias !2123
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8, !tbaa !353, !noalias !2123
  %i.aa = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit unwind label %bb.e, !noalias !2123 ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27, !noalias !2123
  br label %.body

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit: ; preds = %bb.d
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !351, !noalias !2123
  store i64 100, ptr %i.z, align 8, !tbaa !261, !noalias !2123
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !2123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.aa, i8 0, i64 400, i1 false), !tbaa !355, !noalias !2123
  %i.ac = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !2123
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !352 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !288
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !277 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr exact i64 %i.ai, 2
  %.not.i472 = icmp eq i64 %i.ad, %i.aj
  br i1 %.not.i472, label %bb.f, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  %.not2324.i = icmp eq i64 %i.ad, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.al = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.am = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !355
  %i.an = icmp eq i32 %i.am, %i.al                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.ao, %i.ak
  %or.cond.not = select i1 %i.an, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !13

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit
  %.2.i863 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test11movable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.ar = phi i32 [ %i.at, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test11movable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.as = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2026

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.av = icmp ult i64 %i.ad, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !355
  %i.aw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !355
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !355
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !355
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i474.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i474.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.f
  %.2.i863874 = phi i1 [ true, %bb.f ], [ %.2.i863, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i863, %.lr.ph.i.i.i.i.i ], [ %.2.i863, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef 400) #27
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !351 ; 3 uses
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !360 ; 5 uses
  %.not3.i.i.i.i.i476 = icmp eq i64 %i.bh, 0
  br i1 %.not3.i.i.i.i.i476, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477.preheader

.lr.ph.i.i.i.i.i477.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %xtraiter1170 = and i64 %i.bh, 3                ; 2 uses
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1170, 0
  br i1 %lcmp.mod1171.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol

.lr.ph.i.i.i.i.i477.prol:                         ; preds = %.lr.ph.i.i.i.i.i477.preheader, %.lr.ph.i.i.i.i.i477.prol
  %.05.i.i.i.i.i478.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i477.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i477.preheader ]
  %storemerge4.i.i.i.i.i479.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i477.prol ], [ %i.bg, %.lr.ph.i.i.i.i.i477.preheader ] ; 2 uses
  %prol.iter1172 = phi i64 [ %prol.iter1172.next, %.lr.ph.i.i.i.i.i477.prol ], [ 0, %.lr.ph.i.i.i.i.i477.preheader ]
  %i.bi = add i64 %.05.i.i.i.i.i478.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479.prol, align 4, !tbaa !355
  %i.bj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479.prol, i64 4 ; 2 uses
  %prol.iter1172.next = add i64 %prol.iter1172, 1 ; 2 uses
  %prol.iter1172.cmp.not = icmp eq i64 %prol.iter1172.next, %xtraiter1170
  br i1 %prol.iter1172.cmp.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol, !llvm.loop !2027

.lr.ph.i.i.i.i.i477.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i477.prol, %.lr.ph.i.i.i.i.i477.preheader
  %.05.i.i.i.i.i478.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i477.prol ]
  %storemerge4.i.i.i.i.i479.unr = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i477.prol ]
  %i.bm = icmp ult i64 %i.bh, 4
  br i1 %i.bm, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477

.lr.ph.i.i.i.i.i477:                              ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477
  %.05.i.i.i.i.i478 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i477 ], [ %.05.i.i.i.i.i478.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ]
  %storemerge4.i.i.i.i.i479 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i477 ], [ %storemerge4.i.i.i.i.i479.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479, align 4, !tbaa !355
  %i.bn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 4
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !355
  %i.bq = add i32 %i.bn, -2
  store i32 %i.bq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 8
  store i32 -2147483648, ptr %i.br, align 4, !tbaa !355
  %i.bs = add i32 %i.bn, -3
  store i32 %i.bs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 12
  %i.bu = add i64 %.05.i.i.i.i.i478, -4           ; 2 uses
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !355
  %i.bv = add i32 %i.bn, -4
  store i32 %i.bv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 16
  %.not.i.i.i.i.i480.3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i.i480.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477, !llvm.loop !14

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481: ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.bx = load i64, ptr %i.z, align 8, !tbaa !353 ; 2 uses
  %.not.i1.i.i.i.i482 = icmp eq i64 %i.bx, 0
  br i1 %.not.i1.i.i.i.i482, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481
  %i.by = shl i64 %i.bx, 2
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.by) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i486 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i486, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !278
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.2.i863874, label %bb.k, label %bb.im

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  %i.ce = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2124 ; 102 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false), !noalias !2124
  store ptr %i.ce, ptr %5, align 8, !tbaa !358, !alias.scope !2124
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  %i.cf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.l unwind label %bb.u       ; 89 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false), !noalias !2125
  store ptr %i.cf, ptr %6, align 8, !tbaa !348, !alias.scope !2125
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 36 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !360 ; 9 uses
  %i.ci = icmp ugt i64 %i.ch, 100
  br i1 %i.ci, label %.lr.ph.i.preheader.i.i.i, label %bb.m
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 3 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %bb.g, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = icmp samesign ugt i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.h, label %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !351    ; 8 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !360  ; 7 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.u, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge, label %.lr.ph.i.i.i

_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge: ; preds = %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.pre = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.t, %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.x = load i32, ptr %.018.i.i.i, align 4, !tbaa !355
  store i32 %i.x, ptr %.01517.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !355
  %i.y = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !48

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge
  %i.ac = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.z, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.t, %_ZN5boost9container19vector_alloc_holderISaINS0_4test11movable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.ab, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = load i32, ptr %4, align 4, !tbaa !247
  store i32 %i.ad, ptr %.015.lcssa.i.i.i, align 4, !tbaa !355
  %i.ae = add i32 %i.ac, 1
  store i32 %i.ae, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.aj, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ak, %.lr.ph.i20.i.i ], [ %i.af, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ag = load i32, ptr %.018.i21.i.i, align 4, !tbaa !355
  store i32 %i.ag, ptr %.01517.i22.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !355
  %i.ah = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !48

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !355
  %i.am = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2462

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = icmp ult i64 %i.v, 4
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !355
  %i.aq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !355
  %i.at = add i32 %i.aq, -2
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !355
  %i.av = add i32 %i.aq, -3
  store i32 %i.av, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ax = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !355
  %i.ay = add i32 %i.aq, -4
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !353
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bb) #27
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !352
  br label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.bc = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test11movable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.u to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.t, ptr %1, align 8, !tbaa !351
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !352
  store i64 %i.p, ptr %i.a, align 8, !tbaa !261
  %i.bh = getelementptr inbounds i8, ptr %i.t, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !444
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.124") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !363
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !364
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !365
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !tbaa !363
  store i64 %i.c, ptr %i.e, align 8, !tbaa !261
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false), !tbaa !367
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.b
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEC2Em.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEC2Em.exit: ; preds = %.noexc, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !370
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !372  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp eq i64 %i.b, %i.i
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !363, !noalias !2465 ; 2 uses
  %.idx = shl nsw i64 %i.b, 2
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.019.026 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %.sroa.015.025, align 4, !tbaa !247
  %i.m = load i32, ptr %.sroa.019.026, align 4, !tbaa !367
  %i.n = icmp eq i32 %i.m, %i.l                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 4
  %.not23 = icmp ne ptr %i.o, %i.k
  %or.cond.not = select i1 %i.n, i1 %.not23, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !446    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !372  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !367
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2466

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !367
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !367
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !367
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !367
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !365  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #27
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2473 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !2473
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !2473 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !2473
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !2473
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !2473
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !2473
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !2473
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !363, !noalias !2474
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !364, !noalias !2474
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !365, !noalias !2474
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit unwind label %bb.d, !noalias !2474 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !2474
  br label %.body

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !363, !noalias !2474
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !2474
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !2474
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !367, !noalias !2474
  %i.l = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !2474
  %i.m = load i64, ptr %i.h, align 8, !tbaa !364  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !367
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !15

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2471

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !367
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !367
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !367
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !367
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 400) #27
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !363 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !372 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !367
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !2472

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !367
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !367
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !367
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !367
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !365 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %1 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %5 = alloca %"class.boost::movelib::unique_ptr.124", align 8 ; 6 uses
  %6 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 7 uses
  %8 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %9 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 6 uses
  %i.b = alloca [50 x i32], align 16              ; 7 uses
  %10 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %12 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 6 uses
  %i.c = alloca [50 x i32], align 16              ; 7 uses
  %13 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %18 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %25 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %26 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %27 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 22 uses
  %i.d = alloca [50 x i32], align 16              ; 22 uses
  %28 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 7 uses
  %29 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %30 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %32 = alloca %"class.std::vector", align 16     ; 7 uses
  %33 = alloca %"class.std::vector", align 16     ; 7 uses
  %34 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %38 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %39 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %40 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %41 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %42 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 6 uses
  %45 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %46 = alloca %"class.std::vector", align 16     ; 7 uses
  %47 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 18 uses
  %i.l = alloca [50 x i32], align 16              ; 19 uses
  %48 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %49 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost9container4test20test_range_insertionINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEbv()
  br i1 %i.q, label %bb.b, label %bb.ip

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2575 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !2575
  %i.s = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.c, !noalias !2575 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.io, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn447.pn.pn.pn, %bb.io ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27, !noalias !2575
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.s, ptr %i.r, align 8, !tbaa !277, !noalias !2575
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 400 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !278, !noalias !2575
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.s, i8 0, i64 400, i1 false)
  store ptr %i.u, ptr %i.w, align 8, !tbaa !288, !noalias !2575
  store ptr %i.r, ptr %4, align 8, !tbaa !348, !alias.scope !2575
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.d unwind label %bb.g       ; 8 uses

bb.d:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.x, align 8, !tbaa !363, !noalias !2576
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store i64 100, ptr %i.y, align 8, !tbaa !364, !noalias !2576
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8, !tbaa !365, !noalias !2576
  %i.aa = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit unwind label %bb.e, !noalias !2576 ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27, !noalias !2576
  br label %.body

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit: ; preds = %bb.d
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !363, !noalias !2576
  store i64 100, ptr %i.z, align 8, !tbaa !261, !noalias !2576
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !2576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.aa, i8 0, i64 400, i1 false), !tbaa !367, !noalias !2576
  %i.ac = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !2576
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !364 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !288
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !277 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr exact i64 %i.ai, 2
  %.not.i472 = icmp eq i64 %i.ad, %i.aj
  br i1 %.not.i472, label %bb.f, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  %.not2324.i = icmp eq i64 %i.ad, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.al = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.am = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !367
  %i.an = icmp eq i32 %i.am, %i.al                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.ao, %i.ak
  %or.cond.not = select i1 %i.an, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !15

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit
  %.2.i863 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.ar = phi i32 [ %i.at, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.as = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2479

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.av = icmp ult i64 %i.ad, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !367
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !367
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !367
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !367
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i474.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i474.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.f
  %.2.i863874 = phi i1 [ true, %bb.f ], [ %.2.i863, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i863, %.lr.ph.i.i.i.i.i ], [ %.2.i863, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef 400) #27
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !363 ; 3 uses
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !372 ; 5 uses
  %.not3.i.i.i.i.i476 = icmp eq i64 %i.bh, 0
  br i1 %.not3.i.i.i.i.i476, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477.preheader

.lr.ph.i.i.i.i.i477.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %xtraiter1170 = and i64 %i.bh, 3                ; 2 uses
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1170, 0
  br i1 %lcmp.mod1171.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol

.lr.ph.i.i.i.i.i477.prol:                         ; preds = %.lr.ph.i.i.i.i.i477.preheader, %.lr.ph.i.i.i.i.i477.prol
  %.05.i.i.i.i.i478.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i477.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i477.preheader ]
  %storemerge4.i.i.i.i.i479.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i477.prol ], [ %i.bg, %.lr.ph.i.i.i.i.i477.preheader ] ; 2 uses
  %prol.iter1172 = phi i64 [ %prol.iter1172.next, %.lr.ph.i.i.i.i.i477.prol ], [ 0, %.lr.ph.i.i.i.i.i477.preheader ]
  %i.bi = add i64 %.05.i.i.i.i.i478.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479.prol, align 4, !tbaa !367
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479.prol, i64 4 ; 2 uses
  %prol.iter1172.next = add i64 %prol.iter1172, 1 ; 2 uses
  %prol.iter1172.cmp.not = icmp eq i64 %prol.iter1172.next, %xtraiter1170
  br i1 %prol.iter1172.cmp.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol, !llvm.loop !2480

.lr.ph.i.i.i.i.i477.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i477.prol, %.lr.ph.i.i.i.i.i477.preheader
  %.05.i.i.i.i.i478.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i477.prol ]
  %storemerge4.i.i.i.i.i479.unr = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i477.prol ]
  %i.bm = icmp ult i64 %i.bh, 4
  br i1 %i.bm, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477

.lr.ph.i.i.i.i.i477:                              ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477
  %.05.i.i.i.i.i478 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i477 ], [ %.05.i.i.i.i.i478.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ]
  %storemerge4.i.i.i.i.i479 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i477 ], [ %storemerge4.i.i.i.i.i479.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479, align 4, !tbaa !367
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 4
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !367
  %i.bq = add i32 %i.bn, -2
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 8
  store i32 -2147483648, ptr %i.br, align 4, !tbaa !367
  %i.bs = add i32 %i.bn, -3
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 12
  %i.bu = add i64 %.05.i.i.i.i.i478, -4           ; 2 uses
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !367
  %i.bv = add i32 %i.bn, -4
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 16
  %.not.i.i.i.i.i480.3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i.i480.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477, !llvm.loop !16

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481: ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.bx = load i64, ptr %i.z, align 8, !tbaa !365 ; 2 uses
  %.not.i1.i.i.i.i482 = icmp eq i64 %i.bx, 0
  br i1 %.not.i1.i.i.i.i482, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481
  %i.by = shl i64 %i.bx, 2
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.by) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i481
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i486 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i486, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !278
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.2.i863874, label %bb.k, label %bb.ip

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2577)
  %i.ce = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !2577 ; 103 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false), !noalias !2577
  store ptr %i.ce, ptr %5, align 8, !tbaa !370, !alias.scope !2577
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  %i.cf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.l unwind label %bb.u       ; 90 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false), !noalias !2578
  store ptr %i.cf, ptr %6, align 8, !tbaa !348, !alias.scope !2578
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 36 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !372 ; 9 uses
  %i.ci = icmp ugt i64 %i.ch, 100
  br i1 %i.ci, label %.lr.ph.i.preheader.i.i.i, label %bb.m
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 3 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %bb.g, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = icmp samesign ugt i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.h, label %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !363    ; 8 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !372  ; 7 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.u, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge, label %.lr.ph.i.i.i

_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge: ; preds = %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.t, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.x = load i32, ptr %.018.i.i.i, align 4, !tbaa !367
  store i32 %i.x, ptr %.01517.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !367
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !65

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge
  %i.ac = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.z, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.t, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24movable_and_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.ab, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = load i32, ptr %4, align 4, !tbaa !247
  store i32 %i.ad, ptr %.015.lcssa.i.i.i, align 4, !tbaa !367
  %i.ae = add i32 %i.ac, 1
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.aj, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ak, %.lr.ph.i20.i.i ], [ %i.af, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ag = load i32, ptr %.018.i21.i.i, align 4, !tbaa !367
  store i32 %i.ag, ptr %.01517.i22.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !367
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !65

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !367
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3180

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = icmp ult i64 %i.v, 4
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !367
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !367
  %i.at = add i32 %i.aq, -2
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !367
  %i.av = add i32 %i.aq, -3
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ax = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !367
  %i.ay = add i32 %i.aq, -4
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !365
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bb) #27
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !364
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.bc = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.u to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.t, ptr %1, align 8, !tbaa !363
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !364
  store i64 %i.p, ptr %i.a, align 8, !tbaa !261
  %i.bh = getelementptr inbounds i8, ptr %i.t, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !451
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.157") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !374
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !375
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !376
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !tbaa !374
  store i64 %i.c, ptr %i.e, align 8, !tbaa !261
  %_ZN5boost9container4test12copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false), !tbaa !318
  %i.h = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, %i.b
  store i32 %i.h, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEC2Em.exit

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEC2Em.exit: ; preds = %.noexc, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !379
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !381  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp eq i64 %i.b, %i.i
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !374, !noalias !3183 ; 2 uses
  %.idx = shl nsw i64 %i.b, 2
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.019.026 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %.sroa.015.025, align 4, !tbaa !247
  %i.m = load i32, ptr %.sroa.019.026, align 4, !tbaa !318
  %i.n = icmp eq i32 %i.m, %i.l                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 4
  %.not23 = icmp ne ptr %i.o, %i.k
  %or.cond.not = select i1 %i.n, i1 %.not23, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !453    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !374  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !318
  %i.f = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3184

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !318
  %i.j = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !318
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !318
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !318
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !376  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #27
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_12copyable_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3191)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !3191 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !3191
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !3191 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !3191
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !3191
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !3191
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !3191
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !3191
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !374, !noalias !3192
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !375, !noalias !3192
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !376, !noalias !3192
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit unwind label %bb.d, !noalias !3192 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !3192
  br label %.body

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !374, !noalias !3192
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !3192
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !318, !noalias !3192
  %i.l = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3192
  %i.m = load i64, ptr %i.h, align 8, !tbaa !375  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !318
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !17

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3189

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !318
  %i.af = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !318
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !318
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !318
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 400) #27
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !374 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !381 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !318
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !3190

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !318
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !318
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !318
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !318
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !376 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_12copyable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %0 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %5 = alloca %"class.boost::movelib::unique_ptr.157", align 8 ; 6 uses
  %6 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.boost::container::test::copyable_int", align 4 ; 6 uses
  %8 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %9 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 6 uses
  %i.d = alloca [50 x i32], align 16              ; 7 uses
  %10 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %12 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 6 uses
  %i.e = alloca [50 x i32], align 16              ; 7 uses
  %13 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %18 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %25 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %26 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %27 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 22 uses
  %i.f = alloca [50 x i32], align 16              ; 22 uses
  %28 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 7 uses
  %29 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %30 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %32 = alloca %"class.std::vector", align 16     ; 7 uses
  %33 = alloca %"class.std::vector", align 16     ; 7 uses
  %34 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %38 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %39 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %40 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %41 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %42 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 6 uses
  %45 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %46 = alloca %"class.std::vector", align 16     ; 7 uses
  %47 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 18 uses
  %i.n = alloca [50 x i32], align 16              ; 19 uses
  %48 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %49 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = tail call noundef zeroext i1 @_ZN5boost9container4test20test_range_insertionINS0_6vectorINS1_12copyable_intESaIS4_EvEEEEbv()
  br i1 %i.s, label %bb.b, label %bb.ij

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3283)
  %i.t = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !3283 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !noalias !3283
  %i.u = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.c, !noalias !3283 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.ii, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn445.pn.pn.pn, %bb.ii ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #27, !noalias !3283
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.u, ptr %i.t, align 8, !tbaa !277, !noalias !3283
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 400 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !278, !noalias !3283
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.u, i8 0, i64 400, i1 false)
  store ptr %i.w, ptr %i.y, align 8, !tbaa !288, !noalias !3283
  store ptr %i.t, ptr %4, align 8, !tbaa !348, !alias.scope !3283
  %i.z = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.d unwind label %bb.g       ; 8 uses

bb.d:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.z, align 8, !tbaa !374, !noalias !3284
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store i64 100, ptr %i.aa, align 8, !tbaa !375, !noalias !3284
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !376, !noalias !3284
  %i.ac = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit unwind label %bb.e, !noalias !3284 ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 24) #27, !noalias !3284
  br label %.body

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit: ; preds = %bb.d
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !374, !noalias !3284
  store i64 100, ptr %i.ab, align 8, !tbaa !261, !noalias !3284
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ac, i8 0, i64 400, i1 false), !tbaa !318, !noalias !3284
  %i.ae = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, 100
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !3284
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !375 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !288
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !277 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 2
  %.not.i470 = icmp eq i64 %i.af, %i.al
  br i1 %.not.i470, label %bb.f, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 %i.ak
  %.not2324.i = icmp eq i64 %i.af, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.ao = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !318
  %i.ap = icmp eq i32 %i.ao, %i.an                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.aq, %i.am
  %or.cond.not = select i1 %i.ap, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !17

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit
  %.2.i832 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.at = phi i32 [ %i.av, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.af, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.au = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.av = add i32 %i.at, -1                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3197

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ax = icmp ult i64 %i.af, 4
  br i1 %i.ax, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !318
  %i.ay = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !318
  %i.bb = add i32 %i.ay, -2
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !318
  %i.bd = add i32 %i.ay, -3
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.bf = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !318
  %i.bg = add i32 %i.ay, -4
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i472.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i472.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.f
  %.2.i832843 = phi i1 [ true, %bb.f ], [ %.2.i832, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i832, %.lr.ph.i.i.i.i.i ], [ %.2.i832, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef 400) #27
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !374 ; 3 uses
  %i.bj = load i64, ptr %i.aa, align 8, !tbaa !381 ; 5 uses
  %.not3.i.i.i.i.i474 = icmp eq i64 %i.bj, 0
  br i1 %.not3.i.i.i.i.i474, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475.preheader

.lr.ph.i.i.i.i.i475.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %xtraiter1132 = and i64 %i.bj, 3                ; 2 uses
  %lcmp.mod1133.not = icmp eq i64 %xtraiter1132, 0
  br i1 %lcmp.mod1133.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol

.lr.ph.i.i.i.i.i475.prol:                         ; preds = %.lr.ph.i.i.i.i.i475.preheader, %.lr.ph.i.i.i.i.i475.prol
  %.05.i.i.i.i.i476.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i475.preheader ]
  %storemerge4.i.i.i.i.i477.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i475.preheader ] ; 2 uses
  %prol.iter1134 = phi i64 [ %prol.iter1134.next, %.lr.ph.i.i.i.i.i475.prol ], [ 0, %.lr.ph.i.i.i.i.i475.preheader ]
  %i.bk = add i64 %.05.i.i.i.i.i476.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477.prol, align 4, !tbaa !318
  %i.bl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477.prol, i64 4 ; 2 uses
  %prol.iter1134.next = add i64 %prol.iter1134, 1 ; 2 uses
  %prol.iter1134.cmp.not = icmp eq i64 %prol.iter1134.next, %xtraiter1132
  br i1 %prol.iter1134.cmp.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol, !llvm.loop !3198

.lr.ph.i.i.i.i.i475.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i475.prol, %.lr.ph.i.i.i.i.i475.preheader
  %.05.i.i.i.i.i476.unr = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.i475.prol ]
  %storemerge4.i.i.i.i.i477.unr = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i475.prol ]
  %i.bo = icmp ult i64 %i.bj, 4
  br i1 %i.bo, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475

.lr.ph.i.i.i.i.i475:                              ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475
  %.05.i.i.i.i.i476 = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i475 ], [ %.05.i.i.i.i.i476.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ]
  %storemerge4.i.i.i.i.i477 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i475 ], [ %storemerge4.i.i.i.i.i477.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477, align 4, !tbaa !318
  %i.bp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 4
  store i32 -2147483648, ptr %i.br, align 4, !tbaa !318
  %i.bs = add i32 %i.bp, -2
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 8
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !318
  %i.bu = add i32 %i.bp, -3
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 12
  %i.bw = add i64 %.05.i.i.i.i.i476, -4           ; 2 uses
  store i32 -2147483648, ptr %i.bv, align 4, !tbaa !318
  %i.bx = add i32 %i.bp, -4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 16
  %.not.i.i.i.i.i478.3 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i478.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475, !llvm.loop !18

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i479: ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.bz = load i64, ptr %i.ab, align 8, !tbaa !376 ; 2 uses
  %.not.i1.i.i.i.i480 = icmp eq i64 %i.bz, 0
  br i1 %.not.i1.i.i.i.i480, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i479
  %i.ca = shl i64 %i.bz, 2
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.ca) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i479
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 24) #27
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i484 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i484, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.x, align 8, !tbaa !278
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.2.i832843, label %bb.k, label %bb.ij

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  %i.cg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !3285 ; 100 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false), !noalias !3285
  store ptr %i.cg, ptr %5, align 8, !tbaa !379, !alias.scope !3285
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  %i.ch = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.l unwind label %bb.s       ; 90 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !noalias !3286
  store ptr %i.ch, ptr %6, align 8, !tbaa !348, !alias.scope !3286
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 34 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !381 ; 6 uses
  %i.ck = icmp ugt i64 %i.cj, 100
  br i1 %i.ck, label %.lr.ph.i.preheader.i.i.i, label %bb.m
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.ck, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ck = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !318
  %i.cl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4063

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.prol ]
  %i.co = icmp ult i64 %i.v, 4
  br i1 %i.co, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cw, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !318
  %i.cp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !318
  %i.cs = add i32 %i.cp, -2
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.ct, align 4, !tbaa !318
  %i.cu = add i32 %i.cp, -3
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cv, align 4, !tbaa !318
  %i.cx = add i32 %i.cp, -4
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !18

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !376
  %i.da = shl i64 %i.cz, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.da) #27
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !375
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.db = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.dc = ptrtoint ptr %2 to i64
  %i.dd = ptrtoint ptr %i.u to i64
  %i.de = sub i64 %i.dc, %i.dd
  store ptr %i.t, ptr %1, align 8, !tbaa !374
  %i.df = add i64 %i.db, %3
  store i64 %i.df, ptr %i.d, align 8, !tbaa !375
  store i64 %i.p, ptr %i.a, align 8, !tbaa !261
  %i.dg = getelementptr inbounds i8, ptr %i.t, i64 %i.de
  store ptr %i.dg, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEENS0_14default_deleteIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4074   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !392  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !388
  %i.f = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4072

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !388
  %i.j = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !388
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !388
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !388
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !386  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #27
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !4081 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !4081
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !4081 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !4081
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !4081
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !4081
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !4081
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !4081
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !384, !noalias !4082
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !385, !noalias !4082
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !386, !noalias !4082
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost9container6vectorINS0_4test17moveconstruct_intESaIS3_EvEaSEOS5_.exit unwind label %bb.d, !noalias !4082 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !4082
  br label %.body

_ZN5boost9container6vectorINS0_4test17moveconstruct_intESaIS3_EvEaSEOS5_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !384, !noalias !4082
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !4082
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !4082
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !388, !noalias !4082
  %i.l = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !4082
  %i.m = load i64, ptr %i.h, align 8, !tbaa !385  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test17moveconstruct_intESaIS3_EvEaSEOS5_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !388
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !19

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test17moveconstruct_intESaIS3_EvEaSEOS5_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test17moveconstruct_intESaIS3_EvEaSEOS5_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test17moveconstruct_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !388
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4079

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !388
  %i.af = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !388
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !388
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !388
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 400) #27
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !384 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !392 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !388
  %i.as = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !4080

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !388
  %i.aw = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !388
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !388
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !388
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !20

_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !386 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nISaINS0_4test17moveconstruct_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24overaligned_copyable_intESaIS5_EvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.195") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !395
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !396
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test11vector_testINS0_6vectorIiNS0_13new_allocatorIiEEvEEEEiv:bb.a

.loopexit155:                                     ; preds = %.lr.ph.i82, %bb.n, %bb.m
  %.2.i79 = phi i1 [ false, %bb.m ], [ true, %bb.n ], [ %i.bb, %.lr.ph.i82 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 400) #26
  %i.bf = load i64, ptr %i.ao, align 8, !tbaa !260 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i92, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit155
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !259
  %i.bh = shl i64 %i.bf, 2
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bh) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit155
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i96 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i96, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit98, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit98

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit98: ; preds = %bb.q, %bb.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i79, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9559)
  %i.bn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9559 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false), !noalias !9559
  %i.bo = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit104 unwind label %bb.t, !noalias !9559 ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 24) #27, !noalias !9559
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit104: ; preds = %bb.s
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !277, !noalias !9559
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 400 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !278, !noalias !9559
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bo, i8 0, i64 400, i1 false)
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !288, !noalias !9559
  store ptr %i.bn, ptr %3, align 8, !tbaa !348, !alias.scope !9559
  %i.bt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.u unwind label %bb.x       ; 7 uses

bb.u:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit104
  store ptr null, ptr %i.bt, align 8, !tbaa !251, !noalias !9560
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 100, ptr %i.bu, align 8, !tbaa !285, !noalias !9560
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !260, !noalias !9560
  %i.bw = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.w unwind label %bb.v, !noalias !9560 ; 3 uses

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 24) #27, !noalias !9560
  br label %.body108

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(400) %i.bw, i8 0, i64 400, i1 false), !noalias !9560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false), !noalias !9561
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !288
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !277 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %.not.i112 = icmp eq i64 %i.cc, 400
  br i1 %.not.i112, label %.lr.ph.i116, label %.loopexit

.lr.ph.i116:                                      ; preds = %bb.w, %.lr.ph.i116
  %.sroa.019.026.i117.idx = phi i64 [ %.sroa.019.026.i117.add, %.lr.ph.i116 ], [ 0, %bb.w ] ; 2 uses
  %.sroa.015.025.i118 = phi ptr [ %i.cg, %.lr.ph.i116 ], [ %i.bz, %bb.w ] ; 2 uses
  %.sroa.019.026.i117.ptr = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.019.026.i117.idx
  %i.cd = load i32, ptr %.sroa.019.026.i117.ptr, align 4, !tbaa !247
  %i.ce = load i32, ptr %.sroa.015.025.i118, align 4, !tbaa !247
  %i.cf = icmp eq i32 %i.cd, %i.ce                ; 2 uses
  %.sroa.019.026.i117.add = add nuw nsw i64 %.sroa.019.026.i117.idx, 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i118, i64 4
  %.not23.i119 = icmp ne i64 %.sroa.019.026.i117.add, 400
  %or.cond165.not = select i1 %i.cf, i1 %.not23.i119, i1 false
  br i1 %or.cond165.not, label %.lr.ph.i116, label %.loopexit, !llvm.loop !171

.body74:                                          ; preds = %bb.o, %bb.l
  %.pn25.pn = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.be, %bb.o ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.x:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit104
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.loopexit:                                        ; preds = %.lr.ph.i116, %bb.w
  %.2.i113 = phi i1 [ false, %bb.w ], [ %i.cf, %.lr.ph.i116 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 400) #26
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !260 ; 2 uses
  %.not.i.i.i.i.i126 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i126, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !259
  %i.ck = shl i64 %i.ci, 2
  tail call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ck) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 24) #27
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i130 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i130, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit132, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.br, align 8, !tbaa !278
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit132

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit132: ; preds = %bb.z, %bb.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i113, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit132
  %i.cq = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorIiNS0_13new_allocatorIiEEvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.ac, label %bb.ae

.body108:                                         ; preds = %bb.x, %bb.v
  %.pn28.pn = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %i.ch, %bb.x ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.ac:                                            ; preds = %bb.ab
  %i.cr = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorIiNS0_13new_allocatorIiEEvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not32 = icmp eq i32 %i.cr, 0
  br i1 %.not32, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs), !inline_history !2 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit132, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit98, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiNS2_13new_allocatorIiEEvEENS0_14default_deleteIS6_EEED2Ev.exit64, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiNS2_13new_allocatorIiEEvEENS0_14default_deleteIS6_EEED2Ev.exit, %bb.ad
  %.421 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiNS2_13new_allocatorIiEEvEENS0_14default_deleteIS6_EEED2Ev.exit ], [ 1, %bb.ab ], [ 0, %bb.ad ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit132 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit98 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorIiNS2_13new_allocatorIiEEvEENS0_14default_deleteIS6_EEED2Ev.exit64 ], [ 1, %bb.ac ]
  ret i32 %.421
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.366", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.366", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9594)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9594 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !527, !noalias !9594
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !528, !noalias !9594
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !529, !noalias !9594
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !9594 ; 2 uses

common.resume:                                    ; preds = %.body, %.body46, %.body82, %.body129, %bb.u, %bb.j, %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.al, %bb.f ], [ %i.bq, %bb.j ], [ %i.ec, %bb.u ], [ %.pn28.pn, %.body129 ], [ %.pn25.pn, %.body82 ], [ %i.ao, %.body46 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !9594
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !527, !noalias !9594
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !9594
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9594
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !355, !noalias !9594
  %i.f = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9594
  store ptr %i.a, ptr %0, align 8, !tbaa !532, !alias.scope !9594
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !9595 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !534
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit206

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !527, !noalias !9596
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !355
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit206, !llvm.loop !172

.loopexit206:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !527  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !534  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit206
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.r = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !9568

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !355
  %i.v = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !355
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !355
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !355
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i36.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i36.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit206
  %i.af = load i64, ptr %i.c, align 8, !tbaa !529 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9597)
  %i.ah = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9597 ; 9 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !527, !noalias !9597
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !528, !noalias !9597
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !529, !noalias !9597
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.f, !noalias !9597 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !9597
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.e
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !527, !noalias !9597
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !9597
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i39 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9597
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !355, !noalias !9597
  %i.am = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i39, 100
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9597
  store ptr %i.ah, ptr %1, align 8, !tbaa !532, !alias.scope !9597
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.g unwind label %.body46, !noalias !9598 ; 3 uses

.body46:                                          ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !534
  %.not.i49 = icmp eq i64 %i.ap, 100
  br i1 %.not.i49, label %.lr.ph.i53.preheader, label %.loopexit205

.lr.ph.i53.preheader:                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !527, !noalias !9599
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader
  %.sroa.019.026.i54.idx = phi i64 [ %.sroa.019.026.i54.add, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.015.025.i55 = phi ptr [ %i.au, %.lr.ph.i53 ], [ %i.an, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.019.026.i54.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i54.idx
  %i.ar = load i32, ptr %.sroa.015.025.i55, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i54.ptr, align 4, !tbaa !355
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i54.add = add nuw nsw i64 %.sroa.019.026.i54.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i55, i64 4
  %.not23.i56 = icmp ne i64 %.sroa.019.026.i54.add, 400
  %or.cond229.not = select i1 %i.at, i1 %.not23.i56, i1 false
  br i1 %or.cond229.not, label %.lr.ph.i53, label %.loopexit205, !llvm.loop !172

.loopexit205:                                     ; preds = %.lr.ph.i53, %bb.g
  %.2.i50 = phi i1 [ false, %bb.g ], [ %i.at, %.lr.ph.i53 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !527 ; 3 uses
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !534 ; 5 uses
  %.not3.i.i.i.i.i63 = icmp eq i64 %i.aw, 0
  br i1 %.not3.i.i.i.i.i63, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.loopexit205
  %xtraiter249 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.05.i.i.i.i.i65.prol = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ]
  %storemerge4.i.i.i.i.i66.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ], [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ] ; 2 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.ax = add i64 %.05.i.i.i.i.i65.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66.prol, align 4, !tbaa !355
  %i.ay = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66.prol, i64 4 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !9575

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.05.i.i.i.i.i65.unr = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ]
  %storemerge4.i.i.i.i.i66.unr = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ]
  %i.bb = icmp ult i64 %i.aw, 4
  br i1 %i.bb, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.05.i.i.i.i.i65 = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i64 ], [ %.05.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ]
  %storemerge4.i.i.i.i.i66 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i64 ], [ %storemerge4.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66, align 4, !tbaa !355
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !355
  %i.bf = add i32 %i.bc, -2
  store i32 %i.bf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 8
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !355
  %i.bh = add i32 %i.bc, -3
  store i32 %i.bh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 12
  %i.bj = add i64 %.05.i.i.i.i.i65, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !355
  %i.bk = add i32 %i.bc, -4
  store i32 %i.bk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 16
  %.not.i.i.i.i.i67.3 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i67.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.loopexit205
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !529 ; 2 uses
  %.not.i1.i.i.i.i69 = icmp eq i64 %i.bm, 0
  br i1 %.not.i1.i.i.i.i69, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68
  %i.bn = shl i64 %i.bm, 2
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.bn) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i50, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9600)
  %i.bo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9600 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !9600
  %i.bp = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77 unwind label %bb.j, !noalias !9600 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27, !noalias !9600
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77: ; preds = %bb.i
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !277, !noalias !9600
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 400 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !278, !noalias !9600
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bp, i8 0, i64 400, i1 false)
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !288, !noalias !9600
  store ptr %i.bo, ptr %2, align 8, !tbaa !348, !alias.scope !9600
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.k unwind label %bb.o       ; 7 uses

bb.k:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  store ptr null, ptr %i.bu, align 8, !tbaa !527, !noalias !9601
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  store i64 100, ptr %i.bv, align 8, !tbaa !528, !noalias !9601
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !529, !noalias !9601
  %i.bx = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.m unwind label %bb.l, !noalias !9601 ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27, !noalias !9601
  br label %.body82

bb.m:                                             ; preds = %bb.k
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i80 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9601
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bx, i8 0, i64 400, i1 false), !tbaa !355, !noalias !9601
  %i.bz = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i80, 100 ; 3 uses
  store i32 %i.bz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9601
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !528, !noalias !9602 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false), !noalias !9602
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !288
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  %.not.i86 = icmp eq i64 %i.ca, %i.cg
  br i1 %.not.i86, label %bb.n, label %.loopexit183

bb.n:                                             ; preds = %bb.m
  %.idx.i88 = shl nsw i64 %i.ca, 2
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i88
  %.not2324.i89 = icmp eq i64 %i.ca, 0
  br i1 %.not2324.i89, label %bb.p, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.n, %.lr.ph.i90
  %.sroa.019.026.i91 = phi ptr [ %i.cl, %.lr.ph.i90 ], [ %i.bx, %bb.n ] ; 2 uses
  %.sroa.015.025.i92 = phi ptr [ %i.cm, %.lr.ph.i90 ], [ %i.cc, %bb.n ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.015.025.i92, align 4, !tbaa !247
  %i.cj = load i32, ptr %.sroa.019.026.i91, align 4, !tbaa !355
  %i.ck = icmp eq i32 %i.cj, %i.ci                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i91, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i92, i64 4
  %.not23.i93 = icmp ne ptr %i.cl, %i.ch
  %or.cond232.not = select i1 %i.ck, i1 %.not23.i93, i1 false
  br i1 %or.cond232.not, label %.lr.ph.i90, label %.loopexit183, !llvm.loop !172

bb.o:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.loopexit183:                                     ; preds = %.lr.ph.i90, %bb.m
  %.2.i87 = phi i1 [ false, %bb.m ], [ %i.ck, %.lr.ph.i90 ] ; 2 uses
  %.not3.i.i.i.i.i96 = icmp eq i64 %i.ca, 0
  br i1 %.not3.i.i.i.i.i96, label %bb.p, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %.loopexit183
  %min.iters.check = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i97.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i97.preheader
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.co = and i64 %i.ca, 7
  %i.cp = shl i64 %n.vec, 2
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cp
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bz, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cr, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi209 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !355
  store <4 x i32> splat (i32 -2147483648), ptr %i.ct, align 4, !tbaa !355
  %i.cu = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cv = add <4 x i32> %vec.phi209, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !9582

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cv, %i.cu
  %i.cx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit204, label %.lr.ph.i.i.i.i.i97.preheader241

.lr.ph.i.i.i.i.i97.preheader241:                  ; preds = %.lr.ph.i.i.i.i.i97.preheader, %middle.block
  %.ph242 = phi i32 [ %i.bz, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cx, %middle.block ]
  %.05.i.i.i.i.i98.ph = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.co, %middle.block ]
  %storemerge4.i.i.i.i.i99.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader241, %.lr.ph.i.i.i.i.i97
  %i.cy = phi i32 [ %i.da, %.lr.ph.i.i.i.i.i97 ], [ %.ph242, %.lr.ph.i.i.i.i.i97.preheader241 ]
  %.05.i.i.i.i.i98 = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i97 ], [ %.05.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i97.preheader241 ]
  %storemerge4.i.i.i.i.i99 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i97 ], [ %storemerge4.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i97.preheader241 ] ; 2 uses
  %i.cz = add i64 %.05.i.i.i.i.i98, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i99, align 4, !tbaa !355
  %i.da = add i32 %i.cy, -1                       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i99, i64 4
  %.not.i.i.i.i.i100 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i100, label %.loopexit204, label %.lr.ph.i.i.i.i.i97, !llvm.loop !9583

.loopexit204:                                     ; preds = %.lr.ph.i.i.i.i.i97, %middle.block
  %.lcssa208 = phi i32 [ %i.cx, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i.i97 ]
  store i32 %.lcssa208, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %bb.p

bb.p:                                             ; preds = %.loopexit204, %.loopexit183, %bb.n
  %.2.i87177 = phi i1 [ %.2.i87, %.loopexit183 ], [ true, %bb.n ], [ %.2.i87, %.loopexit204 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 400) #26
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !527 ; 3 uses
  %i.dd = load i64, ptr %i.bv, align 8, !tbaa !534 ; 5 uses
  %.not3.i.i.i.i.i106 = icmp eq i64 %i.dd, 0
  br i1 %.not3.i.i.i.i.i106, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107.preheader

.lr.ph.i.i.i.i.i107.preheader:                    ; preds = %bb.p
  %xtraiter252 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol

.lr.ph.i.i.i.i.i107.prol:                         ; preds = %.lr.ph.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i107.prol
  %.05.i.i.i.i.i108.prol = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ]
  %storemerge4.i.i.i.i.i109.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph.i.i.i.i.i107.prol ], [ 0, %.lr.ph.i.i.i.i.i107.preheader ]
  %i.de = add i64 %.05.i.i.i.i.i108.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109.prol, align 4, !tbaa !355
  %i.df = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109.prol, i64 4 ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol, !llvm.loop !9584

.lr.ph.i.i.i.i.i107.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i107.prol, %.lr.ph.i.i.i.i.i107.preheader
  %.05.i.i.i.i.i108.unr = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i107.prol ]
  %storemerge4.i.i.i.i.i109.unr = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ]
  %i.di = icmp ult i64 %i.dd, 4
  br i1 %i.di, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107

.lr.ph.i.i.i.i.i107:                              ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107
  %.05.i.i.i.i.i108 = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i107 ], [ %.05.i.i.i.i.i108.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ]
  %storemerge4.i.i.i.i.i109 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i107 ], [ %storemerge4.i.i.i.i.i109.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109, align 4, !tbaa !355
  %i.dj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 4
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !355
  %i.dm = add i32 %i.dj, -2
  store i32 %i.dm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 8
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !355
  %i.do = add i32 %i.dj, -3
  store i32 %i.do, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 12
  %i.dq = add i64 %.05.i.i.i.i.i108, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dp, align 4, !tbaa !355
  %i.dr = add i32 %i.dj, -4
  store i32 %i.dr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 16
  %.not.i.i.i.i.i110.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i110.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111: ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107, %bb.p
  %i.dt = load i64, ptr %i.bw, align 8, !tbaa !529 ; 2 uses
  %.not.i1.i.i.i.i112 = icmp eq i64 %i.dt, 0
  br i1 %.not.i1.i.i.i.i112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  %i.du = shl i64 %i.dt, 2
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.du) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27
  %i.dv = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i116, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %i.bs, align 8, !tbaa !278
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118: ; preds = %bb.r, %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i87177, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9603)
  %i.ea = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9603 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false), !noalias !9603
  %i.eb = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124 unwind label %bb.u, !noalias !9603 ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27, !noalias !9603
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124: ; preds = %bb.t
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !277, !noalias !9603
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 400 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !278, !noalias !9603
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.eb, i8 0, i64 400, i1 false)
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !288, !noalias !9603
  store ptr %i.ea, ptr %3, align 8, !tbaa !348, !alias.scope !9603
  %i.eg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.v unwind label %bb.z       ; 7 uses

bb.v:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  store ptr null, ptr %i.eg, align 8, !tbaa !527, !noalias !9604
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  store i64 100, ptr %i.eh, align 8, !tbaa !528, !noalias !9604
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !529, !noalias !9604
  %i.ej = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.x unwind label %bb.w, !noalias !9604 ; 7 uses

bb.w:                                             ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27, !noalias !9604
  br label %.body129

bb.x:                                             ; preds = %bb.v
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i127 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9604
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ej, i8 0, i64 400, i1 false), !tbaa !355, !noalias !9604
  %i.el = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i127, 100 ; 3 uses
  store i32 %i.el, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !9604
  %i.em = load i64, ptr %i.eh, align 8, !tbaa !528, !noalias !9605 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false), !noalias !9605
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !288
  %i.eo = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.not.i133 = icmp eq i64 %i.em, %i.es
  br i1 %.not.i133, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %.idx.i135 = shl nsw i64 %i.em, 2
  %i.et = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i135
  %.not2324.i136 = icmp eq i64 %i.em, 0
  br i1 %.not2324.i136, label %bb.aa, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.y, %.lr.ph.i137
  %.sroa.019.026.i138 = phi ptr [ %i.ex, %.lr.ph.i137 ], [ %i.ej, %bb.y ] ; 2 uses
  %.sroa.015.025.i139 = phi ptr [ %i.ey, %.lr.ph.i137 ], [ %i.eo, %bb.y ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.015.025.i139, align 4, !tbaa !247
  %i.ev = load i32, ptr %.sroa.019.026.i138, align 4, !tbaa !355
  %i.ew = icmp eq i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i138, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i139, i64 4
  %.not23.i140 = icmp ne ptr %i.ex, %i.et
  %or.cond235.not = select i1 %i.ew, i1 %.not23.i140, i1 false
  br i1 %or.cond235.not, label %.lr.ph.i137, label %.loopexit, !llvm.loop !172

.body82:                                          ; preds = %bb.o, %bb.l
  %.pn25.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.cn, %bb.o ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.z:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.loopexit:                                        ; preds = %.lr.ph.i137, %bb.x
  %.2.i134 = phi i1 [ false, %bb.x ], [ %i.ew, %.lr.ph.i137 ] ; 2 uses
  %.not3.i.i.i.i.i143 = icmp eq i64 %i.em, 0
  br i1 %.not3.i.i.i.i.i143, label %bb.aa, label %.lr.ph.i.i.i.i.i144.preheader

.lr.ph.i.i.i.i.i144.preheader:                    ; preds = %.loopexit
  %min.iters.check212 = icmp ult i64 %i.em, 8
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i144.preheader236, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.i.i.i.i144.preheader
  %n.vec214 = and i64 %i.em, -8                   ; 3 uses
  %i.fa = and i64 %i.em, 7
  %i.fb = shl i64 %n.vec214, 2
  %i.fc = getelementptr i8, ptr %i.ej, i64 %i.fb
  %i.fd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.el, i64 0
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next220, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <4 x i32> [ %i.fd, %vector.ph213 ], [ %i.fg, %vector.body215 ]
  %vec.phi218 = phi <4 x i32> [ zeroinitializer, %vector.ph213 ], [ %i.fh, %vector.body215 ]
  %i.fe = shl i64 %index216, 2
  %next.gep219 = getelementptr i8, ptr %i.ej, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep219, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep219, align 4, !tbaa !355
  store <4 x i32> splat (i32 -2147483648), ptr %i.ff, align 4, !tbaa !355
  %i.fg = add <4 x i32> %vec.phi217, splat (i32 -1) ; 2 uses
  %i.fh = add <4 x i32> %vec.phi218, splat (i32 -1) ; 2 uses
  %index.next220 = add nuw i64 %index216, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.fi, label %middle.block221, label %vector.body215, !llvm.loop !9591

middle.block221:                                  ; preds = %vector.body215
  %bin.rdx222 = add <4 x i32> %i.fh, %i.fg
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx222) ; 2 uses
  %cmp.n223 = icmp eq i64 %i.em, %n.vec214
  br i1 %cmp.n223, label %.loopexit203, label %.lr.ph.i.i.i.i.i144.preheader236

.lr.ph.i.i.i.i.i144.preheader236:                 ; preds = %.lr.ph.i.i.i.i.i144.preheader, %middle.block221
  %.ph = phi i32 [ %i.el, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fj, %middle.block221 ]
  %.05.i.i.i.i.i145.ph = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fa, %middle.block221 ]
  %storemerge4.i.i.i.i.i146.ph = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fc, %middle.block221 ]
  br label %.lr.ph.i.i.i.i.i144

.lr.ph.i.i.i.i.i144:                              ; preds = %.lr.ph.i.i.i.i.i144.preheader236, %.lr.ph.i.i.i.i.i144
  %i.fk = phi i32 [ %i.fm, %.lr.ph.i.i.i.i.i144 ], [ %.ph, %.lr.ph.i.i.i.i.i144.preheader236 ]
  %.05.i.i.i.i.i145 = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i144 ], [ %.05.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i144.preheader236 ]
  %storemerge4.i.i.i.i.i146 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i144 ], [ %storemerge4.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i144.preheader236 ] ; 2 uses
  %i.fl = add i64 %.05.i.i.i.i.i145, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i146, align 4, !tbaa !355
  %i.fm = add i32 %i.fk, -1                       ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i146, i64 4
  %.not.i.i.i.i.i147 = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i.i.i.i147, label %.loopexit203, label %.lr.ph.i.i.i.i.i144, !llvm.loop !9592

.loopexit203:                                     ; preds = %.lr.ph.i.i.i.i.i144, %middle.block221
  %.lcssa = phi i32 [ %i.fj, %middle.block221 ], [ %i.fm, %.lr.ph.i.i.i.i.i144 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit203, %.loopexit, %bb.y
  %.2.i134182 = phi i1 [ %.2.i134, %.loopexit ], [ true, %bb.y ], [ %.2.i134, %.loopexit203 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 400) #26
  %i.fo = load ptr, ptr %i.eg, align 8, !tbaa !527 ; 3 uses
  %i.fp = load i64, ptr %i.eh, align 8, !tbaa !534 ; 5 uses
  %.not3.i.i.i.i.i153 = icmp eq i64 %i.fp, 0
  br i1 %.not3.i.i.i.i.i153, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154.preheader

.lr.ph.i.i.i.i.i154.preheader:                    ; preds = %bb.aa
  %xtraiter255 = and i64 %i.fp, 3                 ; 2 uses
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol

.lr.ph.i.i.i.i.i154.prol:                         ; preds = %.lr.ph.i.i.i.i.i154.preheader, %.lr.ph.i.i.i.i.i154.prol
  %.05.i.i.i.i.i155.prol = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ]
  %storemerge4.i.i.i.i.i156.prol = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fo, %.lr.ph.i.i.i.i.i154.preheader ] ; 2 uses
  %prol.iter257 = phi i64 [ %prol.iter257.next, %.lr.ph.i.i.i.i.i154.prol ], [ 0, %.lr.ph.i.i.i.i.i154.preheader ]
  %i.fq = add i64 %.05.i.i.i.i.i155.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156.prol, align 4, !tbaa !355
  %i.fr = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fs = add i32 %i.fr, -1
  store i32 %i.fs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ft = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156.prol, i64 4 ; 2 uses
  %prol.iter257.next = add i64 %prol.iter257, 1   ; 2 uses
  %prol.iter257.cmp.not = icmp eq i64 %prol.iter257.next, %xtraiter255
  br i1 %prol.iter257.cmp.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol, !llvm.loop !9593

.lr.ph.i.i.i.i.i154.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i154.prol, %.lr.ph.i.i.i.i.i154.preheader
  %.05.i.i.i.i.i155.unr = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.fq, %.lr.ph.i.i.i.i.i154.prol ]
  %storemerge4.i.i.i.i.i156.unr = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.ft, %.lr.ph.i.i.i.i.i154.prol ]
  %i.fu = icmp ult i64 %i.fp, 4
  br i1 %i.fu, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154

.lr.ph.i.i.i.i.i154:                              ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154
  %.05.i.i.i.i.i155 = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i154 ], [ %.05.i.i.i.i.i155.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ]
  %storemerge4.i.i.i.i.i156 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i154 ], [ %storemerge4.i.i.i.i.i156.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156, align 4, !tbaa !355
  %i.fv = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 4
  store i32 -2147483648, ptr %i.fx, align 4, !tbaa !355
  %i.fy = add i32 %i.fv, -2
  store i32 %i.fy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 8
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !355
  %i.ga = add i32 %i.fv, -3
  store i32 %i.ga, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 12
  %i.gc = add i64 %.05.i.i.i.i.i155, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !355
  %i.gd = add i32 %i.fv, -4
  store i32 %i.gd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 16
  %.not.i.i.i.i.i157.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i.i.i.i157.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154, %bb.aa
  %i.gf = load i64, ptr %i.ei, align 8, !tbaa !529 ; 2 uses
  %.not.i1.i.i.i.i159 = icmp eq i64 %i.gf, 0
  br i1 %.not.i1.i.i.i.i159, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  %i.gg = shl i64 %i.gf, 2
  tail call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.gg) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27
  %i.gh = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i163, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gi = load ptr, ptr %i.ee, align 8, !tbaa !278
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = sub i64 %i.gj, %i.gk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gl) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165: ; preds = %bb.ac, %bb.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i134182, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165
  %i.gm = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.gm, 0
  br i1 %.not, label %bb.af, label %bb.ah

.body129:                                         ; preds = %bb.z, %bb.w
  %.pn28.pn = phi { ptr, i32 } [ %i.ek, %bb.w ], [ %i.ez, %bb.z ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.af:                                            ; preds = %bb.ae
  %i.gn = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not32 = icmp eq i32 %i.gn, 0
  br i1 %.not32, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.go), !inline_history !2 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ae, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, %bb.ag
  %.421 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit ], [ 1, %bb.ae ], [ 0, %bb.ag ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71 ], [ 1, %bb.af ]
  ret i32 %.421
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.385", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.385", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9638)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9638 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !536, !noalias !9638
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !537, !noalias !9638
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !538, !noalias !9638
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !9638 ; 2 uses

common.resume:                                    ; preds = %.body, %.body46, %.body82, %.body129, %bb.u, %bb.j, %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.al, %bb.f ], [ %i.bq, %bb.j ], [ %i.ec, %bb.u ], [ %.pn28.pn, %.body129 ], [ %.pn25.pn, %.body82 ], [ %i.ao, %.body46 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !9638
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !536, !noalias !9638
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !9638
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9638
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !367, !noalias !9638
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9638
  store ptr %i.a, ptr %0, align 8, !tbaa !541, !alias.scope !9638
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !9639 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !543
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit206

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !536, !noalias !9640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !367
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit206, !llvm.loop !174

.loopexit206:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !536  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !543  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit206
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !9612

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !367
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !367
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !367
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !367
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i36.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i36.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit206
  %i.af = load i64, ptr %i.c, align 8, !tbaa !538 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9641)
  %i.ah = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9641 ; 9 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !536, !noalias !9641
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !537, !noalias !9641
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !538, !noalias !9641
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.f, !noalias !9641 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !9641
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.e
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !536, !noalias !9641
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !9641
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i39 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9641
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !367, !noalias !9641
  %i.am = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i39, 100
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9641
  store ptr %i.ah, ptr %1, align 8, !tbaa !541, !alias.scope !9641
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.g unwind label %.body46, !noalias !9642 ; 3 uses

.body46:                                          ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !543
  %.not.i49 = icmp eq i64 %i.ap, 100
  br i1 %.not.i49, label %.lr.ph.i53.preheader, label %.loopexit205

.lr.ph.i53.preheader:                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !536, !noalias !9643
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader
  %.sroa.019.026.i54.idx = phi i64 [ %.sroa.019.026.i54.add, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.015.025.i55 = phi ptr [ %i.au, %.lr.ph.i53 ], [ %i.an, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.019.026.i54.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i54.idx
  %i.ar = load i32, ptr %.sroa.015.025.i55, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i54.ptr, align 4, !tbaa !367
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i54.add = add nuw nsw i64 %.sroa.019.026.i54.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i55, i64 4
  %.not23.i56 = icmp ne i64 %.sroa.019.026.i54.add, 400
  %or.cond229.not = select i1 %i.at, i1 %.not23.i56, i1 false
  br i1 %or.cond229.not, label %.lr.ph.i53, label %.loopexit205, !llvm.loop !174

.loopexit205:                                     ; preds = %.lr.ph.i53, %bb.g
  %.2.i50 = phi i1 [ false, %bb.g ], [ %i.at, %.lr.ph.i53 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !536 ; 3 uses
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !543 ; 5 uses
  %.not3.i.i.i.i.i63 = icmp eq i64 %i.aw, 0
  br i1 %.not3.i.i.i.i.i63, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.loopexit205
  %xtraiter249 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.05.i.i.i.i.i65.prol = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ]
  %storemerge4.i.i.i.i.i66.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ], [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ] ; 2 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.ax = add i64 %.05.i.i.i.i.i65.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66.prol, align 4, !tbaa !367
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66.prol, i64 4 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !9619

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.05.i.i.i.i.i65.unr = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ]
  %storemerge4.i.i.i.i.i66.unr = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ]
  %i.bb = icmp ult i64 %i.aw, 4
  br i1 %i.bb, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.05.i.i.i.i.i65 = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i64 ], [ %.05.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ]
  %storemerge4.i.i.i.i.i66 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i64 ], [ %storemerge4.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66, align 4, !tbaa !367
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !367
  %i.bf = add i32 %i.bc, -2
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 8
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !367
  %i.bh = add i32 %i.bc, -3
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 12
  %i.bj = add i64 %.05.i.i.i.i.i65, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !367
  %i.bk = add i32 %i.bc, -4
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 16
  %.not.i.i.i.i.i67.3 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i67.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.loopexit205
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !538 ; 2 uses
  %.not.i1.i.i.i.i69 = icmp eq i64 %i.bm, 0
  br i1 %.not.i1.i.i.i.i69, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68
  %i.bn = shl i64 %i.bm, 2
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.bn) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i50, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9644)
  %i.bo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9644 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !9644
  %i.bp = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77 unwind label %bb.j, !noalias !9644 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27, !noalias !9644
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77: ; preds = %bb.i
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !277, !noalias !9644
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 400 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !278, !noalias !9644
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bp, i8 0, i64 400, i1 false)
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !288, !noalias !9644
  store ptr %i.bo, ptr %2, align 8, !tbaa !348, !alias.scope !9644
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.k unwind label %bb.o       ; 7 uses

bb.k:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  store ptr null, ptr %i.bu, align 8, !tbaa !536, !noalias !9645
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  store i64 100, ptr %i.bv, align 8, !tbaa !537, !noalias !9645
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !538, !noalias !9645
  %i.bx = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.m unwind label %bb.l, !noalias !9645 ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27, !noalias !9645
  br label %.body82

bb.m:                                             ; preds = %bb.k
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i80 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9645
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bx, i8 0, i64 400, i1 false), !tbaa !367, !noalias !9645
  %i.bz = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i80, 100 ; 3 uses
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9645
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !537, !noalias !9646 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false), !noalias !9646
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !288
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  %.not.i86 = icmp eq i64 %i.ca, %i.cg
  br i1 %.not.i86, label %bb.n, label %.loopexit183

bb.n:                                             ; preds = %bb.m
  %.idx.i88 = shl nsw i64 %i.ca, 2
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i88
  %.not2324.i89 = icmp eq i64 %i.ca, 0
  br i1 %.not2324.i89, label %bb.p, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.n, %.lr.ph.i90
  %.sroa.019.026.i91 = phi ptr [ %i.cl, %.lr.ph.i90 ], [ %i.bx, %bb.n ] ; 2 uses
  %.sroa.015.025.i92 = phi ptr [ %i.cm, %.lr.ph.i90 ], [ %i.cc, %bb.n ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.015.025.i92, align 4, !tbaa !247
  %i.cj = load i32, ptr %.sroa.019.026.i91, align 4, !tbaa !367
  %i.ck = icmp eq i32 %i.cj, %i.ci                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i91, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i92, i64 4
  %.not23.i93 = icmp ne ptr %i.cl, %i.ch
  %or.cond232.not = select i1 %i.ck, i1 %.not23.i93, i1 false
  br i1 %or.cond232.not, label %.lr.ph.i90, label %.loopexit183, !llvm.loop !174

bb.o:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.loopexit183:                                     ; preds = %.lr.ph.i90, %bb.m
  %.2.i87 = phi i1 [ false, %bb.m ], [ %i.ck, %.lr.ph.i90 ] ; 2 uses
  %.not3.i.i.i.i.i96 = icmp eq i64 %i.ca, 0
  br i1 %.not3.i.i.i.i.i96, label %bb.p, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %.loopexit183
  %min.iters.check = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i97.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i97.preheader
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.co = and i64 %i.ca, 7
  %i.cp = shl i64 %n.vec, 2
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cp
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bz, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cr, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi209 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !367
  store <4 x i32> splat (i32 -2147483648), ptr %i.ct, align 4, !tbaa !367
  %i.cu = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cv = add <4 x i32> %vec.phi209, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !9626

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cv, %i.cu
  %i.cx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit204, label %.lr.ph.i.i.i.i.i97.preheader241

.lr.ph.i.i.i.i.i97.preheader241:                  ; preds = %.lr.ph.i.i.i.i.i97.preheader, %middle.block
  %.ph242 = phi i32 [ %i.bz, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cx, %middle.block ]
  %.05.i.i.i.i.i98.ph = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.co, %middle.block ]
  %storemerge4.i.i.i.i.i99.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader241, %.lr.ph.i.i.i.i.i97
  %i.cy = phi i32 [ %i.da, %.lr.ph.i.i.i.i.i97 ], [ %.ph242, %.lr.ph.i.i.i.i.i97.preheader241 ]
  %.05.i.i.i.i.i98 = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i97 ], [ %.05.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i97.preheader241 ]
  %storemerge4.i.i.i.i.i99 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i97 ], [ %storemerge4.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i97.preheader241 ] ; 2 uses
  %i.cz = add i64 %.05.i.i.i.i.i98, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i99, align 4, !tbaa !367
  %i.da = add i32 %i.cy, -1                       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i99, i64 4
  %.not.i.i.i.i.i100 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i100, label %.loopexit204, label %.lr.ph.i.i.i.i.i97, !llvm.loop !9627

.loopexit204:                                     ; preds = %.lr.ph.i.i.i.i.i97, %middle.block
  %.lcssa208 = phi i32 [ %i.cx, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i.i97 ]
  store i32 %.lcssa208, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %bb.p

bb.p:                                             ; preds = %.loopexit204, %.loopexit183, %bb.n
  %.2.i87177 = phi i1 [ %.2.i87, %.loopexit183 ], [ true, %bb.n ], [ %.2.i87, %.loopexit204 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 400) #26
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !536 ; 3 uses
  %i.dd = load i64, ptr %i.bv, align 8, !tbaa !543 ; 5 uses
  %.not3.i.i.i.i.i106 = icmp eq i64 %i.dd, 0
  br i1 %.not3.i.i.i.i.i106, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107.preheader

.lr.ph.i.i.i.i.i107.preheader:                    ; preds = %bb.p
  %xtraiter252 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol

.lr.ph.i.i.i.i.i107.prol:                         ; preds = %.lr.ph.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i107.prol
  %.05.i.i.i.i.i108.prol = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ]
  %storemerge4.i.i.i.i.i109.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph.i.i.i.i.i107.prol ], [ 0, %.lr.ph.i.i.i.i.i107.preheader ]
  %i.de = add i64 %.05.i.i.i.i.i108.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109.prol, align 4, !tbaa !367
  %i.df = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109.prol, i64 4 ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol, !llvm.loop !9628

.lr.ph.i.i.i.i.i107.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i107.prol, %.lr.ph.i.i.i.i.i107.preheader
  %.05.i.i.i.i.i108.unr = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i107.prol ]
  %storemerge4.i.i.i.i.i109.unr = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ]
  %i.di = icmp ult i64 %i.dd, 4
  br i1 %i.di, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107

.lr.ph.i.i.i.i.i107:                              ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107
  %.05.i.i.i.i.i108 = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i107 ], [ %.05.i.i.i.i.i108.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ]
  %storemerge4.i.i.i.i.i109 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i107 ], [ %storemerge4.i.i.i.i.i109.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109, align 4, !tbaa !367
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 4
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !367
  %i.dm = add i32 %i.dj, -2
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 8
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !367
  %i.do = add i32 %i.dj, -3
  store i32 %i.do, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 12
  %i.dq = add i64 %.05.i.i.i.i.i108, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dp, align 4, !tbaa !367
  %i.dr = add i32 %i.dj, -4
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 16
  %.not.i.i.i.i.i110.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i110.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111: ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107, %bb.p
  %i.dt = load i64, ptr %i.bw, align 8, !tbaa !538 ; 2 uses
  %.not.i1.i.i.i.i112 = icmp eq i64 %i.dt, 0
  br i1 %.not.i1.i.i.i.i112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  %i.du = shl i64 %i.dt, 2
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.du) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27
  %i.dv = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i116, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %i.bs, align 8, !tbaa !278
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118: ; preds = %bb.r, %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i87177, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9647)
  %i.ea = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9647 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false), !noalias !9647
  %i.eb = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124 unwind label %bb.u, !noalias !9647 ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27, !noalias !9647
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124: ; preds = %bb.t
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !277, !noalias !9647
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 400 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !278, !noalias !9647
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.eb, i8 0, i64 400, i1 false)
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !288, !noalias !9647
  store ptr %i.ea, ptr %3, align 8, !tbaa !348, !alias.scope !9647
  %i.eg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.v unwind label %bb.z       ; 7 uses

bb.v:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  store ptr null, ptr %i.eg, align 8, !tbaa !536, !noalias !9648
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  store i64 100, ptr %i.eh, align 8, !tbaa !537, !noalias !9648
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !538, !noalias !9648
  %i.ej = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.x unwind label %bb.w, !noalias !9648 ; 7 uses

bb.w:                                             ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27, !noalias !9648
  br label %.body129

bb.x:                                             ; preds = %bb.v
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i127 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ej, i8 0, i64 400, i1 false), !tbaa !367, !noalias !9648
  %i.el = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i127, 100 ; 3 uses
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !9648
  %i.em = load i64, ptr %i.eh, align 8, !tbaa !537, !noalias !9649 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false), !noalias !9649
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !288
  %i.eo = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.not.i133 = icmp eq i64 %i.em, %i.es
  br i1 %.not.i133, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %.idx.i135 = shl nsw i64 %i.em, 2
  %i.et = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i135
  %.not2324.i136 = icmp eq i64 %i.em, 0
  br i1 %.not2324.i136, label %bb.aa, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.y, %.lr.ph.i137
  %.sroa.019.026.i138 = phi ptr [ %i.ex, %.lr.ph.i137 ], [ %i.ej, %bb.y ] ; 2 uses
  %.sroa.015.025.i139 = phi ptr [ %i.ey, %.lr.ph.i137 ], [ %i.eo, %bb.y ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.015.025.i139, align 4, !tbaa !247
  %i.ev = load i32, ptr %.sroa.019.026.i138, align 4, !tbaa !367
  %i.ew = icmp eq i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i138, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i139, i64 4
  %.not23.i140 = icmp ne ptr %i.ex, %i.et
  %or.cond235.not = select i1 %i.ew, i1 %.not23.i140, i1 false
  br i1 %or.cond235.not, label %.lr.ph.i137, label %.loopexit, !llvm.loop !174

.body82:                                          ; preds = %bb.o, %bb.l
  %.pn25.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.cn, %bb.o ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.z:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.loopexit:                                        ; preds = %.lr.ph.i137, %bb.x
  %.2.i134 = phi i1 [ false, %bb.x ], [ %i.ew, %.lr.ph.i137 ] ; 2 uses
  %.not3.i.i.i.i.i143 = icmp eq i64 %i.em, 0
  br i1 %.not3.i.i.i.i.i143, label %bb.aa, label %.lr.ph.i.i.i.i.i144.preheader

.lr.ph.i.i.i.i.i144.preheader:                    ; preds = %.loopexit
  %min.iters.check212 = icmp ult i64 %i.em, 8
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i144.preheader236, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.i.i.i.i144.preheader
  %n.vec214 = and i64 %i.em, -8                   ; 3 uses
  %i.fa = and i64 %i.em, 7
  %i.fb = shl i64 %n.vec214, 2
  %i.fc = getelementptr i8, ptr %i.ej, i64 %i.fb
  %i.fd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.el, i64 0
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next220, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <4 x i32> [ %i.fd, %vector.ph213 ], [ %i.fg, %vector.body215 ]
  %vec.phi218 = phi <4 x i32> [ zeroinitializer, %vector.ph213 ], [ %i.fh, %vector.body215 ]
  %i.fe = shl i64 %index216, 2
  %next.gep219 = getelementptr i8, ptr %i.ej, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep219, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep219, align 4, !tbaa !367
  store <4 x i32> splat (i32 -2147483648), ptr %i.ff, align 4, !tbaa !367
  %i.fg = add <4 x i32> %vec.phi217, splat (i32 -1) ; 2 uses
  %i.fh = add <4 x i32> %vec.phi218, splat (i32 -1) ; 2 uses
  %index.next220 = add nuw i64 %index216, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.fi, label %middle.block221, label %vector.body215, !llvm.loop !9635

middle.block221:                                  ; preds = %vector.body215
  %bin.rdx222 = add <4 x i32> %i.fh, %i.fg
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx222) ; 2 uses
  %cmp.n223 = icmp eq i64 %i.em, %n.vec214
  br i1 %cmp.n223, label %.loopexit203, label %.lr.ph.i.i.i.i.i144.preheader236

.lr.ph.i.i.i.i.i144.preheader236:                 ; preds = %.lr.ph.i.i.i.i.i144.preheader, %middle.block221
  %.ph = phi i32 [ %i.el, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fj, %middle.block221 ]
  %.05.i.i.i.i.i145.ph = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fa, %middle.block221 ]
  %storemerge4.i.i.i.i.i146.ph = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fc, %middle.block221 ]
  br label %.lr.ph.i.i.i.i.i144

.lr.ph.i.i.i.i.i144:                              ; preds = %.lr.ph.i.i.i.i.i144.preheader236, %.lr.ph.i.i.i.i.i144
  %i.fk = phi i32 [ %i.fm, %.lr.ph.i.i.i.i.i144 ], [ %.ph, %.lr.ph.i.i.i.i.i144.preheader236 ]
  %.05.i.i.i.i.i145 = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i144 ], [ %.05.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i144.preheader236 ]
  %storemerge4.i.i.i.i.i146 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i144 ], [ %storemerge4.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i144.preheader236 ] ; 2 uses
  %i.fl = add i64 %.05.i.i.i.i.i145, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i146, align 4, !tbaa !367
  %i.fm = add i32 %i.fk, -1                       ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i146, i64 4
  %.not.i.i.i.i.i147 = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i.i.i.i147, label %.loopexit203, label %.lr.ph.i.i.i.i.i144, !llvm.loop !9636

.loopexit203:                                     ; preds = %.lr.ph.i.i.i.i.i144, %middle.block221
  %.lcssa = phi i32 [ %i.fj, %middle.block221 ], [ %i.fm, %.lr.ph.i.i.i.i.i144 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit203, %.loopexit, %bb.y
  %.2.i134182 = phi i1 [ %.2.i134, %.loopexit ], [ true, %bb.y ], [ %.2.i134, %.loopexit203 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 400) #26
  %i.fo = load ptr, ptr %i.eg, align 8, !tbaa !536 ; 3 uses
  %i.fp = load i64, ptr %i.eh, align 8, !tbaa !543 ; 5 uses
  %.not3.i.i.i.i.i153 = icmp eq i64 %i.fp, 0
  br i1 %.not3.i.i.i.i.i153, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154.preheader

.lr.ph.i.i.i.i.i154.preheader:                    ; preds = %bb.aa
  %xtraiter255 = and i64 %i.fp, 3                 ; 2 uses
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol

.lr.ph.i.i.i.i.i154.prol:                         ; preds = %.lr.ph.i.i.i.i.i154.preheader, %.lr.ph.i.i.i.i.i154.prol
  %.05.i.i.i.i.i155.prol = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ]
  %storemerge4.i.i.i.i.i156.prol = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fo, %.lr.ph.i.i.i.i.i154.preheader ] ; 2 uses
  %prol.iter257 = phi i64 [ %prol.iter257.next, %.lr.ph.i.i.i.i.i154.prol ], [ 0, %.lr.ph.i.i.i.i.i154.preheader ]
  %i.fq = add i64 %.05.i.i.i.i.i155.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156.prol, align 4, !tbaa !367
  %i.fr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fs = add i32 %i.fr, -1
  store i32 %i.fs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ft = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156.prol, i64 4 ; 2 uses
  %prol.iter257.next = add i64 %prol.iter257, 1   ; 2 uses
  %prol.iter257.cmp.not = icmp eq i64 %prol.iter257.next, %xtraiter255
  br i1 %prol.iter257.cmp.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol, !llvm.loop !9637

.lr.ph.i.i.i.i.i154.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i154.prol, %.lr.ph.i.i.i.i.i154.preheader
  %.05.i.i.i.i.i155.unr = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.fq, %.lr.ph.i.i.i.i.i154.prol ]
  %storemerge4.i.i.i.i.i156.unr = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.ft, %.lr.ph.i.i.i.i.i154.prol ]
  %i.fu = icmp ult i64 %i.fp, 4
  br i1 %i.fu, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154

.lr.ph.i.i.i.i.i154:                              ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154
  %.05.i.i.i.i.i155 = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i154 ], [ %.05.i.i.i.i.i155.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ]
  %storemerge4.i.i.i.i.i156 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i154 ], [ %storemerge4.i.i.i.i.i156.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156, align 4, !tbaa !367
  %i.fv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 4
  store i32 -2147483648, ptr %i.fx, align 4, !tbaa !367
  %i.fy = add i32 %i.fv, -2
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 8
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !367
  %i.ga = add i32 %i.fv, -3
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 12
  %i.gc = add i64 %.05.i.i.i.i.i155, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !367
  %i.gd = add i32 %i.fv, -4
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 16
  %.not.i.i.i.i.i157.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i.i.i.i157.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154, %bb.aa
  %i.gf = load i64, ptr %i.ei, align 8, !tbaa !538 ; 2 uses
  %.not.i1.i.i.i.i159 = icmp eq i64 %i.gf, 0
  br i1 %.not.i1.i.i.i.i159, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  %i.gg = shl i64 %i.gf, 2
  tail call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.gg) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27
  %i.gh = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i163, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gi = load ptr, ptr %i.ee, align 8, !tbaa !278
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = sub i64 %i.gj, %i.gk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gl) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165: ; preds = %bb.ac, %bb.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i134182, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165
  %i.gm = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.gm, 0
  br i1 %.not, label %bb.af, label %bb.ah

.body129:                                         ; preds = %bb.z, %bb.w
  %.pn28.pn = phi { ptr, i32 } [ %i.ek, %bb.w ], [ %i.ez, %bb.z ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.af:                                            ; preds = %bb.ae
  %i.gn = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not32 = icmp eq i32 %i.gn, 0
  br i1 %.not32, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.go), !inline_history !2 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ae, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, %bb.ag
  %.421 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit ], [ 1, %bb.ae ], [ 0, %bb.ag ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71 ], [ 1, %bb.af ]
  ret i32 %.421
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.408", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.408", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9682)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9682 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !545, !noalias !9682
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !546, !noalias !9682
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !547, !noalias !9682
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !9682 ; 2 uses

common.resume:                                    ; preds = %.body, %.body46, %.body82, %.body129, %bb.u, %bb.j, %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.al, %bb.f ], [ %i.bq, %bb.j ], [ %i.ec, %bb.u ], [ %.pn28.pn, %.body129 ], [ %.pn25.pn, %.body82 ], [ %i.ao, %.body46 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !9682
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !545, !noalias !9682
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !9682
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9682
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !318, !noalias !9682
  %i.f = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9682
  store ptr %i.a, ptr %0, align 8, !tbaa !550, !alias.scope !9682
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !9683 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !552
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit206

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !545, !noalias !9684
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !318
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit206, !llvm.loop !176

.loopexit206:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !545  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !552  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit206
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !9656

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !318
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !318
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !318
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i36.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i36.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit206
  %i.af = load i64, ptr %i.c, align 8, !tbaa !547 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9685)
  %i.ah = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9685 ; 9 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !545, !noalias !9685
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !546, !noalias !9685
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !547, !noalias !9685
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.f, !noalias !9685 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !9685
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.e
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !545, !noalias !9685
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !9685
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i39 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9685
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !318, !noalias !9685
  %i.am = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i39, 100
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9685
  store ptr %i.ah, ptr %1, align 8, !tbaa !550, !alias.scope !9685
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.g unwind label %.body46, !noalias !9686 ; 3 uses

.body46:                                          ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !552
  %.not.i49 = icmp eq i64 %i.ap, 100
  br i1 %.not.i49, label %.lr.ph.i53.preheader, label %.loopexit205

.lr.ph.i53.preheader:                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !545, !noalias !9687
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader
  %.sroa.019.026.i54.idx = phi i64 [ %.sroa.019.026.i54.add, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.015.025.i55 = phi ptr [ %i.au, %.lr.ph.i53 ], [ %i.an, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.019.026.i54.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i54.idx
  %i.ar = load i32, ptr %.sroa.015.025.i55, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i54.ptr, align 4, !tbaa !318
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i54.add = add nuw nsw i64 %.sroa.019.026.i54.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i55, i64 4
  %.not23.i56 = icmp ne i64 %.sroa.019.026.i54.add, 400
  %or.cond229.not = select i1 %i.at, i1 %.not23.i56, i1 false
  br i1 %or.cond229.not, label %.lr.ph.i53, label %.loopexit205, !llvm.loop !176

.loopexit205:                                     ; preds = %.lr.ph.i53, %bb.g
  %.2.i50 = phi i1 [ false, %bb.g ], [ %i.at, %.lr.ph.i53 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !545 ; 3 uses
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !552 ; 5 uses
  %.not3.i.i.i.i.i63 = icmp eq i64 %i.aw, 0
  br i1 %.not3.i.i.i.i.i63, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.loopexit205
  %xtraiter249 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.05.i.i.i.i.i65.prol = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ]
  %storemerge4.i.i.i.i.i66.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ], [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ] ; 2 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.ax = add i64 %.05.i.i.i.i.i65.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66.prol, align 4, !tbaa !318
  %i.ay = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66.prol, i64 4 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !9663

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.05.i.i.i.i.i65.unr = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ]
  %storemerge4.i.i.i.i.i66.unr = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ]
  %i.bb = icmp ult i64 %i.aw, 4
  br i1 %i.bb, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.05.i.i.i.i.i65 = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i64 ], [ %.05.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ]
  %storemerge4.i.i.i.i.i66 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i64 ], [ %storemerge4.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66, align 4, !tbaa !318
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !318
  %i.bf = add i32 %i.bc, -2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 8
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !318
  %i.bh = add i32 %i.bc, -3
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 12
  %i.bj = add i64 %.05.i.i.i.i.i65, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !318
  %i.bk = add i32 %i.bc, -4
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 16
  %.not.i.i.i.i.i67.3 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i67.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.loopexit205
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !547 ; 2 uses
  %.not.i1.i.i.i.i69 = icmp eq i64 %i.bm, 0
  br i1 %.not.i1.i.i.i.i69, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68
  %i.bn = shl i64 %i.bm, 2
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.bn) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i50, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9688)
  %i.bo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9688 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !9688
  %i.bp = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77 unwind label %bb.j, !noalias !9688 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27, !noalias !9688
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77: ; preds = %bb.i
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !277, !noalias !9688
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 400 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !278, !noalias !9688
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bp, i8 0, i64 400, i1 false)
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !288, !noalias !9688
  store ptr %i.bo, ptr %2, align 8, !tbaa !348, !alias.scope !9688
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.k unwind label %bb.o       ; 7 uses

bb.k:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  store ptr null, ptr %i.bu, align 8, !tbaa !545, !noalias !9689
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  store i64 100, ptr %i.bv, align 8, !tbaa !546, !noalias !9689
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !547, !noalias !9689
  %i.bx = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.m unwind label %bb.l, !noalias !9689 ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27, !noalias !9689
  br label %.body82

bb.m:                                             ; preds = %bb.k
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i80 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9689
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bx, i8 0, i64 400, i1 false), !tbaa !318, !noalias !9689
  %i.bz = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i80, 100 ; 3 uses
  store i32 %i.bz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9689
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !546, !noalias !9690 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false), !noalias !9690
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !288
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  %.not.i86 = icmp eq i64 %i.ca, %i.cg
  br i1 %.not.i86, label %bb.n, label %.loopexit183

bb.n:                                             ; preds = %bb.m
  %.idx.i88 = shl nsw i64 %i.ca, 2
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i88
  %.not2324.i89 = icmp eq i64 %i.ca, 0
  br i1 %.not2324.i89, label %bb.p, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.n, %.lr.ph.i90
  %.sroa.019.026.i91 = phi ptr [ %i.cl, %.lr.ph.i90 ], [ %i.bx, %bb.n ] ; 2 uses
  %.sroa.015.025.i92 = phi ptr [ %i.cm, %.lr.ph.i90 ], [ %i.cc, %bb.n ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.015.025.i92, align 4, !tbaa !247
  %i.cj = load i32, ptr %.sroa.019.026.i91, align 4, !tbaa !318
  %i.ck = icmp eq i32 %i.cj, %i.ci                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i91, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i92, i64 4
  %.not23.i93 = icmp ne ptr %i.cl, %i.ch
  %or.cond232.not = select i1 %i.ck, i1 %.not23.i93, i1 false
  br i1 %or.cond232.not, label %.lr.ph.i90, label %.loopexit183, !llvm.loop !176

bb.o:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.loopexit183:                                     ; preds = %.lr.ph.i90, %bb.m
  %.2.i87 = phi i1 [ false, %bb.m ], [ %i.ck, %.lr.ph.i90 ] ; 2 uses
  %.not3.i.i.i.i.i96 = icmp eq i64 %i.ca, 0
  br i1 %.not3.i.i.i.i.i96, label %bb.p, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %.loopexit183
  %min.iters.check = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i97.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i97.preheader
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.co = and i64 %i.ca, 7
  %i.cp = shl i64 %n.vec, 2
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cp
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bz, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cr, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi209 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> splat (i32 -2147483648), ptr %i.ct, align 4, !tbaa !318
  %i.cu = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cv = add <4 x i32> %vec.phi209, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !9670

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cv, %i.cu
  %i.cx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit204, label %.lr.ph.i.i.i.i.i97.preheader241

.lr.ph.i.i.i.i.i97.preheader241:                  ; preds = %.lr.ph.i.i.i.i.i97.preheader, %middle.block
  %.ph242 = phi i32 [ %i.bz, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cx, %middle.block ]
  %.05.i.i.i.i.i98.ph = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.co, %middle.block ]
  %storemerge4.i.i.i.i.i99.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader241, %.lr.ph.i.i.i.i.i97
  %i.cy = phi i32 [ %i.da, %.lr.ph.i.i.i.i.i97 ], [ %.ph242, %.lr.ph.i.i.i.i.i97.preheader241 ]
  %.05.i.i.i.i.i98 = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i97 ], [ %.05.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i97.preheader241 ]
  %storemerge4.i.i.i.i.i99 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i97 ], [ %storemerge4.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i97.preheader241 ] ; 2 uses
  %i.cz = add i64 %.05.i.i.i.i.i98, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i99, align 4, !tbaa !318
  %i.da = add i32 %i.cy, -1                       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i99, i64 4
  %.not.i.i.i.i.i100 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i100, label %.loopexit204, label %.lr.ph.i.i.i.i.i97, !llvm.loop !9671

.loopexit204:                                     ; preds = %.lr.ph.i.i.i.i.i97, %middle.block
  %.lcssa208 = phi i32 [ %i.cx, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i.i97 ]
  store i32 %.lcssa208, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %bb.p

bb.p:                                             ; preds = %.loopexit204, %.loopexit183, %bb.n
  %.2.i87177 = phi i1 [ %.2.i87, %.loopexit183 ], [ true, %bb.n ], [ %.2.i87, %.loopexit204 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 400) #26
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !545 ; 3 uses
  %i.dd = load i64, ptr %i.bv, align 8, !tbaa !552 ; 5 uses
  %.not3.i.i.i.i.i106 = icmp eq i64 %i.dd, 0
  br i1 %.not3.i.i.i.i.i106, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107.preheader

.lr.ph.i.i.i.i.i107.preheader:                    ; preds = %bb.p
  %xtraiter252 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol

.lr.ph.i.i.i.i.i107.prol:                         ; preds = %.lr.ph.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i107.prol
  %.05.i.i.i.i.i108.prol = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ]
  %storemerge4.i.i.i.i.i109.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph.i.i.i.i.i107.prol ], [ 0, %.lr.ph.i.i.i.i.i107.preheader ]
  %i.de = add i64 %.05.i.i.i.i.i108.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109.prol, align 4, !tbaa !318
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109.prol, i64 4 ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol, !llvm.loop !9672

.lr.ph.i.i.i.i.i107.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i107.prol, %.lr.ph.i.i.i.i.i107.preheader
  %.05.i.i.i.i.i108.unr = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i107.prol ]
  %storemerge4.i.i.i.i.i109.unr = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ]
  %i.di = icmp ult i64 %i.dd, 4
  br i1 %i.di, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107

.lr.ph.i.i.i.i.i107:                              ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107
  %.05.i.i.i.i.i108 = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i107 ], [ %.05.i.i.i.i.i108.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ]
  %storemerge4.i.i.i.i.i109 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i107 ], [ %storemerge4.i.i.i.i.i109.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109, align 4, !tbaa !318
  %i.dj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 4
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !318
  %i.dm = add i32 %i.dj, -2
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 8
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !318
  %i.do = add i32 %i.dj, -3
  store i32 %i.do, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 12
  %i.dq = add i64 %.05.i.i.i.i.i108, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dp, align 4, !tbaa !318
  %i.dr = add i32 %i.dj, -4
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 16
  %.not.i.i.i.i.i110.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i110.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111: ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107, %bb.p
  %i.dt = load i64, ptr %i.bw, align 8, !tbaa !547 ; 2 uses
  %.not.i1.i.i.i.i112 = icmp eq i64 %i.dt, 0
  br i1 %.not.i1.i.i.i.i112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  %i.du = shl i64 %i.dt, 2
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.du) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27
  %i.dv = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i116, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %i.bs, align 8, !tbaa !278
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118: ; preds = %bb.r, %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i87177, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9691)
  %i.ea = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9691 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false), !noalias !9691
  %i.eb = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124 unwind label %bb.u, !noalias !9691 ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27, !noalias !9691
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124: ; preds = %bb.t
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !277, !noalias !9691
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 400 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !278, !noalias !9691
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.eb, i8 0, i64 400, i1 false)
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !288, !noalias !9691
  store ptr %i.ea, ptr %3, align 8, !tbaa !348, !alias.scope !9691
  %i.eg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.v unwind label %bb.z       ; 7 uses

bb.v:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  store ptr null, ptr %i.eg, align 8, !tbaa !545, !noalias !9692
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  store i64 100, ptr %i.eh, align 8, !tbaa !546, !noalias !9692
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !547, !noalias !9692
  %i.ej = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.x unwind label %bb.w, !noalias !9692 ; 7 uses

bb.w:                                             ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27, !noalias !9692
  br label %.body129

bb.x:                                             ; preds = %bb.v
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i127 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9692
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ej, i8 0, i64 400, i1 false), !tbaa !318, !noalias !9692
  %i.el = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i127, 100 ; 3 uses
  store i32 %i.el, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !9692
  %i.em = load i64, ptr %i.eh, align 8, !tbaa !546, !noalias !9693 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false), !noalias !9693
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !288
  %i.eo = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 2
  %.not.i133 = icmp eq i64 %i.em, %i.es
  br i1 %.not.i133, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %.idx.i135 = shl nsw i64 %i.em, 2
  %i.et = getelementptr inbounds i8, ptr %i.ej, i64 %.idx.i135
  %.not2324.i136 = icmp eq i64 %i.em, 0
  br i1 %.not2324.i136, label %bb.aa, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.y, %.lr.ph.i137
  %.sroa.019.026.i138 = phi ptr [ %i.ex, %.lr.ph.i137 ], [ %i.ej, %bb.y ] ; 2 uses
  %.sroa.015.025.i139 = phi ptr [ %i.ey, %.lr.ph.i137 ], [ %i.eo, %bb.y ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.015.025.i139, align 4, !tbaa !247
  %i.ev = load i32, ptr %.sroa.019.026.i138, align 4, !tbaa !318
  %i.ew = icmp eq i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i138, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i139, i64 4
  %.not23.i140 = icmp ne ptr %i.ex, %i.et
  %or.cond235.not = select i1 %i.ew, i1 %.not23.i140, i1 false
  br i1 %or.cond235.not, label %.lr.ph.i137, label %.loopexit, !llvm.loop !176

.body82:                                          ; preds = %bb.o, %bb.l
  %.pn25.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.cn, %bb.o ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.z:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.loopexit:                                        ; preds = %.lr.ph.i137, %bb.x
  %.2.i134 = phi i1 [ false, %bb.x ], [ %i.ew, %.lr.ph.i137 ] ; 2 uses
  %.not3.i.i.i.i.i143 = icmp eq i64 %i.em, 0
  br i1 %.not3.i.i.i.i.i143, label %bb.aa, label %.lr.ph.i.i.i.i.i144.preheader

.lr.ph.i.i.i.i.i144.preheader:                    ; preds = %.loopexit
  %min.iters.check212 = icmp ult i64 %i.em, 8
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i144.preheader236, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.i.i.i.i144.preheader
  %n.vec214 = and i64 %i.em, -8                   ; 3 uses
  %i.fa = and i64 %i.em, 7
  %i.fb = shl i64 %n.vec214, 2
  %i.fc = getelementptr i8, ptr %i.ej, i64 %i.fb
  %i.fd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.el, i64 0
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next220, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <4 x i32> [ %i.fd, %vector.ph213 ], [ %i.fg, %vector.body215 ]
  %vec.phi218 = phi <4 x i32> [ zeroinitializer, %vector.ph213 ], [ %i.fh, %vector.body215 ]
  %i.fe = shl i64 %index216, 2
  %next.gep219 = getelementptr i8, ptr %i.ej, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep219, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep219, align 4, !tbaa !318
  store <4 x i32> splat (i32 -2147483648), ptr %i.ff, align 4, !tbaa !318
  %i.fg = add <4 x i32> %vec.phi217, splat (i32 -1) ; 2 uses
  %i.fh = add <4 x i32> %vec.phi218, splat (i32 -1) ; 2 uses
  %index.next220 = add nuw i64 %index216, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.fi, label %middle.block221, label %vector.body215, !llvm.loop !9679

middle.block221:                                  ; preds = %vector.body215
  %bin.rdx222 = add <4 x i32> %i.fh, %i.fg
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx222) ; 2 uses
  %cmp.n223 = icmp eq i64 %i.em, %n.vec214
  br i1 %cmp.n223, label %.loopexit203, label %.lr.ph.i.i.i.i.i144.preheader236

.lr.ph.i.i.i.i.i144.preheader236:                 ; preds = %.lr.ph.i.i.i.i.i144.preheader, %middle.block221
  %.ph = phi i32 [ %i.el, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fj, %middle.block221 ]
  %.05.i.i.i.i.i145.ph = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fa, %middle.block221 ]
  %storemerge4.i.i.i.i.i146.ph = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.fc, %middle.block221 ]
  br label %.lr.ph.i.i.i.i.i144

.lr.ph.i.i.i.i.i144:                              ; preds = %.lr.ph.i.i.i.i.i144.preheader236, %.lr.ph.i.i.i.i.i144
  %i.fk = phi i32 [ %i.fm, %.lr.ph.i.i.i.i.i144 ], [ %.ph, %.lr.ph.i.i.i.i.i144.preheader236 ]
  %.05.i.i.i.i.i145 = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i144 ], [ %.05.i.i.i.i.i145.ph, %.lr.ph.i.i.i.i.i144.preheader236 ]
  %storemerge4.i.i.i.i.i146 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i144 ], [ %storemerge4.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i144.preheader236 ] ; 2 uses
  %i.fl = add i64 %.05.i.i.i.i.i145, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i146, align 4, !tbaa !318
  %i.fm = add i32 %i.fk, -1                       ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i146, i64 4
  %.not.i.i.i.i.i147 = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i.i.i.i147, label %.loopexit203, label %.lr.ph.i.i.i.i.i144, !llvm.loop !9680

.loopexit203:                                     ; preds = %.lr.ph.i.i.i.i.i144, %middle.block221
  %.lcssa = phi i32 [ %i.fj, %middle.block221 ], [ %i.fm, %.lr.ph.i.i.i.i.i144 ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit203, %.loopexit, %bb.y
  %.2.i134182 = phi i1 [ %.2.i134, %.loopexit ], [ true, %bb.y ], [ %.2.i134, %.loopexit203 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 400) #26
  %i.fo = load ptr, ptr %i.eg, align 8, !tbaa !545 ; 3 uses
  %i.fp = load i64, ptr %i.eh, align 8, !tbaa !552 ; 5 uses
  %.not3.i.i.i.i.i153 = icmp eq i64 %i.fp, 0
  br i1 %.not3.i.i.i.i.i153, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154.preheader

.lr.ph.i.i.i.i.i154.preheader:                    ; preds = %bb.aa
  %xtraiter255 = and i64 %i.fp, 3                 ; 2 uses
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol

.lr.ph.i.i.i.i.i154.prol:                         ; preds = %.lr.ph.i.i.i.i.i154.preheader, %.lr.ph.i.i.i.i.i154.prol
  %.05.i.i.i.i.i155.prol = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ]
  %storemerge4.i.i.i.i.i156.prol = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fo, %.lr.ph.i.i.i.i.i154.preheader ] ; 2 uses
  %prol.iter257 = phi i64 [ %prol.iter257.next, %.lr.ph.i.i.i.i.i154.prol ], [ 0, %.lr.ph.i.i.i.i.i154.preheader ]
  %i.fq = add i64 %.05.i.i.i.i.i155.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156.prol, align 4, !tbaa !318
  %i.fr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fs = add i32 %i.fr, -1
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ft = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156.prol, i64 4 ; 2 uses
  %prol.iter257.next = add i64 %prol.iter257, 1   ; 2 uses
  %prol.iter257.cmp.not = icmp eq i64 %prol.iter257.next, %xtraiter255
  br i1 %prol.iter257.cmp.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol, !llvm.loop !9681

.lr.ph.i.i.i.i.i154.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i154.prol, %.lr.ph.i.i.i.i.i154.preheader
  %.05.i.i.i.i.i155.unr = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.fq, %.lr.ph.i.i.i.i.i154.prol ]
  %storemerge4.i.i.i.i.i156.unr = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.ft, %.lr.ph.i.i.i.i.i154.prol ]
  %i.fu = icmp ult i64 %i.fp, 4
  br i1 %i.fu, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154

.lr.ph.i.i.i.i.i154:                              ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154
  %.05.i.i.i.i.i155 = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i154 ], [ %.05.i.i.i.i.i155.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ]
  %storemerge4.i.i.i.i.i156 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i154 ], [ %storemerge4.i.i.i.i.i156.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156, align 4, !tbaa !318
  %i.fv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 4
  store i32 -2147483648, ptr %i.fx, align 4, !tbaa !318
  %i.fy = add i32 %i.fv, -2
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 8
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !318
  %i.ga = add i32 %i.fv, -3
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 12
  %i.gc = add i64 %.05.i.i.i.i.i155, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !318
  %i.gd = add i32 %i.fv, -4
  store i32 %i.gd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 16
  %.not.i.i.i.i.i157.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i.i.i.i157.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154, %bb.aa
  %i.gf = load i64, ptr %i.ei, align 8, !tbaa !547 ; 2 uses
  %.not.i1.i.i.i.i159 = icmp eq i64 %i.gf, 0
  br i1 %.not.i1.i.i.i.i159, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  %i.gg = shl i64 %i.gf, 2
  tail call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.gg) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27
  %i.gh = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i163, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gi = load ptr, ptr %i.ee, align 8, !tbaa !278
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = sub i64 %i.gj, %i.gk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gl) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165: ; preds = %bb.ac, %bb.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i134182, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165
  %i.gm = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.gm, 0
  br i1 %.not, label %bb.af, label %bb.ah

.body129:                                         ; preds = %bb.z, %bb.w
  %.pn28.pn = phi { ptr, i32 } [ %i.ek, %bb.w ], [ %i.ez, %bb.z ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.af:                                            ; preds = %bb.ae
  %i.gn = tail call noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE()
  %.not32 = icmp eq i32 %i.gn, 0
  br i1 %.not32, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.go), !inline_history !2 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ae, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, %bb.ag
  %.421 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit ], [ 1, %bb.ae ], [ 0, %bb.ag ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71 ], [ 1, %bb.af ]
  ret i32 %.421
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.431", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr.431", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9724)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9724 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !554, !noalias !9724
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 100, ptr %i.b, align 8, !tbaa !555, !noalias !9724
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !556, !noalias !9724
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !9724 ; 2 uses

common.resume:                                    ; preds = %.body, %.body46, %.body82, %.body129, %bb.u, %bb.j, %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.al, %bb.f ], [ %i.bq, %bb.j ], [ %i.ec, %bb.u ], [ %.pn28.pn, %.body129 ], [ %.pn25.pn, %.body82 ], [ %i.ao, %.body46 ], [ %i.h, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !9724
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !554, !noalias !9724
  store i64 100, ptr %i.c, align 8, !tbaa !261, !noalias !9724
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9724
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !tbaa !388, !noalias !9724
  %i.f = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i, 100
  store i32 %i.f, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9724
  store ptr %i.a, ptr %0, align 8, !tbaa !9725, !alias.scope !9724
  %i.g = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.c unwind label %.body, !noalias !9726 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.g, i8 0, i64 400, i1 false)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !560
  %.not.i = icmp eq i64 %i.i, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit202

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !554, !noalias !9727
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.019.026.i.idx
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.l = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !388
  %i.m = icmp eq i32 %i.l, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond.not = select i1 %i.m, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.loopexit202, !llvm.loop !178

.loopexit202:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.m, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 400) #27
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !554  ; 3 uses
  %i.p = load i64, ptr %i.b, align 8, !tbaa !560  ; 5 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.loopexit202
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.q = add i64 %.05.i.i.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !388
  %i.r = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !9700

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.p, 4
  br i1 %i.u, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !388
  %i.v = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !388
  %i.y = add i32 %i.v, -2
  store i32 %i.y, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !388
  %i.aa = add i32 %i.v, -3
  store i32 %i.aa, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.ac = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ab, align 4, !tbaa !388
  %i.ad = add i32 %i.v, -4
  store i32 %i.ad, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i36.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i36.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !179

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.loopexit202
  %i.af = load i64, ptr %i.c, align 8, !tbaa !556 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i1.i.i.i.i, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.ag = shl i64 %i.af, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.ag) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i, label %bb.e, label %bb.ae

bb.e:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9728)
  %i.ah = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9728 ; 9 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !554, !noalias !9728
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store i64 100, ptr %i.ai, align 8, !tbaa !555, !noalias !9728
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !556, !noalias !9728
  %i.ak = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.f, !noalias !9728 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27, !noalias !9728
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.e
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !554, !noalias !9728
  store i64 100, ptr %i.aj, align 8, !tbaa !261, !noalias !9728
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i39 = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ak, i8 0, i64 400, i1 false), !tbaa !388, !noalias !9728
  %i.am = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i39, 100
  store i32 %i.am, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9728
  store ptr %i.ah, ptr %1, align 8, !tbaa !9725, !alias.scope !9728
  %i.an = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %bb.g unwind label %.body46, !noalias !9729 ; 3 uses

.body46:                                          ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEJjS7_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.an, i8 0, i64 400, i1 false)
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !560
  %.not.i49 = icmp eq i64 %i.ap, 100
  br i1 %.not.i49, label %.lr.ph.i53.preheader, label %.loopexit201

.lr.ph.i53.preheader:                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !554, !noalias !9730
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader
  %.sroa.019.026.i54.idx = phi i64 [ %.sroa.019.026.i54.add, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.015.025.i55 = phi ptr [ %i.au, %.lr.ph.i53 ], [ %i.an, %.lr.ph.i53.preheader ] ; 2 uses
  %.sroa.019.026.i54.ptr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.019.026.i54.idx
  %i.ar = load i32, ptr %.sroa.015.025.i55, align 4, !tbaa !247
  %i.as = load i32, ptr %.sroa.019.026.i54.ptr, align 4, !tbaa !388
  %i.at = icmp eq i32 %i.as, %i.ar                ; 2 uses
  %.sroa.019.026.i54.add = add nuw nsw i64 %.sroa.019.026.i54.idx, 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i55, i64 4
  %.not23.i56 = icmp ne i64 %.sroa.019.026.i54.add, 400
  %or.cond219.not = select i1 %i.at, i1 %.not23.i56, i1 false
  br i1 %or.cond219.not, label %.lr.ph.i53, label %.loopexit201, !llvm.loop !178

.loopexit201:                                     ; preds = %.lr.ph.i53, %bb.g
  %.2.i50 = phi i1 [ false, %bb.g ], [ %i.at, %.lr.ph.i53 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 400) #27
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !554 ; 3 uses
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !560 ; 5 uses
  %.not3.i.i.i.i.i63 = icmp eq i64 %i.aw, 0
  br i1 %.not3.i.i.i.i.i63, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %.loopexit201
  %xtraiter235 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.05.i.i.i.i.i65.prol = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ], [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ]
  %storemerge4.i.i.i.i.i66.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ], [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ] ; 2 uses
  %prol.iter237 = phi i64 [ %prol.iter237.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.ax = add i64 %.05.i.i.i.i.i65.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66.prol, align 4, !tbaa !388
  %i.ay = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66.prol, i64 4 ; 2 uses
  %prol.iter237.next = add i64 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i64 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !9707

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.05.i.i.i.i.i65.unr = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i64.prol ]
  %storemerge4.i.i.i.i.i66.unr = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i64.prol ]
  %i.bb = icmp ult i64 %i.aw, 4
  br i1 %i.bb, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.05.i.i.i.i.i65 = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i64 ], [ %.05.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ]
  %storemerge4.i.i.i.i.i66 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i64 ], [ %storemerge4.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i66, align 4, !tbaa !388
  %i.bc = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !388
  %i.bf = add i32 %i.bc, -2
  store i32 %i.bf, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 8
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !388
  %i.bh = add i32 %i.bc, -3
  store i32 %i.bh, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 12
  %i.bj = add i64 %.05.i.i.i.i.i65, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !388
  %i.bk = add i32 %i.bc, -4
  store i32 %i.bk, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i66, i64 16
  %.not.i.i.i.i.i67.3 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i67.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, label %.lr.ph.i.i.i.i.i64, !llvm.loop !179

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.loopexit201
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !556 ; 2 uses
  %.not.i1.i.i.i.i69 = icmp eq i64 %i.bm, 0
  br i1 %.not.i1.i.i.i.i69, label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68
  %i.bn = shl i64 %i.bm, 2
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.bn) #26
  br label %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71

_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i68, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.2.i50, label %bb.i, label %bb.ae

bb.i:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9731)
  %i.bo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9731 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !9731
  %i.bp = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77 unwind label %bb.j, !noalias !9731 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27, !noalias !9731
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77: ; preds = %bb.i
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !277, !noalias !9731
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 400 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !278, !noalias !9731
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bp, i8 0, i64 400, i1 false)
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !288, !noalias !9731
  store ptr %i.bo, ptr %2, align 8, !tbaa !348, !alias.scope !9731
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.k unwind label %bb.o       ; 7 uses

bb.k:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  store ptr null, ptr %i.bu, align 8, !tbaa !554, !noalias !9732
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  store i64 100, ptr %i.bv, align 8, !tbaa !555, !noalias !9732
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !556, !noalias !9732
  %i.bx = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.m unwind label %bb.l, !noalias !9732 ; 7 uses

bb.l:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27, !noalias !9732
  br label %.body82

bb.m:                                             ; preds = %bb.k
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i80 = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.bx, i8 0, i64 400, i1 false), !tbaa !388, !noalias !9732
  %i.bz = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i80, 100 ; 3 uses
  store i32 %i.bz, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9732
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !555, !noalias !9733 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false), !noalias !9733
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !288
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  %.not.i86 = icmp eq i64 %i.ca, %i.cg
  br i1 %.not.i86, label %bb.n, label %.loopexit183

bb.n:                                             ; preds = %bb.m
  %.idx.i88 = shl nsw i64 %i.ca, 2
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i88
  %.not2324.i89 = icmp eq i64 %i.ca, 0
  br i1 %.not2324.i89, label %bb.p, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.n, %.lr.ph.i90
  %.sroa.019.026.i91 = phi ptr [ %i.cl, %.lr.ph.i90 ], [ %i.bx, %bb.n ] ; 2 uses
  %.sroa.015.025.i92 = phi ptr [ %i.cm, %.lr.ph.i90 ], [ %i.cc, %bb.n ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.015.025.i92, align 4, !tbaa !247
  %i.cj = load i32, ptr %.sroa.019.026.i91, align 4, !tbaa !388
  %i.ck = icmp eq i32 %i.cj, %i.ci                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i91, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i92, i64 4
  %.not23.i93 = icmp ne ptr %i.cl, %i.ch
  %or.cond222.not = select i1 %i.ck, i1 %.not23.i93, i1 false
  br i1 %or.cond222.not, label %.lr.ph.i90, label %.loopexit183, !llvm.loop !178

bb.o:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit77
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.loopexit183:                                     ; preds = %.lr.ph.i90, %bb.m
  %.2.i87 = phi i1 [ false, %bb.m ], [ %i.ck, %.lr.ph.i90 ] ; 2 uses
  %.not3.i.i.i.i.i96 = icmp eq i64 %i.ca, 0
  br i1 %.not3.i.i.i.i.i96, label %bb.p, label %.lr.ph.i.i.i.i.i97.preheader

.lr.ph.i.i.i.i.i97.preheader:                     ; preds = %.loopexit183
  %min.iters.check = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i97.preheader228, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i97.preheader
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.co = and i64 %i.ca, 7
  %i.cp = shl i64 %n.vec, 2
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cp
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bz, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cr, %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi205 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ct, align 4, !tbaa !388
  %i.cu = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.cv = add <4 x i32> %vec.phi205, splat (i32 -1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !9714

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cv, %i.cu
  %i.cx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i97.preheader228

.lr.ph.i.i.i.i.i97.preheader228:                  ; preds = %.lr.ph.i.i.i.i.i97.preheader, %middle.block
  %.ph = phi i32 [ %i.bz, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cx, %middle.block ]
  %.05.i.i.i.i.i98.ph = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.co, %middle.block ]
  %storemerge4.i.i.i.i.i99.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i97.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %.lr.ph.i.i.i.i.i97.preheader228, %.lr.ph.i.i.i.i.i97
  %i.cy = phi i32 [ %i.da, %.lr.ph.i.i.i.i.i97 ], [ %.ph, %.lr.ph.i.i.i.i.i97.preheader228 ]
  %.05.i.i.i.i.i98 = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i97 ], [ %.05.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i97.preheader228 ]
  %storemerge4.i.i.i.i.i99 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i97 ], [ %storemerge4.i.i.i.i.i99.ph, %.lr.ph.i.i.i.i.i97.preheader228 ] ; 2 uses
  %i.cz = add i64 %.05.i.i.i.i.i98, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i99, align 4, !tbaa !388
  %i.da = add i32 %i.cy, -1                       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i99, i64 4
  %.not.i.i.i.i.i100 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i.i.i100, label %.loopexit, label %.lr.ph.i.i.i.i.i97, !llvm.loop !9715

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i97, %middle.block
  %.lcssa204 = phi i32 [ %i.cx, %middle.block ], [ %i.da, %.lr.ph.i.i.i.i.i97 ]
  store i32 %.lcssa204, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit183, %bb.n
  %.2.i87177 = phi i1 [ %.2.i87, %.loopexit183 ], [ true, %bb.n ], [ %.2.i87, %.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 400) #26
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !554 ; 3 uses
  %i.dd = load i64, ptr %i.bv, align 8, !tbaa !560 ; 5 uses
  %.not3.i.i.i.i.i106 = icmp eq i64 %i.dd, 0
  br i1 %.not3.i.i.i.i.i106, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107.preheader

.lr.ph.i.i.i.i.i107.preheader:                    ; preds = %bb.p
  %xtraiter238 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol

.lr.ph.i.i.i.i.i107.prol:                         ; preds = %.lr.ph.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i107.prol
  %.05.i.i.i.i.i108.prol = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ]
  %storemerge4.i.i.i.i.i109.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ] ; 2 uses
  %prol.iter240 = phi i64 [ %prol.iter240.next, %.lr.ph.i.i.i.i.i107.prol ], [ 0, %.lr.ph.i.i.i.i.i107.preheader ]
  %i.de = add i64 %.05.i.i.i.i.i108.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109.prol, align 4, !tbaa !388
  %i.df = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109.prol, i64 4 ; 2 uses
  %prol.iter240.next = add i64 %prol.iter240, 1   ; 2 uses
  %prol.iter240.cmp.not = icmp eq i64 %prol.iter240.next, %xtraiter238
  br i1 %prol.iter240.cmp.not, label %.lr.ph.i.i.i.i.i107.prol.loopexit, label %.lr.ph.i.i.i.i.i107.prol, !llvm.loop !9716

.lr.ph.i.i.i.i.i107.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i107.prol, %.lr.ph.i.i.i.i.i107.preheader
  %.05.i.i.i.i.i108.unr = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i107.prol ]
  %storemerge4.i.i.i.i.i109.unr = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i107.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i107.prol ]
  %i.di = icmp ult i64 %i.dd, 4
  br i1 %i.di, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107

.lr.ph.i.i.i.i.i107:                              ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107
  %.05.i.i.i.i.i108 = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i107 ], [ %.05.i.i.i.i.i108.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ]
  %storemerge4.i.i.i.i.i109 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i107 ], [ %storemerge4.i.i.i.i.i109.unr, %.lr.ph.i.i.i.i.i107.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i109, align 4, !tbaa !388
  %i.dj = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 4
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !388
  %i.dm = add i32 %i.dj, -2
  store i32 %i.dm, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 8
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !388
  %i.do = add i32 %i.dj, -3
  store i32 %i.do, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 12
  %i.dq = add i64 %.05.i.i.i.i.i108, -4           ; 2 uses
  store i32 -2147483648, ptr %i.dp, align 4, !tbaa !388
  %i.dr = add i32 %i.dj, -4
  store i32 %i.dr, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i109, i64 16
  %.not.i.i.i.i.i110.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i110.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111, label %.lr.ph.i.i.i.i.i107, !llvm.loop !179

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111: ; preds = %.lr.ph.i.i.i.i.i107.prol.loopexit, %.lr.ph.i.i.i.i.i107, %bb.p
  %i.dt = load i64, ptr %i.bw, align 8, !tbaa !556 ; 2 uses
  %.not.i1.i.i.i.i112 = icmp eq i64 %i.dt, 0
  br i1 %.not.i1.i.i.i.i112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  %i.du = shl i64 %i.dt, 2
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.du) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i111
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #27
  %i.dv = load ptr, ptr %i.bo, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i116 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i116, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %i.bs, align 8, !tbaa !278
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118: ; preds = %bb.r, %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.2.i87177, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9734)
  %i.ea = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !9734 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false), !noalias !9734
  %i.eb = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124 unwind label %bb.u, !noalias !9734 ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27, !noalias !9734
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124: ; preds = %bb.t
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !277, !noalias !9734
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 400 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !278, !noalias !9734
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.eb, i8 0, i64 400, i1 false)
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !288, !noalias !9734
  store ptr %i.ea, ptr %3, align 8, !tbaa !348, !alias.scope !9734
  %i.eg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.v unwind label %bb.y       ; 7 uses

bb.v:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  store ptr null, ptr %i.eg, align 8, !tbaa !554, !noalias !9735
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  store i64 100, ptr %i.eh, align 8, !tbaa !555, !noalias !9735
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !556, !noalias !9735
  %i.ej = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %bb.x unwind label %bb.w, !noalias !9735 ; 31 uses

bb.w:                                             ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27, !noalias !9735
  br label %.body129

bb.x:                                             ; preds = %bb.v
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i127 = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9735
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ej, i8 0, i64 400, i1 false), !tbaa !388, !noalias !9735
  %i.el = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i127, 100 ; 2 uses
  store i32 %i.el, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !9735
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false), !noalias !9736
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !288
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %.not.i133 = icmp eq i64 %i.eq, 400
  br i1 %.not.i133, label %.lr.ph.i137, label %vector.ph208

.lr.ph.i137:                                      ; preds = %bb.x, %.lr.ph.i137
  %.sroa.019.026.i138.idx = phi i64 [ %.sroa.019.026.i138.add, %.lr.ph.i137 ], [ 0, %bb.x ] ; 2 uses
  %.sroa.015.025.i139 = phi ptr [ %i.eu, %.lr.ph.i137 ], [ %i.en, %bb.x ] ; 2 uses
  %.sroa.019.026.i138.ptr = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.019.026.i138.idx
  %i.er = load i32, ptr %.sroa.015.025.i139, align 4, !tbaa !247
  %i.es = load i32, ptr %.sroa.019.026.i138.ptr, align 4, !tbaa !388
  %i.et = icmp eq i32 %i.es, %i.er                ; 2 uses
  %.sroa.019.026.i138.add = add nuw nsw i64 %.sroa.019.026.i138.idx, 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i139, i64 4
  %.not23.i140 = icmp ne i64 %.sroa.019.026.i138.add, 400
  %or.cond224.not = select i1 %i.et, i1 %.not23.i140, i1 false
  br i1 %or.cond224.not, label %.lr.ph.i137, label %vector.ph208, !llvm.loop !178

.body82:                                          ; preds = %bb.o, %bb.l
  %.pn25.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.cn, %bb.o ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.y:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit124
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body129

vector.ph208:                                     ; preds = %.lr.ph.i137, %bb.x
  %.2.i134 = phi i1 [ false, %bb.x ], [ %i.et, %.lr.ph.i137 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 384
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %i.ej, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ex, align 4, !tbaa !388
  %next.gep213.1 = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.1, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ey, align 4, !tbaa !388
  %next.gep213.2 = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.2, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ez, align 4, !tbaa !388
  %next.gep213.3 = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.3, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fa, align 4, !tbaa !388
  %next.gep213.4 = getelementptr inbounds nuw i8, ptr %i.ej, i64 128
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 144
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.4, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fb, align 4, !tbaa !388
  %next.gep213.5 = getelementptr inbounds nuw i8, ptr %i.ej, i64 160
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 176
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.5, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fc, align 4, !tbaa !388
  %next.gep213.6 = getelementptr inbounds nuw i8, ptr %i.ej, i64 192
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 208
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.6, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fd, align 4, !tbaa !388
  %next.gep213.7 = getelementptr inbounds nuw i8, ptr %i.ej, i64 224
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 240
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.7, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fe, align 4, !tbaa !388
  %next.gep213.8 = getelementptr inbounds nuw i8, ptr %i.ej, i64 256
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ej, i64 272
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.8, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.ff, align 4, !tbaa !388
  %next.gep213.9 = getelementptr inbounds nuw i8, ptr %i.ej, i64 288
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 304
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.9, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fg, align 4, !tbaa !388
  %next.gep213.10 = getelementptr inbounds nuw i8, ptr %i.ej, i64 320
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ej, i64 336
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.10, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fh, align 4, !tbaa !388
  %next.gep213.11 = getelementptr inbounds nuw i8, ptr %i.ej, i64 352
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ej, i64 368
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep213.11, align 4, !tbaa !388
  store <4 x i32> splat (i32 -2147483648), ptr %i.fi, align 4, !tbaa !388
  %i.fj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.el, i64 0
  %bin.rdx216 = add <4 x i32> %i.fj, splat (i32 -24)
  %i.fk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx216)
  store i32 -2147483648, ptr %i.ew, align 4, !tbaa !388
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 388
  store i32 -2147483648, ptr %i.fl, align 4, !tbaa !388
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ej, i64 392
  store i32 -2147483648, ptr %i.fm, align 4, !tbaa !388
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ej, i64 396
  store i32 -2147483648, ptr %i.fn, align 4, !tbaa !388
  %i.fo = add i32 %i.fk, -4
  store i32 %i.fo, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 400) #26
  %i.fp = load ptr, ptr %i.eg, align 8, !tbaa !554 ; 3 uses
  %i.fq = load i64, ptr %i.eh, align 8, !tbaa !560 ; 5 uses
  %.not3.i.i.i.i.i153 = icmp eq i64 %i.fq, 0
  br i1 %.not3.i.i.i.i.i153, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154.preheader

.lr.ph.i.i.i.i.i154.preheader:                    ; preds = %vector.ph208
  %xtraiter241 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol

.lr.ph.i.i.i.i.i154.prol:                         ; preds = %.lr.ph.i.i.i.i.i154.preheader, %.lr.ph.i.i.i.i.i154.prol
  %.05.i.i.i.i.i155.prol = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fq, %.lr.ph.i.i.i.i.i154.preheader ]
  %storemerge4.i.i.i.i.i156.prol = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i154.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ] ; 2 uses
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.lr.ph.i.i.i.i.i154.prol ], [ 0, %.lr.ph.i.i.i.i.i154.preheader ]
  %i.fr = add i64 %.05.i.i.i.i.i155.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156.prol, align 4, !tbaa !388
  %i.fs = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156.prol, i64 4 ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.lr.ph.i.i.i.i.i154.prol.loopexit, label %.lr.ph.i.i.i.i.i154.prol, !llvm.loop !9723

.lr.ph.i.i.i.i.i154.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i154.prol, %.lr.ph.i.i.i.i.i154.preheader
  %.05.i.i.i.i.i155.unr = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i154.prol ]
  %storemerge4.i.i.i.i.i156.unr = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i154.preheader ], [ %i.fu, %.lr.ph.i.i.i.i.i154.prol ]
  %i.fv = icmp ult i64 %i.fq, 4
  br i1 %i.fv, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154

.lr.ph.i.i.i.i.i154:                              ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154
  %.05.i.i.i.i.i155 = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i154 ], [ %.05.i.i.i.i.i155.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ]
  %storemerge4.i.i.i.i.i156 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i154 ], [ %storemerge4.i.i.i.i.i156.unr, %.lr.ph.i.i.i.i.i154.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i156, align 4, !tbaa !388
  %i.fw = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.fx = add i32 %i.fw, -1
  store i32 %i.fx, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.fy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 4
  store i32 -2147483648, ptr %i.fy, align 4, !tbaa !388
  %i.fz = add i32 %i.fw, -2
  store i32 %i.fz, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 8
  store i32 -2147483648, ptr %i.ga, align 4, !tbaa !388
  %i.gb = add i32 %i.fw, -3
  store i32 %i.gb, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 12
  %i.gd = add i64 %.05.i.i.i.i.i155, -4           ; 2 uses
  store i32 -2147483648, ptr %i.gc, align 4, !tbaa !388
  %i.ge = add i32 %i.fw, -4
  store i32 %i.ge, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.gf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i156, i64 16
  %.not.i.i.i.i.i157.3 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i.i.i157.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158, label %.lr.ph.i.i.i.i.i154, !llvm.loop !179

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158: ; preds = %.lr.ph.i.i.i.i.i154.prol.loopexit, %.lr.ph.i.i.i.i.i154, %vector.ph208
  %i.gg = load i64, ptr %i.ei, align 8, !tbaa !556 ; 2 uses
  %.not.i1.i.i.i.i159 = icmp eq i64 %i.gg, 0
  br i1 %.not.i1.i.i.i.i159, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  %i.gh = shl i64 %i.gg, 2
  tail call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.gh) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i158
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 24) #27
  %i.gi = load ptr, ptr %i.ea, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i163, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = load ptr, ptr %i.ee, align 8, !tbaa !278
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165: ; preds = %bb.aa, %bb.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.2.i134, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165
  %i.gn = tail call noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE()
  %.not = icmp eq i32 %i.gn, 0
  br i1 %.not, label %bb.ad, label %bb.ae

.body129:                                         ; preds = %bb.y, %bb.w
  %.pn28.pn = phi { ptr, i32 } [ %i.ek, %bb.w ], [ %i.ev, %bb.y ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

bb.ad:                                            ; preds = %bb.ac
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 2 uses
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.go), !inline_history !2 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit, %bb.ad
  %.421 = phi i32 [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit ], [ 1, %bb.ac ], [ 0, %bb.ad ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit165 ], [ 1, %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit118 ], [ 1, %_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev.exit71 ]
end_hunk_5
begin_hunk_6_@_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.bb = ptrtoint ptr %i.x to i64
  %i.bc = sub i64 %i.bb, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 4 %2, i64 %i.bc, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvPimSB_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !260
  %i.be = shl i64 %i.bd, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.be) #26
  %.pre = load i64, ptr %i.d, align 8, !tbaa !285
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvPimSB_mT_.exit

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvPimSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %bb.i
  %i.bf = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !251
  %i.bg = add i64 %i.bf, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !285
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.bh, ptr %0, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !534  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp eq i64 %i.b, %i.i
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !527, !noalias !10292 ; 2 uses
  %.idx = shl nsw i64 %i.b, 2
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.019.026 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %.sroa.015.025, align 4, !tbaa !247
  %i.m = load i32, ptr %.sroa.019.026, align 4, !tbaa !355
  %i.n = icmp eq i32 %i.m, %i.l                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 4
  %.not23 = icmp ne ptr %i.o, %i.k
  %or.cond.not = select i1 %i.n, i1 %.not23, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !172

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !573    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !527  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !534  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !355
  %i.f = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !10293

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !355
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !355
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !355
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !355
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !529  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #26
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test11movable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10300)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !10300 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !10300
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !10300 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !10300
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !10300
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !10300
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !10300
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !10300
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !527, !noalias !10301
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !528, !noalias !10301
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !529, !noalias !10301
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit unwind label %bb.d, !noalias !10301 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !10301
  br label %.body

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !527, !noalias !10301
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !10301
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !10301
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !355, !noalias !10301
  %i.l = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !10301
  %i.m = load i64, ptr %i.h, align 8, !tbaa !528  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !355
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !172

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test11movable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test11movable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10298

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !355
  %i.af = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !355
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !355
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !355
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 400) #26
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !527 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !534 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !355
  %i.as = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !10299

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !355
  %i.aw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !355
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !355
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !355
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !529 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %1 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %5 = alloca %"class.boost::movelib::unique_ptr.366", align 8 ; 6 uses
  %6 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.boost::container::test::movable_int", align 4 ; 7 uses
  %8 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %9 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 6 uses
  %i.b = alloca [50 x i32], align 16              ; 7 uses
  %10 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %12 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 6 uses
  %i.c = alloca [50 x i32], align 16              ; 7 uses
  %13 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %18 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %25 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %26 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %27 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 22 uses
  %i.d = alloca [50 x i32], align 16              ; 22 uses
  %28 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 7 uses
  %29 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %30 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %32 = alloca %"class.std::vector", align 16     ; 7 uses
  %33 = alloca %"class.std::vector", align 16     ; 7 uses
  %34 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %38 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %39 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %40 = alloca %"class.boost::container::test::movable_int", align 4 ; 5 uses
  %41 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %42 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 6 uses
  %45 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %46 = alloca %"class.std::vector", align 16     ; 7 uses
  %47 = alloca [50 x %"class.boost::container::test::movable_int"], align 16 ; 18 uses
  %i.l = alloca [50 x i32], align 16              ; 19 uses
  %48 = alloca %"class.boost::container::vec_iterator.107", align 8 ; 2 uses
  %49 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost9container4test20test_range_insertionINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEbv()
  br i1 %i.q, label %bb.b, label %bb.il

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !10402 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !10402
  %i.s = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.c, !noalias !10402 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.ik, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn445.pn.pn.pn, %bb.ik ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27, !noalias !10402
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.s, ptr %i.r, align 8, !tbaa !277, !noalias !10402
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 400 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !278, !noalias !10402
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.s, i8 0, i64 400, i1 false)
  store ptr %i.u, ptr %i.w, align 8, !tbaa !288, !noalias !10402
  store ptr %i.r, ptr %4, align 8, !tbaa !348, !alias.scope !10402
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.d unwind label %bb.g       ; 8 uses

bb.d:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.x, align 8, !tbaa !527, !noalias !10403
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store i64 100, ptr %i.y, align 8, !tbaa !528, !noalias !10403
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8, !tbaa !529, !noalias !10403
  %i.aa = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit unwind label %bb.e, !noalias !10403 ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27, !noalias !10403
  br label %.body

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %bb.d
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !527, !noalias !10403
  store i64 100, ptr %i.z, align 8, !tbaa !261, !noalias !10403
  %_ZN5boost9container4test11movable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !10403
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.aa, i8 0, i64 400, i1 false), !tbaa !355, !noalias !10403
  %i.ac = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !10403
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !528 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !288
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !277 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr exact i64 %i.ai, 2
  %.not.i470 = icmp eq i64 %i.ad, %i.aj
  br i1 %.not.i470, label %bb.f, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  %.not2324.i = icmp eq i64 %i.ad, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.al = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.am = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !355
  %i.an = icmp eq i32 %i.am, %i.al                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.ao, %i.ak
  %or.cond.not = select i1 %i.an, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !172

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %.2.i861 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test11movable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.ar = phi i32 [ %i.at, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test11movable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.as = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !355
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10306

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.av = icmp ult i64 %i.ad, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !355
  %i.aw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !355
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !355
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !355
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i472.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i472.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.f
  %.2.i861872 = phi i1 [ true, %bb.f ], [ %.2.i861, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i861, %.lr.ph.i.i.i.i.i ], [ %.2.i861, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 400) #26
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !527 ; 3 uses
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !534 ; 5 uses
  %.not3.i.i.i.i.i474 = icmp eq i64 %i.bh, 0
  br i1 %.not3.i.i.i.i.i474, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475.preheader

.lr.ph.i.i.i.i.i475.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %xtraiter1164 = and i64 %i.bh, 3                ; 2 uses
  %lcmp.mod1165.not = icmp eq i64 %xtraiter1164, 0
  br i1 %lcmp.mod1165.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol

.lr.ph.i.i.i.i.i475.prol:                         ; preds = %.lr.ph.i.i.i.i.i475.preheader, %.lr.ph.i.i.i.i.i475.prol
  %.05.i.i.i.i.i476.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i475.preheader ]
  %storemerge4.i.i.i.i.i477.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bg, %.lr.ph.i.i.i.i.i475.preheader ] ; 2 uses
  %prol.iter1166 = phi i64 [ %prol.iter1166.next, %.lr.ph.i.i.i.i.i475.prol ], [ 0, %.lr.ph.i.i.i.i.i475.preheader ]
  %i.bi = add i64 %.05.i.i.i.i.i476.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477.prol, align 4, !tbaa !355
  %i.bj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477.prol, i64 4 ; 2 uses
  %prol.iter1166.next = add i64 %prol.iter1166, 1 ; 2 uses
  %prol.iter1166.cmp.not = icmp eq i64 %prol.iter1166.next, %xtraiter1164
  br i1 %prol.iter1166.cmp.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol, !llvm.loop !10307

.lr.ph.i.i.i.i.i475.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i475.prol, %.lr.ph.i.i.i.i.i475.preheader
  %.05.i.i.i.i.i476.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i475.prol ]
  %storemerge4.i.i.i.i.i477.unr = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i475.prol ]
  %i.bm = icmp ult i64 %i.bh, 4
  br i1 %i.bm, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475

.lr.ph.i.i.i.i.i475:                              ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475
  %.05.i.i.i.i.i476 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i475 ], [ %.05.i.i.i.i.i476.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ]
  %storemerge4.i.i.i.i.i477 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i475 ], [ %storemerge4.i.i.i.i.i477.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477, align 4, !tbaa !355
  %i.bn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 4
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !355
  %i.bq = add i32 %i.bn, -2
  store i32 %i.bq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 8
  store i32 -2147483648, ptr %i.br, align 4, !tbaa !355
  %i.bs = add i32 %i.bn, -3
  store i32 %i.bs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 12
  %i.bu = add i64 %.05.i.i.i.i.i476, -4           ; 2 uses
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !355
  %i.bv = add i32 %i.bn, -4
  store i32 %i.bv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 16
  %.not.i.i.i.i.i478.3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i.i478.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475, !llvm.loop !173

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479: ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.bx = load i64, ptr %i.z, align 8, !tbaa !529 ; 2 uses
  %.not.i1.i.i.i.i480 = icmp eq i64 %i.bx, 0
  br i1 %.not.i1.i.i.i.i480, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479
  %i.by = shl i64 %i.bx, 2
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.by) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i484 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i484, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !278
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.2.i861872, label %bb.k, label %bb.il

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10404)
  %i.ce = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !10404 ; 102 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false), !noalias !10404
  store ptr %i.ce, ptr %5, align 8, !tbaa !532, !alias.scope !10404
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10405)
  %i.cf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.l unwind label %bb.u       ; 89 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false), !noalias !10405
  store ptr %i.cf, ptr %6, align 8, !tbaa !348, !alias.scope !10405
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 36 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !534 ; 9 uses
  %i.ci = icmp ugt i64 %i.ch, 100
  br i1 %i.ci, label %.lr.ph.i.preheader.i.i.i, label %bb.m
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE6insertINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl21is_not_input_iteratorISG_EENSH_5bool_ILb0EEESP_E4typeE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !529  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !528  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !527    ; 8 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !534  ; 7 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge, label %.lr.ph.i.i.i

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.pre = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !355
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !355
  %i.w = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !185

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge
  %i.aa = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.x, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test11movable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !247
  store i32 %i.ab, ptr %.015.lcssa.i.i.i, align 4, !tbaa !355
  %i.ac = add i32 %i.aa, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !355
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !355
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !355
  %i.af = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !185

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !355
  %i.ak = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !10742

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !355
  %i.ao = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !355
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !355
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !355
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !173

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !529
  %i.az = shl i64 %i.ay, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.az) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !528
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %.loopexit.i
  %i.ba = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %i.s to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store ptr %i.r, ptr %1, align 8, !tbaa !527
  %i.be = add i64 %i.ba, %3
  store i64 %i.be, ptr %i.d, align 8, !tbaa !528
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.bf = getelementptr inbounds i8, ptr %i.r, i64 %i.bd
  store ptr %i.bf, ptr %0, align 8, !tbaa !444
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.385") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !536
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !537
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !538
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !tbaa !536
  store i64 %i.c, ptr %i.e, align 8, !tbaa !261
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false), !tbaa !367
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.b
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEC2Em.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEC2Em.exit: ; preds = %.noexc, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !541
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !543  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp eq i64 %i.b, %i.i
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !536, !noalias !10745 ; 2 uses
  %.idx = shl nsw i64 %i.b, 2
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.019.026 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %.sroa.015.025, align 4, !tbaa !247
  %i.m = load i32, ptr %.sroa.019.026, align 4, !tbaa !367
  %i.n = icmp eq i32 %i.m, %i.l                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 4
  %.not23 = icmp ne ptr %i.o, %i.k
  %or.cond.not = select i1 %i.n, i1 %.not23, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !174

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !575    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !536  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !543  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !367
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !10746

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !367
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !367
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !367
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !367
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !538  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #26
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test24movable_and_copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10753)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !10753 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !10753
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !10753 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !10753
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !10753
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !10753
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !10753
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !10753
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !536, !noalias !10754
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !537, !noalias !10754
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !538, !noalias !10754
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit unwind label %bb.d, !noalias !10754 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !10754
  br label %.body

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !536, !noalias !10754
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !10754
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !10754
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !367, !noalias !10754
  %i.l = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !10754
  %i.m = load i64, ptr %i.h, align 8, !tbaa !537  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !367
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !174

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10751

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !367
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !367
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !367
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !367
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 400) #26
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !536 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !543 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !367
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !10752

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !367
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !367
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !367
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !367
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !538 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %1 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %5 = alloca %"class.boost::movelib::unique_ptr.385", align 8 ; 6 uses
  %6 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 7 uses
  %8 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %9 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 6 uses
  %i.b = alloca [50 x i32], align 16              ; 7 uses
  %10 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %12 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 6 uses
  %i.c = alloca [50 x i32], align 16              ; 7 uses
  %13 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %18 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %25 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %26 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %27 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 22 uses
  %i.d = alloca [50 x i32], align 16              ; 22 uses
  %28 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 7 uses
  %29 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %30 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %32 = alloca %"class.std::vector", align 16     ; 7 uses
  %33 = alloca %"class.std::vector", align 16     ; 7 uses
  %34 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %38 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %39 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %40 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  %41 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %42 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 6 uses
  %45 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %46 = alloca %"class.std::vector", align 16     ; 7 uses
  %47 = alloca [50 x %"class.boost::container::test::movable_and_copyable_int"], align 16 ; 18 uses
  %i.l = alloca [50 x i32], align 16              ; 19 uses
  %48 = alloca %"class.boost::container::vec_iterator.133", align 8 ; 2 uses
  %49 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost9container4test20test_range_insertionINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEbv()
  br i1 %i.q, label %bb.b, label %bb.io

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10855)
  %i.r = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !10855 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !10855
  %i.s = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.c, !noalias !10855 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.in, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn445.pn.pn.pn, %bb.in ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27, !noalias !10855
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.s, ptr %i.r, align 8, !tbaa !277, !noalias !10855
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 400 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !278, !noalias !10855
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.s, i8 0, i64 400, i1 false)
  store ptr %i.u, ptr %i.w, align 8, !tbaa !288, !noalias !10855
  store ptr %i.r, ptr %4, align 8, !tbaa !348, !alias.scope !10855
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.d unwind label %bb.g       ; 8 uses

bb.d:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.x, align 8, !tbaa !536, !noalias !10856
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store i64 100, ptr %i.y, align 8, !tbaa !537, !noalias !10856
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8, !tbaa !538, !noalias !10856
  %i.aa = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit unwind label %bb.e, !noalias !10856 ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27, !noalias !10856
  br label %.body

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %bb.d
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !536, !noalias !10856
  store i64 100, ptr %i.z, align 8, !tbaa !261, !noalias !10856
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !10856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.aa, i8 0, i64 400, i1 false), !tbaa !367, !noalias !10856
  %i.ac = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 100
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !10856
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !537 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !288
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !277 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr exact i64 %i.ai, 2
  %.not.i470 = icmp eq i64 %i.ad, %i.aj
  br i1 %.not.i470, label %bb.f, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  %.not2324.i = icmp eq i64 %i.ad, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.al = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.am = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !367
  %i.an = icmp eq i32 %i.am, %i.al                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.ao, %i.ak
  %or.cond.not = select i1 %i.an, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !174

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %.2.i861 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.ar = phi i32 [ %i.at, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.as = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !367
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10759

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.av = icmp ult i64 %i.ad, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !367
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !367
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !367
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !367
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i472.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i472.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.f
  %.2.i861872 = phi i1 [ true, %bb.f ], [ %.2.i861, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i861, %.lr.ph.i.i.i.i.i ], [ %.2.i861, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 400) #26
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !536 ; 3 uses
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !543 ; 5 uses
  %.not3.i.i.i.i.i474 = icmp eq i64 %i.bh, 0
  br i1 %.not3.i.i.i.i.i474, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475.preheader

.lr.ph.i.i.i.i.i475.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %xtraiter1164 = and i64 %i.bh, 3                ; 2 uses
  %lcmp.mod1165.not = icmp eq i64 %xtraiter1164, 0
  br i1 %lcmp.mod1165.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol

.lr.ph.i.i.i.i.i475.prol:                         ; preds = %.lr.ph.i.i.i.i.i475.preheader, %.lr.ph.i.i.i.i.i475.prol
  %.05.i.i.i.i.i476.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i475.preheader ]
  %storemerge4.i.i.i.i.i477.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bg, %.lr.ph.i.i.i.i.i475.preheader ] ; 2 uses
  %prol.iter1166 = phi i64 [ %prol.iter1166.next, %.lr.ph.i.i.i.i.i475.prol ], [ 0, %.lr.ph.i.i.i.i.i475.preheader ]
  %i.bi = add i64 %.05.i.i.i.i.i476.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477.prol, align 4, !tbaa !367
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477.prol, i64 4 ; 2 uses
  %prol.iter1166.next = add i64 %prol.iter1166, 1 ; 2 uses
  %prol.iter1166.cmp.not = icmp eq i64 %prol.iter1166.next, %xtraiter1164
  br i1 %prol.iter1166.cmp.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol, !llvm.loop !10760

.lr.ph.i.i.i.i.i475.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i475.prol, %.lr.ph.i.i.i.i.i475.preheader
  %.05.i.i.i.i.i476.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i475.prol ]
  %storemerge4.i.i.i.i.i477.unr = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i475.prol ]
  %i.bm = icmp ult i64 %i.bh, 4
  br i1 %i.bm, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475

.lr.ph.i.i.i.i.i475:                              ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475
  %.05.i.i.i.i.i476 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i475 ], [ %.05.i.i.i.i.i476.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ]
  %storemerge4.i.i.i.i.i477 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i475 ], [ %storemerge4.i.i.i.i.i477.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477, align 4, !tbaa !367
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 4
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !367
  %i.bq = add i32 %i.bn, -2
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 8
  store i32 -2147483648, ptr %i.br, align 4, !tbaa !367
  %i.bs = add i32 %i.bn, -3
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 12
  %i.bu = add i64 %.05.i.i.i.i.i476, -4           ; 2 uses
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !367
  %i.bv = add i32 %i.bn, -4
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 16
  %.not.i.i.i.i.i478.3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i.i478.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475, !llvm.loop !175

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479: ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.bx = load i64, ptr %i.z, align 8, !tbaa !538 ; 2 uses
  %.not.i1.i.i.i.i480 = icmp eq i64 %i.bx, 0
  br i1 %.not.i1.i.i.i.i480, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479
  %i.by = shl i64 %i.bx, 2
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.by) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #27
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i484 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i484, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !278
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.2.i861872, label %bb.k, label %bb.io

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10857)
  %i.ce = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !10857 ; 103 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false), !noalias !10857
  store ptr %i.ce, ptr %5, align 8, !tbaa !541, !alias.scope !10857
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10858)
  %i.cf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.l unwind label %bb.u       ; 90 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false), !noalias !10858
  store ptr %i.cf, ptr %6, align 8, !tbaa !348, !alias.scope !10858
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 36 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !543 ; 9 uses
  %i.ci = icmp ugt i64 %i.ch, 100
  br i1 %i.ci, label %.lr.ph.i.preheader.i.i.i, label %bb.m
end_hunk_7
begin_hunk_8_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6insertINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl21is_not_input_iteratorISG_EENSH_5bool_ILb0EEESP_E4typeE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !538  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !537  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !536    ; 8 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !543  ; 7 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge, label %.lr.ph.i.i.i

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !367
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !367
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !191

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge
  %i.aa = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.x, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !247
  store i32 %i.ab, ptr %.015.lcssa.i.i.i, align 4, !tbaa !367
  %i.ac = add i32 %i.aa, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !367
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !367
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !367
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !191

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !367
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !11460

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !367
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !367
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !367
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !367
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !175

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !538
  %i.az = shl i64 %i.ay, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.az) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !537
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %.loopexit.i
  %i.ba = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %i.s to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store ptr %i.r, ptr %1, align 8, !tbaa !536
  %i.be = add i64 %i.ba, %3
  store i64 %i.be, ptr %i.d, align 8, !tbaa !537
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.bf = getelementptr inbounds i8, ptr %i.r, i64 %i.bd
  store ptr %i.bf, ptr %0, align 8, !tbaa !451
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.408") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !545
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !546
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !547
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !tbaa !545
  store i64 %i.c, ptr %i.e, align 8, !tbaa !261
  %_ZN5boost9container4test12copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false), !tbaa !318
  %i.h = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, %i.b
  store i32 %i.h, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEC2Em.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEC2Em.exit: ; preds = %.noexc, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !550
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !552  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.not = icmp eq i64 %i.b, %i.i
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !545, !noalias !11463 ; 2 uses
  %.idx = shl nsw i64 %i.b, 2
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.019.026 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %.sroa.015.025, align 4, !tbaa !247
  %i.m = load i32, ptr %.sroa.019.026, align 4, !tbaa !318
  %i.n = icmp eq i32 %i.m, %i.l                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 4
  %.not23 = icmp ne ptr %i.o, %i.k
  %or.cond.not = select i1 %i.n, i1 %.not23, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !176

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !577    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !545  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !552  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !318
  %i.f = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !11464

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !318
  %i.j = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !318
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !318
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !318
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !547  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #26
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test12copyable_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11471)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !11471 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !11471
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !11471 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !11471
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !11471
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !11471
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !11471
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !11471
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !545, !noalias !11472
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !546, !noalias !11472
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !547, !noalias !11472
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit unwind label %bb.d, !noalias !11472 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !11472
  br label %.body

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !545, !noalias !11472
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !11472
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !318, !noalias !11472
  %i.l = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11472
  %i.m = load i64, ptr %i.h, align 8, !tbaa !546  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !318
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !176

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11469

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !318
  %i.af = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !318
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !318
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !318
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 400) #26
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !545 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !552 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !318
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !11470

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !318
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !318
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !318
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !318
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !547 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test27vector_move_assignable_onlyINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %0 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  %5 = alloca %"class.boost::movelib::unique_ptr.408", align 8 ; 6 uses
  %6 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %7 = alloca %"class.boost::container::test::copyable_int", align 4 ; 6 uses
  %8 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %9 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 6 uses
  %i.d = alloca [50 x i32], align 16              ; 7 uses
  %10 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %12 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 6 uses
  %i.e = alloca [50 x i32], align 16              ; 7 uses
  %13 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %15 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %18 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %25 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %26 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %27 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 22 uses
  %i.f = alloca [50 x i32], align 16              ; 22 uses
  %28 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 7 uses
  %29 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %30 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 5 uses
  %31 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %32 = alloca %"class.std::vector", align 16     ; 7 uses
  %33 = alloca %"class.std::vector", align 16     ; 7 uses
  %34 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %38 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %39 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %40 = alloca %"class.boost::container::test::copyable_int", align 4 ; 5 uses
  %41 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %42 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 6 uses
  %45 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %46 = alloca %"class.std::vector", align 16     ; 7 uses
  %47 = alloca [50 x %"class.boost::container::test::copyable_int"], align 16 ; 18 uses
  %i.n = alloca [50 x i32], align 16              ; 19 uses
  %48 = alloca %"class.boost::container::vec_iterator.38", align 8 ; 2 uses
  %49 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = tail call noundef zeroext i1 @_ZN5boost9container4test20test_range_insertionINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEbv()
  br i1 %i.s, label %bb.b, label %bb.ij

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11563)
  %i.t = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !11563 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !noalias !11563
  %i.u = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.c, !noalias !11563 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.ii, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn445.pn.pn.pn, %bb.ii ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #27, !noalias !11563
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.u, ptr %i.t, align 8, !tbaa !277, !noalias !11563
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 400 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !278, !noalias !11563
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.u, i8 0, i64 400, i1 false)
  store ptr %i.w, ptr %i.y, align 8, !tbaa !288, !noalias !11563
  store ptr %i.t, ptr %4, align 8, !tbaa !348, !alias.scope !11563
  %i.z = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.d unwind label %bb.g       ; 8 uses

bb.d:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.z, align 8, !tbaa !545, !noalias !11564
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store i64 100, ptr %i.aa, align 8, !tbaa !546, !noalias !11564
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !547, !noalias !11564
  %i.ac = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit unwind label %bb.e, !noalias !11564 ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 24) #27, !noalias !11564
  br label %.body

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %bb.d
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !545, !noalias !11564
  store i64 100, ptr %i.ab, align 8, !tbaa !261, !noalias !11564
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11564
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.ac, i8 0, i64 400, i1 false), !tbaa !318, !noalias !11564
  %i.ae = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, 100
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !11564
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !546 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !288
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !277 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 2
  %.not.i470 = icmp eq i64 %i.af, %i.al
  br i1 %.not.i470, label %bb.f, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 %i.ak
  %.not2324.i = icmp eq i64 %i.af, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ah, %bb.f ] ; 2 uses
  %i.an = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.ao = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !318
  %i.ap = icmp eq i32 %i.ao, %i.an                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.aq, %i.am
  %or.cond.not = select i1 %i.ap, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !176

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %.2.i832 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.at = phi i32 [ %i.av, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.af, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.au = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !318
  %i.av = add i32 %i.at, -1                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11477

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ax = icmp ult i64 %i.af, 4
  br i1 %i.ax, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !318
  %i.ay = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !318
  %i.bb = add i32 %i.ay, -2
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !318
  %i.bd = add i32 %i.ay, -3
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.bf = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !318
  %i.bg = add i32 %i.ay, -4
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i472.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i472.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.f
  %.2.i832843 = phi i1 [ true, %bb.f ], [ %.2.i832, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i832, %.lr.ph.i.i.i.i.i ], [ %.2.i832, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 400) #26
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !545 ; 3 uses
  %i.bj = load i64, ptr %i.aa, align 8, !tbaa !552 ; 5 uses
  %.not3.i.i.i.i.i474 = icmp eq i64 %i.bj, 0
  br i1 %.not3.i.i.i.i.i474, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475.preheader

.lr.ph.i.i.i.i.i475.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %xtraiter1132 = and i64 %i.bj, 3                ; 2 uses
  %lcmp.mod1133.not = icmp eq i64 %xtraiter1132, 0
  br i1 %lcmp.mod1133.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol

.lr.ph.i.i.i.i.i475.prol:                         ; preds = %.lr.ph.i.i.i.i.i475.preheader, %.lr.ph.i.i.i.i.i475.prol
  %.05.i.i.i.i.i476.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i475.preheader ]
  %storemerge4.i.i.i.i.i477.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i475.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i475.preheader ] ; 2 uses
  %prol.iter1134 = phi i64 [ %prol.iter1134.next, %.lr.ph.i.i.i.i.i475.prol ], [ 0, %.lr.ph.i.i.i.i.i475.preheader ]
  %i.bk = add i64 %.05.i.i.i.i.i476.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477.prol, align 4, !tbaa !318
  %i.bl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477.prol, i64 4 ; 2 uses
  %prol.iter1134.next = add i64 %prol.iter1134, 1 ; 2 uses
  %prol.iter1134.cmp.not = icmp eq i64 %prol.iter1134.next, %xtraiter1132
  br i1 %prol.iter1134.cmp.not, label %.lr.ph.i.i.i.i.i475.prol.loopexit, label %.lr.ph.i.i.i.i.i475.prol, !llvm.loop !11478

.lr.ph.i.i.i.i.i475.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i475.prol, %.lr.ph.i.i.i.i.i475.preheader
  %.05.i.i.i.i.i476.unr = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bk, %.lr.ph.i.i.i.i.i475.prol ]
  %storemerge4.i.i.i.i.i477.unr = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i475.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i475.prol ]
  %i.bo = icmp ult i64 %i.bj, 4
  br i1 %i.bo, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475

.lr.ph.i.i.i.i.i475:                              ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475
  %.05.i.i.i.i.i476 = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i475 ], [ %.05.i.i.i.i.i476.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ]
  %storemerge4.i.i.i.i.i477 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i475 ], [ %storemerge4.i.i.i.i.i477.unr, %.lr.ph.i.i.i.i.i475.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i477, align 4, !tbaa !318
  %i.bp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 4
  store i32 -2147483648, ptr %i.br, align 4, !tbaa !318
  %i.bs = add i32 %i.bp, -2
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 8
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !318
  %i.bu = add i32 %i.bp, -3
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 12
  %i.bw = add i64 %.05.i.i.i.i.i476, -4           ; 2 uses
  store i32 -2147483648, ptr %i.bv, align 4, !tbaa !318
  %i.bx = add i32 %i.bp, -4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i477, i64 16
  %.not.i.i.i.i.i478.3 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i478.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479, label %.lr.ph.i.i.i.i.i475, !llvm.loop !177

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479: ; preds = %.lr.ph.i.i.i.i.i475.prol.loopexit, %.lr.ph.i.i.i.i.i475, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.bz = load i64, ptr %i.ab, align 8, !tbaa !547 ; 2 uses
  %.not.i1.i.i.i.i480 = icmp eq i64 %i.bz, 0
  br i1 %.not.i1.i.i.i.i480, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479
  %i.ca = shl i64 %i.bz, 2
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.ca) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i479
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 24) #27
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i484 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i484, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.x, align 8, !tbaa !278
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.2.i832843, label %bb.k, label %bb.ij

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11565)
  %i.cg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !11565 ; 100 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false), !noalias !11565
  store ptr %i.cg, ptr %5, align 8, !tbaa !550, !alias.scope !11565
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11566)
  %i.ch = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.l unwind label %bb.s       ; 90 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false), !noalias !11566
  store ptr %i.ch, ptr %6, align 8, !tbaa !348, !alias.scope !11566
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 34 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !552 ; 6 uses
  %i.ck = icmp ugt i64 %i.cj, 100
  br i1 %i.ck, label %.lr.ph.i.preheader.i.i.i, label %bb.m
end_hunk_8
begin_hunk_9_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ci = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !318
  %i.cj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = add i32 %i.cj, -1
  store i32 %i.ck, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !12343

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.prol ]
  %i.cm = icmp ult i64 %i.t, 4
  br i1 %i.cm, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !318
  %i.cq = add i32 %i.cn, -2
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !318
  %i.cs = add i32 %i.cn, -3
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cu = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ct, align 4, !tbaa !318
  %i.cv = add i32 %i.cn, -4
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !177

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !547
  %i.cy = shl i64 %i.cx, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cy) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !546
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %.loopexit.i
  %i.cz = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.da = ptrtoint ptr %2 to i64
  %i.db = ptrtoint ptr %i.s to i64
  %i.dc = sub i64 %i.da, %i.db
  store ptr %i.r, ptr %1, align 8, !tbaa !545
  %i.dd = add i64 %i.cz, %3
  store i64 %i.dd, ptr %i.d, align 8, !tbaa !546
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.de = getelementptr inbounds i8, ptr %i.r, i64 %i.dc
  store ptr %i.de, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12354  ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !554  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !560  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !388
  %i.f = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12352

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !388
  %i.j = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !388
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !388
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.q = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !388
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !179

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !556  ; 2 uses
  %.not.i1.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i
  %i.v = shl i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.v) #26
  br label %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit

_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost7movelib14default_deleteINS_9container6vectorINS2_4test17moveconstruct_intENS2_13new_allocatorIS5_EEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test28vector_test_fully_propagableINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr.67", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12361)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !12361 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !12361
  %i.b = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #28
          to label %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !12361 ; 3 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27, !noalias !12361
  br label %common.resume

_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !277, !noalias !12361
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278, !noalias !12361
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.b, i8 0, i64 400, i1 false)
  store ptr %i.d, ptr %i.f, align 8, !tbaa !288, !noalias !12361
  store ptr %i.a, ptr %0, align 8, !tbaa !348, !alias.scope !12361
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.f       ; 8 uses

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  store ptr null, ptr %i.g, align 8, !tbaa !554, !noalias !12362
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 100, ptr %i.h, align 8, !tbaa !555, !noalias !12362
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !556, !noalias !12362
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost9container6vectorINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit unwind label %bb.d, !noalias !12362 ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27, !noalias !12362
  br label %.body

_ZN5boost9container6vectorINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit: ; preds = %bb.c
  store ptr %i.j, ptr %i.g, align 8, !tbaa !554, !noalias !12362
  store i64 100, ptr %i.i, align 8, !tbaa !261, !noalias !12362
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !12362
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.j, i8 0, i64 400, i1 false), !tbaa !388, !noalias !12362
  %i.l = add i32 %_ZN5boost9container4test17moveconstruct_int5countE.promoted.i.i, 100
  store i32 %i.l, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247, !noalias !12362
  %i.m = load i64, ptr %i.h, align 8, !tbaa !555  ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !288
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  %.not.i12 = icmp eq i64 %i.m, %i.s
  br i1 %.not.i12, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  %.not2324.i = icmp eq i64 %i.m, 0
  br i1 %.not2324.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.019.026.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !247
  %i.v = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !388
  %i.w = icmp eq i32 %i.v, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne ptr %i.x, %i.t
  %or.cond.not = select i1 %i.w, i1 %.not23.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !178

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container6vectorINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit
  %.2.i31 = phi i1 [ false, %_ZN5boost9container6vectorINS0_4test17moveconstruct_intENS0_13new_allocatorIS3_EEvEaSEOS6_.exit ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol.preheader

.lr.ph.i.i.i.i.i.prol.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %_ZN5boost9container4test17moveconstruct_int5countE.promoted = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol.preheader
  %i.aa = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %_ZN5boost9container4test17moveconstruct_int5countE.promoted, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.prol.preheader ]
  %i.ab = add i64 %.05.i.i.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !388
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12359

.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 %i.ac, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i64 %i.m, 4
  br i1 %i.ae, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !388
  %i.af = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !388
  %i.ai = add i32 %i.af, -2
  store i32 %i.ai, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !388
  %i.ak = add i32 %i.af, -3
  store i32 %i.ak, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.am = add i64 %.05.i.i.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !388
  %i.an = add i32 %i.af, -4
  store i32 %i.an, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i14.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i14.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !179

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, %bb.e
  %.2.i3135 = phi i1 [ true, %bb.e ], [ %.2.i31, %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_17moveconstruct_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread ], [ %.2.i31, %.lr.ph.i.i.i.i.i ], [ %.2.i31, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 400) #26
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !554 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !560 ; 5 uses
  %.not3.i.i.i.i.i16 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i.i.i.i16, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17.preheader

.lr.ph.i.i.i.i.i17.preheader:                     ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %xtraiter45 = and i64 %i.aq, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol

.lr.ph.i.i.i.i.i17.prol:                          ; preds = %.lr.ph.i.i.i.i.i17.preheader, %.lr.ph.i.i.i.i.i17.prol
  %.05.i.i.i.i.i18.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ]
  %storemerge4.i.i.i.i.i19.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i17.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i.i.i17.preheader ]
  %i.ar = add i64 %.05.i.i.i.i.i18.prol, -1       ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19.prol, align 4, !tbaa !388
  %i.as = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19.prol, i64 4 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i.i.i17.prol, !llvm.loop !12360

.lr.ph.i.i.i.i.i17.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i17.prol, %.lr.ph.i.i.i.i.i17.preheader
  %.05.i.i.i.i.i18.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i17.prol ]
  %storemerge4.i.i.i.i.i19.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i17.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i17.prol ]
  %i.av = icmp ult i64 %i.aq, 4
  br i1 %i.av, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17
  %.05.i.i.i.i.i18 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i17 ], [ %.05.i.i.i.i.i18.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ]
  %storemerge4.i.i.i.i.i19 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i17 ], [ %storemerge4.i.i.i.i.i19.unr, %.lr.ph.i.i.i.i.i17.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i19, align 4, !tbaa !388
  %i.aw = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 4
  store i32 -2147483648, ptr %i.ay, align 4, !tbaa !388
  %i.az = add i32 %i.aw, -2
  store i32 %i.az, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 8
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !388
  %i.bb = add i32 %i.aw, -3
  store i32 %i.bb, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 12
  %i.bd = add i64 %.05.i.i.i.i.i18, -4            ; 2 uses
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !388
  %i.be = add i32 %i.aw, -4
  store i32 %i.be, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i19, i64 16
  %.not.i.i.i.i.i20.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i20.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21, label %.lr.ph.i.i.i.i.i17, !llvm.loop !179

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i17.prol.loopexit, %.lr.ph.i.i.i.i.i17, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !556 ; 2 uses
  %.not.i1.i.i.i.i22 = icmp eq i64 %i.bg, 0
  br i1 %.not.i1.i.i.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bh) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test17moveconstruct_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #27
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !278
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #27
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  %i.bn = xor i1 %.2.i3135, true
  %i.bo = zext i1 %i.bn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret i32 %i.bo

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.z, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test24overaligned_copyable_intENS2_13new_allocatorIS5_EEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.439") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !247    ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !562
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !563
end_hunk_9
