Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/cnf_stream?download=true
inline.NumInlined: 2861
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4cvc58internal4prop9CnfStream8handleOrENS0_12NodeTemplateILb0EEE:_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 -2), ptr %next.gep, align 8, !tbaa !115
  store <2 x i64> splat (i64 -2), ptr %i.aa, align 8, !tbaa !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.t, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.x, %middle.block ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.r, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 -2, ptr %.013.i.i.i.i.i, align 8, !tbaa !115
  %i.ac = add nsw i64 %.01012.i.i.i.i.i, -1       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !276

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa48 = phi ptr [ %i.x, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa48, ptr %i.ae, align 8, !tbaa !117
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %.01341 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.d ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.ah = load ptr, ptr %1, align 8, !tbaa !123, !noalias !280 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !280
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1023                     ; 2 uses
  %i.am = icmp eq i32 %i.al, 1023
  %i.an = select i1 %i.am, i32 -1, i32 %i.al
  %i.ao = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.an)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ap = icmp eq i32 %i.ao, 2
  %i.aq = zext i1 %i.ap to i64
  %spec.select.i.i = add nuw i64 %.01341, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %sext = shl i64 %spec.select.i.i, 32
  %i.as = ashr exact i64 %sext, 29
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !152, !noalias !280
  store ptr %i.au, ptr %5, align 8, !tbaa !123, !alias.scope !280
  %i.av = invoke i64 @_ZN4cvc58internal4prop9CnfStream10getLiteralENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %5)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.01341
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ax = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc32 unwind label %bb.e   ; 6 uses

.noexc32:                                         ; preds = %bb.c
  %i.ay = xor i64 %i.av, 1
  store ptr %i.ax, ptr %2, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.af, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.az, ptr %i.ag, align 8, !tbaa !117
  store i64 %i.q, ptr %i.ax, align 8, !tbaa !89
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !89
  %i.bb = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i: ; preds = %.noexc32
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34

bb.d:                                             ; preds = %.noexc32
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bd = add nuw nsw i64 %.01341, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !279

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34

._crit_edge:                                      ; preds = %bb.d, %.loopexit
  %i.bf = xor i64 %i.q, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE6negateEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.307") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.bh = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %6, align 8, !tbaa !125   ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.bk = and i64 %i.bj, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bk, 1152920405095219200
  br i1 %.not.i.i, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit, label %bb.h, !prof !127

bb.h:                                             ; preds = %bb.g
  %i.bl = add i64 %i.bj, 1152920405095219200
  %i.bm = and i64 %i.bl, 1152920405095219200      ; 2 uses
  %i.bn = and i64 %i.bj, -1152920405095219201
  %i.bo = or disjoint i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.bi, align 8
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %bb.i, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit, !prof !127

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit: ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.k:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.l ], [ %i.bs, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34: ; preds = %bb.e, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i, %bb.m
  %.pn24.pn = phi { ptr, i32 } [ %i.bc, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i ], [ %.pn, %bb.m ], [ %i.be, %bb.e ]
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop9CnfStream9handleAndENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i:
  %2 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %4 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %i.j = load i64, ptr %i.b, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = and i64 %i.k, 67108863
  %i.m = sext i1 %i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295                 ; 5 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !123
  store ptr %i.p, ptr %3, align 8, !tbaa !123
  %i.q = call i64 @_ZN4cvc58internal4prop9CnfStream10newLiteralENS0_12NodeTemplateILb0EEEbbb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %3, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.r = add nuw nsw i64 %i.o, 1                  ; 6 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23 ; 9 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !119
  %min.iters.check = icmp samesign ult i64 %i.o, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %n.vec = and i64 %i.r, 8589934588               ; 3 uses
  %i.w = shl nuw nsw i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w     ; 2 uses
  %i.y = and i64 %i.r, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 -2), ptr %next.gep, align 8, !tbaa !115
  store <2 x i64> splat (i64 -2), ptr %i.aa, align 8, !tbaa !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.t, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.x, %middle.block ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.r, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 -2, ptr %.013.i.i.i.i.i, align 8, !tbaa !115
  %i.ac = add nsw i64 %.01012.i.i.i.i.i, -1       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !282

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa51 = phi ptr [ %i.x, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.lcssa51, ptr %i.ae, align 8, !tbaa !117
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.af = xor i64 %i.q, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.a

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %.loopexit
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  store i64 %i.q, ptr %i.ai, align 8, !tbaa !89
  %i.aj = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.a:                                             ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.01240 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.ak = load ptr, ptr %1, align 8, !tbaa !123, !noalias !286 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !286
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 1023                     ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1023
  %i.aq = select i1 %i.ap, i32 -1, i32 %i.ao
  %i.ar = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.aq)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.as = icmp eq i32 %i.ar, 2
  %i.at = zext i1 %i.as to i64
  %spec.select.i.i = add nuw i64 %.01240, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %sext = shl i64 %spec.select.i.i, 32
  %i.av = ashr exact i64 %sext, 29
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !152, !noalias !286
  store ptr %i.ax, ptr %5, align 8, !tbaa !123, !alias.scope !286
  %i.ay = invoke i64 @_ZN4cvc58internal4prop9CnfStream10getLiteralENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %5)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.az = xor i64 %i.ay, 1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.01240 ; 2 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE6negateEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.307") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bc = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc30 unwind label %bb.j   ; 6 uses

