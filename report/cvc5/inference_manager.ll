Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/inference_manager?download=true
inline.NumInlined: 1652
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEaSERKS5_:bb.a
  %i.ck = and i64 %i.cg, -1152920405095219201
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.ce, align 8
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %bb.v, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37, !prof !27

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37: ; preds = %bb.v, %bb.u, %bb.t
  %i.cn = load ptr, ptr %.0910.i.i.i.i.i34, align 8, !tbaa !26 ; 5 uses
  store ptr %i.cn, ptr %.0811.i.i.i.i.i33, align 8, !tbaa !26
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = lshr i64 %i.co, 40
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 1048575                  ; 3 uses
  %i.cs = icmp samesign ult i32 %i.cr, 1048574
  br i1 %i.cs, label %bb.w, label %bb.x, !prof !28

bb.w:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37
  %i.ct = add nuw nsw i32 %i.cr, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 40
  %i.cw = and i64 %i.co, -1152920405095219201
  %i.cx = or i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %i.cn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38

bb.x:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37
  %i.cy = icmp eq i32 %i.cr, 1048574
  br i1 %i.cy, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38, !prof !27

bb.y:                                             ; preds = %bb.x
  %i.cz = or i64 %i.co, 1152920405095219200
  store i64 %i.cz, ptr %i.cn, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cn)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38: ; preds = %bb.y, %bb.x, %bb.w, %.lr.ph.i.i.i.i.i31
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 8
  %i.dc = add nsw i64 %.012.i.i.i.i.i32, -1
  %i.dd = icmp sgt i64 %.012.i.i.i.i.i32, 1
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !2

_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38
  %.pre39 = load ptr, ptr %1, align 8, !tbaa !101
  %.pre40 = load ptr, ptr %i.aj, align 8, !tbaa !102 ; 2 uses
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !101
  %.pre42 = load ptr, ptr %i.a, align 8, !tbaa !102
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre44 = ptrtoint ptr %.pre41 to i64
  %.pre46 = sub i64 %.pre43, %.pre44
  br label %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit, %bb.s
  %.pre-phi47 = phi i64 [ %.pre46, %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.am, %bb.s ]
  %i.de = phi ptr [ %.pre42, %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.s ]
  %i.df = phi ptr [ %.pre40, %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.ak, %bb.s ]
  %i.dg = phi ptr [ %.pre39, %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.s ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.pre-phi47
  %i.di = tail call noundef ptr @_ZSt16__do_uninit_copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_(ptr noundef %i.dh, ptr noundef %i.de, ptr noundef %i.df) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i28, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !101
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.f
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory7strings16InferenceManager13sendInferenceERNS2_9InferInfoEb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.518", align 8 ; 4 uses
  %4 = alloca %"class.std::vector.311", align 8   ; 13 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %7 = alloca %"class.cvc5::internal::theory::strings::InferInfo", align 8 ; 9 uses
  %8 = alloca %"class.std::unique_ptr.518", align 8 ; 4 uses
  %9 = alloca %"class.std::unique_ptr.518", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory7strings9InferInfo10isConflictEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !390, !nonnull !91, !align !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  tail call void @_ZN4cvc58internal6theory7strings16InferenceManager15processConflictERKNS2_9InferInfoE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(200) %1)
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  br i1 %2, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !302, !nonnull !91, !align !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !391, !range !95, !noundef !91
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call noundef zeroext i1 @_ZNK4cvc58internal6theory7strings9InferInfo6isFactEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  br i1 %i.p, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #22 ; 3 uses
  invoke void @_ZN4cvc58internal6theory7strings9InferInfoC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(200) %i.q, ptr noundef nonnull align 8 dereferenceable(200) %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %3, align 8, !tbaa !309
  invoke void @_ZN4cvc58internal6theory24InferenceManagerBuffered15addPendingLemmaESt10unique_ptrINS1_15TheoryInferenceESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(337) %i.r, ptr noundef nonnull align 8 %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %3, align 8, !tbaa !39     ; 3 uses
  %.not.i133 = icmp eq ptr %i.s, null
  br i1 %.not.i133, label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i: ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #20, !inline_history !3
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 200) #21
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140

bb.l:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !39     ; 3 uses
  %.not.i135 = icmp eq ptr %i.y, null
  br i1 %.not.i135, label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140, label %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i136

_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i136: ; preds = %bb.l
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #20, !inline_history !3
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140

bb.m:                                             ; preds = %bb.g
  %i.ac = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 376
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !302, !nonnull !91, !align !92
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !392, !range !95, !noundef !91
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %bb.ar

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !117 ; 2 uses
  %.not262 = icmp eq ptr %i.aj, %i.al
  br i1 %.not262, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.y

.lr.ph:                                           ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !117   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre264 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !117 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not261 = icmp eq ptr %.pre, %.pre264
  br i1 %.not261, label %bb.y, label %.critedge81

