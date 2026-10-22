Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/infer_proof_cons?download=true
inline.NumInlined: 2766
inline.NumDeleted: 612
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEaSERKS5_:bb.a

bb.p:                                             ; preds = %.lr.ph.i.i26
  %i.bu = add i64 %i.bs, 1152920405095219200
  %i.bv = and i64 %i.bu, 1152920405095219200      ; 2 uses
  %i.bw = and i64 %i.bs, -1152920405095219201
  %i.bx = or disjoint i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.br, align 8
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %bb.q, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i28, !prof !44

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i28 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i28: ; preds = %bb.q, %bb.p, %.lr.ph.i.i26
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.cb, %i.bo
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i26, !llvm.loop !346

bb.s:                                             ; preds = %bb.h
  %i.cc = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i31:                               ; preds = %bb.s, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38
  %.012.i.i.i.i.i32 = phi i64 [ %i.dc, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38 ], [ %i.cc, %bb.s ] ; 2 uses
  %.0811.i.i.i.i.i33 = phi ptr [ %i.db, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38 ], [ %i.j, %bb.s ] ; 3 uses
  %.0910.i.i.i.i.i34 = phi ptr [ %i.da, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38 ], [ %i.c, %bb.s ] ; 3 uses
  %i.ce = load ptr, ptr %.0811.i.i.i.i.i33, align 8, !tbaa !42 ; 4 uses
  %i.cf = load ptr, ptr %.0910.i.i.i.i.i34, align 8, !tbaa !42
  %.not.i.i.i.i.i.i35 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i.i.i.i.i35, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38, label %bb.t, !prof !44

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i31
  %i.cg = load i64, ptr %i.ce, align 8            ; 3 uses
  %i.ch = and i64 %i.cg, 1152920405095219200
  %.not.i.i.i.i.i.i.i36 = icmp eq i64 %i.ch, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i36, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37, label %bb.u, !prof !44

bb.u:                                             ; preds = %bb.t
  %i.ci = add i64 %i.cg, 1152920405095219200
  %i.cj = and i64 %i.ci, 1152920405095219200      ; 2 uses
  %i.ck = and i64 %i.cg, -1152920405095219201
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.ce, align 8
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %bb.v, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37, !prof !44

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i37: ; preds = %bb.v, %bb.u, %bb.t
  %i.cn = load ptr, ptr %.0910.i.i.i.i.i34, align 8, !tbaa !42 ; 5 uses
  store ptr %i.cn, ptr %.0811.i.i.i.i.i33, align 8, !tbaa !42
  %i.co = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.cp = lshr i64 %i.co, 40
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 1048575                  ; 3 uses
  %i.cs = icmp samesign ult i32 %i.cr, 1048574
  br i1 %i.cs, label %bb.w, label %bb.x, !prof !43

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
  br i1 %i.cy, label %bb.y, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38, !prof !44

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
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !6

_ZSt4copyIPN4cvc58internal12NodeTemplateILb1EEES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i38
  %.pre39 = load ptr, ptr %1, align 8, !tbaa !77
  %.pre40 = load ptr, ptr %i.aj, align 8, !tbaa !74 ; 2 uses
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !77
  %.pre42 = load ptr, ptr %i.a, align 8, !tbaa !74
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
  %i.dj = load ptr, ptr %0, align 8, !tbaa !77
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.f
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !74
  br label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory7strings14InferProofCons12convertTransENS0_12NodeTemplateILb1EEES5_RNS0_21TheoryProofStepBufferE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(104) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.297", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.297", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.297", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.297", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 11 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %17 = alloca %"class.std::vector.278", align 8  ; 12 uses
  %18 = alloca %"class.std::vector.278", align 8  ; 10 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %.not = icmp eq i64 %i.d, 5
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 1023
  %.not61 = icmp eq i64 %i.h, 5
  br i1 %.not61, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.m = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !42, !noalias !375 ; 5 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !42, !alias.scope !375
  %i.n = load i64, ptr %i.m, align 8, !noalias !375 ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8, !noalias !375
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.e:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, !prof !44

