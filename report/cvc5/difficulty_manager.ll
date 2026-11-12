Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/difficulty_manager?download=true
inline.NumInlined: 1130
inline.NumDeleted: 522
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal12NodeTemplateILb1EED2Ev:bb.a
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEEmED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !60

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK4cvc58internal6theory17DifficultyManager20getCurrentDifficultyERKNS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78
  %.not.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit, label %bb.c, !llvm.loop !334

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.i = tail call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 4 uses
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !68
  %i.u = icmp eq i64 %i.i, %i.t
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = icmp eq ptr %i.q, %i.v
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.z = icmp eq i64 %i.i, %i.af
  %i.aa = load ptr, ptr %i.y, align 8
  %i.ab = icmp eq ptr %i.q, %i.aa
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.p, %bb.f ]
  %i.ad = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !64 ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !68 ; 2 uses
  %i.ag = urem i64 %i.af, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.ag, %i.l
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.h
  br label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit.thread, !llvm.loop !2

_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.ad, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !62
  br label %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit.thread

_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit, %bb.i
  %.0 = phi i64 [ %i.ak, %bb.i ], [ 0, %_ZNK4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEEmSt4hashIS4_EE4findERKS4_.exit ], [ 0, %..loopexit_crit_edge21.i.i.i.i.i ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory17DifficultyManager11notifyLemmaENS0_12NodeTemplateILb1EEEb(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::vector.283", align 8   ; 19 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.390", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.390", align 8 ; 6 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.390", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.390", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !54
  %i.c = call noundef zeroext i1 @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE11insert_safeERKS4_RKb(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.d = call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264, !nonnull !265, !align !266
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !279
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !264, !nonnull !265, !align !266
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !279
  %i.o = icmp eq i32 %i.n, 0
  %spec.select = and i1 %2, %i.o
  br i1 %spec.select, label %.critedge, label %bb.br

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.p = load ptr, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 1023
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  switch i32 %i.t, label %bb.an [
    i32 23, label %bb.c
    i32 22, label %bb.e
  ]

bb.c:                                             ; preds = %.critedge
  %i.u = load i64, ptr %i.q, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 1023                       ; 2 uses
  %i.x = icmp eq i32 %i.w, 1023
  %i.y = select i1 %i.x, i32 -1, i32 %i.w
  %i.z = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.y)
          to label %bb.d unwind label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.z, 2
  %spec.select.v.i.i = select i1 %i.aa, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.v.i.i
  %i.ab = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %12 = load i64, ptr %i.ad, align 8
  %13 = lshr i64 %12, 32
  %14 = and i64 %13, 67108863
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %14
  %i.af = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ai, ptr nonnull %spec.select.i.i, ptr nonnull %i.ae)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ao

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.aj = load i64, ptr %i.q, align 8, !noalias !340
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1023                     ; 2 uses
  %i.am = icmp eq i32 %i.al, 1023
  %i.an = select i1 %i.am, i32 -1, i32 %i.al
  %i.ao = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.an)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.e
  %i.ap = icmp eq i32 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ar = zext i1 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !280, !noalias !340 ; 5 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !58, !alias.scope !340
  %i.au = load i64, ptr %i.at, align 8, !noalias !340 ; 3 uses
  %i.av = lshr i64 %i.au, 40
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 1048575                  ; 3 uses
  %i.ay = icmp samesign ult i32 %i.ax, 1048574
  br i1 %i.ay, label %bb.f, label %bb.g, !prof !59

bb.f:                                             ; preds = %.noexc
  %i.az = add nuw nsw i32 %i.ax, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 40
  %i.bc = and i64 %i.au, -1152920405095219201
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.at, align 8, !noalias !340
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.g:                                             ; preds = %.noexc
  %i.be = icmp eq i32 %i.ax, 1048574
  br i1 %i.be, label %bb.h, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !60

bb.h:                                             ; preds = %bb.g
  %i.bf = or i64 %i.au, 1152920405095219200
  store i64 %i.bf, ptr %i.at, align 8, !noalias !340
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit unwind label %bb.af

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.g, %bb.f, %bb.h
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.ag

bb.i:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !282 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !283
  %.not.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %4, align 8, !tbaa !58    ; 5 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !58
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = lshr i64 %i.bl, 40
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1048575                  ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 1048574
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !59

bb.k:                                             ; preds = %bb.j
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = and i64 %i.bl, -1152920405095219201
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.bv = icmp eq i32 %i.bo, 1048574
  br i1 %i.bv, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !60

