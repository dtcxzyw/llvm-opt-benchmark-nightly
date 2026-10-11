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

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153
  br i1 %i.z, label %bb.h, label %bb.dj, !llvm.loop !349

bb.h:                                             ; preds = %.preheader, %bb.g
  %i.z = phi i1 [ true, %.preheader ], [ false, %bb.g ] ; 2 uses
  %.060181 = phi i64 [ 0, %.preheader ], [ 1, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  br i1 %i.z, label %bb.i, label %bb.u

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
          to label %.noexc unwind label %bb.ae

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
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88 unwind label %bb.ae

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88: ; preds = %bb.n, %bb.m, %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !379
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !71, !noalias !379
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef %i.by, i32 noundef 5)
          to label %.noexc89 unwind label %.body.thread159

.body.thread159:                                  ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.noexc89:                                         ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit88
  store ptr %i.al, ptr %8, align 8, !tbaa !54, !noalias !379
  %i.ca = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 %8)
          to label %bb.p unwind label %bb.s, !noalias !379

bb.p:                                             ; preds = %.noexc89
  store ptr %i.bk, ptr %9, align 8, !tbaa !54, !noalias !379
  %i.cb = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ca, ptr noundef nonnull align 8 %9)
          to label %bb.q unwind label %bb.t, !noalias !379 ; 0 uses

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %.critedge unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.s:                                             ; preds = %.noexc89
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.t:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.r, %bb.s, %bb.t
  %.pn5.i.i = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %i.ce, %bb.t ], [ %i.cd, %bb.s ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !379
  br label %bb.af

bb.u:                                             ; preds = %bb.h
  %i.cf = load ptr, ptr %1, align 8, !tbaa !42    ; 5 uses
  store ptr %i.cf, ptr %10, align 8, !tbaa !42
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = lshr i64 %i.cg, 40
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 1048575                  ; 3 uses
  %i.ck = icmp samesign ult i32 %i.cj, 1048574
  br i1 %i.ck, label %bb.v, label %bb.w, !prof !43

bb.v:                                             ; preds = %bb.u
  %i.cl = add nuw nsw i32 %i.cj, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 40
  %i.co = and i64 %i.cg, -1152920405095219201
  %i.cp = or i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.cf, align 8
  br label %.critedge76.preheader

bb.w:                                             ; preds = %bb.u
  %i.cq = icmp eq i32 %i.cj, 1048574
  br i1 %i.cq, label %bb.x, label %.critedge76.preheader, !prof !44

bb.x:                                             ; preds = %bb.w
  %i.cr = or i64 %i.cg, 1152920405095219200
  store i64 %i.cr, ptr %i.cf, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
  br label %.critedge76.preheader

.critedge:                                        ; preds = %bb.q
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !378
  %i.cs = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.ct = and i64 %i.cs, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ct, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.y, !prof !44

bb.y:                                             ; preds = %.critedge
  %i.cu = add i64 %i.cs, 1152920405095219200
  %i.cv = and i64 %i.cu, 1152920405095219200      ; 2 uses
  %i.cw = and i64 %i.cs, -1152920405095219201
  %i.cx = or disjoint i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %i.bk, align 8
  %i.cy = icmp eq i64 %i.cv, 0
  br i1 %i.cy, label %bb.z, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !44

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %.critedge, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings14InferProofCons12convertTransENS0_12NodeTemplateILb1EEES5_RNS0_21TheoryProofStepBufferE:bb.a

.noexc96:                                         ; preds = %bb.ak
  %i.eg = icmp eq i32 %i.ef, 2
  %spec.select.i.i95 = select i1 %i.eg, i64 2, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %spec.select.i.i95
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !56, !noalias !380 ; 10 uses
  store ptr %i.ej, ptr %14, align 8, !tbaa !42, !alias.scope !380
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !380 ; 3 uses
  %i.el = lshr i64 %i.ek, 40
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = and i32 %i.em, 1048575                  ; 3 uses
  %i.eo = icmp samesign ult i32 %i.en, 1048574
  br i1 %i.eo, label %bb.al, label %bb.am, !prof !43

bb.al:                                            ; preds = %.noexc96
  %i.ep = add nuw nsw i32 %i.en, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 40
  %i.es = and i64 %i.ek, -1152920405095219201
  %i.et = or i64 %i.er, %i.es
  store i64 %i.et, ptr %i.ej, align 8, !noalias !380
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98

bb.am:                                            ; preds = %.noexc96
  %i.eu = icmp eq i32 %i.en, 1048574
  br i1 %i.eu, label %bb.an, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98, !prof !44

bb.an:                                            ; preds = %bb.am
  %i.ev = or i64 %i.ek, 1152920405095219200
  store i64 %i.ev, ptr %i.ej, align 8, !noalias !380
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98 unwind label %bb.cn

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98: ; preds = %bb.am, %bb.al, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ew = load ptr, ptr %2, align 8, !tbaa !42, !noalias !381 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !381
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = and i32 %i.ez, 1023                     ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 1023
  %i.fc = select i1 %i.fb, i32 -1, i32 %i.fa
  %i.fd = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.fc)
          to label %.noexc100 unwind label %bb.co