bb.f:                                             ; preds = %bb.e
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8, !noalias !375
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !375
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit152
  br i1 %i.z, label %bb.h, label %bb.dd, !llvm.loop !349

bb.h:                                             ; preds = %.preheader, %bb.g
  %i.z = phi i1 [ true, %.preheader ], [ false, %bb.g ]
  %.060178 = phi i32 [ 0, %.preheader ], [ 1, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %20 = trunc nuw i32 %.060178 to i1
  br i1 %20, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !42, !noalias !376 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !376
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1023                     ; 2 uses
  %i.af = icmp eq i32 %i.ae, 1023
  %i.ag = select i1 %i.af, i32 -1, i32 %i.ae
  %i.ah = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ag), !noalias !376
  %i.ai = icmp eq i32 %i.ah, 2
  %spec.select.i.i = select i1 %i.ai, i64 2, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %spec.select.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56, !noalias !376 ; 10 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !42, !alias.scope !376
  %i.am = load i64, ptr %i.al, align 8, !noalias !376 ; 3 uses
  %i.an = lshr i64 %i.am, 40
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1048575                  ; 3 uses
  %i.aq = icmp samesign ult i32 %i.ap, 1048574
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !43

bb.j:                                             ; preds = %bb.i
  %i.ar = add nuw nsw i32 %i.ap, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 40
  %i.au = and i64 %i.am, -1152920405095219201
  %i.av = or i64 %i.at, %i.au
  store i64 %i.av, ptr %i.al, align 8, !noalias !376
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq i32 %i.ap, 1048574
  br i1 %i.aw, label %bb.l, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !44

bb.l:                                             ; preds = %bb.k
  %i.ax = or i64 %i.am, 1152920405095219200
  store i64 %i.ax, ptr %i.al, align 8, !noalias !376
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al), !noalias !376
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.ay = load ptr, ptr %1, align 8, !tbaa !42, !noalias !377 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !377
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1023                     ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1023
  %i.be = select i1 %i.bd, i32 -1, i32 %i.bc
  %i.bf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.be)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.bg = icmp eq i32 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bi = zext i1 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !56, !noalias !377 ; 9 uses
  store ptr %i.bk, ptr %12, align 8, !tbaa !42, !alias.scope !377
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !377 ; 3 uses
  %i.bm = lshr i64 %i.bl, 40
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1048575                  ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 1048574
  br i1 %i.bp, label %bb.m, label %bb.n, !prof !43

bb.m:                                             ; preds = %.noexc
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = and i64 %i.bl, -1152920405095219201
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bk, align 8, !noalias !377
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88

bb.n:                                             ; preds = %.noexc
  %i.bv = icmp eq i32 %i.bo, 1048574
  br i1 %i.bv, label %bb.o, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88, !prof !44

bb.o:                                             ; preds = %bb.n
  %i.bw = or i64 %i.bl, 1152920405095219200
  store i64 %i.bw, ptr %i.bk, align 8, !noalias !377
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88 unwind label %bb.ab

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88: ; preds = %bb.n, %bb.m, %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !379
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !71, !noalias !379
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef %i.by, i32 noundef 5)
          to label %.noexc89 unwind label %.body.thread158

.body.thread158:                                  ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.noexc89:                                         ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88
  store ptr %i.al, ptr %8, align 8, !tbaa !54, !noalias !379
  %i.ca = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 %8)
          to label %bb.p unwind label %.body.thread, !noalias !379

bb.p:                                             ; preds = %.noexc89
  store ptr %i.bk, ptr %9, align 8, !tbaa !54, !noalias !379
  %i.cb = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ca, ptr noundef nonnull align 8 %9)
          to label %bb.q unwind label %.body.thread, !noalias !379 ; 0 uses

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %.critedge unwind label %.body.thread

.body.thread:                                     ; preds = %.noexc89, %bb.p, %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !379
  br label %bb.ac

bb.r:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %1, align 8, !tbaa !42    ; 5 uses
  store ptr %i.cd, ptr %10, align 8, !tbaa !42
  %i.ce = load i64, ptr %i.cd, align 8            ; 3 uses
  %i.cf = lshr i64 %i.ce, 40
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 1048575                  ; 3 uses
  %i.ci = icmp samesign ult i32 %i.ch, 1048574
  br i1 %i.ci, label %bb.s, label %bb.t, !prof !43