bb.m:                                             ; preds = %bb.l
  %i.bw = or i64 %i.bl, 1152920405095219200
  store i64 %i.bw, ptr %i.bk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.ah

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bx = load ptr, ptr %i.bg, align 8, !tbaa !282
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.by, ptr %i.bg, align 8, !tbaa !282
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ah

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.n
  %i.bz = load ptr, ptr %4, align 8, !tbaa !58    ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = and i64 %i.ca, 1152920405095219200
  %.not.i.i44 = icmp eq i64 %i.cb, 1152920405095219200
  br i1 %.not.i.i44, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.o, !prof !60

bb.o:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.cc = add i64 %i.ca, 1152920405095219200
  %i.cd = and i64 %i.cc, 1152920405095219200      ; 2 uses
  %i.ce = and i64 %i.ca, -1152920405095219201
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bz, align 8
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !60

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.o, %bb.p
  %i.cj = load ptr, ptr %5, align 8, !tbaa !58    ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = and i64 %i.ck, 1152920405095219200
  %.not.i.i45 = icmp eq i64 %i.cl, 1152920405095219200
  br i1 %.not.i.i45, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit46, label %bb.r, !prof !60

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cm = add i64 %i.ck, 1152920405095219200
  %i.cn = and i64 %i.cm, 1152920405095219200      ; 2 uses
  %i.co = and i64 %i.ck, -1152920405095219201
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.cj, align 8
  %i.cq = icmp eq i64 %i.cn, 0
  br i1 %i.cq, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit46, !prof !60

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit46 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit46: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ct = load ptr, ptr %1, align 8, !tbaa !58, !noalias !341 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !341
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 1023                     ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1023
  %i.cz = select i1 %i.cy, i32 -1, i32 %i.cx
  %i.da = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.cz)
          to label %.noexc48 unwind label %bb.ak

.noexc48:                                         ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit46
  %i.db = icmp eq i32 %i.da, 2
  %spec.select.i.i47 = select i1 %i.db, i64 2, i64 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %spec.select.i.i47
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !280, !noalias !341 ; 5 uses
  store ptr %i.de, ptr %6, align 8, !tbaa !58, !alias.scope !341
  %i.df = load i64, ptr %i.de, align 8, !noalias !341 ; 3 uses
  %i.dg = lshr i64 %i.df, 40
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = and i32 %i.dh, 1048575                  ; 3 uses
  %i.dj = icmp samesign ult i32 %i.di, 1048574
  br i1 %i.dj, label %bb.u, label %bb.v, !prof !59

bb.u:                                             ; preds = %.noexc48
  %i.dk = add nuw nsw i32 %i.di, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 40
  %i.dn = and i64 %i.df, -1152920405095219201
  %i.do = or i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.de, align 8, !noalias !341
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit50

bb.v:                                             ; preds = %.noexc48
  %i.dp = icmp eq i32 %i.di, 1048574
  br i1 %i.dp, label %bb.w, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit50, !prof !60

bb.w:                                             ; preds = %bb.v
  %i.dq = or i64 %i.df, 1152920405095219200
  store i64 %i.dq, ptr %i.de, align 8, !noalias !341
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit50 unwind label %bb.ak

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit50: ; preds = %bb.v, %bb.u, %bb.w
  %i.dr = load ptr, ptr %i.bg, align 8, !tbaa !282 ; 3 uses
  %i.ds = load ptr, ptr %i.bi, align 8, !tbaa !283
  %.not.i.i51 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i.i51, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit50
  %i.dt = load ptr, ptr %6, align 8, !tbaa !58    ; 5 uses
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !58
  %i.du = load i64, ptr %i.dt, align 8            ; 3 uses
  %i.dv = lshr i64 %i.du, 40
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = and i32 %i.dw, 1048575                  ; 3 uses
  %i.dy = icmp samesign ult i32 %i.dx, 1048574
  br i1 %i.dy, label %bb.y, label %bb.z, !prof !59

bb.y:                                             ; preds = %bb.x
  %i.dz = add nuw nsw i32 %i.dx, 1
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 40
  %i.ec = and i64 %i.du, -1152920405095219201
  %i.ed = or i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.dt, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i52

bb.z:                                             ; preds = %bb.x
  %i.ee = icmp eq i32 %i.dx, 1048574
  br i1 %i.ee, label %bb.aa, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i52, !prof !60

