Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/proof_utils?download=true
inline.NumInlined: 1199
inline.NumDeleted: 475
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN18reduce_hypotheses014add_hypothesesEP3app:bb.a
  %i.eo = phi i32 [ %i.dm, %.lr.ph.i._crit_edge ], [ -1, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12expand_tableEv.exit ] ; 2 uses
  %i.ep = phi ptr [ %.pre, %.lr.ph.i._crit_edge ], [ %i.dq, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12expand_tableEv.exit ] ; 3 uses
  %i.eq = phi i32 [ %i.dj, %.lr.ph.i._crit_edge ], [ %i.dn, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12expand_tableEv.exit ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !187 ; 3 uses
  %i.et = and i32 %.pre-phi, %i.es                ; 3 uses
  %i.eu = zext i32 %i.et to i64
  %.idx.i = shl nuw nsw i64 %i.eu, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx.i ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.pre-phi62
  %.not62.i = icmp eq i32 %i.et, %i.eq
  br i1 %.not62.i, label %.preheader.i, label %.lr.ph.i21

.preheader.i:                                     ; preds = %bb.ah, %bb.aa
  %.044.lcssa.i = phi ptr [ null, %bb.aa ], [ %.1.i, %bb.ah ]
  %.not4765.i = icmp eq i32 %i.et, 0
  br i1 %.not4765.i, label %._crit_edge.i, label %.lr.ph68.i

.lr.ph.i21:                                       ; preds = %bb.aa, %bb.ah
  %.04464.i = phi ptr [ %.1.i, %bb.ah ], [ null, %bb.aa ] ; 3 uses
  %.04563.i = phi ptr [ %i.fg, %bb.ah ], [ %i.ev, %bb.aa ] ; 5 uses
  %i.ex = load ptr, ptr %.04563.i, align 8, !tbaa !160 ; 4 uses
  %i.ey = icmp ult ptr %i.ex, inttoptr (i64 2 to ptr)
  br i1 %i.ey, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i21
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !187
  %i.fb = icmp eq i32 %i.fa, %i.es
  %i.fc = icmp eq ptr %i.ex, %i.de
  %or.cond.i = and i1 %i.fc, %i.fb
  br i1 %or.cond.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.de, ptr %.04563.i, align 8, !tbaa !160
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit

bb.ad:                                            ; preds = %.lr.ph.i21
  %i.fd = icmp eq ptr %i.ex, null
  br i1 %i.fd, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.not49.i = icmp eq ptr %.04464.i, null
  br i1 %.not49.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.eo, ptr %i.dc, align 8, !tbaa !158
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.043.i = phi ptr [ %.04464.i, %bb.af ], [ %.04563.i, %bb.ae ]
  store ptr %i.de, ptr %.043.i, align 8, !tbaa !160
  %i.fe = load i32, ptr %i.db, align 4, !tbaa !157
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.db, align 4, !tbaa !157
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit

bb.ah:                                            ; preds = %bb.ad, %bb.ab
  %.1.i = phi ptr [ %.04563.i, %bb.ad ], [ %.04464.i, %bb.ab ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.04563.i, i64 8 ; 2 uses
  %.not.i22 = icmp eq ptr %i.fg, %i.ew
  br i1 %.not.i22, label %.preheader.i, label %.lr.ph.i21, !llvm.loop !13

.lr.ph68.i:                                       ; preds = %.preheader.i, %bb.ao
  %.267.i = phi ptr [ %.3.i, %bb.ao ], [ %.044.lcssa.i, %.preheader.i ] ; 3 uses
  %.14666.i = phi ptr [ %i.fq, %bb.ao ], [ %i.ep, %.preheader.i ] ; 5 uses
  %i.fh = load ptr, ptr %.14666.i, align 8, !tbaa !160 ; 4 uses
  %i.fi = icmp ult ptr %i.fh, inttoptr (i64 2 to ptr)
  br i1 %i.fi, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph68.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !187
  %i.fl = icmp eq i32 %i.fk, %i.es
  %i.fm = icmp eq ptr %i.fh, %i.de
  %or.cond53.i = and i1 %i.fm, %i.fl
  br i1 %or.cond53.i, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.de, ptr %.14666.i, align 8, !tbaa !160
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit

bb.ak:                                            ; preds = %.lr.ph68.i
  %i.fn = icmp eq ptr %i.fh, null
  br i1 %i.fn, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not48.i = icmp eq ptr %.267.i, null
  br i1 %.not48.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.eo, ptr %i.dc, align 8, !tbaa !158
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i = phi ptr [ %.267.i, %bb.am ], [ %.14666.i, %bb.al ]
  store ptr %i.de, ptr %.0.i, align 8, !tbaa !160
  %i.fo = load i32, ptr %i.db, align 4, !tbaa !157
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.db, align 4, !tbaa !157
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit

bb.ao:                                            ; preds = %bb.ak, %bb.ai
  %.3.i = phi ptr [ %.14666.i, %bb.ak ], [ %.267.i, %bb.ai ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.14666.i, i64 8 ; 2 uses
  %.not47.i = icmp eq ptr %i.fq, %i.ev
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph68.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.ao, %.preheader.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 390, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit: ; preds = %bb.ac, %bb.ag, %bb.aj, %bb.an, %._crit_edge.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.fr, %i.cw
  br i1 %.not1.i.i.i, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit.i, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit, %bb.ap
  %.sroa.07.1.i = phi ptr [ %i.fu, %bb.ap ], [ %i.fr, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit ] ; 3 uses
  %i.fs = load ptr, ptr %.sroa.07.1.i, align 8, !tbaa !160
  %i.ft = icmp ult ptr %i.fs, inttoptr (i64 2 to ptr)
  br i1 %i.ft, label %bb.ap, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit.i

bb.ap:                                            ; preds = %.lr.ph.i.i.i19
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 8 ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.fu, %i.cw
  br i1 %.not.i.i.i20, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit.i, label %.lr.ph.i.i.i19, !llvm.loop !345

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit.i: ; preds = %bb.ap, %.lr.ph.i.i.i19, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit
  %.sroa.07.2.i = phi ptr [ %i.fr, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_.exit ], [ %i.fu, %bb.ap ], [ %.sroa.07.1.i, %.lr.ph.i.i.i19 ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.2.i, %i.da
  br i1 %.not.i, label %_Z9set_unionI13obj_hashtableI4exprES2_EvRT_RKT0_.exit, label %.lr.ph.i

_Z9set_unionI13obj_hashtableI4exprES2_EvRT_RKT0_.exit: ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit.i, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit.i, %bb.l, %_ZN7obj_mapI3appP13obj_hashtableI4exprEE4findEPS0_.exit
  %.2 = phi ptr [ %.033, %_ZN7obj_mapI3appP13obj_hashtableI4exprEE4findEPS0_.exit ], [ %i.cd, %bb.l ], [ %.134, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit.i ], [ %.134, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit.i ]
  %.3 = phi i1 [ %.012, %_ZN7obj_mapI3appP13obj_hashtableI4exprEE4findEPS0_.exit ], [ true, %bb.l ], [ false, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit.i ], [ false, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.critedge, !llvm.loop !346

.loopexit:                                        ; preds = %_ZNK11ast_manager15get_num_parentsEPK3app.exit, %_ZN6vectorIP13obj_hashtableI4exprELb0EjE9push_backERKS3_.exit
  %.335 = phi ptr [ %i.o, %_ZN6vectorIP13obj_hashtableI4exprELb0EjE9push_backERKS3_.exit ], [ %.033, %_ZNK11ast_manager15get_num_parentsEPK3app.exit ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %1, ptr %2, align 8, !tbaa !172
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.335, ptr %i.fw, align 8, !tbaa !234
  call void @_ZN14core_hashtableIN7obj_mapI3appP13obj_hashtableI4exprEE13obj_map_entryE8obj_hashINS6_8key_dataEE10default_eqIS9_EE6insertEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN18reduce_hypotheses013in_hypothesesEP4exprP13obj_hashtableIS0_E(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !noalias !349
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191, !noalias !349
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !194, !noalias !349 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZNK11ast_manager6is_notEPK4expr.exit.i.i

_ZNK11ast_manager6is_notEPK4expr.exit.i.i:        ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 8, !tbaa !209, !noalias !349
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noalias !349
  %i.m = icmp eq i32 %i.l, 8
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !53, !noalias !349
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63, !noalias !349, !nonnull !60, !noundef !60
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i

bb.f:                                             ; preds = %bb.d, %_ZNK11ast_manager6is_notEPK4expr.exit.i.i, %bb.c, %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !184, !noalias !349, !nonnull !60, !align !61
  %i.u = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.t, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %1), !noalias !349 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.u, %bb.f ], [ %i.s, %bb.e ] ; 6 uses
  %.sroa.5.0 = load ptr, ptr %0, align 8, !tbaa !184, !noalias !349, !nonnull !60, !align !61
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !164, !noalias !349 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !187  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !156 ; 3 uses
  %i.ab = add i32 %i.aa, -1
  %i.ac = and i32 %i.ab, %i.y                     ; 3 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !161   ; 3 uses
  %i.ae = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i ; 3 uses
  %i.ag = zext i32 %i.aa to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  %.not34.i.i = icmp eq i32 %i.ac, %i.aa
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.i, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i
  %.not2736.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not2736.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i, %bb.i
  %.035.i.i = phi ptr [ %i.ao, %bb.i ], [ %i.af, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.sink.split.i ] ; 2 uses
  %i.ai = load ptr, ptr %.035.i.i, align 8, !tbaa !160 ; 4 uses
  %.not.i.not.not = icmp uge ptr %i.ai, inttoptr (i64 2 to ptr) ; 3 uses
  br i1 %.not.i.not.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !187
  %i.al = icmp eq i32 %i.ak, %i.y
  %i.am = icmp eq ptr %i.ai, %.sroa.0.0
  %or.cond.i.i = and i1 %i.am, %i.al
  br i1 %or.cond.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.an = icmp eq ptr %i.ai, null
  br i1 %i.an, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.ah
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !5

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.ad, %.preheader.i.i ] ; 3 uses
  %i.ap = load ptr, ptr %.137.i.i, align 8, !tbaa !160 ; 4 uses
  %i.aq = icmp ult ptr %i.ap, inttoptr (i64 2 to ptr)
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph38.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !187
  %i.at = icmp eq i32 %i.as, %i.y
  %i.au = icmp eq ptr %i.ap, %.sroa.0.0
  %or.cond31.i.i = and i1 %i.au, %i.at
  br i1 %or.cond31.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.l

bb.k:                                             ; preds = %.lr.ph38.i.i
  %i.av = icmp eq ptr %i.ap, null
  %i.aw = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.aw, %i.af
  %or.cond43.i.i = select i1 %i.av, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %.lr.ph38.i.i.backedge

bb.l:                                             ; preds = %bb.j
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.af
  br i1 %.not27.old.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.l, %bb.k
  %.137.i.i.be = phi ptr [ %i.aw, %bb.k ], [ %.old.i.i, %bb.l ]
  br label %.lr.ph38.i.i, !llvm.loop !6

_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %.preheader.i.i
  %.026.i.i = phi i1 [ false, %.preheader.i.i ], [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ %.not.i.not.not, %bb.h ], [ %.not.i.not.not, %bb.g ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  store i32 %i.w, ptr %3, align 4, !tbaa !164
  %i.ax = icmp eq i32 %i.w, 0
  br i1 %i.ax, label %bb.m, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.m:                                             ; preds = %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %.sroa.5.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.m, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.026.i.i, %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit ], [ %.026.i.i, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN18reduce_hypotheses012get_literalsEP4expr(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !42
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 65535
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 8, !tbaa !209
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 6
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  br i1 %i.q, label %bb.d, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.d:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i1 = icmp eq i32 %i.s, 0
  br i1 %.not.i1, label %_ZN6vectorIP4exprLb0EjE6appendEjPKS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i32 %i.s to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i, %.lr.ph.preheader.i
  %i.u = phi ptr [ %i.b, %.lr.ph.preheader.i ], [ %i.ac, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42   ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !42
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !42
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i:   ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ %.pre.i.i, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  %i.ad = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !63
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !63
  %i.ai = add i32 %i.ad, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6vectorIP4exprLb0EjE6appendEjPKS1_.exit, label %.lr.ph.i, !llvm.loop !24

_ZNK11ast_manager5is_orEPK4expr.exit.thread:      ; preds = %bb.c, %_ZN6vectorIP4exprLb0EjE5resetEv.exit, %_ZNK11ast_manager5is_orEPK4expr.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %i.aj = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !42 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i2 = load ptr, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i2, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !42
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.g, %bb.h
  %i.ao = phi i32 [ %.pre2.i, %bb.h ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ap = phi ptr [ %.pre.i2, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  store ptr %1, ptr %i.as, align 8, !tbaa !63
  %i.at = add i32 %i.ao, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !42
  br label %_ZN6vectorIP4exprLb0EjE6appendEjPKS1_.exit

_ZN6vectorIP4exprLb0EjE6appendEjPKS1_.exit:       ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i, %bb.d, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6removeERKPS1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !63     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !187  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !156  ; 3 uses
  %i.f = add i32 %i.e, -1
  %i.g = and i32 %i.f, %i.c                       ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !161    ; 4 uses
  %i.i = zext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 3 uses
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %.not44 = icmp eq i32 %i.g, %i.e
  br i1 %.not44, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.d, %bb.a
  %.not3246 = icmp eq i32 %i.g, 0
  br i1 %.not3246, label %.loopexit, label %.lr.ph48

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.02945 = phi ptr [ %i.t, %bb.d ], [ %i.j, %bb.a ] ; 3 uses
  %i.m = load ptr, ptr %.02945, align 8, !tbaa !160 ; 4 uses
  %i.n = icmp ult ptr %i.m, inttoptr (i64 2 to ptr)
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187
  %i.q = icmp eq i32 %i.p, %i.c
  %i.r = icmp eq ptr %i.m, %i.a
  %or.cond35 = and i1 %i.r, %i.q
  br i1 %or.cond35, label %.loopexit38, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = icmp eq ptr %i.m, null
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.02945, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.l
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !350

.lr.ph48:                                         ; preds = %.preheader, %.lr.ph48.backedge
  %.147 = phi ptr [ %.147.be, %.lr.ph48.backedge ], [ %i.h, %.preheader ] ; 4 uses
  %i.u = load ptr, ptr %.147, align 8, !tbaa !160 ; 4 uses
  %i.v = icmp ult ptr %i.u, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph48
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !187
  %i.y = icmp eq i32 %i.x, %i.c
  %i.z = icmp eq ptr %i.u, %i.a
  %or.cond37 = and i1 %i.z, %i.y
  br i1 %or.cond37, label %.loopexit38, label %bb.g

bb.f:                                             ; preds = %.lr.ph48
  %i.aa = icmp eq ptr %i.u, null
  %i.ab = getelementptr inbounds nuw i8, ptr %.147, i64 8 ; 2 uses
  %.not32 = icmp eq ptr %i.ab, %i.j
end_hunk_0