bb.s:                                             ; preds = %bb.r
  %i.cj = add nuw nsw i32 %i.ch, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 40
  %i.cm = and i64 %i.ce, -1152920405095219201
  %i.cn = or i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.cd, align 8
  br label %.critedge76.preheader

bb.t:                                             ; preds = %bb.r
  %i.co = icmp eq i32 %i.ch, 1048574
  br i1 %i.co, label %bb.u, label %.critedge76.preheader, !prof !44

bb.u:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1152920405095219200
  store i64 %i.cp, ptr %i.cd, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
  br label %.critedge76.preheader

.critedge:                                        ; preds = %bb.q
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !378
  %i.cq = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.cr = and i64 %i.cq, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cr, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.v, !prof !44

bb.v:                                             ; preds = %.critedge
  %i.cs = add i64 %i.cq, 1152920405095219200
  %i.ct = and i64 %i.cs, 1152920405095219200      ; 2 uses
  %i.cu = and i64 %i.cq, -1152920405095219201
  %i.cv = or disjoint i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %i.bk, align 8
  %i.cw = icmp eq i64 %i.ct, 0
  br i1 %i.cw, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !44

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %.critedge, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.cz = load i64, ptr %i.al, align 8            ; 3 uses
  %i.da = and i64 %i.cz, 1152920405095219200
  %.not.i.i91 = icmp eq i64 %i.da, 1152920405095219200
  br i1 %.not.i.i91, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92, label %bb.y, !prof !44

bb.y:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.db = add i64 %i.cz, 1152920405095219200
  %i.dc = and i64 %i.db, 1152920405095219200      ; 2 uses
  %i.dd = and i64 %i.cz, -1152920405095219201
  %i.de = or disjoint i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.al, align 8
  %i.df = icmp eq i64 %i.dc, 0
  br i1 %i.df, label %bb.z, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92, !prof !44

end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings14InferProofCons12convertTransENS0_12NodeTemplateILb1EEES5_RNS0_21TheoryProofStepBufferE:bb.a
          to label %.critedge83 unwind label %bb.cg

bb.ah:                                            ; preds = %.critedge76
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.dw = load ptr, ptr %2, align 8, !tbaa !42, !noalias !380 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !380
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 1023                     ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 1023
  %i.ec = select i1 %i.eb, i32 -1, i32 %i.ea
  %i.ed = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ec)
          to label %.noexc96 unwind label %bb.ch

.noexc96:                                         ; preds = %bb.ah
  %i.ee = icmp eq i32 %i.ed, 2
  %spec.select.i.i95 = select i1 %i.ee, i64 2, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %spec.select.i.i95
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !56, !noalias !380 ; 10 uses
  store ptr %i.eh, ptr %14, align 8, !tbaa !42, !alias.scope !380
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !380 ; 3 uses
  %i.ej = lshr i64 %i.ei, 40
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = and i32 %i.ek, 1048575                  ; 3 uses
  %i.em = icmp samesign ult i32 %i.el, 1048574
  br i1 %i.em, label %bb.ai, label %bb.aj, !prof !43

bb.ai:                                            ; preds = %.noexc96
  %i.en = add nuw nsw i32 %i.el, 1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 40
  %i.eq = and i64 %i.ei, -1152920405095219201
  %i.er = or i64 %i.ep, %i.eq
  store i64 %i.er, ptr %i.eh, align 8, !noalias !380
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98

bb.aj:                                            ; preds = %.noexc96
  %i.es = icmp eq i32 %i.el, 1048574
  br i1 %i.es, label %bb.ak, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98, !prof !44