.noexc100:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit98
  %i.fe = icmp eq i32 %i.fd, 2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fg = zext i1 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !56, !noalias !381 ; 9 uses
  store ptr %i.fi, ptr %15, align 8, !tbaa !42, !alias.scope !381
  %i.fj = load i64, ptr %i.fi, align 8, !noalias !381 ; 3 uses
  %i.fk = lshr i64 %i.fj, 40
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 1048575                  ; 3 uses
  %i.fn = icmp samesign ult i32 %i.fm, 1048574
  br i1 %i.fn, label %bb.ao, label %bb.ap, !prof !43

bb.ao:                                            ; preds = %.noexc100
  %i.fo = add nuw nsw i32 %i.fm, 1
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 40
  %i.fr = and i64 %i.fj, -1152920405095219201
  %i.fs = or i64 %i.fq, %i.fr
  store i64 %i.fs, ptr %i.fi, align 8, !noalias !381
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102

bb.ap:                                            ; preds = %.noexc100
  %i.ft = icmp eq i32 %i.fm, 1048574
  br i1 %i.ft, label %bb.aq, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102, !prof !44

bb.aq:                                            ; preds = %bb.ap
  %i.fu = or i64 %i.fj, 1152920405095219200
  store i64 %i.fu, ptr %i.fi, align 8, !noalias !381
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102 unwind label %bb.co

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102: ; preds = %bb.ap, %bb.ao, %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !383
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !71, !noalias !383
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef %i.fw, i32 noundef 5)
          to label %.noexc105 unwind label %bb.cp

.noexc105:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102
  store ptr %i.ej, ptr %5, align 8, !tbaa !54, !noalias !383
  %i.fx = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %5)
          to label %bb.ar unwind label %bb.au, !noalias !383

bb.ar:                                            ; preds = %.noexc105
  store ptr %i.fi, ptr %6, align 8, !tbaa !54, !noalias !383
  %i.fy = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.fx, ptr noundef nonnull align 8 %6)
          to label %bb.as unwind label %bb.av, !noalias !383 ; 0 uses

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %.critedge81 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i103

bb.au:                                            ; preds = %.noexc105
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.i103

bb.av:                                            ; preds = %bb.ar
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i103

.body.i103:                                       ; preds = %bb.av, %bb.au, %bb.at
  %.pn5.i.i104 = phi { ptr, i32 } [ %i.fz, %bb.at ], [ %i.gb, %bb.av ], [ %i.ga, %bb.au ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !383
  br label %.body106

.critedge81:                                      ; preds = %bb.as
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !382
  %i.gc = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.gd = and i64 %i.gc, 1152920405095219200
  %.not.i.i109 = icmp eq i64 %i.gd, 1152920405095219200
  br i1 %.not.i.i109, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110, label %bb.aw, !prof !44

bb.aw:                                            ; preds = %.critedge81
  %i.ge = add i64 %i.gc, 1152920405095219200
  %i.gf = and i64 %i.ge, 1152920405095219200      ; 2 uses
  %i.gg = and i64 %i.gc, -1152920405095219201
  %i.gh = or disjoint i64 %i.gf, %i.gg
  store i64 %i.gh, ptr %i.fi, align 8
  %i.gi = icmp eq i64 %i.gf, 0
  br i1 %i.gi, label %bb.ax, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110, !prof !44

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110: ; preds = %.critedge81, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.gl = load i64, ptr %i.ej, align 8            ; 3 uses
  %i.gm = and i64 %i.gl, 1152920405095219200
  %.not.i.i111 = icmp eq i64 %i.gm, 1152920405095219200
  br i1 %.not.i.i111, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit112, label %bb.az, !prof !44

bb.az:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110
  %i.gn = add i64 %i.gl, 1152920405095219200
  %i.go = and i64 %i.gn, 1152920405095219200      ; 2 uses
  %i.gp = and i64 %i.gl, -1152920405095219201
  %i.gq = or disjoint i64 %i.go, %i.gp
  store i64 %i.gq, ptr %i.ej, align 8
  %i.gr = icmp eq i64 %i.go, 0
  br i1 %i.gr, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit112, !prof !44

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit112 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit112: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.critedge83

.critedge83:                                      ; preds = %bb.aj, %bb.ah, %bb.ai, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.gu = load ptr, ptr %1, align 8, !tbaa !42, !noalias !384 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !384
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = and i32 %i.gx, 1023                     ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 1023
  %i.ha = select i1 %i.gz, i32 -1, i32 %i.gy
  %i.hb = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ha)
          to label %.noexc114 unwind label %bb.cs