bb.o:                                             ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.sroa.0247.0263 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !310, !nonnull !91, !align !92
  %i.aq = load ptr, ptr %.sroa.0247.0263, align 8, !tbaa !26 ; 5 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !26
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = lshr i64 %i.ar, 40
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 1048575                  ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 1048574
  br i1 %i.av, label %bb.p, label %bb.q, !prof !28

bb.p:                                             ; preds = %bb.o
  %i.aw = add nuw nsw i32 %i.au, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 40
  %i.az = and i64 %i.ar, -1152920405095219201
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.aq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.bb = icmp eq i32 %i.au, 1048574
  br i1 %i.bb, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.bc = or i64 %i.ar, 1152920405095219200
  store i64 %i.bc, ptr %i.aq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.w

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.q, %bb.p, %bb.r
  invoke void @_ZNK4cvc58internal6theory7strings12TermRegistry14removeProxyEqsENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(992) %i.ap, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bd = load ptr, ptr %5, align 8, !tbaa !26    ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = and i64 %i.be, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bf, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.t, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.bg = add i64 %i.be, 1152920405095219200
  %i.bh = and i64 %i.bg, 1152920405095219200      ; 2 uses
  %i.bi = and i64 %i.be, -1152920405095219201
  %i.bj = or disjoint i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %i.bd, align 8
  %i.bk = icmp eq i64 %i.bh, 0
  br i1 %i.bk, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !27

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.s, %bb.t, %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0247.0263, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.al
  br i1 %.not, label %._crit_edge, label %bb.o

bb.w:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.aq

bb.y:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bq = phi ptr [ %i.am, %._crit_edge.thread ], [ %i.ao, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !311
  invoke void @_ZN4cvc58internal6theory7strings9InferInfoC1ENS1_11InferenceIdE(ptr noundef nonnull align 8 dereferenceable(200) %7, i32 noundef %i.bt)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %0, ptr %i.bu, align 8, !tbaa !118
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge77 unwind label %bb.ad ; 0 uses

bb.ab:                                            ; preds = %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ad:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165

.critedge77:                                      ; preds = %bb.aa
  %i.ca = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #22
          to label %bb.ae unwind label %bb.ah     ; 3 uses

bb.ae:                                            ; preds = %.critedge77
  invoke void @_ZN4cvc58internal6theory7strings9InferInfoC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, ptr noundef nonnull align 8 dereferenceable(200) %7)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  store ptr %i.ca, ptr %8, align 8, !tbaa !309
  invoke void @_ZN4cvc58internal6theory24InferenceManagerBuffered15addPendingLemmaESt10unique_ptrINS1_15TheoryInferenceESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(337) %i.i, ptr noundef nonnull align 8 %8)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cb = load ptr, ptr %8, align 8, !tbaa !39    ; 3 uses
  %.not.i154 = icmp eq ptr %i.cb, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit159, label %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i155

_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i155: ; preds = %bb.ag
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.cb) #20, !inline_history !3
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit159

_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit159: ; preds = %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i155, %bb.ag
  call void @_ZN4cvc58internal6theory7strings9InferInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pre265 = load ptr, ptr %4, align 8, !tbaa !101
  %.pre266 = load ptr, ptr %i.bq, align 8, !tbaa !102
  br label %.critedge81

bb.ah:                                            ; preds = %.critedge77
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165

bb.ai:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 200) #21
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165

bb.aj:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %8, align 8, !tbaa !39    ; 3 uses
  %.not.i160 = icmp eq ptr %i.ci, null
  br i1 %.not.i160, label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165, label %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i161

_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i161: ; preds = %bb.aj
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(12) %i.ci) #20, !inline_history !3
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165

_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165: ; preds = %bb.ah, %bb.ai, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i161, %bb.aj, %bb.ad
  %.pn63.pn = phi { ptr, i32 } [ %i.bz, %bb.ad ], [ %i.cf, %bb.ah ], [ %i.cg, %bb.ai ], [ %i.ch, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i161 ], [ %i.ch, %bb.aj ]
  call void @_ZN4cvc58internal6theory7strings9InferInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %7) #20
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165, %bb.ac
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit165 ], [ %i.by, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ab
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.ak ], [ %i.bx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.aq

.critedge81:                                      ; preds = %._crit_edge, %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit159
  %.not261284 = phi i1 [ false, %._crit_edge ], [ true, %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit159 ]
  %10 = phi ptr [ %.pre264, %._crit_edge ], [ %.pre266, %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit159 ] ; 2 uses
  %11 = phi ptr [ %.pre, %._crit_edge ], [ %.pre265, %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit159 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %11, %10
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge81, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %11, %.critedge81 ] ; 2 uses
  %i.cm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.co = and i64 %i.cn, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.co, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.am, !prof !27

bb.am:                                            ; preds = %.lr.ph.i.i.i
  %i.cp = add i64 %i.cn, 1152920405095219200
  %i.cq = and i64 %i.cp, 1152920405095219200      ; 2 uses
  %i.cr = and i64 %i.cn, -1152920405095219201
  %i.cs = or disjoint i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.cm, align 8
  %i.ct = icmp eq i64 %i.cq, 0
  br i1 %i.ct, label %bb.an, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !27

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.an, %bb.am, %.lr.ph.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cw, %10
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %.critedge81
  %i.cx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %11, %.critedge81 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !103
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.not261284, label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit, label %bb.ar

bb.aq:                                            ; preds = %bb.w, %bb.x, %bb.al
  %.pn70.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %.pn63.pn.pn.pn, %bb.al ], [ %i.bp, %bb.x ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140

bb.ar:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.m
  %i.dd = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #22 ; 3 uses
  invoke void @_ZN4cvc58internal6theory7strings9InferInfoC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(200) %i.dd, ptr noundef nonnull align 8 dereferenceable(200) %1)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  store ptr %i.dd, ptr %9, align 8, !tbaa !309
  invoke void @_ZN4cvc58internal6theory24InferenceManagerBuffered14addPendingFactESt10unique_ptrINS1_15TheoryInferenceESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(337) %i.i, ptr noundef nonnull align 8 %9)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.de = load ptr, ptr %9, align 8, !tbaa !39    ; 3 uses
  %.not.i187 = icmp eq ptr %i.de, null
  br i1 %.not.i187, label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i188