.noexc30:                                         ; preds = %bb.d
  %i.bd = xor i64 %i.bb, 1
  store ptr %i.bc, ptr %2, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store ptr %i.be, ptr %i.ag, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.be, ptr %i.ah, align 8, !tbaa !117
  store i64 %i.af, ptr %i.bc, align 8, !tbaa !89
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !89
  %i.bg = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i: ; preds = %.noexc30
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

bb.e:                                             ; preds = %.noexc30
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bi = load ptr, ptr %6, align 8, !tbaa !125   ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.bk = and i64 %i.bj, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bk, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !127

bb.f:                                             ; preds = %bb.e
  %i.bl = add i64 %i.bj, 1152920405095219200
  %i.bm = and i64 %i.bl, 1152920405095219200      ; 2 uses
  %i.bn = and i64 %i.bj, -1152920405095219201
  %i.bo = or disjoint i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.bi, align 8
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !127

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bs = add nuw nsw i64 %.01240, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !285

bb.i:                                             ; preds = %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.j ], [ %i.bh, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i
  %.pn21 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bt, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit32

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit: ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.a, %._crit_edge
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit32

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit32: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21, %bb.k ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop9CnfStream13handleImpliesENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %4 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.a = load ptr, ptr %1, align 8, !tbaa !123, !noalias !291 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !291
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !291
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !152, !noalias !291
  store ptr %i.m, ptr %5, align 8, !tbaa !123, !alias.scope !291
  %i.n = call i64 @_ZN4cvc58internal4prop9CnfStream10getLiteralENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %5) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.o = load ptr, ptr %1, align 8, !tbaa !123, !noalias !292 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !292
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 1023                       ; 2 uses
  %i.t = icmp eq i32 %i.s, 1023
  %i.u = select i1 %i.t, i32 -1, i32 %i.s
  %i.v = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.u), !noalias !292
  %i.w = icmp eq i32 %i.v, 2
  %spec.select.i.i = select i1 %i.w, i64 2, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %spec.select.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152, !noalias !292
  store ptr %i.z, ptr %6, align 8, !tbaa !123, !alias.scope !292
  %i.aa = call i64 @_ZN4cvc58internal4prop9CnfStream10getLiteralENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %6) ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !123
  store ptr %i.ab, ptr %7, align 8, !tbaa !123
  %i.ac = call i64 @_ZN4cvc58internal4prop9CnfStream10newLiteralENS0_12NodeTemplateILb0EEEbbb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %7, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNK4cvc58internal12NodeTemplateILb0EE6negateEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.307") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ad = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %.noexc unwind label %bb.g     ; 7 uses

.noexc:                                           ; preds = %bb.a
  %i.ae = xor i64 %i.n, 1
  %i.af = xor i64 %i.ac, 1
  store ptr %i.ad, ptr %4, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !117
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !89
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.aa, ptr %i.ak, align 8, !tbaa !89
  %i.al = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i: ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

bb.b:                                             ; preds = %.noexc
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.an = load ptr, ptr %8, align 8, !tbaa !125   ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.aq = add i64 %i.ao, 1152920405095219200
  %i.ar = and i64 %i.aq, 1152920405095219200      ; 2 uses
  %i.as = and i64 %i.ao, -1152920405095219201
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.an, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !127

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ax = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 6 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !117
  store i64 %i.n, ptr %i.ax, align 8, !tbaa !89
  store i64 %i.ac, ptr %i.ba, align 8, !tbaa !89
  %i.bc = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc18 unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body15

.noexc18:                                         ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.be = xor i64 %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bf = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 6 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !118
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !117
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !89
  store i64 %i.ac, ptr %i.bi, align 8, !tbaa !89
  %i.bk = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i17 ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i17: ; preds = %.noexc18
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body15

bb.f:                                             ; preds = %.noexc18
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.g ], [ %i.am, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body15

.body15:                                          ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i17, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i17 ], [ %eh.lpad-body, %.body ], [ %i.bd, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit6.i ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop9CnfStream9handleIffENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %4 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %5 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.a = load ptr, ptr %1, align 8, !tbaa !123, !noalias !297 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !297
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !297
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_0