.noexc114:                                        ; preds = %.critedge83
  %i.hc = icmp eq i32 %i.hb, 2
  %20 = zext i1 %i.hc to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %21 = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.060181
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %20
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !56, !noalias !384 ; 9 uses
  store ptr %i.hf, ptr %16, align 8, !tbaa !42, !alias.scope !384
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !384 ; 3 uses
  %i.hh = lshr i64 %i.hg, 40
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = and i32 %i.hi, 1048575                  ; 3 uses
  %i.hk = icmp samesign ult i32 %i.hj, 1048574
  br i1 %i.hk, label %bb.bc, label %bb.bd, !prof !43

bb.bc:                                            ; preds = %.noexc114
  %i.hl = add nuw nsw i32 %i.hj, 1
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 40
  %i.ho = and i64 %i.hg, -1152920405095219201
  %i.hp = or i64 %i.hn, %i.ho
  store i64 %i.hp, ptr %i.hf, align 8, !noalias !384
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116

bb.bd:                                            ; preds = %.noexc114
  %i.hq = icmp eq i32 %i.hj, 1048574
  br i1 %i.hq, label %bb.be, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116, !prof !44

bb.be:                                            ; preds = %bb.bd
  %i.hr = or i64 %i.hg, 1152920405095219200
  store i64 %i.hr, ptr %i.hf, align 8, !noalias !384
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116 unwind label %bb.cs

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116: ; preds = %bb.bd, %bb.bc, %bb.be
  %i.hs = load ptr, ptr %2, align 8, !tbaa !42, !noalias !385 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !385
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = and i32 %i.hv, 1023                     ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 1023
  %i.hy = select i1 %i.hx, i32 -1, i32 %i.hw
  %i.hz = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.hy)
          to label %.noexc118 unwind label %bb.ct

.noexc118:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit116
  %i.ia = icmp eq i32 %i.hz, 2
  %i.ib = zext i1 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.035180
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ib
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !56, !noalias !385 ; 8 uses
  %i.ig = load i64, ptr %i.if, align 8, !noalias !385 ; 4 uses
  %i.ih = lshr i64 %i.ig, 40
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = and i32 %i.ii, 1048575                  ; 3 uses
  %i.ik = icmp samesign ult i32 %i.ij, 1048574
  br i1 %i.ik, label %bb.bf, label %bb.bg, !prof !43

bb.bf:                                            ; preds = %.noexc118
  %i.il = add nuw nsw i32 %i.ij, 1
  %i.im = zext nneg i32 %i.il to i64
  %i.in = shl nuw nsw i64 %i.im, 40
  %i.io = and i64 %i.ig, -1152920405095219201
  %i.ip = or i64 %i.in, %i.io                     ; 2 uses
  store i64 %i.ip, ptr %i.if, align 8, !noalias !385
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120

bb.bg:                                            ; preds = %.noexc118
  %i.iq = icmp eq i32 %i.ij, 1048574
  br i1 %i.iq, label %bb.bh, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120, !prof !44