_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i188: ; preds = %bb.at
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(12) %i.de) #20, !inline_history !3
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.at, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i188, %bb.j, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.d
  ret void

bb.au:                                            ; preds = %bb.ar
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 200) #21
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140

bb.av:                                            ; preds = %bb.as
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %9, align 8, !tbaa !39    ; 3 uses
  %.not.i193 = icmp eq ptr %i.dk, null
  br i1 %.not.i193, label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140, label %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i194

_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i194: ; preds = %bb.av
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #20, !inline_history !3
  br label %_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140

_ZNSt10unique_ptrIN4cvc58internal6theory7strings9InferInfoESt14default_deleteIS4_EED2Ev.exit140: ; preds = %bb.au, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i194, %bb.av, %bb.k, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i136, %bb.l, %bb.aq
  %.pn73.pn = phi { ptr, i32 } [ %i.x, %bb.l ], [ %.pn70.pn, %bb.aq ], [ %i.w, %bb.k ], [ %i.x, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i136 ], [ %i.di, %bb.au ], [ %i.dj, %_ZNKSt14default_deleteIN4cvc58internal6theory15TheoryInferenceEEclEPS3_.exit.i194 ], [ %i.dj, %bb.av ]
  resume { ptr, i32 } %.pn73.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory7strings9InferInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal6theory7strings9InferInfoE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.a = load ptr, ptr %.ptr1, align 8, !tbaa !26 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !27

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load ptr, ptr %.ptr1.1, align 8, !tbaa !26 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = and i64 %i.l, 1152920405095219200
  %.not.i.i.1 = icmp eq i64 %i.m, 1152920405095219200
  br i1 %.not.i.i.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.1, label %bb.e, !prof !27

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.n = add i64 %i.l, 1152920405095219200
  %i.o = and i64 %i.n, 1152920405095219200        ; 2 uses
  %i.p = and i64 %i.l, -1152920405095219201
  %i.q = or disjoint i64 %i.o, %i.p
  store i64 %i.q, ptr %i.k, align 8
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.1, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.1 unwind label %bb.d

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.1: ; preds = %bb.f, %bb.e, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef %i.u)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.1
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal6theory7strings12LengthStatusESt4pairIKS4_St6vectorINS1_12NodeTemplateILb1EEESaIS9_EEESt10_Select1stISC_ESt4lessIS4_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.z)
          to label %_ZNSt3mapIN4cvc58internal6theory7strings12LengthStatusESt6vectorINS1_12NodeTemplateILb1EEESaIS7_EESt4lessIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #23
  unreachable

_ZNSt3mapIN4cvc58internal6theory7strings12LengthStatusESt6vectorINS1_12NodeTemplateILb1EEESaIS7_EESt4lessIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapIN4cvc58internal6theory7strings12LengthStatusESt6vectorINS1_12NodeTemplateILb1EEESaIS7_EESt4lessIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.ad, %_ZNSt3mapIN4cvc58internal6theory7strings12LengthStatusESt6vectorINS1_12NodeTemplateILb1EEESaIS7_EESt4lessIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit ] ; 2 uses
  %i.ag = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = and i64 %i.ah, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ai, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.i, !prof !27

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add i64 %i.ah, 1152920405095219200
  %i.ak = and i64 %i.aj, 1152920405095219200      ; 2 uses
  %i.al = and i64 %i.ah, -1152920405095219201
  %i.am = or disjoint i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.ag, align 8
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %bb.j, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !27

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.af
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ac, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapIN4cvc58internal6theory7strings12LengthStatusESt6vectorINS1_12NodeTemplateILb1EEESaIS7_EESt4lessIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %_ZNSt3mapIN4cvc58internal6theory7strings12LengthStatusESt6vectorINS1_12NodeTemplateILb1EEESaIS7_EESt4lessIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !101 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