bb.aa:                                            ; preds = %bb.z
  %i.ef = or i64 %i.du, 1152920405095219200
  store i64 %i.ef, ptr %i.dt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i52 unwind label %bb.al

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i52: ; preds = %bb.aa, %bb.z, %bb.y
  %i.eg = load ptr, ptr %i.bg, align 8, !tbaa !282
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.eh, ptr %i.bg, align 8, !tbaa !282
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit55

bb.ab:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit50
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dr, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit55 unwind label %bb.al

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit55: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i52, %bb.ab
  %i.ei = load ptr, ptr %6, align 8, !tbaa !58    ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8            ; 3 uses
  %i.ek = and i64 %i.ej, 1152920405095219200
  %.not.i.i56 = icmp eq i64 %i.ek, 1152920405095219200
  br i1 %.not.i.i56, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57, label %bb.ac, !prof !60

bb.ac:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit55
  %i.el = add i64 %i.ej, 1152920405095219200
  %i.em = and i64 %i.el, 1152920405095219200      ; 2 uses
  %i.en = and i64 %i.ej, -1152920405095219201
  %i.eo = or disjoint i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.ei, align 8
  %i.ep = icmp eq i64 %i.em, 0
  br i1 %i.ep, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57, !prof !60

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit55, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.af:                                            ; preds = %bb.h, %bb.e
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.n, %bb.m
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ah ], [ %i.et, %bb.ag ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.es, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bs

bb.ak:                                            ; preds = %bb.w, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit46
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ab, %bb.aa
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn28 = phi { ptr, i32 } [ %i.ew, %bb.al ], [ %i.ev, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bs

bb.an:                                            ; preds = %.critedge
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.c, %bb.d, %bb.an
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.d, %bb.an, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !282 ; 2 uses
  %i.fa = load ptr, ptr %3, align 8, !tbaa !284   ; 3 uses
  %.not = icmp eq ptr %i.ez, %i.fa
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97
  %i.fc = phi ptr [ %i.fa, %.lr.ph ], [ %i.hi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97 ]
  %.014126 = phi i64 [ 0, %.lr.ph ], [ %i.fr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.014126
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !58 ; 11 uses
  store ptr %i.fe, ptr %7, align 8, !tbaa !58
  %i.ff = load i64, ptr %i.fe, align 8            ; 3 uses
  %i.fg = lshr i64 %i.ff, 40
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = and i32 %i.fh, 1048575                  ; 3 uses
  %i.fj = icmp samesign ult i32 %i.fi, 1048574
  br i1 %i.fj, label %bb.aq, label %bb.ar, !prof !59

bb.aq:                                            ; preds = %bb.ap
  %i.fk = add nuw nsw i32 %i.fi, 1
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 40
  %i.fn = and i64 %i.ff, -1152920405095219201
  %i.fo = or i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.fe, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fp = icmp eq i32 %i.fi, 1048574
  br i1 %i.fp, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !60

bb.as:                                            ; preds = %bb.ar
  %i.fq = or i64 %i.ff, 1152920405095219200
  store i64 %i.fq, ptr %i.fe, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fe)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.aw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ar, %bb.aq, %bb.as
  %i.fr = add nuw i64 %.014126, 1                 ; 2 uses
  store ptr %i.fe, ptr %8, align 8, !tbaa !286
  %i.fs = invoke noundef zeroext i1 @_ZN4cvc58internal4expr19isBooleanConnectiveENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %8)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  br i1 %i.fs, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ft = load ptr, ptr %i.ey, align 8, !tbaa !52
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = and i32 %i.fw, 1023                     ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 1023
  %i.fz = select i1 %i.fy, i32 -1, i32 %i.fx
  %i.ga = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.fz)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gb = icmp eq i32 %i.ga, 2
  %spec.select.v.i.i62 = select i1 %i.gb, i64 32, i64 24
  %spec.select.i.i63 = getelementptr inbounds nuw i8, ptr %i.fe, i64 %spec.select.v.i.i62
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %15 = load i64, ptr %i.fu, align 8
  %16 = lshr i64 %15, 32
  %17 = and i64 %16, 67108863
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %17
  %i.ge = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.gf = ptrtoint ptr %i.ft to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 %i.gh
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.gi, ptr nonnull %spec.select.i.i63, ptr nonnull %i.gd)
          to label %bb.bh unwind label %bb.ax, !llvm.loop !339