bb.ak:                                            ; preds = %bb.aj
  %i.et = or i64 %i.ei, 1152920405095219200
  store i64 %i.et, ptr %i.eh, align 8, !noalias !380
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98 unwind label %bb.ch

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98: ; preds = %bb.aj, %bb.ai, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.eu = load ptr, ptr %2, align 8, !tbaa !42, !noalias !381 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !381
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = and i32 %i.ex, 1023                     ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 1023
  %i.fa = select i1 %i.ez, i32 -1, i32 %i.ey
  %i.fb = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.fa)
          to label %.noexc100 unwind label %bb.ci

.noexc100:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98
  %i.fc = icmp eq i32 %i.fb, 2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fe = zext i1 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !56, !noalias !381 ; 9 uses
  store ptr %i.fg, ptr %15, align 8, !tbaa !42, !alias.scope !381
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !381 ; 3 uses
  %i.fi = lshr i64 %i.fh, 40
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = and i32 %i.fj, 1048575                  ; 3 uses
  %i.fl = icmp samesign ult i32 %i.fk, 1048574
  br i1 %i.fl, label %bb.al, label %bb.am, !prof !43

bb.al:                                            ; preds = %.noexc100
  %i.fm = add nuw nsw i32 %i.fk, 1
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 40
  %i.fp = and i64 %i.fh, -1152920405095219201
  %i.fq = or i64 %i.fo, %i.fp
  store i64 %i.fq, ptr %i.fg, align 8, !noalias !381
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102

bb.am:                                            ; preds = %.noexc100
  %i.fr = icmp eq i32 %i.fk, 1048574
  br i1 %i.fr, label %bb.an, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102, !prof !44

bb.an:                                            ; preds = %bb.am
  %i.fs = or i64 %i.fh, 1152920405095219200
  store i64 %i.fs, ptr %i.fg, align 8, !noalias !381
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102 unwind label %bb.ci

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102: ; preds = %bb.am, %bb.al, %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !383
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !71, !noalias !383
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef %i.fu, i32 noundef 5)
          to label %.noexc104 unwind label %bb.cj

.noexc104:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102
  store ptr %i.eh, ptr %5, align 8, !tbaa !54, !noalias !383
  %i.fv = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %5)
          to label %bb.ao unwind label %.body.i103, !noalias !383

bb.ao:                                            ; preds = %.noexc104
  store ptr %i.fg, ptr %6, align 8, !tbaa !54, !noalias !383
  %i.fw = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.fv, ptr noundef nonnull align 8 %6)
          to label %bb.ap unwind label %.body.i103, !noalias !383 ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %.critedge81 unwind label %.body.i103

.body.i103:                                       ; preds = %bb.ap, %bb.ao, %.noexc104
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !383
  br label %.body105

.critedge81:                                      ; preds = %bb.ap
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !382
  %i.fy = load i64, ptr %i.fg, align 8            ; 3 uses
  %i.fz = and i64 %i.fy, 1152920405095219200
  %.not.i.i108 = icmp eq i64 %i.fz, 1152920405095219200
  br i1 %.not.i.i108, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109, label %bb.aq, !prof !44

bb.aq:                                            ; preds = %.critedge81
  %i.ga = add i64 %i.fy, 1152920405095219200
  %i.gb = and i64 %i.ga, 1152920405095219200      ; 2 uses
  %i.gc = and i64 %i.fy, -1152920405095219201
  %i.gd = or disjoint i64 %i.gb, %i.gc
  store i64 %i.gd, ptr %i.fg, align 8
  %i.ge = icmp eq i64 %i.gb, 0
  br i1 %i.ge, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109, !prof !44

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109: ; preds = %.critedge81, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.gh = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.gi = and i64 %i.gh, 1152920405095219200
  %.not.i.i110 = icmp eq i64 %i.gi, 1152920405095219200
  br i1 %.not.i.i110, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111, label %bb.at, !prof !44

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109
  %i.gj = add i64 %i.gh, 1152920405095219200
  %i.gk = and i64 %i.gj, 1152920405095219200      ; 2 uses
  %i.gl = and i64 %i.gh, -1152920405095219201
  %i.gm = or disjoint i64 %i.gk, %i.gl
  store i64 %i.gm, ptr %i.eh, align 8
  %i.gn = icmp eq i64 %i.gk, 0
  br i1 %i.gn, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111, !prof !44

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.critedge83

