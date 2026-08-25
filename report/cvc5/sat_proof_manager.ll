Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sat_proof_manager?download=true
inline.NumInlined: 3802
inline.NumDeleted: 1399
begin_hunk_0_@_ZN4cvc58internal4prop15SatProofManager13finalizeProofENS0_7Minisat3LitEb:bb.a
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %.body

.body:                                            ; preds = %.thread, %bb.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.ae, %.thread ], [ %i.aj, %bb.i ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.af

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  store ptr %i.e, ptr %8, align 8, !tbaa !110
  %i.bl = load i64, ptr %i.e, align 8             ; 3 uses
  %i.bm = lshr i64 %i.bl, 40
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 1048575                  ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 1048574
  br i1 %i.bp, label %bb.u, label %bb.v, !prof !128

bb.u:                                             ; preds = %bb.t
  %i.bq = add nuw nsw i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 40
  %i.bt = and i64 %i.bl, -1152920405095219201
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.e, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit23

bb.v:                                             ; preds = %bb.t
  %i.bv = icmp eq i32 %i.bo, 1048574
  br i1 %i.bv, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit23, !prof !127

bb.w:                                             ; preds = %bb.v
  %i.bw = or i64 %i.bl, 1152920405095219200
  store i64 %i.bw, ptr %i.e, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit23 unwind label %bb.ae

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit23: ; preds = %bb.v, %bb.u, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bx = load i64, ptr %3, align 8, !tbaa !104
  %i.by = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %bb.x unwind label %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit.i: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit23
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit23
  store ptr %i.by, ptr %9, align 8, !tbaa !173
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !174
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !104
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !219
  invoke void @_ZN4cvc58internal4prop15SatProofManager13finalizeProofENS0_12NodeTemplateILb1EEERKSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit: ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.cd = load i64, ptr %i.e, align 8             ; 4 uses
  %i.ce = and i64 %i.cd, 1152920405095219200
  %.not.i.i28 = icmp eq i64 %i.ce, 1152920405095219200
  br i1 %.not.i.i28, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, label %bb.y, !prof !127

bb.y:                                             ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit
  %i.cf = add i64 %i.cd, 1152920405095219200
  %i.cg = and i64 %i.cf, 1152920405095219200      ; 2 uses
  %i.ch = and i64 %i.cd, -1152920405095219201
  %i.ci = or disjoint i64 %i.cg, %i.ch            ; 2 uses
  store i64 %i.ci, ptr %i.e, align 8
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %bb.z, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, !prof !127

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29_crit_edge unwind label %bb.aa

._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29_crit_edge: ; preds = %bb.z
  %.pre = load i64, ptr %i.e, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29

bb.aa:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29_crit_edge, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit, %bb.y
  %i.cm = phi i64 [ %.pre, %._ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29_crit_edge ], [ %i.cd, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cn = and i64 %i.cm, 1152920405095219200
  %.not.i.i30 = icmp eq i64 %i.cn, 1152920405095219200
  br i1 %.not.i.i30, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31, label %bb.ab, !prof !127

bb.ab:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29
  %i.co = add i64 %i.cm, 1152920405095219200
  %i.cp = and i64 %i.co, 1152920405095219200      ; 2 uses
  %i.cq = and i64 %i.cm, -1152920405095219201
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.e, align 8
  %i.cs = icmp eq i64 %i.cp, 0
  br i1 %i.cs, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31, !prof !127

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.ae:                                            ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34: ; preds = %bb.x
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 8) #24
  br label %.body24

.body24:                                          ; preds = %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit.i, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34
  %.pn15 = phi { ptr, i32 } [ %i.cw, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit34 ], [ %i.bz, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  br label %bb.af

bb.af:                                            ; preds = %.body24, %bb.ae, %.loopexit
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %.body24 ], [ %i.cv, %bb.ae ], [ %.pn.pn, %.loopexit ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop15SatProofManager22registerSatAssumptionsERKSt6vectorINS0_12NodeTemplateILb1EEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !183    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.07.011 = phi ptr [ %i.b, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !126
  %i.f = call noundef zeroext i1 @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE11insert_safeERKS4_RKb(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.07.011, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop15SatProofManager13finalizeProofERKNS0_7Minisat6ClauseEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %5 = alloca %"class.std::vector.376", align 8   ; 8 uses
  %6 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = load i64, ptr %1, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 5                         ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.h = phi ptr [ null, %bb.a ], [ %i.ar, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.i = phi ptr [ null, %bb.a ], [ %i.as, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  store ptr %i.i, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN4cvc58internal4prop15SatProofManager13getClauseNodeERKNS0_7Minisat6ClauseE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.w

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %.0.lcssa.i.i.i.i.i.i.pn, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit ] ; 12 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !180
  %i.n = invoke i64 @_ZN4cvc58internal4prop16MinisatSatSolver12toSatLiteralENS0_7Minisat3LitE(i32 %.sroa.0.0.copyload.i)
          to label %bb.d unwind label %.loopexit73 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.n, ptr %i.k, align 8, !tbaa !104
  %8 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %8, ptr %i.f, align 8, !tbaa !219
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.g, label %_ZNKSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.l, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #27
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #25
          to label %.noexc50 unwind label %.loopexit73 ; 8 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i64 %i.n, ptr %i.z, align 8, !tbaa !104
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc50
  %i.aa = ptrtoaddr ptr %i.y to i64
  %i.ab = add i64 %i.o, -8
  %i.ac = sub i64 %i.ab, %i.p                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 24
  %i.af = sub i64 %i.p, %i.aa
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.aj ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.l, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.ak = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep142, align 8, !tbaa !104, !alias.scope !347, !noalias !344
  %wide.load143 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !104, !alias.scope !347, !noalias !344
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !104, !alias.scope !344, !noalias !347
  store <2 x i64> %wide.load143, ptr %i.al, align 8, !tbaa !104, !alias.scope !344, !noalias !347
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader145

.lr.ph.i.i.i.i.i.i.preheader145:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader145, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader145 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader145 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !104, !alias.scope !347, !noalias !344
  store i64 %i.an, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !104, !alias.scope !344, !noalias !347
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !350

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc50
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc50 ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %9 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #24
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %9, ptr %i.f, align 8, !tbaa !219
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !174
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %i.ar = phi ptr [ %i.aq, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %9, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %8, %bb.e ]
  %i.as = phi ptr [ %i.y, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.l, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !351

.loopexit73:                                      ; preds = %bb.c, %_ZNKSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %3, align 8
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.i:                                             ; preds = %bb.b
  br i1 %2, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.at = load ptr, ptr %4, align 8, !tbaa !110   ; 5 uses
  store ptr %i.at, ptr %6, align 8, !tbaa !110
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = lshr i64 %i.au, 40
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 1048575                  ; 3 uses
  %i.ay = icmp samesign ult i32 %i.ax, 1048574
  br i1 %i.ay, label %bb.k, label %bb.l, !prof !128

bb.k:                                             ; preds = %bb.j
  %i.az = add nuw nsw i32 %i.ax, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 40
  %i.bc = and i64 %i.au, -1152920405095219201
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.at, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.be = icmp eq i32 %i.ax, 1048574
  br i1 %i.be, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !127

bb.m:                                             ; preds = %bb.l
  %i.bf = or i64 %i.au, 1152920405095219200
  store i64 %i.bf, ptr %i.at, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.x

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.l, %bb.k, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bg = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 8 uses

.thread:                                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bg, ptr %5, align 8, !tbaa !194
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !188
  %i.bl = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef nonnull %6, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bg)
          to label %bb.o unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 8) #24
  br label %.body

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !187
  %.not10.i = icmp eq ptr %i.bg, %i.bl
  br i1 %.not10.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %bb.p

bb.p:                                             ; preds = %.noexc54, %.lr.ph.i52
  %.sroa.07.011.i = phi ptr [ %i.bg, %.lr.ph.i52 ], [ %i.bq, %.noexc54 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !126
  %i.bp = invoke noundef zeroext i1 @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE11insert_safeERKS4_RKb(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.07.011.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc54 unwind label %bb.y   ; 0 uses

.noexc54:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8 ; 2 uses
  %.not.i53 = icmp eq ptr %i.bq, %i.bl
  br i1 %.not.i53, label %.lr.ph.i.i.i, label %bb.p

.lr.ph.i.i.i:                                     ; preds = %.noexc54, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.bg, %.noexc54 ] ; 2 uses
  %i.br = load ptr, ptr %.05.i.i.i, align 8, !tbaa !110 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = and i64 %i.bs, 1152920405095219200
  %.not.i.i.i.i.i.i55 = icmp eq i64 %i.bt, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i55, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.q, !prof !127

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = add i64 %i.bs, 1152920405095219200
  %i.bv = and i64 %i.bu, 1152920405095219200      ; 2 uses
  %i.bw = and i64 %i.bs, -1152920405095219201
  %i.bx = or disjoint i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.br, align 8
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %bb.r, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !127

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.r, %bb.q, %.lr.ph.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cb, %i.bl
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !195

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 8) #24
  %i.cc = load ptr, ptr %6, align 8, !tbaa !110   ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.ce = and i64 %i.cd, 1152920405095219200
  %.not.i.i57 = icmp eq i64 %i.ce, 1152920405095219200
  br i1 %.not.i.i57, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.t, !prof !127

bb.t:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.cf = add i64 %i.cd, 1152920405095219200
  %i.cg = and i64 %i.cf, 1152920405095219200      ; 2 uses
  %i.ch = and i64 %i.cd, -1152920405095219201
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.cc, align 8
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !127

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.z

bb.w:                                             ; preds = %bb.b
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.y:                                             ; preds = %bb.p
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  br label %.body

.body:                                            ; preds = %.thread, %bb.n, %bb.y
  %.pn34 = phi { ptr, i32 } [ %i.co, %bb.y ], [ %i.bh, %.thread ], [ %i.bm, %bb.n ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn34.pn = phi { ptr, i32 } [ %i.cn, %bb.x ], [ %.pn34, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.an

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.i
  %i.cp = load ptr, ptr %4, align 8, !tbaa !110   ; 8 uses
  store ptr %i.cp, ptr %7, align 8, !tbaa !110
  %i.cq = load i64, ptr %i.cp, align 8            ; 3 uses
  %i.cr = lshr i64 %i.cq, 40
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 1048575                  ; 3 uses
  %i.cu = icmp samesign ult i32 %i.ct, 1048574
  br i1 %i.cu, label %bb.aa, label %bb.ab, !prof !128

bb.aa:                                            ; preds = %bb.z
  %i.cv = add nuw nsw i32 %i.ct, 1
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 40
  %i.cy = and i64 %i.cq, -1152920405095219201
  %i.cz = or i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.cp, align 8
end_hunk_0