bb.aw:                                            ; preds = %bb.as
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ax:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, %bb.av, %bb.au
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ay:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.gl = load ptr, ptr %i.fb, align 8, !tbaa !42
  store ptr %i.fe, ptr %10, align 8, !tbaa !286
  invoke void @_ZN4cvc58internal6theory16RelevanceManager25getExplanationForRelevantENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.390") align 8 %9, ptr noundef nonnull align 8 dereferenceable(656) %i.gl, ptr noundef nonnull align 8 %10)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit91 unwind label %bb.bf

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit91: ; preds = %bb.ay
  %i.gm = load ptr, ptr %9, align 8, !tbaa !286
  %i.gn = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.az, label %bb.bd, !prof !287

bb.az:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit91
  %i.gp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i92 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i92, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.bb unwind label %bb.bc     ; 3 uses

bb.bb:                                            ; preds = %bb.ba
  store i64 1152920405095219200, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 0, i64 16, i1 false)
  store ptr %i.gq, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !280
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.body

bb.bd:                                            ; preds = %bb.bb, %bb.az, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit91
  %i.gt = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !280
  %i.gu = icmp eq ptr %i.gm, %i.gt
  br i1 %i.gu, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gv = load ptr, ptr %9, align 8, !tbaa !286
  store ptr %i.gv, ptr %11, align 8, !tbaa !286
  invoke void @_ZN4cvc58internal6theory17DifficultyManager19incrementDifficultyENS0_12NodeTemplateILb0EEEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 %11, i64 noundef 1)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.ay, %bb.be
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.pre = load ptr, ptr %7, align 8, !tbaa !58
  br label %bb.bh

bb.bh:                                            ; preds = %bb.av, %bb.bg
  %i.gx = phi ptr [ %i.fe, %bb.av ], [ %.pre, %bb.bg ] ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8            ; 3 uses
  %i.gz = and i64 %i.gy, 1152920405095219200
  %.not.i.i96 = icmp eq i64 %i.gz, 1152920405095219200
  br i1 %.not.i.i96, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97, label %bb.bi, !prof !60

bb.bi:                                            ; preds = %bb.bh
  %i.ha = add i64 %i.gy, 1152920405095219200
  %i.hb = and i64 %i.ha, 1152920405095219200      ; 2 uses
  %i.hc = and i64 %i.gy, -1152920405095219201
  %i.hd = or disjoint i64 %i.hb, %i.hc
  store i64 %i.hd, ptr %i.gx, align 8
  %i.he = icmp eq i64 %i.hb, 0
  br i1 %i.he, label %bb.bj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97, !prof !60

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97: ; preds = %bb.bh, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.hh = load ptr, ptr %i.ey, align 8, !tbaa !282 ; 2 uses
  %i.hi = load ptr, ptr %3, align 8, !tbaa !284   ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 3
  %i.hn = icmp ult i64 %i.fr, %i.hm
  br i1 %i.hn, label %bb.ap, label %._crit_edge

.body:                                            ; preds = %bb.bf, %bb.bc
  %.pn32.pn = phi { ptr, i32 } [ %i.gs, %bb.bc ], [ %i.gw, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bl

bb.bl:                                            ; preds = %.body, %bb.ax
  %.pn35 = phi { ptr, i32 } [ %i.gk, %bb.ax ], [ %.pn32.pn, %.body ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.aw
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.bl ], [ %i.gj, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bs

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %.lcssa120 = phi ptr [ %i.ez, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ], [ %i.hh, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97 ] ; 2 uses
  %.lcssa = phi ptr [ %i.fa, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ], [ %i.hi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit97 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa120
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hy, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.ho = load ptr, ptr %.05.i.i.i, align 8, !tbaa !58 ; 3 uses
  %i.hp = load i64, ptr %i.ho, align 8            ; 3 uses
  %i.hq = and i64 %i.hp, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hq, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.bn, !prof !60

bb.bn:                                            ; preds = %.lr.ph.i.i.i
  %i.hr = add i64 %i.hp, 1152920405095219200
  %i.hs = and i64 %i.hr, 1152920405095219200      ; 2 uses
  %i.ht = and i64 %i.hp, -1152920405095219201
  %i.hu = or disjoint i64 %i.hs, %i.ht
  store i64 %i.hu, ptr %i.ho, align 8
  %i.hv = icmp eq i64 %i.hs, 0
  br i1 %i.hv, label %bb.bo, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !60

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.bo, %bb.bn, %.lr.ph.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hy, %.lcssa120
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !284
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.hz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !283
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ie) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.b, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  ret void

bb.bs:                                            ; preds = %bb.bm, %bb.ao, %bb.am, %bb.aj
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.bm ], [ %i.ex, %bb.ao ], [ %.pn28, %bb.am ], [ %.pn.pn, %bb.aj ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn35.pn.pn
}

declare noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1
end_hunk_0