.critedge83:                                      ; preds = %bb.ag, %bb.ae, %bb.af, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.gq = load ptr, ptr %1, align 8, !tbaa !42, !noalias !384 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !384
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = and i32 %i.gt, 1023                     ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 1023
  %i.gw = select i1 %i.gv, i32 -1, i32 %i.gu
  %i.gx = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.gw)
          to label %.noexc113 unwind label %bb.cm

.noexc113:                                        ; preds = %.critedge83
  %i.gy = icmp eq i32 %i.gx, 2
  %21 = zext i1 %i.gy to i32
  %spec.select.i.i112 = add nuw nsw i32 %.060178, %21
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %22 = zext nneg i32 %spec.select.i.i112 to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %22
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !56, !noalias !384 ; 9 uses
  store ptr %i.hb, ptr %16, align 8, !tbaa !42, !alias.scope !384
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !384 ; 3 uses
  %i.hd = lshr i64 %i.hc, 40
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = and i32 %i.he, 1048575                  ; 3 uses
  %i.hg = icmp samesign ult i32 %i.hf, 1048574
  br i1 %i.hg, label %bb.aw, label %bb.ax, !prof !43

bb.aw:                                            ; preds = %.noexc113
  %i.hh = add nuw nsw i32 %i.hf, 1
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl nuw nsw i64 %i.hi, 40
  %i.hk = and i64 %i.hc, -1152920405095219201
  %i.hl = or i64 %i.hj, %i.hk
  store i64 %i.hl, ptr %i.hb, align 8, !noalias !384
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit115

bb.ax:                                            ; preds = %.noexc113
  %i.hm = icmp eq i32 %i.hf, 1048574
  br i1 %i.hm, label %bb.ay, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit115, !prof !44

bb.ay:                                            ; preds = %bb.ax
  %i.hn = or i64 %i.hc, 1152920405095219200
  store i64 %i.hn, ptr %i.hb, align 8, !noalias !384
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit115 unwind label %bb.cm

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit115: ; preds = %bb.ax, %bb.aw, %bb.ay
  %i.ho = load ptr, ptr %2, align 8, !tbaa !42, !noalias !385 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !385
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = and i32 %i.hr, 1023                     ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 1023
  %i.hu = select i1 %i.ht, i32 -1, i32 %i.hs
  %i.hv = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.hu)
          to label %.noexc117 unwind label %bb.cn

.noexc117:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit115
  %i.hw = icmp eq i32 %i.hv, 2
  %i.hx = zext i1 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.035177
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hx
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !56, !noalias !385 ; 8 uses
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !385 ; 4 uses
  %i.id = lshr i64 %i.ic, 40
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = and i32 %i.ie, 1048575                  ; 3 uses
  %i.ig = icmp samesign ult i32 %i.if, 1048574
  br i1 %i.ig, label %bb.az, label %bb.ba, !prof !43

bb.az:                                            ; preds = %.noexc117
  %i.ih = add nuw nsw i32 %i.if, 1
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 40
  %i.ik = and i64 %i.ic, -1152920405095219201
  %i.il = or i64 %i.ij, %i.ik                     ; 2 uses
  store i64 %i.il, ptr %i.ib, align 8, !noalias !385
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119

bb.ba:                                            ; preds = %.noexc117
  %i.im = icmp eq i32 %i.if, 1048574
  br i1 %i.im, label %bb.bb, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119, !prof !44

bb.bb:                                            ; preds = %bb.ba
  %i.in = or i64 %i.ic, 1152920405095219200
  store i64 %i.in, ptr %i.ib, align 8, !noalias !385
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119_crit_edge unwind label %bb.cn

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119_crit_edge: ; preds = %bb.bb
  %.pre = load i64, ptr %i.ib, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119: ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119_crit_edge, %bb.ba, %bb.az
  %i.io = phi i64 [ %.pre, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119_crit_edge ], [ %i.ic, %bb.ba ], [ %i.il, %bb.az ] ; 3 uses
  %.not180 = icmp eq ptr %i.hb, %i.ib             ; 2 uses
  %i.ip = and i64 %i.io, 1152920405095219200
  %.not.i.i120 = icmp eq i64 %i.ip, 1152920405095219200
  br i1 %.not.i.i120, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121, label %bb.bc, !prof !44