bb.bh:                                            ; preds = %bb.bg
  %i.ir = or i64 %i.ig, 1152920405095219200
  store i64 %i.ir, ptr %i.if, align 8, !noalias !385
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.if)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120_crit_edge unwind label %bb.ct

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120_crit_edge: ; preds = %bb.bh
  %.pre = load i64, ptr %i.if, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120: ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120_crit_edge, %bb.bg, %bb.bf
  %i.is = phi i64 [ %.pre, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120_crit_edge ], [ %i.ig, %bb.bg ], [ %i.ip, %bb.bf ] ; 3 uses
  %.not183 = icmp eq ptr %i.hf, %i.if             ; 2 uses
  %i.it = and i64 %i.is, 1152920405095219200
  %.not.i.i121 = icmp eq i64 %i.it, 1152920405095219200
  br i1 %.not.i.i121, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122, label %bb.bi, !prof !44

bb.bi:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120
  %i.iu = add i64 %i.is, 1152920405095219200
  %i.iv = and i64 %i.iu, 1152920405095219200      ; 2 uses
  %i.iw = and i64 %i.is, -1152920405095219201
  %i.ix = or disjoint i64 %i.iv, %i.iw
  store i64 %i.ix, ptr %i.if, align 8
  %i.iy = icmp eq i64 %i.iv, 0
  br i1 %i.iy, label %bb.bj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122, !prof !44

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.if)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit120, %bb.bi, %bb.bj
  %i.jb = load i64, ptr %i.hf, align 8            ; 3 uses
  %i.jc = and i64 %i.jb, 1152920405095219200
  %.not.i.i123 = icmp eq i64 %i.jc, 1152920405095219200
  br i1 %.not.i.i123, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124, label %bb.bl, !prof !44

bb.bl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122
  %i.jd = add i64 %i.jb, 1152920405095219200
  %i.je = and i64 %i.jd, 1152920405095219200      ; 2 uses
  %i.jf = and i64 %i.jb, -1152920405095219201
  %i.jg = or disjoint i64 %i.je, %i.jf
  store i64 %i.jg, ptr %i.hf, align 8
  %i.jh = icmp eq i64 %i.je, 0
  br i1 %i.jh, label %bb.bm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124, !prof !44

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit122, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.not183, label %bb.bo, label %.critedge85

bb.bo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.cv

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.bo
  %i.jk = load ptr, ptr %i.i, align 8, !tbaa !74  ; 3 uses
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !75
  %.not.i127 = icmp eq ptr %i.jk, %i.jl
  br i1 %.not.i127, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.jm = load ptr, ptr %13, align 8, !tbaa !42   ; 5 uses
  store ptr %i.jm, ptr %i.jk, align 8, !tbaa !42
  %i.jn = load i64, ptr %i.jm, align 8            ; 3 uses
  %i.jo = lshr i64 %i.jn, 40
  %i.jp = trunc nuw nsw i64 %i.jo to i32
  %i.jq = and i32 %i.jp, 1048575                  ; 3 uses
  %i.jr = icmp samesign ult i32 %i.jq, 1048574
  br i1 %i.jr, label %bb.bq, label %bb.br, !prof !43

bb.bq:                                            ; preds = %bb.bp
  %i.js = add nuw nsw i32 %i.jq, 1
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = shl nuw nsw i64 %i.jt, 40
  %i.jv = and i64 %i.jn, -1152920405095219201
  %i.jw = or i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %i.jm, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i128

bb.br:                                            ; preds = %bb.bp
  %i.jx = icmp eq i32 %i.jq, 1048574
  br i1 %i.jx, label %bb.bs, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i128, !prof !44

bb.bs:                                            ; preds = %bb.br
  %i.jy = or i64 %i.jn, 1152920405095219200
  store i64 %i.jy, ptr %i.jm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i128 unwind label %bb.cv

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i128: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.jz = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.ka, ptr %i.i, align 8, !tbaa !74
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit131

bb.bt:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.jk, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit131 unwind label %bb.cv

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit131: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i128, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.kb = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !42, !noalias !386 ; 5 uses
  store ptr %i.kb, ptr %19, align 8, !tbaa !42, !alias.scope !386
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !386 ; 3 uses
  %i.kd = lshr i64 %i.kc, 40
  %i.ke = trunc nuw nsw i64 %i.kd to i32
  %i.kf = and i32 %i.ke, 1048575                  ; 3 uses
  %i.kg = icmp samesign ult i32 %i.kf, 1048574
  br i1 %i.kg, label %bb.bu, label %bb.bv, !prof !43

bb.bu:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit131
  %i.kh = add nuw nsw i32 %i.kf, 1
  %i.ki = zext nneg i32 %i.kh to i64
end_hunk_1