bb.bc:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119
  %i.iq = add i64 %i.io, 1152920405095219200
  %i.ir = and i64 %i.iq, 1152920405095219200      ; 2 uses
  %i.is = and i64 %i.io, -1152920405095219201
  %i.it = or disjoint i64 %i.ir, %i.is
  store i64 %i.it, ptr %i.ib, align 8
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %bb.bd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121, !prof !44

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit119, %bb.bc, %bb.bd
  %i.ix = load i64, ptr %i.hb, align 8            ; 3 uses
  %i.iy = and i64 %i.ix, 1152920405095219200
  %.not.i.i122 = icmp eq i64 %i.iy, 1152920405095219200
  br i1 %.not.i.i122, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123, label %bb.bf, !prof !44

bb.bf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121
  %i.iz = add i64 %i.ix, 1152920405095219200
  %i.ja = and i64 %i.iz, 1152920405095219200      ; 2 uses
  %i.jb = and i64 %i.ix, -1152920405095219201
  %i.jc = or disjoint i64 %i.ja, %i.jb
  store i64 %i.jc, ptr %i.hb, align 8
  %i.jd = icmp eq i64 %i.ja, 0
  br i1 %i.jd, label %bb.bg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123, !prof !44

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.not180, label %bb.bi, label %.critedge85

bb.bi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.cp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.bi
  %i.jg = load ptr, ptr %i.i, align 8, !tbaa !74  ; 3 uses
  %i.jh = load ptr, ptr %i.j, align 8, !tbaa !75
  %.not.i126 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i126, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.ji = load ptr, ptr %13, align 8, !tbaa !42   ; 5 uses
  store ptr %i.ji, ptr %i.jg, align 8, !tbaa !42
  %i.jj = load i64, ptr %i.ji, align 8            ; 3 uses
  %i.jk = lshr i64 %i.jj, 40
  %i.jl = trunc nuw nsw i64 %i.jk to i32
  %i.jm = and i32 %i.jl, 1048575                  ; 3 uses
  %i.jn = icmp samesign ult i32 %i.jm, 1048574
  br i1 %i.jn, label %bb.bk, label %bb.bl, !prof !43

bb.bk:                                            ; preds = %bb.bj
  %i.jo = add nuw nsw i32 %i.jm, 1
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl nuw nsw i64 %i.jp, 40
  %i.jr = and i64 %i.jj, -1152920405095219201
  %i.js = or i64 %i.jq, %i.jr
  store i64 %i.js, ptr %i.ji, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i127

bb.bl:                                            ; preds = %bb.bj
  %i.jt = icmp eq i32 %i.jm, 1048574
  br i1 %i.jt, label %bb.bm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i127, !prof !44

bb.bm:                                            ; preds = %bb.bl
  %i.ju = or i64 %i.jj, 1152920405095219200
  store i64 %i.ju, ptr %i.ji, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ji)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i127 unwind label %bb.cp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i127: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.jv = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.jw, ptr %i.i, align 8, !tbaa !74
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit130

bb.bn:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.jg, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit130 unwind label %bb.cp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit130: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i127, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.jx = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !42, !noalias !386 ; 5 uses
  store ptr %i.jx, ptr %19, align 8, !tbaa !42, !alias.scope !386
  %i.jy = load i64, ptr %i.jx, align 8, !noalias !386 ; 3 uses
  %i.jz = lshr i64 %i.jy, 40
  %i.ka = trunc nuw nsw i64 %i.jz to i32
  %i.kb = and i32 %i.ka, 1048575                  ; 3 uses
  %i.kc = icmp samesign ult i32 %i.kb, 1048574
  br i1 %i.kc, label %bb.bo, label %bb.bp, !prof !43

bb.bo:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit130
  %i.kd = add nuw nsw i32 %i.kb, 1
  %i.ke = zext nneg i32 %i.kd to i64
end_hunk_1
